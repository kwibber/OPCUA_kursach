CXX = g++
CXXFLAGS = -std=c++11 -I./open62541pp/include -I./open62541pp/build -I./open62541/include
LDFLAGS = -L./open62541/build/bin -lopen62541 -lws2_32

main.o: test_server.cpp
	$(CXX) -c test_server.cpp -o main.o $(CXXFLAGS)

server: main.o
	$(CXX) main.o -o server.exe $(LDFLAGS)

clean:
	del main.o server.exe
clear:
	rm -rf main.o