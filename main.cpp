#include <iostream>
// #include "src/testCUDA.h"
#include "include/testH.h"
#include "include/Version.hpp"
#include "Eigen/Core"

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
    Eigen::Matrix3d m1;
    m1 << 1,0,0,0,1,0,1,0,1;
    cout<<"Test Eigen:"<<endl;
    cout<<m1<<endl;
    // printTestCUDA();
    // mainCUDA();

    return 0;
}