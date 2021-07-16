#include<iostream>
#include<stack>
#include<string>
#include<queue>
#include<map>

using namespace std;


/* Infix ---> RPN;
no unary operators !!!*/


bool is_argument(char x){
    return (x >= '0' and x <= '9') || (x >= 'a' and x <= 'z');
}
bool is_operator(char x){
    return (x == '+' || x == '-' || x == '/' || x == '*');
}
bool is_left_parenthesis(char x){
    return (x == '(');
}
bool is_right_parenthesis(char x){
    return (x == ')');
}

queue<char> RPN(string infix){
    map<char,int> priority;
    priority['*'] = priority['/'] = 2;
    priority['+'] = priority['-'] = 1;
    
    queue<char> Queue;
    stack<char> Stack;

    for (size_t i = 0; i < infix.length(); i++){
        char lex = infix[i];
        
        if (lex == ' ') continue;

        if (is_argument(lex)){
            Queue.push(lex);
        }
        else if (is_left_parenthesis(lex)){
            Stack.push(lex);
        }
        else if (is_right_parenthesis(lex)){
            while ( !Stack.empty() && (!is_left_parenthesis(Stack.top()))){
                Queue.push(Stack.top());
                Stack.pop();
            }
            Stack.pop();
        }
        else if (is_operator(lex)){
            while ( !Stack.empty() && is_operator(Stack.top()) && priority[Stack.top()] >= priority[lex]){
                Queue.push(Stack.top());
                Stack.pop();
            }
            Stack.push(lex);
        }
    }

    while (!Stack.empty()){
        Queue.push(Stack.top());
        Stack.pop();
    }

    return Queue;
}

int main(){

    queue<char> Queue = RPN(" 3 * ( ( 4 + 5) – ( 2 + 7 ) ) / a - b / c * d");
    while(!Queue.empty()){
        cout<<Queue.front()<<" ";
        Queue.pop();
    }
    cout<<endl;
    
    return 0;
}
