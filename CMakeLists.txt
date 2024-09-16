cmake_minimum_required(VERSION 3.10)

#set the project name
project(HelloProj VERSION 1.0)

# specify the c++ standard
# use the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)


# export configuration to source code 
configure_file(HelloProjConfig.h.in HelloProjConfig.h)

#add the executable target named HelloWorld
add_executable(HelloWorld hello.cpp) #exécutable qui s'appelle HelloWorld à partir du .cpp

#add binary tree to the list of paths to search includes
target_include_directories(HelloWorld PUBLIC "${PROJECT_BINARY_DIR}")  #l'exécutable HelloWorld a besoin des include qui sont dans project_binary_dir'