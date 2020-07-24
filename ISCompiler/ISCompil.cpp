#include <string>
#include "findarc.h"

using namespace std;

int main()
{
    int err;
    string exec = "\"" + (string) ProgFiles + (string)"\\Inno Setup 6\\iscc.exe\" ..\\OpenSSH-Win" + to_string(ProcArc) + ".iss";
    err = system(exec.c_str());
    printf("\nThe program exited with code %d.\n", err);
    exit(err);
}