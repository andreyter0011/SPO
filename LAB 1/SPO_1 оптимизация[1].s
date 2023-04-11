	.file	"SPO_1.cpp"
	.text
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0: // переменная 
.LFB10708:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$40, %rsp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef // переменная
	.section .rdata,"dr"
.LC0: // символьные константы
	.ascii "NO\0" // массив символов
.LC1: // символьные константы
	.ascii "YES\0" // массив символов
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB9457:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	leaq	44(%rsp), %rdx
	movq	.refptr._ZSt3cin(%rip), %rcx
	call	_ZNSirsERi
	movl	44(%rsp), %eax
	leal	-1(%rax), %edx
	movl	%edx, 44(%rsp)
	testl	%eax, %eax
	je	.L3
	movq	.refptr._ZSt3cin(%rip), %r13
	movq	.refptr._ZSt4cout(%rip), %r12
	movq	%r12, %r14
	jmp	.L15
.L4:
	movl	$2, %r8d
	leaq	.LC0(%rip), %rdx
	movq	%r12, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%r12), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%r12), %rbx
	testq	%rbx, %rbx
	je	.L18
	cmpb	$0, 56(%rbx)
	je	.L9
	movzbl	67(%rbx), %edx
.L10:
	movsbl	%dl, %edx
	movq	%r14, %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
.L11:
	movl	44(%rsp), %eax
	leal	-1(%rax), %edx
	movl	%edx, 44(%rsp)
	testl	%eax, %eax
	je	.L3
.L15: // начало цикла
	leaq	36(%rsp), %rdx
	movq	%r13, %rcx
	call	_ZNSirsERi
	cmpl	$0, 36(%rsp)
	jle	.L4
	movl	$0, %ebx
	movl	$0, %esi
	leaq	40(%rsp), %rbp
	movq	.refptr._ZSt3cin(%rip), %rdi
// конец цикла
.L6: //  начала цикл
	movq	%rbp, %rdx
	movq	%rdi, %rcx
	call	_ZNSirsERi
	movl	40(%rsp), %eax
	andl	$1, %eax
	cmpl	$1, %eax
	sbbl	$-1, %esi
	addl	$1, %ebx
	movl	36(%rsp), %eax
	cmpl	%ebx, %eax
	jg	.L6
	testl	%esi, %esi
	je	.L4
	cmpl	%esi, %eax
	jne	.L7
	testb	$1, %sil
	je	.L4 // конец цикла
.L7:
	movl	$3, %r8d
	leaq	.LC1(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rbx
	movq	%rbx, %rcx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rax,%rbx), %rbx
	testq	%rbx, %rbx
	je	.L19
	cmpb	$0, 56(%rbx)
	je	.L13
	movzbl	67(%rbx), %edx
.L14:
	movsbl	%dl, %edx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZNSo3putEc
	movq	%rax, %rcx
	call	_ZNSo5flushEv
	jmp	.L11
.L18:
	call	_ZSt16__throw_bad_castv
.L9:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	%rbx, %rcx
	call	*48(%rax)
	movl	%eax, %edx
	jmp	.L10
.L19:
	call	_ZSt16__throw_bad_castv
.L13:
	movq	%rbx, %rcx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %edx
	movq	%rbx, %rcx
	call	*48(%rax)
	movl	%eax, %edx
	jmp	.L14
.L3:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef // переменная
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main: 
.LFB10709:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
	nop
	addq	$40, %rsp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
.lcomm _ZStL8__ioinit,1,1
	.ident	"GCC: (GNU) 12.2.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSirsERi;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
	.section	.rdata$.refptr._ZSt3cin, "dr"
	.globl	.refptr._ZSt3cin
	.linkonce	discard
.refptr._ZSt3cin:
	.quad	_ZSt3cin
