#include <iostream>
#include <memory>
#include <fstream>
#include <string>


class line_writer{
    std::ofstream* file;

    public:
        line_writer(const char* path){
            this->file = new std::ofstream(path);

            if(!this->file->is_open()){
                throw std::ofstream::failure("unable to open the file!\n");
            }
        }

        line_writer(std::string path) : line_writer(path.c_str()) { }

        ~line_writer(){
            write_to_file("Closing the file...");
            //this->file->close();
            delete this->file;
            std::cout<<"File successfuly closed\n";
        }

        template<class T>
        void write_to_file(T data){
            *this->file<<data<<std::endl;
        }

};

int main(){
    std::shared_ptr<line_writer> ptr0 = std::make_shared<line_writer>("sample.txt");
    std::shared_ptr<line_writer> ptr1 = ptr0;
    {
        std::shared_ptr<line_writer> ptr2 = ptr1;
        ptr2->write_to_file("Ptr2 writing..."); ptr2->write_to_file(2);
    }
    
    std::cout<<"Pointers at use: "<<ptr0.use_count()<<std::endl;

    ptr0->write_to_file("Ptr0 writing..."); ptr0->write_to_file(0);
    ptr1->write_to_file("Ptr1 writing..."); ptr1->write_to_file(1);
    
    return 0;
}