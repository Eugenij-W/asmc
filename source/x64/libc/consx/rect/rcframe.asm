include consx.inc

	.data

FrameTypes label BYTE
	db '�Ŀ���'
	db '�ͻ�ȼ'
	db '��³��'
	db '�Ĵ�ô'

	.code

rcframe PROC USES rsi rdi rbx rc, wstr:PVOID, lsize, ftype

local	char_UL: BYTE,	; UpperLeft
	char_HL: BYTE,	; HorizontalLine
	char_VL: BYTE,	; VericalLine
	char_UR: BYTE,	; UpperRight
	char_LL: BYTE,	; LineLeft
	char_LR: BYTE,	; LineRight
	wordcol:qword

	mov	eax,r9d		; AL = Type [0,6,12,18]
	and	eax,0x00FF	; AH = Attrib
	lea	rsi,FrameTypes
	add	rsi,rax

	lodsw
	mov	char_UL,al	; UL '�'
	mov	char_HL,ah	; HL '�'
	lodsw
	mov	char_UR,al	; UR '�'
	mov	char_VL,ah	; VL '�'
	lodsw
	mov	char_LL,al	; LL '�'
	mov	char_LR,ah	; LR '�'

	mov	eax,lsize	;------------------------
	mov	rcx,rax		; line size - 80 on screen
	add	rax,rax
	movzx	rdx,rc.S_RECT.rc_y
	mul	rdx
	movzx	rdx,rc.S_RECT.rc_x
	add	rax,rdx
	add	rax,rdx
	mov	rdi,wstr
	add	rdi,rax

	movzx	rax,rc.S_RECT.rc_col
	sub	al,2
	mov	ch,al
	add	rax,rax
	mov	wordcol,rax

	mov	eax,ftype
	mov	dl,rc.S_RECT.rc_row
	mov	rsi,rdx
	mov	dl,cl
	add	rdx,rdx
	mov	rbx,rdi

	mov	cl,1
	mov	al,char_UL	; Upper Left '�'
	call	rcstosw
	mov	al,char_HL	; Horizontal Line '�'
	mov	cl,ch
	call	rcstosw
	inc	cl
	mov	al,char_UR	; Upper Right '�'
	call	rcstosw

	.if	esi > 1

		.if	esi != 2

			sub	esi,2
			.repeat
				add	ebx,edx
				mov	rdi,rbx
				inc	cl
				mov	al,char_VL ; Vertical Line '�'
				call	rcstosw
				add	rdi,wordcol
				inc	cl
				call	rcstosw
				dec	esi
			.until !esi
		.endif
		add	ebx,edx
		mov	edi,ebx
		mov	cl,1
		mov	al,char_LL ; Lower Left '�'
		call	rcstosw
		mov	al,char_HL ; Horizontal Line '�'
		mov	cl,ch
		call	rcstosw
		inc	cl
		mov	al,char_LR ; Lower Right '�'
		call	rcstosw
	.endif
	ret
rcstosw:
	.if	ah
		stosw
	.else
		stosb
		inc rdi
	.endif
	dec	cl
	jnz	rcstosw
	retn
rcframe ENDP

	END
