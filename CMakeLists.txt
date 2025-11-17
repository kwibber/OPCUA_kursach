cmake_minimum_required(VERSION 3.10)
project(my_server)

# Добавить open62541pp как подпроект
add_subdirectory(open62541pp)

add_executable(server test_server.cpp)
target_link_libraries(server open62541pp)

# Установить стандарт C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)