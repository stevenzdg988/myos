00007C00  8CC8              mov ax,cs
00007C02  8ED8              mov ds,ax
00007C04  8EC0              mov es,ax
00007C06  E80200            call 0x7c0b
00007C09  EBFE              jmp short 0x7c09
00007C0B  B81E7C            mov ax,0x7c1e
00007C0E  89C5              mov bp,ax
00007C10  B91000            mov cx,0x10
00007C13  B80113            mov ax,0x1301
00007C16  BB0C00            mov bx,0xc
00007C19  B200              mov dl,0x0
00007C1B  CD10              int 0x10
00007C1D  C3                ret
00007C1E  48                dec ax
00007C1F  656C              gs insb
00007C21  6C                insb
00007C22  6F                outsw
00007C23  2C20              sub al,0x20
00007C25  4F                dec di
00007C26  53                push bx
00007C27  20776F            and [bx+0x6f],dh
00007C2A  726C              jc 0x7c98
00007C2C  642100            and [fs:bx+si],ax
00007C2F  0000              add [bx+si],al
00007C31  0000              add [bx+si],al
00007C33  0000              add [bx+si],al
00007C35  0000              add [bx+si],al
00007C37  0000              add [bx+si],al
00007C39  0000              add [bx+si],al
00007C3B  0000              add [bx+si],al
00007C3D  0000              add [bx+si],al
00007C3F  0000              add [bx+si],al
00007C41  0000              add [bx+si],al
00007C43  0000              add [bx+si],al
00007C45  0000              add [bx+si],al
00007C47  0000              add [bx+si],al
00007C49  0000              add [bx+si],al
00007C4B  0000              add [bx+si],al
00007C4D  0000              add [bx+si],al
00007C4F  0000              add [bx+si],al
00007C51  0000              add [bx+si],al
00007C53  0000              add [bx+si],al
00007C55  0000              add [bx+si],al
00007C57  0000              add [bx+si],al
00007C59  0000              add [bx+si],al
00007C5B  0000              add [bx+si],al
00007C5D  0000              add [bx+si],al
00007C5F  0000              add [bx+si],al
00007C61  0000              add [bx+si],al
00007C63  0000              add [bx+si],al
00007C65  0000              add [bx+si],al
00007C67  0000              add [bx+si],al
00007C69  0000              add [bx+si],al
00007C6B  0000              add [bx+si],al
00007C6D  0000              add [bx+si],al
00007C6F  0000              add [bx+si],al
00007C71  0000              add [bx+si],al
00007C73  0000              add [bx+si],al
00007C75  0000              add [bx+si],al
00007C77  0000              add [bx+si],al
00007C79  0000              add [bx+si],al
00007C7B  0000              add [bx+si],al
00007C7D  0000              add [bx+si],al
00007C7F  0000              add [bx+si],al
00007C81  0000              add [bx+si],al
00007C83  0000              add [bx+si],al
00007C85  0000              add [bx+si],al
00007C87  0000              add [bx+si],al
00007C89  0000              add [bx+si],al
00007C8B  0000              add [bx+si],al
00007C8D  0000              add [bx+si],al
00007C8F  0000              add [bx+si],al
00007C91  0000              add [bx+si],al
00007C93  0000              add [bx+si],al
00007C95  0000              add [bx+si],al
00007C97  0000              add [bx+si],al
00007C99  0000              add [bx+si],al
00007C9B  0000              add [bx+si],al
00007C9D  0000              add [bx+si],al
00007C9F  0000              add [bx+si],al
00007CA1  0000              add [bx+si],al
00007CA3  0000              add [bx+si],al
00007CA5  0000              add [bx+si],al
00007CA7  0000              add [bx+si],al
00007CA9  0000              add [bx+si],al
00007CAB  0000              add [bx+si],al
00007CAD  0000              add [bx+si],al
00007CAF  0000              add [bx+si],al
00007CB1  0000              add [bx+si],al
00007CB3  0000              add [bx+si],al
00007CB5  0000              add [bx+si],al
00007CB7  0000              add [bx+si],al
00007CB9  0000              add [bx+si],al
00007CBB  0000              add [bx+si],al
00007CBD  0000              add [bx+si],al
00007CBF  0000              add [bx+si],al
00007CC1  0000              add [bx+si],al
00007CC3  0000              add [bx+si],al
00007CC5  0000              add [bx+si],al
00007CC7  0000              add [bx+si],al
00007CC9  0000              add [bx+si],al
00007CCB  0000              add [bx+si],al
00007CCD  0000              add [bx+si],al
00007CCF  0000              add [bx+si],al
00007CD1  0000              add [bx+si],al
00007CD3  0000              add [bx+si],al
00007CD5  0000              add [bx+si],al
00007CD7  0000              add [bx+si],al
00007CD9  0000              add [bx+si],al
00007CDB  0000              add [bx+si],al
00007CDD  0000              add [bx+si],al
00007CDF  0000              add [bx+si],al
00007CE1  0000              add [bx+si],al
00007CE3  0000              add [bx+si],al
00007CE5  0000              add [bx+si],al
00007CE7  0000              add [bx+si],al
00007CE9  0000              add [bx+si],al
00007CEB  0000              add [bx+si],al
00007CED  0000              add [bx+si],al
00007CEF  0000              add [bx+si],al
00007CF1  0000              add [bx+si],al
00007CF3  0000              add [bx+si],al
00007CF5  0000              add [bx+si],al
00007CF7  0000              add [bx+si],al
00007CF9  0000              add [bx+si],al
00007CFB  0000              add [bx+si],al
00007CFD  0000              add [bx+si],al
00007CFF  0000              add [bx+si],al
00007D01  0000              add [bx+si],al
00007D03  0000              add [bx+si],al
00007D05  0000              add [bx+si],al
00007D07  0000              add [bx+si],al
00007D09  0000              add [bx+si],al
00007D0B  0000              add [bx+si],al
00007D0D  0000              add [bx+si],al
00007D0F  0000              add [bx+si],al
00007D11  0000              add [bx+si],al
00007D13  0000              add [bx+si],al
00007D15  0000              add [bx+si],al
00007D17  0000              add [bx+si],al
00007D19  0000              add [bx+si],al
00007D1B  0000              add [bx+si],al
00007D1D  0000              add [bx+si],al
00007D1F  0000              add [bx+si],al
00007D21  0000              add [bx+si],al
00007D23  0000              add [bx+si],al
00007D25  0000              add [bx+si],al
00007D27  0000              add [bx+si],al
00007D29  0000              add [bx+si],al
00007D2B  0000              add [bx+si],al
00007D2D  0000              add [bx+si],al
00007D2F  0000              add [bx+si],al
00007D31  0000              add [bx+si],al
00007D33  0000              add [bx+si],al
00007D35  0000              add [bx+si],al
00007D37  0000              add [bx+si],al
00007D39  0000              add [bx+si],al
00007D3B  0000              add [bx+si],al
00007D3D  0000              add [bx+si],al
00007D3F  0000              add [bx+si],al
00007D41  0000              add [bx+si],al
00007D43  0000              add [bx+si],al
00007D45  0000              add [bx+si],al
00007D47  0000              add [bx+si],al
00007D49  0000              add [bx+si],al
00007D4B  0000              add [bx+si],al
00007D4D  0000              add [bx+si],al
00007D4F  0000              add [bx+si],al
00007D51  0000              add [bx+si],al
00007D53  0000              add [bx+si],al
00007D55  0000              add [bx+si],al
00007D57  0000              add [bx+si],al
00007D59  0000              add [bx+si],al
00007D5B  0000              add [bx+si],al
00007D5D  0000              add [bx+si],al
00007D5F  0000              add [bx+si],al
00007D61  0000              add [bx+si],al
00007D63  0000              add [bx+si],al
00007D65  0000              add [bx+si],al
00007D67  0000              add [bx+si],al
00007D69  0000              add [bx+si],al
00007D6B  0000              add [bx+si],al
00007D6D  0000              add [bx+si],al
00007D6F  0000              add [bx+si],al
00007D71  0000              add [bx+si],al
00007D73  0000              add [bx+si],al
00007D75  0000              add [bx+si],al
00007D77  0000              add [bx+si],al
00007D79  0000              add [bx+si],al
00007D7B  0000              add [bx+si],al
00007D7D  0000              add [bx+si],al
00007D7F  0000              add [bx+si],al
00007D81  0000              add [bx+si],al
00007D83  0000              add [bx+si],al
00007D85  0000              add [bx+si],al
00007D87  0000              add [bx+si],al
00007D89  0000              add [bx+si],al
00007D8B  0000              add [bx+si],al
00007D8D  0000              add [bx+si],al
00007D8F  0000              add [bx+si],al
00007D91  0000              add [bx+si],al
00007D93  0000              add [bx+si],al
00007D95  0000              add [bx+si],al
00007D97  0000              add [bx+si],al
00007D99  0000              add [bx+si],al
00007D9B  0000              add [bx+si],al
00007D9D  0000              add [bx+si],al
00007D9F  0000              add [bx+si],al
00007DA1  0000              add [bx+si],al
00007DA3  0000              add [bx+si],al
00007DA5  0000              add [bx+si],al
00007DA7  0000              add [bx+si],al
00007DA9  0000              add [bx+si],al
00007DAB  0000              add [bx+si],al
00007DAD  0000              add [bx+si],al
00007DAF  0000              add [bx+si],al
00007DB1  0000              add [bx+si],al
00007DB3  0000              add [bx+si],al
00007DB5  0000              add [bx+si],al
00007DB7  0000              add [bx+si],al
00007DB9  0000              add [bx+si],al
00007DBB  0000              add [bx+si],al
00007DBD  0000              add [bx+si],al
00007DBF  0000              add [bx+si],al
00007DC1  0000              add [bx+si],al
00007DC3  0000              add [bx+si],al
00007DC5  0000              add [bx+si],al
00007DC7  0000              add [bx+si],al
00007DC9  0000              add [bx+si],al
00007DCB  0000              add [bx+si],al
00007DCD  0000              add [bx+si],al
00007DCF  0000              add [bx+si],al
00007DD1  0000              add [bx+si],al
00007DD3  0000              add [bx+si],al
00007DD5  0000              add [bx+si],al
00007DD7  0000              add [bx+si],al
00007DD9  0000              add [bx+si],al
00007DDB  0000              add [bx+si],al
00007DDD  0000              add [bx+si],al
00007DDF  0000              add [bx+si],al
00007DE1  0000              add [bx+si],al
00007DE3  0000              add [bx+si],al
00007DE5  0000              add [bx+si],al
00007DE7  0000              add [bx+si],al
00007DE9  0000              add [bx+si],al
00007DEB  0000              add [bx+si],al
00007DED  0000              add [bx+si],al
00007DEF  0000              add [bx+si],al
00007DF1  0000              add [bx+si],al
00007DF3  0000              add [bx+si],al
00007DF5  0000              add [bx+si],al
00007DF7  0000              add [bx+si],al
00007DF9  0000              add [bx+si],al
00007DFB  0000              add [bx+si],al
00007DFD  0055AA            add [di-0x56],dl