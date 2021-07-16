#include<iostream>
#include<algorithm>
#include<string>
#include<deque>

using namespace std;


class Person{
    public:
        string name;
        string surname;
        size_t age;
        float weight;   /* kg */
        float height;   /* cm */
    public:
        Person(string name,string surname, size_t age, float weight,float height) :
            name(name),
            surname(surname),
            age(age),
            weight(weight),
            height(height)
        {}
        float getBMI() { 
            return weight/((height/100.0)*(height/100.0));
        }

    friend ostream& operator<<(ostream&, const Person&);
};

ostream& operator<<(ostream& os, const Person& person){
    os<<person.name<<" "<<person.surname<<", "<<person.age<<endl;
    os<<"Weight: "<<person.weight<<";\t"<<"height: "<<person.height<<endl;
    return os;
}


void fill_deque(deque<Person>& people){
    people.push_front(Person("Adam","Kowalski",20,61.8,180));
    people.push_front(Person("Jan","Nowak",57,89.5,175.3));
    people.push_front(Person("John","White",88,117.8,191.1));
    people.push_front(Person("Janusz","Malinowski",63,91.4,163.5));
    people.push_front(Person("Dmitriy","Muserskiy",39,115.8,218.1));
    people.push_front(Person("Bartosz","Kurek",32,88.0,206.0));
    people.push_front(Person("Jack","Strong",16,55.2,159.3));
    people.push_front(Person("Adam","Kowalczyk",20,94.6,181.7));
    people.push_front(Person("Ksawery","Adamiak",92,48.9,149.8));
    people.push_front(Person("Leszek","Cichy",53,69.3,186.5));
    people.push_front(Person("Gerwazy","Klucznik",22,112.2,194.6));
}

int main(){
    
    deque<Person> people;
    fill_deque(people);

    // a) sort by BMI :
    sort(people.begin(),people.end(),
    [] (Person& p1, Person& p2){
        return p1.getBMI() < p2.getBMI();
    });

    /*for (size_t i = 0; i < people.size(); i++){
        cout<<people[i]<<people[i].getBMI()<<endl<<endl;
    }*/

    // b) reduce weight by 10%
    transform(people.begin(),people.end(),people.begin(),
    [] (Person& p){
        p.weight *= 0.9;
        return p;
    });

    /*for (size_t i = 0; i < people.size(); i++){
        cout<<people[i]<<endl;
    }*/

    // c) divide into groups >100kg, <=100kg
    partition(people.begin(),people.end(),
    [] (Person& p){
        return p.weight <= 100;
    });
    
    /*for (size_t i = 0; i < people.size(); i++){
        cout<<people[i]<<endl;
    }*/

    // d) take middle element and put in the middle
    nth_element(people.begin(),people.begin() + 5, people.end(),
    [] (Person& p1, Person& p2){
        return p1.height < p2.height;
    });
    
    /*for (size_t i = 0; i < people.size(); i++){
        cout<<people[i]<<endl;
    }*/

    // e) randomize first and second half (without middle element)
    random_shuffle(people.begin(), people.begin() + people.size()/2 - 1);
    random_shuffle(people.begin() + people.size()/2 + 1, people.end());
    
    /*for (size_t i = 0; i < people.size(); i++){
        cout<<people[i]<<endl;
    }*/

    // f) return the oldest and the youngest
    const auto [youngest, oldest] = minmax_element(people.begin(),people.end(),
    [] (Person& p1, Person& p2){
        return p1.age < p2.age;
    });

    cout<<"Youngest:\n"<<*youngest<<endl<<"Oldest:\n"<<*oldest<<endl;

    return 0;
}