	.text
	.globl	clz
	.type	clz, @function
	/* Idea rozwiązania:
	1. Najpierw zapalamy wszystkie bity za wiodącą jedynką, tak aby nasza liczba x była
	postaci: 0...0011...111. 
	2. Następnie taką liczbę negujemy bitowo
	3. Liczymy zapalone bity (czyli te, które wcześniej były wiodącymi zerami) za pomocą metody dziel i zwyciężaj */
clz:
	movq	%rdi,%rax # w rdi mamy naszą liczbę x
	shrq	%rax
	orq		%rax,%rdi
	movq	%rdi,%rax
	shrq	$2,%rax
	orq		%rax,%rdi
	movq	%rdi,%rax
	shrq	$4,%rax
	orq		%rax,%rdi
	movq	%rdi,%rax
	shrq	$8,%rax
	orq		%rax,%rdi
	movq	%rdi,%rax
	shrq	$16,%rax
	orq		%rax,%rdi
	movq	%rdi,%rax
	shrq	$32,%rax
	orq		%rax,%rdi # zapaliliśmy wszystkie bity za wiodącą jedynką; teraz x jest postaci 00..00011....111

	notq	%rdi	# negujemy uzyskaną liczbę; mamy więc x jest postaci 11...11100...000
	
	movq	$0x5555555555555555,%rdx 
	movq 	$0xAAAAAAAAAAAAAAAA,%rcx
	andq	%rdi,%rdx
	andq	%rdi,%rcx
	shrq	%rcx
	addq	%rdx,%rcx	# w rcx: (x&0x5555555555555555) + ((x&0xAAAAAAAAAAAAAAAA)>>1)

	movq	$0x3333333333333333,%rdx
	movq	$0xCCCCCCCCCCCCCCCC,%rax
	andq	%rcx,%rdx
	andq	%rcx,%rax
	shrq	$2,%rax
	addq	%rdx,%rax  # w rax: (x&0x3333333333333333) + ((x&0xCCCCCCCCCCCCCCCC)>>2)

	movq	$0x0F0F0F0F0F0F0F0F,%rdx
	movq 	$0xF0F0F0F0F0F0F0F0,%rcx
	andq	%rax,%rdx
	andq	%rax,%rcx
	shrq	$4,%rcx
	addq	%rdx,%rcx  # w rcx: (x&0x0F0F0F0F0F0F0F0F) + ((x&0xF0F0F0F0F0F0F0F0)>>4)

	movq	%rcx,%rdx # od tego momentu możemy nieco zredukować liczbę instrukcji
	shrq	$32,%rdx
	andl	$0xFFFFFFFF,%ecx
	leaq	(%rcx,%rdx,),%rax # w rax: (x&0xFFFFFFFF) + (x>>32)

	movq	%rax,%rdx
	shrq	$16,%rdx
	andl	$0xFFFF,%eax
	addq	%rdx,%rax # w rax: (x&0xFFFF) + (x>>16)

	movq	%rax,%rdx
	shrq	$8,%rdx
	andl	$0xFF,%eax
	addq	%rdx,%rax # w rax: (x&0xFF) + (x>>8)
	ret
	.size	clz, .-clz
