	.text
	.globl	mod17
	.type	mod17, @function
/* Idea rozwiązania jest następująca: najpierw zliczamy osobno sumy cyfr na pozycjach parzystych i nieparzystych
(za pomocą metody dziel i zwyciężaj). Następnie je odejmujemy, patrzymy na ostatnie dwie cyfry uzyskanego wyniku
i za pomocą ponownego zastosowania odejmowania cyfr oraz instrukcji adc,sbb (dzięki nim zmniejszamy liczbę wykonanych instrukcji) 
dochodzimy do wyniku.*/
mod17:
	
	movq	$0xF0F0F0F0F0F0F0F0,%rdx
	andq	%rdi,%rdx
	shrq	$4,%rdx
	movq	%rdx,%rcx
	shrq	$32,%rcx
	addl	%ecx,%edx

	movl	%edx,%ecx
	shrl	$16,%ecx
	addw	%cx,%dx
	andl    $0xFFFF,%edx

	addb	%dh,%dl
	andw	$0x00FF,%dx # w %rdx mamy sumę cyfr z nieparzystych pozycji

	
	movq	$0x0F0F0F0F0F0F0F0F,%rax
	andq	%rdi,%rax
	movq	%rax,%rsi
	shrq	$32,%rsi
	addl	%esi,%eax

	movl	%eax,%esi
	shrl	$16,%esi
	addw	%si,%ax
	andl    $0xFFFF,%eax

	addb	%ah,%al
	andw	$0x00FF,%ax # w %rax mamy sumę cyfr z parzystych pozycji

	subq	%rdx,%rax # odejmujemy sumę cyfr z pozycji nieparzystych od sumy cyfr z pozycji parzystych
	
	sbbl	$0,%eax # jeśli suma cyfr z pozycji nieparzystych była większa - odejmujemy 1

	andl	$0xFF,%eax # "wycinamy" ostatnie 2 cyfry z uzyskanego wyniku odejmowania
	movl	%eax,%edx
	andl	$15,%eax
	shrl	$4,%edx
	xorq	%r8,%r8 
	subl	%edx,%eax # znowu stosujemy metodę odejmowania - tym razem na liczbie dwucyfrowej
	adcq	$0,%r8 # podobnie jak poprzednio - jeśli nastąpiła zmiana znaku, dodajemy 1
	andl	$15,%eax
	addq	%r8,%rax

	retq	
	.size	mod17, .-mod17
