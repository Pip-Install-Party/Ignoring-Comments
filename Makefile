gnoring_comments.x: main.o commentDFA.o
	g++ -std=c++17 -g main.o commentDFA.o -o ignoring_comments.x

main.o: main.cpp commentDFA.h
	g++ -std=c++17 -g main.cpp -o main.o -c

commentDFA.o: commentDFA.cpp commentDFA.h
	g++ -std=c++17 -g commentDFA.cpp -o commentDFA.o -c

clean:
	rm -f ignoring_comments.x *.o