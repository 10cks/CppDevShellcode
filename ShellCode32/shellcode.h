#pragma once
#include <Windows.h>



//����ָ������
typedef int (WINAPI* PFN_MessageBoxA)(HWND, LPCSTR, LPCSTR, UINT);
typedef HMODULE(WINAPI* PFN_LoadLibraryA)(LPCSTR);
typedef FARPROC(WINAPI* PFN_GetProcAddress)(HMODULE, LPCSTR);

typedef	struct SellcodeEvn
{
	PFN_MessageBoxA m_pfnMessageBoxA;
	PFN_LoadLibraryA m_pfnLoadLibraryA;
	PFN_GetProcAddress m_pfnGetProcAddress;


}SCENV, * PSCENV;


//�Լ���������
HMODULE GetKernel32Base();
FARPROC MyGetProcAddress(HMODULE hDll, char* szFuncName);
void InitEnv(PSCENV pEnv);
int MyStrCmp(char* pDst, char* pSrc);

