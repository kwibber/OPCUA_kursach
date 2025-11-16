#include <open62541pp/node.hpp>
#include <open62541pp/server.hpp>

int main() {
 opcua::Server server;

 // Добавьте узел переменной в узел Objects
 opcua::Node parentNode{server, opcua::ObjectId::ObjectsFolder};
 opcua::Node myIntegerNode = parentNode.addVariable({1, 1000}, "TheAnswer");
 // Атрибут записи значения
 myIntegerNode.writeValue(opcua::Variant{42});

 server.run();
}