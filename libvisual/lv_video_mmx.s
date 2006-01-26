	.file	"lv_video_mmx.c"
	.text
.globl _lv_blit_overlay_alpha32_mmx
	.type	_lv_blit_overlay_alpha32_mmx, @function
_lv_blit_overlay_alpha32_mmx:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$84, %esp
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	addl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	addl	20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	-24(%ebp), %eax
	jge	.L2
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	subl	-24(%ebp), %edx
	leal	-24(%ebp), %eax
	addl	%edx, (%eax)
.L2:
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	cmpl	-16(%ebp), %eax
	jge	.L4
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, %edx
	subl	-16(%ebp), %edx
	leal	-16(%ebp), %eax
	addl	%edx, (%eax)
.L4:
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	cmpl	$0, -24(%ebp)
	jns	.L6
	movl	$0, -80(%ebp)
	jmp	.L8
.L6:
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -20(%ebp)
#APP
	
	 pxor %%mm6, %%mm6
#NO_APP
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	cmpl	$0, -76(%ebp)
	jns	.L9
	movl	$0, -76(%ebp)
.L9:
	movl	8(%ebp), %eax
	movl	36(%eax), %eax
	movl	-76(%ebp), %edx
	imull	%eax, %edx
	movl	%edx, -72(%ebp)
	cmpl	$0, 16(%ebp)
	jle	.L10
	movl	16(%ebp), %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -68(%ebp)
	jmp	.L12
.L10:
	movl	$0, -68(%ebp)
.L12:
	movl	-72(%ebp), %eax
	addl	-68(%ebp), %eax
	movl	%eax, %edx
	leal	-32(%ebp), %eax
	addl	%edx, (%eax)
	cmpl	$0, 20(%ebp)
	jns	.L13
	movl	20(%ebp), %eax
	sarl	$31, %eax
	movl	20(%ebp), %ecx
	xorl	%eax, %ecx
	movl	%ecx, -64(%ebp)
	subl	%eax, -64(%ebp)
	jmp	.L15
.L13:
	movl	$0, -64(%ebp)
.L15:
	movl	12(%ebp), %eax
	movl	36(%eax), %eax
	movl	-64(%ebp), %edx
	imull	%eax, %edx
	movl	%edx, -60(%ebp)
	cmpl	$0, 16(%ebp)
	jns	.L16
	movl	16(%ebp), %eax
	cltd
	movl	%edx, %eax
	xorl	16(%ebp), %eax
	subl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -56(%ebp)
	jmp	.L18
.L16:
	movl	$0, -56(%ebp)
.L18:
	movl	-60(%ebp), %eax
	addl	-56(%ebp), %eax
	movl	%eax, %edx
	leal	-28(%ebp), %eax
	addl	%edx, (%eax)
	movl	20(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	cmpl	$0, -84(%ebp)
	jns	.L19
	movl	$0, -84(%ebp)
.L19:
	movl	-84(%ebp), %eax
	movl	%eax, -12(%ebp)
	jmp	.L20
.L21:
	cmpl	$0, 16(%ebp)
	jle	.L22
	movl	16(%ebp), %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -52(%ebp)
	jmp	.L24
.L22:
	movl	$0, -52(%ebp)
.L24:
	movl	-52(%ebp), %edx
	movl	%edx, -8(%ebp)
	jmp	.L25
.L26:
	movl	-32(%ebp), %ecx
	movl	-32(%ebp), %edx
	movl	-28(%ebp), %eax
#APP
	
	 movd (%eax), %mm0
	 movd (%edx), %mm1
	 movq %mm0, %mm2
	 movq %mm0, %mm3
	 psrlq $24, %mm2
	 movq %mm0, %mm4
	 psrld $24, %mm3
	 psrld $24, %mm4
	 psllq $32, %mm2
	 psllq $16, %mm3
	 por %mm4, %mm2
	 punpcklbw %mm6, %mm0
	 por %mm3, %mm2
	 punpcklbw %mm6, %mm1
	 psubsw %mm1, %mm0
	 pmullw %mm2, %mm0
	 psrlw $8, %mm0
	 paddb %mm1, %mm0
	 packuswb %mm0, %mm0
	 movd %mm0, (%ecx)
#NO_APP
	leal	-32(%ebp), %eax
	addl	$4, (%eax)
	leal	-28(%ebp), %eax
	addl	$4, (%eax)
	leal	-8(%ebp), %eax
	addl	$4, (%eax)
.L25:
	movl	-8(%ebp), %eax
	cmpl	-20(%ebp), %eax
	jl	.L26
	movl	8(%ebp), %eax
	movl	36(%eax), %ecx
	movl	16(%ebp), %edx
	movl	-24(%ebp), %eax
	subl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	movl	%edx, -48(%ebp)
	cmpl	$0, 16(%ebp)
	jns	.L28
	movl	16(%ebp), %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -44(%ebp)
	jmp	.L30
.L28:
	movl	$0, -44(%ebp)
.L30:
	movl	-48(%ebp), %eax
	subl	-44(%ebp), %eax
	movl	%eax, %edx
	leal	-32(%ebp), %eax
	addl	%edx, (%eax)
	cmpl	$0, 16(%ebp)
	jns	.L31
	movl	16(%ebp), %eax
	cltd
	movl	%edx, %eax
	xorl	16(%ebp), %eax
	subl	%edx, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -40(%ebp)
	jmp	.L33
.L31:
	movl	$0, -40(%ebp)
.L33:
	leal	-28(%ebp), %eax
	movl	-40(%ebp), %ecx
	addl	%ecx, (%eax)
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	cmpl	%eax, %edx
	jle	.L34
	movl	12(%ebp), %eax
	movl	36(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$3, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	addl	16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, -36(%ebp)
	jmp	.L36
.L34:
	movl	$0, -36(%ebp)
.L36:
	leal	-28(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	%edx, (%eax)
	leal	-12(%ebp), %eax
	addl	$1, (%eax)
.L20:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jl	.L21
#APP
	
	 emms
#NO_APP
	movl	$0, -80(%ebp)
.L8:
	movl	-80(%ebp), %eax
	leave
	ret
	.size	_lv_blit_overlay_alpha32_mmx, .-_lv_blit_overlay_alpha32_mmx
.globl _lv_scale_bilinear_32_mmx
	.type	_lv_scale_bilinear_32_mmx, @function
_lv_scale_bilinear_32_mmx:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	subl	$52, %esp
	movl	8(%ebp), %eax
	movl	40(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, %eax
	cltd
	idivl	-56(%ebp)
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	subl	$1, %eax
	movl	%eax, %edx
	sall	$16, %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -56(%ebp)
	movl	%edx, %eax
	cltd
	idivl	-56(%ebp)
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -40(%ebp)
#APP
	
	emms
#NO_APP
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -48(%ebp)
	jmp	.L40
.L41:
	movl	-40(%ebp), %eax
	movl	%eax, %edx
	shrl	$16, %edx
	movl	12(%ebp), %eax
	movl	24(%eax), %eax
	subl	$1, %eax
	cmpl	%eax, %edx
	jb	.L42
	leal	-40(%ebp), %eax
	subl	$65536, (%eax)
.L42:
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-40(%ebp), %eax
	shrl	$16, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	12(%ebp), %eax
	movl	44(%eax), %edx
	movl	-40(%ebp), %eax
	shrl	$16, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	movl	%eax, -20(%ebp)
	movzwl	-40(%ebp),%eax
	shrl	$12, %eax
	orl	$1048576, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -44(%ebp)
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	subl	$1, %eax
	movl	%eax, -16(%ebp)
	jmp	.L44
.L45:
	movzwl	-44(%ebp),%eax
	shrl	$12, %eax
	orl	$1048576, %eax
	movl	%eax, -12(%ebp)
	movl	-44(%ebp), %eax
	shrl	$16, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	addl	-24(%ebp), %ecx
	movl	-44(%ebp), %eax
	shrl	$16, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	addl	-20(%ebp), %edx
	movl	-28(%ebp), %eax
#APP
	
	 pxor %mm7, %mm7#1
	 movd -12(%ebp), %mm4#2
	 movd -8(%ebp), %mm6#1
	 punpcklwd %mm4, %mm4#2
	 movq      %mm6, %mm3#1
	 pxor      %mm5, %mm5#2
	 punpckldq %mm6, %mm6#3
	 movq (%ecx), %mm0#1
	 punpckldq %mm4, %mm5#2
	 punpcklwd %mm7, %mm3#3
	 movq      %mm0, %mm2#1
	 psubusw   %mm5, %mm4#2
	 punpckldq %mm3, %mm3#4
	 movq (%edx), %mm1#2
	 pslld     $16,   %mm3#3
	 punpcklbw %mm7, %mm0#2
	 psubusw   %mm3, %mm6#4
	 movq      %mm1, %mm3#C
	 pmullw    %mm6, %mm4#5
	 movq      %mm4, %mm5#4
	 punpcklbw %mm7, %mm1#6
	 punpckhwd %mm4, %mm4#3
	 punpckhbw %mm7, %mm2#5
	 punpcklwd %mm5, %mm5#4
	 punpckhbw %mm7, %mm3#5
	 movq      %mm5, %mm6#6
	 movq      %mm4, %mm7#5
	 punpcklwd %mm6, %mm6#6
	 punpcklwd %mm7, %mm7#5
	 pmullw    %mm6, %mm3#5
	 punpckhwd %mm5, %mm5#6
	 pmullw    %mm7, %mm1#5
	 pmullw    %mm5, %mm2#6
	 punpckhwd %mm4, %mm4#6
	 pmullw    %mm4, %mm0#7
	 paddw     %mm2, %mm3#7
	 paddw     %mm1, %mm0#7
	 paddw     %mm3, %mm0#7
	 psrlw     $8,    %mm0
	 packuswb  %mm7, %mm0
	 movd    %mm0, (%eax)
#NO_APP
	leal	-28(%ebp), %eax
	addl	$4, (%eax)
	movl	-36(%ebp), %edx
	leal	-44(%ebp), %eax
	addl	%edx, (%eax)
.L44:
	leal	-16(%ebp), %eax
	subl	$1, (%eax)
	cmpl	$-1, -16(%ebp)
	jne	.L45
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	addl	%eax, %eax
	addl	%eax, %eax
	negl	%eax
	leal	(%edx,%eax), %eax
	addl	$4, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	movl	%eax, %edi
	cld
	movl	%edx, %ecx
	movl	$0, %eax
	rep
	stosb
	movl	8(%ebp), %eax
	movl	36(%eax), %edx
	movl	%edx, %eax
	sarl	$31, %eax
	andl	$3, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%eax, %eax
	addl	-28(%ebp), %eax
	addl	$4, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %edx
	leal	-40(%ebp), %eax
	addl	%edx, (%eax)
.L40:
	leal	-48(%ebp), %eax
	subl	$1, (%eax)
	cmpl	$-1, -48(%ebp)
	jne	.L41
#APP
	
	emms
#NO_APP
	movl	$0, %eax
	addl	$52, %esp
	popl	%edi
	popl	%ebp
	ret
	.size	_lv_scale_bilinear_32_mmx, .-_lv_scale_bilinear_32_mmx
	.ident	"GCC: (GNU) 4.0.3 20060115 (prerelease) (Ubuntu 4.0.2-7ubuntu1)"
	.section	.note.GNU-stack,"",@progbits
