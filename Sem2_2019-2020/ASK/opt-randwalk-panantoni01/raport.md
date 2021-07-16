# Raport do zadania opt-randwalk

### Autor: Antoni Pokusinski
### Numer indeksu: 314942

Adres do dokumentu w hackmd.io (również w pliku raport.url):
https://hackmd.io/JCA3O4lwQYC1vaJiTXcyOw

Konfiguracja 
---

Informacje o systemie:

 * Dystrybucja: Ubuntu 18.04.3 LTS
 * Jądro systemu: 5.3.0-42-generic
 * Kompilator: gcc
 * Procesor: Intel(R) Core(TM) i5-8265U CPU @ 1.60GHz
 * Liczba rdzeni: 4

Pamięć podręczna:

 * L1d: 32 KiB, 8-drożny (per rdzeń), rozmiar linii 64B
 * L2: 256 KiB, 4-drożny (per rdzeń), rozmiar linii 64B
 * L3: 6144 KiB, 12-drożny (współdzielony), rozmiar linii 64B

Pamięć TLB:

 * L1d: 4KiB strony, 4-drożny, 64 wpisy
 * L2: 4KiB strony, 6-drożny, 1536 wpisów

Informacje o pamięciach podręcznych uzyskano na podstawie wydruku programu
`getconf -a | grep CACHE` , `lscpu | grep "cache"`.

Wyniki eksperymentów
---
Uzyskano za pomocą objdump -d randwalk.o:
```=
Disassembly of section .text:

0000000000000000 <randwalk0>:
   0:	41 57                	push   %r15
   2:	41 56                	push   %r14
   4:	41 89 f7             	mov    %esi,%r15d
   7:	41 55                	push   %r13
   9:	41 54                	push   %r12
   b:	49 89 fe             	mov    %rdi,%r14
   e:	55                   	push   %rbp
   f:	53                   	push   %rbx
  10:	89 f3                	mov    %esi,%ebx
  12:	c1 eb 1f             	shr    $0x1f,%ebx
  15:	89 d5                	mov    %edx,%ebp
  17:	31 c0                	xor    %eax,%eax
  19:	01 f3                	add    %esi,%ebx
  1b:	48 83 ec 18          	sub    $0x18,%rsp
  1f:	31 c9                	xor    %ecx,%ecx
  21:	d1 fb                	sar    %ebx
  23:	45 31 e4             	xor    %r12d,%r12d
  26:	8d 56 ff             	lea    -0x1(%rsi),%edx
  29:	41 89 dd             	mov    %ebx,%r13d
  2c:	eb 11                	jmp    3f <randwalk0+0x3f>
  2e:	66 90                	xchg   %ax,%ax
  
  30:	31 f6                	xor    %esi,%esi
  32:	85 db                	test   %ebx,%ebx
  34:	40 0f 9f c6          	setg   %sil #
  38:	29 f3                	sub    %esi,%ebx
  3a:	83 ed 01             	sub    $0x1,%ebp
  3d:	74 43                	je     82 <randwalk0+0x82> # wyjście z pętli (len == 0)
  3f:	83 e9 02             	sub    $0x2,%ecx # początek pętli: k -= 2
  42:	78 54                	js     98 <randwalk0+0x98> #
  44:	41 89 d8             	mov    %ebx,%r8d
  47:	49 89 c1             	mov    %rax,%r9
  4a:	45 0f af c7          	imul   %r15d,%r8d
  4e:	49 d3 e9             	shr    %cl,%r9
  51:	45 01 e8             	add    %r13d,%r8d
  54:	4d 63 c0             	movslq %r8d,%r8
  57:	43 0f b6 34 06       	movzbl (%r14,%r8,1),%esi
  5c:	41 01 f4             	add    %esi,%r12d
  5f:	41 83 e1 03          	and    $0x3,%r9d
  63:	74 cb                	je     30 <randwalk0+0x30> #
  65:	41 83 f9 01          	cmp    $0x1,%r9d
  69:	74 45                	je     b0 <randwalk0+0xb0> #
  6b:	41 83 f9 02          	cmp    $0x2,%r9d
  6f:	74 4f                	je     c0 <randwalk0+0xc0> #
  71:	31 f6                	xor    %esi,%esi
  73:	44 39 ea             	cmp    %r13d,%edx
  76:	40 0f 9f c6          	setg   %sil #
  7a:	41 01 f5             	add    %esi,%r13d
  7d:	83 ed 01             	sub    $0x1,%ebp
  80:	75 bd                	jne    3f <randwalk0+0x3f> #
  
  82:	48 83 c4 18          	add    $0x18,%rsp
  86:	44 89 e0             	mov    %r12d,%eax
  89:	5b                   	pop    %rbx
  8a:	5d                   	pop    %rbp
  8b:	41 5c                	pop    %r12
  8d:	41 5d                	pop    %r13
  8f:	41 5e                	pop    %r14
  91:	41 5f                	pop    %r15
  93:	c3                   	retq   
  94:	0f 1f 40 00          	nopl   0x0(%rax)
  
  98:	31 c0                	xor    %eax,%eax
  9a:	89 54 24 0c          	mov    %edx,0xc(%rsp)
  9e:	e8 00 00 00 00       	callq  a3 <randwalk0+0xa3>
  a3:	b9 3e 00 00 00       	mov    $0x3e,%ecx
  a8:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  ac:	eb 96                	jmp    44 <randwalk0+0x44>
  ae:	66 90                	xchg   %ax,%ax
  b0:	31 f6                	xor    %esi,%esi
  b2:	39 da                	cmp    %ebx,%edx
  b4:	40 0f 9f c6          	setg   %sil #
  b8:	01 f3                	add    %esi,%ebx
  ba:	e9 7b ff ff ff       	jmpq   3a <randwalk0+0x3a>
  bf:	90                   	nop
  c0:	31 f6                	xor    %esi,%esi
  c2:	45 85 ed             	test   %r13d,%r13d
  c5:	40 0f 9f c6          	setg   %sil #
  c9:	41 29 f5             	sub    %esi,%r13d
  cc:	e9 69 ff ff ff       	jmpq   3a <randwalk0+0x3a>
  d1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  dd:	00 00 00 

00000000000000e0 <randwalk1>:
  e0:	41 57                	push   %r15
  e2:	41 56                	push   %r14
  e4:	41 89 f7             	mov    %esi,%r15d
  e7:	41 55                	push   %r13
  e9:	41 54                	push   %r12
  eb:	49 89 fe             	mov    %rdi,%r14
  ee:	55                   	push   %rbp
  ef:	53                   	push   %rbx
  f0:	89 f3                	mov    %esi,%ebx
  f2:	c1 eb 1f             	shr    $0x1f,%ebx
  f5:	41 89 d4             	mov    %edx,%r12d
  f8:	31 c0                	xor    %eax,%eax
  fa:	01 f3                	add    %esi,%ebx
  fc:	48 83 ec 18          	sub    $0x18,%rsp
 100:	8d 56 ff             	lea    -0x1(%rsi),%edx
 103:	d1 fb                	sar    %ebx
 105:	31 c9                	xor    %ecx,%ecx
 107:	45 31 ed             	xor    %r13d,%r13d
 10a:	89 dd                	mov    %ebx,%ebp
 10c:	e9 88 00 00 00       	jmpq   199 <randwalk1+0xb9>
 111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 
 118:	41 89 d9             	mov    %ebx,%r9d
 11b:	49 89 c0             	mov    %rax,%r8
 11e:	45 0f af cf          	imul   %r15d,%r9d
 122:	49 d3 e8             	shr    %cl,%r8
 125:	41 01 e9             	add    %ebp,%r9d
 128:	4d 63 c9             	movslq %r9d,%r9
 12b:	43 0f b6 34 0e       	movzbl (%r14,%r9,1),%esi
 130:	41 01 f5             	add    %esi,%r13d
 133:	31 f6                	xor    %esi,%esi
 135:	41 83 e0 03          	and    $0x3,%r8d
 139:	40 0f 94 c6          	sete   %sil #
 13d:	31 ff                	xor    %edi,%edi
 13f:	85 db                	test   %ebx,%ebx
 141:	40 0f 9f c7          	setg   %dil #
 145:	0f af f7             	imul   %edi,%esi
 148:	29 f3                	sub    %esi,%ebx # i -= ...
 14a:	31 f6                	xor    %esi,%esi
 14c:	41 83 f8 01          	cmp    $0x1,%r8d
 150:	40 0f 94 c6          	sete   %sil #
 154:	31 ff                	xor    %edi,%edi
 156:	39 d3                	cmp    %edx,%ebx
 158:	40 0f 9c c7          	setl   %dil #
 15c:	0f af f7             	imul   %edi,%esi
 15f:	01 f3                	add    %esi,%ebx # i += ...
 161:	31 f6                	xor    %esi,%esi
 163:	41 83 f8 02          	cmp    $0x2,%r8d
 167:	40 0f 94 c6          	sete   %sil #
 16b:	31 ff                	xor    %edi,%edi
 16d:	85 ed                	test   %ebp,%ebp
 16f:	40 0f 9f c7          	setg   %dil #
 173:	0f af f7             	imul   %edi,%esi
 176:	29 f5                	sub    %esi,%ebp # j -= ...
 178:	41 83 f8 03          	cmp    $0x3,%r8d
 17c:	41 0f 94 c0          	sete   %r8b #
 180:	31 f6                	xor    %esi,%esi
 182:	39 d5                	cmp    %edx,%ebp
 184:	40 0f 9c c6          	setl   %sil #
 188:	45 0f b6 c0          	movzbl %r8b,%r8d
 18c:	44 0f af c6          	imul   %esi,%r8d
 190:	44 01 c5             	add    %r8d,%ebp # j -= ...
 193:	41 83 ec 01          	sub    $0x1,%r12d
 197:	74 27                	je     1c0 <randwalk1+0xe0> # wyjście z pętli gdy len == 0
 199:	83 e9 02             	sub    $0x2,%ecx
 19c:	0f 89 76 ff ff ff    	jns    118 <randwalk1+0x38> #
 1a2:	31 c0                	xor    %eax,%eax
 1a4:	89 54 24 0c          	mov    %edx,0xc(%rsp)
 1a8:	e8 00 00 00 00       	callq  1ad <randwalk1+0xcd>
 1ad:	b9 3e 00 00 00       	mov    $0x3e,%ecx
 1b2:	8b 54 24 0c          	mov    0xc(%rsp),%edx
 1b6:	e9 5d ff ff ff       	jmpq   118 <randwalk1+0x38>

 1bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 1c0:	48 83 c4 18          	add    $0x18,%rsp
 1c4:	44 89 e8             	mov    %r13d,%eax
 1c7:	5b                   	pop    %rbx
 1c8:	5d                   	pop    %rbp
 1c9:	41 5c                	pop    %r12
 1cb:	41 5d                	pop    %r13
 1cd:	41 5e                	pop    %r14
 1cf:	41 5f                	pop    %r15
 1d1:	c3                   	retq 
```

* Zdeasemblowane funkcje randwalk0 i randwalk1 są widoczne powyżej. Możemy z nich odczytać ile instrukcji maszynowych znajduje się w pętlach każdej funkcji:
    - randwalk1: 50 instrukcji (od 0x118 do 0x1b6)
    - randwalk0: 48 instrukcji (od 0x30 do 0x80 oraz od 0x98 do 0xd6)

Kluczowe znaczenie dla czasu działania programu ma jednak liczba skoków warunkowych w ciele pętli:
    
- randwalk1: 2 skoki warunkowe:
    
    
    ```=
    197:	74 27                	je     1c0 <randwalk1+0xe0># wyjście z pętli (len == 0)
    199:	83 e9 02             	sub    $0x2,%ecx
    19c:	0f 89 76 ff ff ff    	jns    118 <randwalk1+0x38># ewentualne wejście do if(k<0)
    ```
    
- randwalk0: 6 skoków warunkowych:
    
    ```=
    3d:	74 43                	je     82 <randwalk0+0x82> # wyjście z pętli (len == 0)
    3f:	83 e9 02             	sub    $0x2,%ecx 
    42:	78 54                	js     98 <randwalk0+0x98># ewentualne wejście do if(k<0)
    ```
    
    ```=
    80:	75 bd                	jne    3f <randwalk0+0x3f>
    ```
   
    
    oraz to co najważniejsze, czyli skoki wynikające z implementacji za pomocą if...else if:
    
    ```=
    5f:	41 83 e1 03          	and    $0x3,%r9d
    63:	74 cb                	je     30 <randwalk0+0x30> 
    65:	41 83 f9 01          	cmp    $0x1,%r9d
    69:	74 45                	je     b0 <randwalk0+0xb0> 
    6b:	41 83 f9 02          	cmp    $0x2,%r9d
    6f:	74 4f                	je     c0 <randwalk0+0xc0> 
    ```
    
    Warto zauważyć, że rolę powyższych skoków z randwalk0 pełnią w randwalk1 instrukcje SETcc.


* Uruchamiając po kilka razy każdą wersję programu dostajemy następujące IPC:
    - randwalk0: 0.777 IPC
    - randwalk1: 3.211 IPC

    Widać więc wyraźnie, że zoptymalizowany algorytm działa szybciej od randwalk0. Jest to zasługa znacznego zmniejszenia liczby źle przewidzianych skoków - po uruchomieniu obu funkcji z flagą *-p branch* dostajemy branch misprediction ratio:
    - randwalk0: 21.345 %
    - randwalk1: 0.003 %


* Okazuje się, że kolejność w jakiej sprawdzamy wartość zmiennej *d* ma znaczenie. W podpkt. wyżej mamy pomiary dla kolejności 0 1 2 3 (czyli najpierw mamy if (d==0), potem if (d=1) itd). Poniższa tabelka przedstawia wartości IPC dla innych kolejności:


|         | randwalk0 | randwalk1 |
|---------|-----------|-----------|
| 3 2 1 0 | 0.955     | 3.416     |
| 3 1 2 0 | 0.929     | 3.419     |
| 0 1 3 2 | 0.982     | 3.188     |
| 1 0 3 2 | 0.866     | 3.329     |

* Okazuje się, że również rozmiar tablicy ma niewielki wpływ na działanie programu. Wraz ze wzrostem długości boku tablicy, IPC zmniejsza się niewiele, ale zauważalnie, co ilustruje wykres. Dzieje się tak z uwagi na coraz większą liczbę chybień w pamięci podręczne, co ilustruje poniższa tabela chybień w pamięci podręczne w zależności od rozmiaru tablicy (poniższe pomiary wykonano dla wersji randwalk1; dla randwalk0 tendencja wzrostowa jest bardzo podobna):


| **n**  | L1    | L2     | L3    |
|------  |-------|--------|-------|
| **6**  | 0.338 | 0.023  | 0.019 |
| **8**  | 3.325 | 0.503  | 0.31  |
| **10** | 6.065 | 1.836  | 0.268 |
| **12** | 10.64 | 20.385 | 1.022 |
| **14** | 7.32  | 25.043 | 1.133 |


Wykres przedstawiający uśrednione pomiary (IPC w zależności od rozmiaru tablicy):

https://imgur.com/a/sw5kaiy![](https://i.imgur.com/D52DbME.png)




Wnioski
---

Wersja zoptymalizowana jest lepsza od randwalk0, ponieważ generuje znacznie mniejszą liczbę źle przewidzianych skoków. Widać to po deasemblacji obu funkcji - niektóre skoki warunkowe zostały "zastąpione" przez SETcc, które nie generują kar jak w przypadku źle przewidzianego skoku. Okazuje się, że wpływ na działanie algorytmu mają również inne czynniki jak kolejność wykonywania niektórych instrukcji oraz rozmiar tablicy, jednak nie zmieniają one wydajności tak znacząco jak zmniejszenie liczby skoków warunkowych.
