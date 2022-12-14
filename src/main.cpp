#include "Service.h"
using namespace alba_java;

int main(void)
{
	Service a(std::cout, std::cin);
	a.Run();
	return 0;
}
