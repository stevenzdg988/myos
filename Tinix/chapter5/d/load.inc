

BaseOfLoader		equ	 09000h	; LOADER.BIN �����ص���λ�� ----  �ε�ַ
OffsetOfLoader		equ	  0100h	; LOADER.BIN �����ص���λ�� ---- ƫ�Ƶ�ַ

BaseOfLoaderPhyAddr	equ	BaseOfLoader * 10h	; LOADER.BIN �����ص���λ�� ---- ������ַ (= BaseOfLoader * 10h)


BaseOfKernelFile	equ	 08000h	; KERNEL.BIN �����ص���λ�� ----  �ε�ַ
OffsetOfKernelFile	equ	     0h	; KERNEL.BIN �����ص���λ�� ---- ƫ�Ƶ�ַ
