cmake_minimum_required(VERSION 3.10)

#set the project name
project(HelloProj VERSION 1.0)

# specify the c++ standard
# use the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)


# export configuration to source code 
configure_file(cmake/HelloProjConfig.h.in HelloProjConfig.h)

#add libraries 
add_subdirectory(src/basic)

#add executable 
option(HELLOWORLD_WITH_EXECUTABLES "Compile mains" ON)
if(HELLOWORLD_WITH_EXECUTABLES)
	message(STATUS "Configuring Hello World with executables")
	add_subdirectory(mains)
endif()

#add tests 
option(HELLOWORLD_WITH_TESTS "Compile tests" ON)
if(HELLOWORLD_WITH_TESTS)
	enable_testing()
	message(STATUS "Configuring Hello World with tests")
	add_subdirectory(tests)
endif()

#create the package configuration file
include(CMakePackageConfigHelpers) 
configure_package_config_file(
	cmake/HelloProjConfig.cmake.in 
	HelloProjConfig.cmake 
	INSTALL_DESTINATION cmake/
	)

#install project configuration file 
install(
		FILES ${PROJECT_BINARY_DIR}/HelloProjConfig.cmake
		DESTINATION cmake/
)

# Configure CPack
if(WIN32)
	set(CPACK_GENERATOR "ZIP")
else()
	 set(CPACK_GENERATOR "TGZ") #sur linux
endif()

# This must always be last!
include(CPack)
