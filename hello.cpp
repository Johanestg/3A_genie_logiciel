#include <iostream>
#include<HelloProjConfig.h>

void hello_world() {
	std::cout << "Hello world !" << std::endl;
}

void print_version() {
	std::cout << "project version is " << HelloProj_VERSION_MAJOR << "." << HelloProj_VERSION_MINOR << std::endl;
}

int main()
{
	hello_world();
	print_version();
	return 0;
}
