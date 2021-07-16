#include<iostream>
#include<algorithm>
#include<list>
#include<fstream>

#define LINES 17

using namespace std;


class Point {
    public:
        struct RGB{
            size_t R;
            size_t G;
            size_t B;
            RGB() {}
            RGB(size_t R, size_t G, size_t B) : R(R), G(G), B(B) {}
        };
        double x;
        double y;
        string name;
        RGB color;
    
    public:
        Point() {}
        Point (double x, double y, string name, RGB color) : x(x), y(y), name(name), color(color) {}
        double getIlumination() {
            return color.R*0.3 + color.G*0.59 + color.B*0.11;
        }

    friend ostream& operator<<(ostream&, const Point&);
    friend istream& operator>>(istream&, Point&);
};

ostream& operator<<(ostream& os, const Point& point){
    os<<point.name<<endl;
    os<<'('<<point.x<<", "<<point.y<<')'<<endl;
    os<<"RGB color: "<<point.color.R<<' '<<point.color.G<<' '<<point.color.B<<endl;
    return os;
}
istream& operator>>(istream& is, Point& point){
    is>>point.x; is>>point.y;
    
    size_t R,G,B;
    is>>R>>G>>B;
    point.color = Point::RGB(R,G,B);

    is>>point.name;

    return is;
}


void fill_points_list(list<Point>& points){
    fstream file("zadanie_2_points.txt");
    for (size_t i = 0; i < LINES; i++){
        Point p;
        file>>p;
        points.push_back(p);
    }
    file.close();
}

int main(){
    list<Point> points;
    fill_points_list(points);

    /*for_each(points.begin(), points.end(),
    [] (Point& p){
        cout<<p<<endl;
    });*/

    // a) remove all points with names longer than 5 characters
    auto it = remove_if(points.begin(), points.end(),
    [] (Point& p){
        return p.name.size() > 5;
    });
    points.erase(it, points.end());

    for_each(points.begin(), points.end(),
    [] (Point& p){
        cout<<p<<endl;
    });

    // b) count how many points in each quarter of cartesian plane
    int one = count_if(points.begin(), points.end(),
    [] (Point& p){
        return p.x > 0 && p.y > 0;
    });
    int two = count_if(points.begin(), points.end(),
    [] (Point& p){
        return p.x < 0 && p.y > 0;
    });
    int three = count_if(points.begin(), points.end(),
    [] (Point& p){
        return p.x > 0 && p.y < 0;
    });
    int four = count_if(points.begin(), points.end(),
    [] (Point& p){
        return p.x < 0 && p.y < 0;
    });
    
    cout<<"I: "<<one<<endl;
    cout<<"II: "<<two<<endl;
    cout<<"III: "<<three<<endl;
    cout<<"IV: "<<four<<endl<<endl;

    // c) sort by illumination
    points.sort(
        [] (Point& p1, Point& p2){
            return p1.getIlumination() < p2.getIlumination();
        }
    );

    for_each(points.begin(), points.end(),
    [] (Point& p){
        cout<<p<<p.getIlumination()<<endl;
    });
    
    cout<<endl;
    // d) count points with lumination under 64 and move them to another list

    const int how_many = count_if(points.begin(), points.end(),
    [] (Point& p){
        return p.getIlumination() < 64.0;
    });

    cout<<"Number of points with lumination under 64: "<< how_many<<endl<<endl;

    list<Point> points_under_64(how_many);

    copy_if(points.begin(), points.end(), points_under_64.begin(),
    [] (Point p){
        return p.getIlumination() < 64.0;
    });


    for_each(points_under_64.begin(), points_under_64.end(),
    [] (Point& p){
        cout<<p<<endl;
    });

    return 0;
}