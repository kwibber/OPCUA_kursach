CXX = g++
CXXFLAGS = -std=c++11 -I./open62541pp/include -I./open62541/build -I./open62541/include
LDFLAGS = -L./open62541/build/bin -lopen62541
OBJS = main.o
TARGET = server

# Установка переменных среды для временных файлов
setenv:
	set TMP=%USERPROFILE%\AppData\Local\Temp
	set TEMP=%USERPROFILE%\AppData\Local\Temp

$(TARGET): $(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LDFLAGS)

main.o: test_server.cpp
	$(CXX) $(CXXFLAGS) -c test_server.cpp -o main.o

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean setenv