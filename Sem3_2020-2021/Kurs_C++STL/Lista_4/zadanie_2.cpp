#include<iostream>
#include<functional>
#include<utility>
#include<cmath>

template<class F, class G, class H>
class compose_f_gx_hy{
    private:
        F f;
        G g;
        H h;
    public:
        compose_f_gx_hy() {};
        compose_f_gx_hy(F f, G g, H h) : f(f), g(g), h(h) {}

        typename F::result_type operator() (typename G::argument_type x, typename H::argument_type y) const {
            return f(g(x),h(y));
        }
};


class sum : public std::function<double(int,double)> {
    public:
        double operator () (int a,double b) const{
            return a+b;
        }
};

class mult_2 : public std::function<int(int)> {
    public:
        int operator () (int a) const{
            return a<<1;
        }
};

class mult_pi : public std::function<double(double)> {
    public:
        double operator () (double a) const{
            return a*M_PI;
        }
};

int main(){
    auto adapter = compose_f_gx_hy(sum(),mult_2(),mult_pi());

    std::cout<<adapter(4,1.0)<<std::endl;

    return 0;
}