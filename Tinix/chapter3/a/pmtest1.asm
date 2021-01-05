; ==========================================
; pmtest1.asm
; ���뷽����nasm pmtest1.asm -o pmtest1.com
; ==========================================

%include	"pm.inc"	; ����, ��, �Լ�һЩ˵�� Ԥ����ָ���%�Ŵ�ͷ

org	0100h
	jmp	LABEL_BEGIN

[SECTION .gdt]
; GDT
;                                         �λ�ַ,      �ν���     , ����
LABEL_GDT:		Descriptor	       0,                0, 0     		; ��������
LABEL_DESC_CODE32:	Descriptor	       0, SegCode32Len - 1, DA_C + DA_32	; ��һ�´����, 32  �ν���Ϊ���ݶε�ַ��ȼ�1
LABEL_DESC_VIDEO:	Descriptor	 0B8000h,           0ffffh, DA_DRW		; �Դ��׵�ַ
; GDT ����

GdtLen		equ	$ - LABEL_GDT	; GDT����
GdtPtr		dw	GdtLen - 1	; GDT����
		dd	0		; GDT����ַ

; GDT ѡ����
SelectorCode32		equ	LABEL_DESC_CODE32	- LABEL_GDT    ;�����ѡ����
SelectorVideo		equ	LABEL_DESC_VIDEO	- LABEL_GDT    ;���ݶ�ѡ����
; END of [SECTION .gdt]

[SECTION .s16]
[BITS	16]
LABEL_BEGIN:
	mov	ax, cs
	mov	ds, ax
	mov	es, ax
	mov	ss, ax
	mov	sp, 0100h

	; ��ʼ�� 32 λ�����������
	xor	eax, eax                                  ;Ŀ���ǽ�eax��0���൱��mov eax 0ָ�����xorָ���movָ���3������ָ��
	mov	ax, cs                                    ;�˴�csΪ���ݶεĻ���ַ
	shl	eax, 4                                    ;�߼�����ָ��  
	add	eax, LABEL_SEG_CODE32                     ;��LABEL_SEG_CODE32�ĵ�ַ���ݸ�eax
        ;���潫eax�Ĵ����е�����(�λ���)�ֱ�ע�����ݶ��������еĸ���λ��
	mov	word [LABEL_DESC_CODE32 + 2], ax
	shr	eax, 16                                   ;�߼�����ָ��
	mov	byte [LABEL_DESC_CODE32 + 4], al
	mov	byte [LABEL_DESC_CODE32 + 7], ah

	; Ϊ���� GDTR ��׼��
	xor	eax, eax
	mov	ax, ds
	shl	eax, 4
	add	eax, LABEL_GDT		; eax <- gdt ����ַ
	mov	dword [GdtPtr + 2], eax	; [GdtPtr + 2] <- gdt ����ַ

	; ���� GDTR
	lgdt	[GdtPtr]                                   ;

	; ���ж� 
	cli                                                ;ִ�д������ cpu����Ӧ�������жϡ�

	; �򿪵�ַ��A20
	in	al, 92h                                    ;��ָ��������Ĵ���ȡ��Ϣ�����ۼ�����
	or	al, 00000010b                              ;�߼���ָ�
	out	92h, al

	; ׼���л�������ģʽ
	mov	eax, cr0                                   ;CR0Ϊ���ƼĴ���
	or	eax, 1                                     
	mov	cr0, eax                                   ;��CRO�Ĵ����ĵ�һλ��1����ʾ������ģʽ������

	; �������뱣��ģʽ
	jmp	dword SelectorCode32:0	; ִ����һ���� SelectorCode32 װ�� cs, ����ת�� Code32Selector:0  ��
                                        ;������ε�ѡ����װ��cs
; END of [SECTION .s16]


[SECTION .s32]; 32 λ�����. ��ʵģʽ����.
[BITS	32]

;���²������������ݶΣ��˴������ݶζ����������Ӧ��
LABEL_SEG_CODE32:
	mov	ax, SelectorVideo
	mov	gs, ax			; ��Ƶ��ѡ����(Ŀ��)

	mov	edi, (80 * 10 + 0) * 2	; ��Ļ�� 10 ��, �� 0 �С�
	mov	ah, 0Ch			; 0000: �ڵ�    1100: ����
	mov	al, 'P'
	mov	[gs:edi], ax

	; ����ֹͣ
	jmp	$

SegCode32Len	equ	$ - LABEL_SEG_CODE32  ;��ʾ��LABEL_SEG_CODE32:���˴��ĵ�ַ֮����
; END of [SECTION .s32]

