#include<iostream>
#include<random>
#include<iomanip>
#include<chrono>
#include<vector>
#include<algorithm>

class Matrix{
    double* arr;
    size_t size;
    public:
        Matrix() = default;
        Matrix(size_t n) : arr(new double[n*n]), size(n) {
            for(size_t i=0; i<n; i++){
                for (size_t j=0; j<n; j++){
                    arr[i*n + j] = my_random();
                }
            }
        }
        ~Matrix() { delete[] arr; }
        
        double* getArr() const { return arr; }
        size_t getSize() const { return size; }

        Matrix& operator= (const Matrix& m) = delete;
        Matrix (const Matrix& m) = delete;

        Matrix(Matrix&& matrix){
            std::cout<<"Move constructor!\n";
            this->arr = matrix.arr;
            matrix.arr = nullptr;
            this->size = matrix.size;
            matrix.size = 0;
        }
        Matrix& operator= (Matrix&& matrix){
            std::cout<<"Move assignment!\n";
            if(&matrix == this){
                return *this;
            }
            delete[] this->arr;
            this->arr = matrix.arr;
            matrix.arr = nullptr;
            
            this->size = matrix.size;
            matrix.size = 0;
            
            return *this;
        }

        void square(){
            double* new_matrix = new double[size*size];
            
            for (size_t i=0; i<size; i++){
                for (size_t j=0; j<size; j++){
                    double sum = 0.0;
                    for (size_t k=0; k<size; k++){
                        sum += arr[i*size + k]*arr[k*size+j];
                    }
                    new_matrix[i*size + j] = sum;
                }
            }

            delete[] this->arr;
            this->arr = new_matrix;
        }

    private:
        double my_random(){
            static std::random_device rd;
            static std::mt19937 mt(rd());
            static std::uniform_real_distribution<double> distribution(0.5,2.0);
            return distribution(mt);
        }

    
    friend std::ostream& operator<< (std::ostream*, const Matrix& );
};

std::ostream& operator<< (std::ostream& os, const Matrix& matrix){
    os<<std::setprecision(4);
    
    double* arr = matrix.getArr();
    size_t size = matrix.getSize();
    
    for (size_t i=0; i<size; i++){
        for(size_t j=0; j<size; j++){
            os<<std::setw(7)<<arr[i*size + j]<<" ";
        }
        os<<std::endl;
    }
    return os;
}

double measure(Matrix& m, size_t iters){
    using namespace std::chrono;

    double sum = 0.0;

    for (size_t i=0; i<iters; i++){
        auto start = high_resolution_clock::now();
        m.square();
        auto end = high_resolution_clock::now();
        duration<double,std::ratio<1,1000>> total = end - start;
        sum += total.count();
    }
    sum /= iters;

    return sum; 
}

/* For testing move semantics:
Matrix nowa(){
    return Matrix(5);
}
void print(Matrix m){
    std::cout<<m;
}
*/


int main(){
    Matrix m100(100);
    Matrix m1000(1000);
    Matrix m10000(10000);

    std::cout<<"100x100:\t"<<measure(m100,100)<<" ms"<<std::endl;
    std::cout<<"1000x1000:\t"<<measure(m1000,10)<<" ms"<<std::endl;
    //std::cout<<"10000x10000:\t"<<measure(m10000,1)<<" ms"<<std::endl; // po ~5 minutach dalej liczy...
    return 0;

    /* For testing move semantics:
    Matrix m;
    m = nowa();
    
    std::vector<Matrix> vec;
    vec.push_back(Matrix(2));
    */
}