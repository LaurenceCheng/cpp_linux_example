#include <iostream>
#include "staticlib/staticlib.h"
#include "sharedlib/libshared.h"
using namespace std;

int main() {
	cout << "This is main()" << endl;

	cout << "Call staticlib function: Sum(1, 2) = " << Sum(1, 2) << endl;

	cout << "Call sharedlib function: AddOne(5) = " << AddOne(5) << endl;

	return 0;
}

