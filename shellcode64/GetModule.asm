.code

numadd proc
	mov rax, rcx
	add rax, rdx
	ret
numadd endp


GetModuleKernel proc
	xor r8, r8
	xor rax, rax
	xor r10, r10
	add r10, 60h
	mov rax, gs:[r10]     ;ͨ��GS�Ĵ�����ȡPEB��ַ
	mov rax, [rax + 18h]  ;��ȡPEB��Ldr���ݽṹ�Ļ�ַ
	mov rax, [rax + 10h]  ;��ȡLdr���ݽṹ��InmemoryOrderModuleList�ֶεĻ�ַ
	mov rax, [rax]		   ;��ȡInmemoryOrderModuleList�����һ���ڵ� �����ȡ����ntdll�Ļ�ַ
	mov rax, [rax]		   ;��ȡInmemoryOrderModuleList�����һ���ڵ�  ���������kernen32�Ļ�ַ
	mov rax, [rax + 30h]  ;��ȡ�ڵ���BaseAddress�ֶΣ���kernel32.dll�Ļ�ַ
	ret
GetModuleKernel endp



end