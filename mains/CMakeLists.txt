#add the executable target named HelloWorld
add_executable(HelloWorld hello.cpp) #exécutable qui s'appelle HelloWorld à partir du .cpp
target_link_libraries(HelloWorld PRIVATE basic)