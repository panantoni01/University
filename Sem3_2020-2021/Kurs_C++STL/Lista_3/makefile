CFLAGS = -std=c++17 -Wall -Wextra -pedantic
targets = zadanie1 zadanie2 zadanie3 zadanie4 zadanie5

all: $(targets)

zadanie1: zadanie_1.cpp
	g++ -o $@ $(CFLAGS) $^

zadanie2: zadanie_2.cpp
	g++ -o $@ $(CFLAGS) $^

zadanie3: zadanie_3.cpp
	g++ -o $@ $(CFLAGS) $^

zadanie4: zadanie_4.cpp
	g++ -o $@ $(CFLAGS) $^

zadanie5: zadanie_5.cpp
	g++ -O3 -o $@ $(CFLAGS) $^

clean:
	rm -rf zadanie1 zadanie2 zadanie3 zadanie4 zadanie5