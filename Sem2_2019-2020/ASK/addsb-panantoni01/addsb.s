        .text
        .globl  addsb
        .type   addsb, @function
        # Idea rozwiązania:
        # Najpierw dodajemy do siebie wektory a i b maskując ostatnie bity znaku na każdej liczbie int8_t.
        # Następnie znajdujemy elementy int8_t, przy dodawaniu których nastąpiło nasycenie (wykorzystujemy przy tym metodę 
        # wykrywania overflow). Te elementy, na których nie było nasycenia, pozostają bez zmian, a te gdzie nasycenie wystąpiło
        # zamieniamy na odpowiednio 0x7F bądź 0x80

addsb:
        movq    $0x7F7F7F7F7F7F7F7F,%rcx
        movq    %rdi,%rdx
        andq    %rcx,%rdx
        andq    %rsi,%rcx
        leaq    (%rdx,%rcx),%rax
        movq    $0x8080808080808080,%rcx
        movq    %rdi,%rdx
        xorq    %rsi,%rdx
        andq     %rcx,%rdx
        xorq    %rdx,%rax # w rax mamy (a&0x7F7F...7F + b&0x7F7F...7F)^((a^b)&0x8080...80)

        movq    %rdi,%rdx
        orq     %rsi,%rdx
        notq    %rdx
        andq    %rax,%rdx
        andq    %rcx,%rdx # w rdx mamy informację, przy dodawaniu których liczb int8_t nastąpiło nasycenie "górne"

        movq    %rax,%r8
        notq    %r8
        andq    %rdi,%r8
        andq    %rsi,%r8
        andq    %rcx,%r8 # w r8 mamy informację, przy dodawaniu których liczb int8_t nastąpiło nasycenie "dolne"
        
        leaq    (%r8,%rdx) ,%r9
        movq    %r9,%r10
        salq    %r9
        shrq    $7,%r10
        subq    %r10,%r9
        notq    %r9 # utworzyliśmy w r9 odpowiednią maskę bitową, w której bajty, na których nastąpiło nasycenie, są wyzerowane
        
        andq    %r9,%rax # w rax wyzerowaliśmy odpowiednie liczby int8_t (te, gdzie było nasycenie) i wstawimy tam odpowiednio 0x7F albo 0x80

        movq    %rdx,%r9
        shrq    $7,%r9
        subq    %r9,%rdx
        orq     %r8,%rdx
        orq     %rdx,%rax # wstawiliśmy w miejsce liczb int8_t, na których było nasycenie "górne" 0x7F, a w miejsce liczb,
                          # na których było nasycenie "dolne", wstawiliśmy 0x80. Liczby, na których nie było nasycenia pozostały bez zmian.
        ret

        .size   addsb, .-addsb