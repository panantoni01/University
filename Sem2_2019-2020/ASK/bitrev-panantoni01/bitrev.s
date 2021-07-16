.text
	.globl	bitrev
	.type	bitrev, @function
	# Idea rozwiązania:
	# niech nasza liczba x = b64,b63...b2,b1,b0
	# Algorytm opiera się na zasadzie dziel i zwyciężaj. Najpierw zamieniamy miejscami sąsiednie pojedyncze bity tak, że:
	# b63,b62...b4,b3,b2,b1,b0  --> b62,b63,....,b5,b2,b3,b0,b1
	# Dalej zamieniamy miejscami sąsiadujące dwójki bitów:
	# b62,b63,....,b4,b5,b2,b3,b0,b1 --> b60,b61,b62,b63...,b6,b7,b0,b1,b2,b3
	# Łatwo zauważyć, że zamieniając dalej sąsiadujące czwórki, potem ósemki, szesnastki i na końcu 32-bitowe części,
	# uzyskamy odwrócony wektor bitów.

bitrev:
	movq	$0xAAAAAAAAAAAAAAAA,%rdx
	andq 	%rdi,%rdx
	shrq 	%rdx
	movq	$0x5555555555555555,%rax
	andq	%rdi,%rax
	leaq	(%rdx,%rax,2),%rax # w rax mamy x z zamienionymi sąsiadującymi bitami
	
	movq	$0xCCCCCCCCCCCCCCCC,%rcx
	andq	%rax,%rcx
	shrq	$2,%rcx
	movq	$0x3333333333333333,%rdx
	andq	%rax,%rdx
	leaq	(%rcx,%rdx,4),%rdx # zamieniliśmy sąsiadujące dwójki bitów
	
	movq	$0xF0F0F0F0F0F0F0F0,%rcx
	andq	%rdx,%rcx
	shrq	$4,%rcx
	movq	$0x0F0F0F0F0F0F0F0F,%rax
	andq	%rdx,%rax
	salq	$4,%rax
	orq		%rcx,%rax # zamieniliśmy sąsiadujące czwórki bitów
	
	movq	$0xFF00FF00FF00FF00,%rcx
	andq	%rax,%rcx
	shrq	$8,%rcx
	movq	$0x00FF00FF00FF00FF,%rdx
	andq	%rax,%rdx
	salq	$8,%rdx
	orq		%rcx,%rdx # zamieniliśmy sąsiadujące ósemki bitów
	
	movq	%rdx,%rax
	shrq	$32,%rdx
	rorl	$16,%edx
	rorl	$16,%eax
	salq	$32,%rax
	orq		%rdx,%rax # szesnastki i części 32-bitowe mogliśmy zamienić nieco szybciej korzystając z rotacji;
	ret				  # teraz w rax mamy nasze "lustrzane odbicie"
	.size	bitrev, .-bitrev