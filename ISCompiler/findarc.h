#pragma once
#include <Windows.h>
#undef ProgFiles
#undef ProcArc

#if IsWow64Process
#define ProgFiles "C:\\Program Files"
#define ProcArc 32
#else
#define ProgFiles "C:\\Program Files (x86)"
#define ProcArc 64
#endif