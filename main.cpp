#include <iostream>
// #include "src/testCUDA.h"
#include "include/testH.h"

// extern "C" void mainCUDA();

using namespace std;

int main(int argv, char** argc){
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