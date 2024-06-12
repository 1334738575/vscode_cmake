#include <iostream>
// #include "src/testCUDA.h"
#include "include/testH.h"
#include "include/Version.hpp"

// extern "C" void mainCUDA();

using namespace std;

int main(int argv, char** argc){
    PrintVersion();
    cout<<"Hello Vscode_Cmake"<<endl;
#if defined _MSC_VER
    cout<<_MSC_VER<<endl;
#endif
    cout<<Gt<<endl;
    GFunc();
    // printTestCUDA();
    // mainCUDA();

    return 0;
}