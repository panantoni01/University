
ctarget:     file format elf64-x86-64


Disassembly of section .interp:

00000000004002a8 <.interp>:
  4002a8:	2f                   	(bad)  
  4002a9:	6c                   	insb   (%dx),%es:(%rdi)
  4002aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  4002b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  4002b6:	78 2d                	js     4002e5 <_init-0xd1b>
  4002b8:	78 38                	js     4002f2 <_init-0xd0e>
  4002ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  4002c0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4002c1:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

00000000004002c4 <.note.ABI-tag>:
  4002c4:	04 00                	add    $0x0,%al
  4002c6:	00 00                	add    %al,(%rax)
  4002c8:	10 00                	adc    %al,(%rax)
  4002ca:	00 00                	add    %al,(%rax)
  4002cc:	01 00                	add    %eax,(%rax)
  4002ce:	00 00                	add    %al,(%rax)
  4002d0:	47                   	rex.RXB
  4002d1:	4e 55                	rex.WRX push %rbp
  4002d3:	00 00                	add    %al,(%rax)
  4002d5:	00 00                	add    %al,(%rax)
  4002d7:	00 03                	add    %al,(%rbx)
  4002d9:	00 00                	add    %al,(%rax)
  4002db:	00 02                	add    %al,(%rdx)
  4002dd:	00 00                	add    %al,(%rax)
  4002df:	00 00                	add    %al,(%rax)
  4002e1:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

00000000004002e4 <.note.gnu.build-id>:
  4002e4:	04 00                	add    $0x0,%al
  4002e6:	00 00                	add    %al,(%rax)
  4002e8:	14 00                	adc    $0x0,%al
  4002ea:	00 00                	add    %al,(%rax)
  4002ec:	03 00                	add    (%rax),%eax
  4002ee:	00 00                	add    %al,(%rax)
  4002f0:	47                   	rex.RXB
  4002f1:	4e 55                	rex.WRX push %rbp
  4002f3:	00 ce                	add    %cl,%dh
  4002f5:	4a d1 52 bc          	rex.WX rclq -0x44(%rdx)
  4002f9:	4d 98                	rex.WRB cltq 
  4002fb:	60                   	(bad)  
  4002fc:	f3 00 66 d7          	repz add %ah,-0x29(%rsi)
  400300:	4e                   	rex.WRX
  400301:	a2                   	.byte 0xa2
  400302:	b8 79 d6 79 92       	mov    $0x9279d679,%eax
  400307:	4b                   	rex.WXB

Disassembly of section .gnu.hash:

0000000000400308 <.gnu.hash>:
  400308:	03 00                	add    (%rax),%eax
  40030a:	00 00                	add    %al,(%rax)
  40030c:	23 00                	and    (%rax),%eax
  40030e:	00 00                	add    %al,(%rax)
  400310:	01 00                	add    %eax,(%rax)
  400312:	00 00                	add    %al,(%rax)
  400314:	06                   	(bad)  
  400315:	00 00                	add    %al,(%rax)
  400317:	00 00                	add    %al,(%rax)
  400319:	05 20 00 80 00       	add    $0x800020,%eax
  40031e:	04 02                	add    $0x2,%al
  400320:	00 00                	add    %al,(%rax)
  400322:	00 00                	add    %al,(%rax)
  400324:	23 00                	and    (%rax),%eax
  400326:	00 00                	add    %al,(%rax)
  400328:	25 00 00 00 66       	and    $0x66000000,%eax
  40032d:	55                   	push   %rbp
  40032e:	61                   	(bad)  
  40032f:	10 39                	adc    %bh,(%rcx)
  400331:	f2 8b 1c b3          	repnz mov (%rbx,%rsi,4),%ebx
  400335:	a2                   	.byte 0xa2
  400336:	f7 12                	notl   (%rdx)

Disassembly of section .dynsym:

0000000000400338 <.dynsym>:
	...
  400350:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  400351:	00 00                	add    %al,(%rax)
  400353:	00 12                	add    %dl,(%rdx)
	...
  400365:	00 00                	add    %al,(%rax)
  400367:	00 7b 00             	add    %bh,0x0(%rbx)
  40036a:	00 00                	add    %al,(%rax)
  40036c:	12 00                	adc    (%rax),%al
	...
  40037e:	00 00                	add    %al,(%rax)
  400380:	e7 00                	out    %eax,$0x0
  400382:	00 00                	add    %al,(%rax)
  400384:	12 00                	adc    (%rax),%al
	...
  400396:	00 00                	add    %al,(%rax)
  400398:	31 00                	xor    %eax,(%rax)
  40039a:	00 00                	add    %al,(%rax)
  40039c:	12 00                	adc    (%rax),%al
	...
  4003ae:	00 00                	add    %al,(%rax)
  4003b0:	17                   	(bad)  
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 12                	add    %dl,(%rdx)
	...
  4003c5:	00 00                	add    %al,(%rax)
  4003c7:	00 58 00             	add    %bl,0x0(%rax)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	12 00                	adc    (%rax),%al
	...
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	17                   	(bad)  
  4003e1:	01 00                	add    %eax,(%rax)
  4003e3:	00 12                	add    %dl,(%rdx)
	...
  4003f5:	00 00                	add    %al,(%rax)
  4003f7:	00 6f 00             	add    %ch,0x0(%rdi)
  4003fa:	00 00                	add    %al,(%rax)
  4003fc:	12 00                	adc    (%rax),%al
	...
  40040e:	00 00                	add    %al,(%rax)
  400410:	f6 00 00             	testb  $0x0,(%rax)
  400413:	00 12                	add    %dl,(%rdx)
	...
  400425:	00 00                	add    %al,(%rax)
  400427:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
  40042b:	00 12                	add    %dl,(%rdx)
	...
  40043d:	00 00                	add    %al,(%rax)
  40043f:	00 c0                	add    %al,%al
  400441:	00 00                	add    %al,(%rax)
  400443:	00 12                	add    %dl,(%rdx)
	...
  400455:	00 00                	add    %al,(%rax)
  400457:	00 ef                	add    %ch,%bh
  400459:	00 00                	add    %al,(%rax)
  40045b:	00 12                	add    %dl,(%rdx)
	...
  40046d:	00 00                	add    %al,(%rax)
  40046f:	00 8c 00 00 00 12 00 	add    %cl,0x120000(%rax,%rax,1)
	...
  400486:	00 00                	add    %al,(%rax)
  400488:	05 01 00 00 12       	add    $0x12000001,%eax
	...
  40049d:	00 00                	add    %al,(%rax)
  40049f:	00 51 00             	add    %dl,0x0(%rcx)
  4004a2:	00 00                	add    %al,(%rax)
  4004a4:	12 00                	adc    (%rax),%al
	...
  4004b6:	00 00                	add    %al,(%rax)
  4004b8:	cd 00                	int    $0x0
  4004ba:	00 00                	add    %al,(%rax)
  4004bc:	12 00                	adc    (%rax),%al
	...
  4004ce:	00 00                	add    %al,(%rax)
  4004d0:	f5                   	cmc    
  4004d1:	00 00                	add    %al,(%rax)
  4004d3:	00 12                	add    %dl,(%rdx)
	...
  4004e5:	00 00                	add    %al,(%rax)
  4004e7:	00 3e                	add    %bh,(%rsi)
  4004e9:	01 00                	add    %eax,(%rax)
  4004eb:	00 20                	add    %ah,(%rax)
	...
  4004fd:	00 00                	add    %al,(%rax)
  4004ff:	00 68 00             	add    %ch,0x0(%rax)
  400502:	00 00                	add    %al,(%rax)
  400504:	12 00                	adc    (%rax),%al
	...
  400516:	00 00                	add    %al,(%rax)
  400518:	98                   	cwtl   
  400519:	00 00                	add    %al,(%rax)
  40051b:	00 12                	add    %dl,(%rdx)
	...
  40052d:	00 00                	add    %al,(%rax)
  40052f:	00 5d 00             	add    %bl,0x0(%rbp)
  400532:	00 00                	add    %al,(%rax)
  400534:	12 00                	adc    (%rax),%al
	...
  400546:	00 00                	add    %al,(%rax)
  400548:	e8 00 00 00 12       	callq  1240054d <_end+0x11ff9415>
	...
  40055d:	00 00                	add    %al,(%rax)
  40055f:	00 39                	add    %bh,(%rcx)
  400561:	00 00                	add    %al,(%rax)
  400563:	00 12                	add    %dl,(%rdx)
	...
  400575:	00 00                	add    %al,(%rax)
  400577:	00 c6                	add    %al,%dh
  400579:	00 00                	add    %al,(%rax)
  40057b:	00 12                	add    %dl,(%rdx)
	...
  40058d:	00 00                	add    %al,(%rax)
  40058f:	00 fd                	add    %bh,%ch
  400591:	00 00                	add    %al,(%rax)
  400593:	00 12                	add    %dl,(%rdx)
	...
  4005a5:	00 00                	add    %al,(%rax)
  4005a7:	00 2b                	add    %ch,(%rbx)
  4005a9:	00 00                	add    %al,(%rax)
  4005ab:	00 12                	add    %dl,(%rdx)
	...
  4005bd:	00 00                	add    %al,(%rax)
  4005bf:	00 91 00 00 00 12    	add    %dl,0x12000000(%rcx)
	...
  4005d5:	00 00                	add    %al,(%rax)
  4005d7:	00 9f 00 00 00 12    	add    %bl,0x12000000(%rdi)
	...
  4005ed:	00 00                	add    %al,(%rax)
  4005ef:	00 db                	add    %bl,%bl
  4005f1:	00 00                	add    %al,(%rax)
  4005f3:	00 12                	add    %dl,(%rdx)
	...
  400605:	00 00                	add    %al,(%rax)
  400607:	00 23                	add    %ah,(%rbx)
  400609:	00 00                	add    %al,(%rax)
  40060b:	00 12                	add    %dl,(%rdx)
	...
  40061d:	00 00                	add    %al,(%rax)
  40061f:	00 1e                	add    %bl,(%rsi)
  400621:	00 00                	add    %al,(%rax)
  400623:	00 12                	add    %dl,(%rdx)
	...
  400635:	00 00                	add    %al,(%rax)
  400637:	00 49 00             	add    %cl,0x0(%rcx)
  40063a:	00 00                	add    %al,(%rax)
  40063c:	12 00                	adc    (%rax),%al
	...
  40064e:	00 00                	add    %al,(%rax)
  400650:	12 00                	adc    (%rax),%al
  400652:	00 00                	add    %al,(%rax)
  400654:	12 00                	adc    (%rax),%al
	...
  400666:	00 00                	add    %al,(%rax)
  400668:	0b 00                	or     (%rax),%eax
  40066a:	00 00                	add    %al,(%rax)
  40066c:	12 00                	adc    (%rax),%al
	...
  40067e:	00 00                	add    %al,(%rax)
  400680:	62                   	(bad)  
  400681:	00 00                	add    %al,(%rax)
  400683:	00 11                	add    %dl,(%rcx)
  400685:	00 18                	add    %bl,(%rax)
  400687:	00 a0 64 40 00 00    	add    %ah,0x4064(%rax)
  40068d:	00 00                	add    %al,(%rax)
  40068f:	00 08                	add    %cl,(%rax)
  400691:	00 00                	add    %al,(%rax)
  400693:	00 00                	add    %al,(%rax)
  400695:	00 00                	add    %al,(%rax)
  400697:	00 b9 00 00 00 11    	add    %bh,0x11000000(%rcx)
  40069d:	00 18                	add    %bl,(%rax)
  40069f:	00 c0                	add    %al,%al
  4006a1:	64 40 00 00          	add    %al,%fs:(%rax)
  4006a5:	00 00                	add    %al,(%rax)
  4006a7:	00 08                	add    %cl,(%rax)
  4006a9:	00 00                	add    %al,(%rax)
  4006ab:	00 00                	add    %al,(%rax)
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 b2 00 00 00 11    	add    %dh,0x11000000(%rdx)
  4006b5:	00 18                	add    %bl,(%rax)
  4006b7:	00 a8 64 40 00 00    	add    %ch,0x4064(%rax)
  4006bd:	00 00                	add    %al,(%rax)
  4006bf:	00 08                	add    %cl,(%rax)
  4006c1:	00 00                	add    %al,(%rax)
  4006c3:	00 00                	add    %al,(%rax)
  4006c5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

00000000004006c8 <.dynstr>:
  4006c8:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  4006cc:	63 2e                	movslq (%rsi),%ebp
  4006ce:	73 6f                	jae    40073f <_init-0x8c1>
  4006d0:	2e 36 00 73 6f       	cs add %dh,%ss:0x6f(%rbx)
  4006d5:	63 6b 65             	movslq 0x65(%rbx),%ebp
  4006d8:	74 00                	je     4006da <_init-0x926>
  4006da:	67 65 74 63          	addr32 gs je 400741 <_init-0x8bf>
  4006de:	00 73 74             	add    %dh,0x74(%rbx)
  4006e1:	72 63                	jb     400746 <_init-0x8ba>
  4006e3:	70 79                	jo     40075e <_init-0x8a2>
  4006e5:	00 65 78             	add    %ah,0x78(%rbp)
  4006e8:	69 74 00 73 70 72 69 	imul   $0x6e697270,0x73(%rax,%rax,1),%esi
  4006ef:	6e 
  4006f0:	74 66                	je     400758 <_init-0x8a8>
  4006f2:	00 66 6f             	add    %ah,0x6f(%rsi)
  4006f5:	70 65                	jo     40075c <_init-0x8a4>
  4006f7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4006f8:	00 73 74             	add    %dh,0x74(%rbx)
  4006fb:	72 6e                	jb     40076b <_init-0x895>
  4006fd:	63 6d 70             	movslq 0x70(%rbp),%ebp
  400700:	00 5f 5f             	add    %bl,0x5f(%rdi)
  400703:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
  40070a:	73 73                	jae    40077f <_init-0x881>
  40070c:	63 61 6e             	movslq 0x6e(%rcx),%esp
  40070f:	66 00 63 6f          	data16 add %ah,0x6f(%rbx)
  400713:	6e                   	outsb  %ds:(%rsi),(%dx)
  400714:	6e                   	outsb  %ds:(%rsi),(%dx)
  400715:	65 63 74 00 73       	movslq %gs:0x73(%rax,%rax,1),%esi
  40071a:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%rdi),%esp
  400721:	75 74                	jne    400797 <_init-0x869>
  400723:	73 00                	jae    400725 <_init-0x8db>
  400725:	74 69                	je     400790 <_init-0x870>
  400727:	6d                   	insl   (%dx),%es:(%rdi)
  400728:	65 00 73 74          	add    %dh,%gs:0x74(%rbx)
  40072c:	64 69 6e 00 73 74 72 	imul   $0x74727473,%fs:0x0(%rsi),%ebp
  400733:	74 
  400734:	6f                   	outsl  %ds:(%rsi),(%dx)
  400735:	6c                   	insb   (%dx),%es:(%rdi)
  400736:	00 6d 6d             	add    %ch,0x6d(%rbp)
  400739:	61                   	(bad)  
  40073a:	70 00                	jo     40073c <_init-0x8c4>
  40073c:	6d                   	insl   (%dx),%es:(%rdi)
  40073d:	65 6d                	gs insl (%dx),%es:(%rdi)
  40073f:	73 65                	jae    4007a6 <_init-0x85a>
  400741:	74 00                	je     400743 <_init-0x8bd>
  400743:	5f                   	pop    %rdi
  400744:	5f                   	pop    %rdi
  400745:	65 72 72             	gs jb  4007ba <_init-0x846>
  400748:	6e                   	outsb  %ds:(%rsi),(%dx)
  400749:	6f                   	outsl  %ds:(%rsi),(%dx)
  40074a:	5f                   	pop    %rdi
  40074b:	6c                   	insb   (%dx),%es:(%rdi)
  40074c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40074d:	63 61 74             	movslq 0x74(%rcx),%esp
  400750:	69 6f 6e 00 72 65 61 	imul   $0x61657200,0x6e(%rdi),%ebp
  400757:	64 00 67 65          	add    %ah,%fs:0x65(%rdi)
  40075b:	74 6f                	je     4007cc <_init-0x834>
  40075d:	70 74                	jo     4007d3 <_init-0x82d>
  40075f:	00 6d 65             	add    %ch,0x65(%rbp)
  400762:	6d                   	insl   (%dx),%es:(%rdi)
  400763:	63 70 79             	movslq 0x79(%rax),%esi
  400766:	00 73 74             	add    %dh,0x74(%rbx)
  400769:	72 74                	jb     4007df <_init-0x821>
  40076b:	6f                   	outsl  %ds:(%rsi),(%dx)
  40076c:	75 6c                	jne    4007da <_init-0x826>
  40076e:	00 73 74             	add    %dh,0x74(%rbx)
  400771:	72 63                	jb     4007d6 <_init-0x82a>
  400773:	61                   	(bad)  
  400774:	73 65                	jae    4007db <_init-0x825>
  400776:	63 6d 70             	movslq 0x70(%rbp),%ebp
  400779:	00 6f 70             	add    %ch,0x70(%rdi)
  40077c:	74 61                	je     4007df <_init-0x821>
  40077e:	72 67                	jb     4007e7 <_init-0x819>
  400780:	00 73 74             	add    %dh,0x74(%rbx)
  400783:	64 65 72 72          	fs gs jb 4007f9 <_init-0x807>
  400787:	00 61 6c             	add    %ah,0x6c(%rcx)
  40078a:	61                   	(bad)  
  40078b:	72 6d                	jb     4007fa <_init-0x806>
  40078d:	00 6d 75             	add    %ch,0x75(%rbp)
  400790:	6e                   	outsb  %ds:(%rsi),(%dx)
  400791:	6d                   	insl   (%dx),%es:(%rdi)
  400792:	61                   	(bad)  
  400793:	70 00                	jo     400795 <_init-0x86b>
  400795:	67 65 74 68          	addr32 gs je 400801 <_init-0x7ff>
  400799:	6f                   	outsl  %ds:(%rsi),(%dx)
  40079a:	73 74                	jae    400810 <_init-0x7f0>
  40079c:	62                   	(bad)  
  40079d:	79 6e                	jns    40080d <_init-0x7f3>
  40079f:	61                   	(bad)  
  4007a0:	6d                   	insl   (%dx),%es:(%rdi)
  4007a1:	65 00 67 65          	add    %ah,%gs:0x65(%rdi)
  4007a5:	74 68                	je     40080f <_init-0x7f1>
  4007a7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4007a8:	73 74                	jae    40081e <_init-0x7e2>
  4007aa:	6e                   	outsb  %ds:(%rsi),(%dx)
  4007ab:	61                   	(bad)  
  4007ac:	6d                   	insl   (%dx),%es:(%rdi)
  4007ad:	65 00 73 72          	add    %dh,%gs:0x72(%rbx)
  4007b1:	61                   	(bad)  
  4007b2:	6e                   	outsb  %ds:(%rsi),(%dx)
  4007b3:	64 6f                	outsl  %fs:(%rsi),(%dx)
  4007b5:	6d                   	insl   (%dx),%es:(%rdi)
  4007b6:	00 63 6c             	add    %ah,0x6c(%rbx)
  4007b9:	6f                   	outsl  %ds:(%rsi),(%dx)
  4007ba:	73 65                	jae    400821 <_init-0x7df>
  4007bc:	00 66 70             	add    %ah,0x70(%rsi)
  4007bf:	72 69                	jb     40082a <_init-0x7d6>
  4007c1:	6e                   	outsb  %ds:(%rsi),(%dx)
  4007c2:	74 66                	je     40082a <_init-0x7d6>
  4007c4:	00 6d 65             	add    %ch,0x65(%rbp)
  4007c7:	6d                   	insl   (%dx),%es:(%rdi)
  4007c8:	6d                   	insl   (%dx),%es:(%rdi)
  4007c9:	6f                   	outsl  %ds:(%rsi),(%dx)
  4007ca:	76 65                	jbe    400831 <_init-0x7cf>
  4007cc:	00 5f 5f             	add    %bl,0x5f(%rdi)
  4007cf:	6c                   	insb   (%dx),%es:(%rdi)
  4007d0:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  4007d7:	72 74                	jb     40084d <_init-0x7b3>
  4007d9:	5f                   	pop    %rdi
  4007da:	6d                   	insl   (%dx),%es:(%rdi)
  4007db:	61                   	(bad)  
  4007dc:	69 6e 00 77 72 69 74 	imul   $0x74697277,0x0(%rsi),%ebp
  4007e3:	65 00 47 4c          	add    %al,%gs:0x4c(%rdi)
  4007e7:	49                   	rex.WB
  4007e8:	42                   	rex.X
  4007e9:	43 5f                	rex.XB pop %r15
  4007eb:	32 2e                	xor    (%rsi),%ch
  4007ed:	37                   	(bad)  
  4007ee:	00 47 4c             	add    %al,0x4c(%rdi)
  4007f1:	49                   	rex.WB
  4007f2:	42                   	rex.X
  4007f3:	43 5f                	rex.XB pop %r15
  4007f5:	32 2e                	xor    (%rsi),%ch
  4007f7:	31 34 00             	xor    %esi,(%rax,%rax,1)
  4007fa:	47                   	rex.RXB
  4007fb:	4c                   	rex.WR
  4007fc:	49                   	rex.WB
  4007fd:	42                   	rex.X
  4007fe:	43 5f                	rex.XB pop %r15
  400800:	32 2e                	xor    (%rsi),%ch
  400802:	32 2e                	xor    (%rsi),%ch
  400804:	35 00 5f 5f 67       	xor    $0x675f5f00,%eax
  400809:	6d                   	insl   (%dx),%es:(%rdi)
  40080a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40080b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40080c:	5f                   	pop    %rdi
  40080d:	73 74                	jae    400883 <_init-0x77d>
  40080f:	61                   	(bad)  
  400810:	72 74                	jb     400886 <_init-0x77a>
  400812:	5f                   	pop    %rdi
  400813:	5f                   	pop    %rdi
	...

Disassembly of section .gnu.version:

0000000000400816 <.gnu.version>:
  400816:	00 00                	add    %al,(%rax)
  400818:	02 00                	add    (%rax),%al
  40081a:	02 00                	add    (%rax),%al
  40081c:	02 00                	add    (%rax),%al
  40081e:	02 00                	add    (%rax),%al
  400820:	02 00                	add    (%rax),%al
  400822:	02 00                	add    (%rax),%al
  400824:	02 00                	add    (%rax),%al
  400826:	02 00                	add    (%rax),%al
  400828:	02 00                	add    (%rax),%al
  40082a:	02 00                	add    (%rax),%al
  40082c:	02 00                	add    (%rax),%al
  40082e:	02 00                	add    (%rax),%al
  400830:	02 00                	add    (%rax),%al
  400832:	02 00                	add    (%rax),%al
  400834:	02 00                	add    (%rax),%al
  400836:	02 00                	add    (%rax),%al
  400838:	02 00                	add    (%rax),%al
  40083a:	00 00                	add    %al,(%rax)
  40083c:	02 00                	add    (%rax),%al
  40083e:	03 00                	add    (%rax),%eax
  400840:	02 00                	add    (%rax),%al
  400842:	02 00                	add    (%rax),%al
  400844:	04 00                	add    $0x0,%al
  400846:	02 00                	add    (%rax),%al
  400848:	02 00                	add    (%rax),%al
  40084a:	02 00                	add    (%rax),%al
  40084c:	02 00                	add    (%rax),%al
  40084e:	02 00                	add    (%rax),%al
  400850:	02 00                	add    (%rax),%al
  400852:	02 00                	add    (%rax),%al
  400854:	02 00                	add    (%rax),%al
  400856:	02 00                	add    (%rax),%al
  400858:	02 00                	add    (%rax),%al
  40085a:	02 00                	add    (%rax),%al
  40085c:	02 00                	add    (%rax),%al
  40085e:	02 00                	add    (%rax),%al
  400860:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000400868 <.gnu.version_r>:
  400868:	01 00                	add    %eax,(%rax)
  40086a:	03 00                	add    (%rax),%eax
  40086c:	01 00                	add    %eax,(%rax)
  40086e:	00 00                	add    %al,(%rax)
  400870:	10 00                	adc    %al,(%rax)
  400872:	00 00                	add    %al,(%rax)
  400874:	00 00                	add    %al,(%rax)
  400876:	00 00                	add    %al,(%rax)
  400878:	17                   	(bad)  
  400879:	69 69 0d 00 00 04 00 	imul   $0x40000,0xd(%rcx),%ebp
  400880:	1d 01 00 00 10       	sbb    $0x10000001,%eax
  400885:	00 00                	add    %al,(%rax)
  400887:	00 94 91 96 06 00 00 	add    %dl,0x696(%rcx,%rdx,4)
  40088e:	03 00                	add    (%rax),%eax
  400890:	27                   	(bad)  
  400891:	01 00                	add    %eax,(%rax)
  400893:	00 10                	add    %dl,(%rax)
  400895:	00 00                	add    %al,(%rax)
  400897:	00 75 1a             	add    %dh,0x1a(%rbp)
  40089a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
  4008a0:	32 01                	xor    (%rcx),%al
  4008a2:	00 00                	add    %al,(%rax)
  4008a4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004008a8 <.rela.dyn>:
  4008a8:	f0 5f                	lock pop %rdi
  4008aa:	40 00 00             	add    %al,(%rax)
  4008ad:	00 00                	add    %al,(%rax)
  4008af:	00 06                	add    %al,(%rsi)
  4008b1:	00 00                	add    %al,(%rax)
  4008b3:	00 0e                	add    %cl,(%rsi)
	...
  4008bd:	00 00                	add    %al,(%rax)
  4008bf:	00 f8                	add    %bh,%al
  4008c1:	5f                   	pop    %rdi
  4008c2:	40 00 00             	add    %al,(%rax)
  4008c5:	00 00                	add    %al,(%rax)
  4008c7:	00 06                	add    %al,(%rsi)
  4008c9:	00 00                	add    %al,(%rax)
  4008cb:	00 12                	add    %dl,(%rdx)
	...
  4008d5:	00 00                	add    %al,(%rax)
  4008d7:	00 a0 64 40 00 00    	add    %ah,0x4064(%rax)
  4008dd:	00 00                	add    %al,(%rax)
  4008df:	00 05 00 00 00 23    	add    %al,0x23000000(%rip)        # 234008e5 <_end+0x22ff97ad>
	...
  4008ed:	00 00                	add    %al,(%rax)
  4008ef:	00 a8 64 40 00 00    	add    %ch,0x4064(%rax)
  4008f5:	00 00                	add    %al,(%rax)
  4008f7:	00 05 00 00 00 25    	add    %al,0x25000000(%rip)        # 254008fd <_end+0x24ff97c5>
	...
  400905:	00 00                	add    %al,(%rax)
  400907:	00 c0                	add    %al,%al
  400909:	64 40 00 00          	add    %al,%fs:(%rax)
  40090d:	00 00                	add    %al,(%rax)
  40090f:	00 05 00 00 00 24    	add    %al,0x24000000(%rip)        # 24400915 <_end+0x23ff97dd>
	...

Disassembly of section .rela.plt:

0000000000400920 <.rela.plt>:
  400920:	18 60 40             	sbb    %ah,0x40(%rax)
  400923:	00 00                	add    %al,(%rax)
  400925:	00 00                	add    %al,(%rax)
  400927:	00 07                	add    %al,(%rdi)
  400929:	00 00                	add    %al,(%rax)
  40092b:	00 01                	add    %al,(%rcx)
	...
  400935:	00 00                	add    %al,(%rax)
  400937:	00 20                	add    %ah,(%rax)
  400939:	60                   	(bad)  
  40093a:	40 00 00             	add    %al,(%rax)
  40093d:	00 00                	add    %al,(%rax)
  40093f:	00 07                	add    %al,(%rdi)
  400941:	00 00                	add    %al,(%rax)
  400943:	00 02                	add    %al,(%rdx)
	...
  40094d:	00 00                	add    %al,(%rax)
  40094f:	00 28                	add    %ch,(%rax)
  400951:	60                   	(bad)  
  400952:	40 00 00             	add    %al,(%rax)
  400955:	00 00                	add    %al,(%rax)
  400957:	00 07                	add    %al,(%rdi)
  400959:	00 00                	add    %al,(%rax)
  40095b:	00 03                	add    %al,(%rbx)
	...
  400965:	00 00                	add    %al,(%rax)
  400967:	00 30                	add    %dh,(%rax)
  400969:	60                   	(bad)  
  40096a:	40 00 00             	add    %al,(%rax)
  40096d:	00 00                	add    %al,(%rax)
  40096f:	00 07                	add    %al,(%rdi)
  400971:	00 00                	add    %al,(%rax)
  400973:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  40097e:	00 00                	add    %al,(%rax)
  400980:	38 60 40             	cmp    %ah,0x40(%rax)
  400983:	00 00                	add    %al,(%rax)
  400985:	00 00                	add    %al,(%rax)
  400987:	00 07                	add    %al,(%rdi)
  400989:	00 00                	add    %al,(%rax)
  40098b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400991 <_init-0x66f>
  400991:	00 00                	add    %al,(%rax)
  400993:	00 00                	add    %al,(%rax)
  400995:	00 00                	add    %al,(%rax)
  400997:	00 40 60             	add    %al,0x60(%rax)
  40099a:	40 00 00             	add    %al,(%rax)
  40099d:	00 00                	add    %al,(%rax)
  40099f:	00 07                	add    %al,(%rdi)
  4009a1:	00 00                	add    %al,(%rax)
  4009a3:	00 06                	add    %al,(%rsi)
	...
  4009ad:	00 00                	add    %al,(%rax)
  4009af:	00 48 60             	add    %cl,0x60(%rax)
  4009b2:	40 00 00             	add    %al,(%rax)
  4009b5:	00 00                	add    %al,(%rax)
  4009b7:	00 07                	add    %al,(%rdi)
  4009b9:	00 00                	add    %al,(%rax)
  4009bb:	00 07                	add    %al,(%rdi)
	...
  4009c5:	00 00                	add    %al,(%rax)
  4009c7:	00 50 60             	add    %dl,0x60(%rax)
  4009ca:	40 00 00             	add    %al,(%rax)
  4009cd:	00 00                	add    %al,(%rax)
  4009cf:	00 07                	add    %al,(%rdi)
  4009d1:	00 00                	add    %al,(%rax)
  4009d3:	00 08                	add    %cl,(%rax)
	...
  4009dd:	00 00                	add    %al,(%rax)
  4009df:	00 58 60             	add    %bl,0x60(%rax)
  4009e2:	40 00 00             	add    %al,(%rax)
  4009e5:	00 00                	add    %al,(%rax)
  4009e7:	00 07                	add    %al,(%rdi)
  4009e9:	00 00                	add    %al,(%rax)
  4009eb:	00 09                	add    %cl,(%rcx)
	...
  4009f5:	00 00                	add    %al,(%rax)
  4009f7:	00 60 60             	add    %ah,0x60(%rax)
  4009fa:	40 00 00             	add    %al,(%rax)
  4009fd:	00 00                	add    %al,(%rax)
  4009ff:	00 07                	add    %al,(%rdi)
  400a01:	00 00                	add    %al,(%rax)
  400a03:	00 0a                	add    %cl,(%rdx)
	...
  400a0d:	00 00                	add    %al,(%rax)
  400a0f:	00 68 60             	add    %ch,0x60(%rax)
  400a12:	40 00 00             	add    %al,(%rax)
  400a15:	00 00                	add    %al,(%rax)
  400a17:	00 07                	add    %al,(%rdi)
  400a19:	00 00                	add    %al,(%rax)
  400a1b:	00 0b                	add    %cl,(%rbx)
	...
  400a25:	00 00                	add    %al,(%rax)
  400a27:	00 70 60             	add    %dh,0x60(%rax)
  400a2a:	40 00 00             	add    %al,(%rax)
  400a2d:	00 00                	add    %al,(%rax)
  400a2f:	00 07                	add    %al,(%rdi)
  400a31:	00 00                	add    %al,(%rax)
  400a33:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400a3e:	00 00                	add    %al,(%rax)
  400a40:	78 60                	js     400aa2 <_init-0x55e>
  400a42:	40 00 00             	add    %al,(%rax)
  400a45:	00 00                	add    %al,(%rax)
  400a47:	00 07                	add    %al,(%rdi)
  400a49:	00 00                	add    %al,(%rax)
  400a4b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 400a51 <_init-0x5af>
  400a51:	00 00                	add    %al,(%rax)
  400a53:	00 00                	add    %al,(%rax)
  400a55:	00 00                	add    %al,(%rax)
  400a57:	00 80 60 40 00 00    	add    %al,0x4060(%rax)
  400a5d:	00 00                	add    %al,(%rax)
  400a5f:	00 07                	add    %al,(%rdi)
  400a61:	00 00                	add    %al,(%rax)
  400a63:	00 0f                	add    %cl,(%rdi)
	...
  400a6d:	00 00                	add    %al,(%rax)
  400a6f:	00 88 60 40 00 00    	add    %cl,0x4060(%rax)
  400a75:	00 00                	add    %al,(%rax)
  400a77:	00 07                	add    %al,(%rdi)
  400a79:	00 00                	add    %al,(%rax)
  400a7b:	00 10                	add    %dl,(%rax)
	...
  400a85:	00 00                	add    %al,(%rax)
  400a87:	00 90 60 40 00 00    	add    %dl,0x4060(%rax)
  400a8d:	00 00                	add    %al,(%rax)
  400a8f:	00 07                	add    %al,(%rdi)
  400a91:	00 00                	add    %al,(%rax)
  400a93:	00 11                	add    %dl,(%rcx)
	...
  400a9d:	00 00                	add    %al,(%rax)
  400a9f:	00 98 60 40 00 00    	add    %bl,0x4060(%rax)
  400aa5:	00 00                	add    %al,(%rax)
  400aa7:	00 07                	add    %al,(%rdi)
  400aa9:	00 00                	add    %al,(%rax)
  400aab:	00 13                	add    %dl,(%rbx)
	...
  400ab5:	00 00                	add    %al,(%rax)
  400ab7:	00 a0 60 40 00 00    	add    %ah,0x4060(%rax)
  400abd:	00 00                	add    %al,(%rax)
  400abf:	00 07                	add    %al,(%rdi)
  400ac1:	00 00                	add    %al,(%rax)
  400ac3:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  400ace:	00 00                	add    %al,(%rax)
  400ad0:	a8 60                	test   $0x60,%al
  400ad2:	40 00 00             	add    %al,(%rax)
  400ad5:	00 00                	add    %al,(%rax)
  400ad7:	00 07                	add    %al,(%rdi)
  400ad9:	00 00                	add    %al,(%rax)
  400adb:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 400ae1 <_init-0x51f>
  400ae1:	00 00                	add    %al,(%rax)
  400ae3:	00 00                	add    %al,(%rax)
  400ae5:	00 00                	add    %al,(%rax)
  400ae7:	00 b0 60 40 00 00    	add    %dh,0x4060(%rax)
  400aed:	00 00                	add    %al,(%rax)
  400aef:	00 07                	add    %al,(%rdi)
  400af1:	00 00                	add    %al,(%rax)
  400af3:	00 16                	add    %dl,(%rsi)
	...
  400afd:	00 00                	add    %al,(%rax)
  400aff:	00 b8 60 40 00 00    	add    %bh,0x4060(%rax)
  400b05:	00 00                	add    %al,(%rax)
  400b07:	00 07                	add    %al,(%rdi)
  400b09:	00 00                	add    %al,(%rax)
  400b0b:	00 17                	add    %dl,(%rdi)
	...
  400b15:	00 00                	add    %al,(%rax)
  400b17:	00 c0                	add    %al,%al
  400b19:	60                   	(bad)  
  400b1a:	40 00 00             	add    %al,(%rax)
  400b1d:	00 00                	add    %al,(%rax)
  400b1f:	00 07                	add    %al,(%rdi)
  400b21:	00 00                	add    %al,(%rax)
  400b23:	00 18                	add    %bl,(%rax)
	...
  400b2d:	00 00                	add    %al,(%rax)
  400b2f:	00 c8                	add    %cl,%al
  400b31:	60                   	(bad)  
  400b32:	40 00 00             	add    %al,(%rax)
  400b35:	00 00                	add    %al,(%rax)
  400b37:	00 07                	add    %al,(%rdi)
  400b39:	00 00                	add    %al,(%rax)
  400b3b:	00 19                	add    %bl,(%rcx)
	...
  400b45:	00 00                	add    %al,(%rax)
  400b47:	00 d0                	add    %dl,%al
  400b49:	60                   	(bad)  
  400b4a:	40 00 00             	add    %al,(%rax)
  400b4d:	00 00                	add    %al,(%rax)
  400b4f:	00 07                	add    %al,(%rdi)
  400b51:	00 00                	add    %al,(%rax)
  400b53:	00 1a                	add    %bl,(%rdx)
	...
  400b5d:	00 00                	add    %al,(%rax)
  400b5f:	00 d8                	add    %bl,%al
  400b61:	60                   	(bad)  
  400b62:	40 00 00             	add    %al,(%rax)
  400b65:	00 00                	add    %al,(%rax)
  400b67:	00 07                	add    %al,(%rdi)
  400b69:	00 00                	add    %al,(%rax)
  400b6b:	00 1b                	add    %bl,(%rbx)
	...
  400b75:	00 00                	add    %al,(%rax)
  400b77:	00 e0                	add    %ah,%al
  400b79:	60                   	(bad)  
  400b7a:	40 00 00             	add    %al,(%rax)
  400b7d:	00 00                	add    %al,(%rax)
  400b7f:	00 07                	add    %al,(%rdi)
  400b81:	00 00                	add    %al,(%rax)
  400b83:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
  400b8e:	00 00                	add    %al,(%rax)
  400b90:	e8 60 40 00 00       	callq  404bf5 <__FRAME_END__+0xdd1>
  400b95:	00 00                	add    %al,(%rax)
  400b97:	00 07                	add    %al,(%rdi)
  400b99:	00 00                	add    %al,(%rax)
  400b9b:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 400ba1 <_init-0x45f>
  400ba1:	00 00                	add    %al,(%rax)
  400ba3:	00 00                	add    %al,(%rax)
  400ba5:	00 00                	add    %al,(%rax)
  400ba7:	00 f0                	add    %dh,%al
  400ba9:	60                   	(bad)  
  400baa:	40 00 00             	add    %al,(%rax)
  400bad:	00 00                	add    %al,(%rax)
  400baf:	00 07                	add    %al,(%rdi)
  400bb1:	00 00                	add    %al,(%rax)
  400bb3:	00 1e                	add    %bl,(%rsi)
	...
  400bbd:	00 00                	add    %al,(%rax)
  400bbf:	00 f8                	add    %bh,%al
  400bc1:	60                   	(bad)  
  400bc2:	40 00 00             	add    %al,(%rax)
  400bc5:	00 00                	add    %al,(%rax)
  400bc7:	00 07                	add    %al,(%rdi)
  400bc9:	00 00                	add    %al,(%rax)
  400bcb:	00 1f                	add    %bl,(%rdi)
	...
  400bd9:	61                   	(bad)  
  400bda:	40 00 00             	add    %al,(%rax)
  400bdd:	00 00                	add    %al,(%rax)
  400bdf:	00 07                	add    %al,(%rdi)
  400be1:	00 00                	add    %al,(%rax)
  400be3:	00 20                	add    %ah,(%rax)
	...
  400bed:	00 00                	add    %al,(%rax)
  400bef:	00 08                	add    %cl,(%rax)
  400bf1:	61                   	(bad)  
  400bf2:	40 00 00             	add    %al,(%rax)
  400bf5:	00 00                	add    %al,(%rax)
  400bf7:	00 07                	add    %al,(%rdi)
  400bf9:	00 00                	add    %al,(%rax)
  400bfb:	00 21                	add    %ah,(%rcx)
	...
  400c05:	00 00                	add    %al,(%rax)
  400c07:	00 10                	add    %dl,(%rax)
  400c09:	61                   	(bad)  
  400c0a:	40 00 00             	add    %al,(%rax)
  400c0d:	00 00                	add    %al,(%rax)
  400c0f:	00 07                	add    %al,(%rdi)
  400c11:	00 00                	add    %al,(%rax)
  400c13:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 4f 00 00 	mov    0x4fed(%rip),%rax        # 405ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 4f 00 00    	pushq  0x4fe2(%rip)        # 406008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 4f 00 00    	jmpq   *0x4fe4(%rip)        # 406010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 4f 00 00    	jmpq   *0x4fe2(%rip)        # 406018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 4f 00 00    	jmpq   *0x4fda(%rip)        # 406020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 4f 00 00    	jmpq   *0x4fd2(%rip)        # 406028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 ca 4f 00 00    	jmpq   *0x4fca(%rip)        # 406030 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 c2 4f 00 00    	jmpq   *0x4fc2(%rip)        # 406038 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <puts@plt>:
  401080:	ff 25 ba 4f 00 00    	jmpq   *0x4fba(%rip)        # 406040 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <write@plt>:
  401090:	ff 25 b2 4f 00 00    	jmpq   *0x4fb2(%rip)        # 406048 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 4f 00 00    	jmpq   *0x4faa(%rip)        # 406050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <printf@plt>:
  4010b0:	ff 25 a2 4f 00 00    	jmpq   *0x4fa2(%rip)        # 406058 <printf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 9a 4f 00 00    	jmpq   *0x4f9a(%rip)        # 406060 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <alarm@plt>:
  4010d0:	ff 25 92 4f 00 00    	jmpq   *0x4f92(%rip)        # 406068 <alarm@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <close@plt>:
  4010e0:	ff 25 8a 4f 00 00    	jmpq   *0x4f8a(%rip)        # 406070 <close@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <read@plt>:
  4010f0:	ff 25 82 4f 00 00    	jmpq   *0x4f82(%rip)        # 406078 <read@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <signal@plt>:
  401100:	ff 25 7a 4f 00 00    	jmpq   *0x4f7a(%rip)        # 406080 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 72 4f 00 00    	jmpq   *0x4f72(%rip)        # 406088 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fprintf@plt>:
  401120:	ff 25 6a 4f 00 00    	jmpq   *0x4f6a(%rip)        # 406090 <fprintf@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strtol@plt>:
  401130:	ff 25 62 4f 00 00    	jmpq   *0x4f62(%rip)        # 406098 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 5a 4f 00 00    	jmpq   *0x4f5a(%rip)        # 4060a0 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <time@plt>:
  401150:	ff 25 52 4f 00 00    	jmpq   *0x4f52(%rip)        # 4060a8 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <random@plt>:
  401160:	ff 25 4a 4f 00 00    	jmpq   *0x4f4a(%rip)        # 4060b0 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 4f 00 00    	jmpq   *0x4f42(%rip)        # 4060b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <munmap@plt>:
  401180:	ff 25 3a 4f 00 00    	jmpq   *0x4f3a(%rip)        # 4060c0 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <memmove@plt>:
  401190:	ff 25 32 4f 00 00    	jmpq   *0x4f32(%rip)        # 4060c8 <memmove@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 4f 00 00    	jmpq   *0x4f2a(%rip)        # 4060d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 22 4f 00 00    	jmpq   *0x4f22(%rip)        # 4060d8 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 1a 4f 00 00    	jmpq   *0x4f1a(%rip)        # 4060e0 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <gethostname@plt>:
  4011d0:	ff 25 12 4f 00 00    	jmpq   *0x4f12(%rip)        # 4060e8 <gethostname@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <sprintf@plt>:
  4011e0:	ff 25 0a 4f 00 00    	jmpq   *0x4f0a(%rip)        # 4060f0 <sprintf@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <exit@plt>:
  4011f0:	ff 25 02 4f 00 00    	jmpq   *0x4f02(%rip)        # 4060f8 <exit@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <connect@plt>:
  401200:	ff 25 fa 4e 00 00    	jmpq   *0x4efa(%rip)        # 406100 <connect@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <getc@plt>:
  401210:	ff 25 f2 4e 00 00    	jmpq   *0x4ef2(%rip)        # 406108 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 4e 00 00    	jmpq   *0x4eea(%rip)        # 406110 <socket@GLIBC_2.2.5>
  401226:	68 1f 00 00 00       	pushq  $0x1f
  40122b:	e9 f0 fd ff ff       	jmpq   401020 <.plt>

Disassembly of section .text:

0000000000401230 <_start>:
  401230:	31 ed                	xor    %ebp,%ebp
  401232:	49 89 d1             	mov    %rdx,%r9
  401235:	5e                   	pop    %rsi
  401236:	48 89 e2             	mov    %rsp,%rdx
  401239:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40123d:	50                   	push   %rax
  40123e:	54                   	push   %rsp
  40123f:	49 c7 c0 f0 2e 40 00 	mov    $0x402ef0,%r8
  401246:	48 c7 c1 90 2e 40 00 	mov    $0x402e90,%rcx
  40124d:	48 c7 c7 f6 14 40 00 	mov    $0x4014f6,%rdi
  401254:	ff 15 96 4d 00 00    	callq  *0x4d96(%rip)        # 405ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 88 64 40 00       	mov    $0x406488,%eax
  401275:	48 3d 88 64 40 00    	cmp    $0x406488,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 88 64 40 00       	mov    $0x406488,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be 88 64 40 00       	mov    $0x406488,%esi
  4012a5:	48 81 ee 88 64 40 00 	sub    $0x406488,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 88 64 40 00       	mov    $0x406488,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d e1 51 00 00 00 	cmpb   $0x0,0x51e1(%rip)        # 4064c8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 cf 51 00 00 01 	movb   $0x1,0x51cf(%rip)        # 4064c8 <completed.7325>
  4012f9:	5d                   	pop    %rbp
  4012fa:	c3                   	retq   
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401300:	c3                   	retq   
  401301:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401308:	00 00 00 00 
  40130c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401310 <frame_dummy>:
  401310:	eb 8e                	jmp    4012a0 <register_tm_clones>

0000000000401312 <usage>:
  401312:	48 83 ec 08          	sub    $0x8,%rsp
  401316:	48 89 fe             	mov    %rdi,%rsi
  401319:	83 3d ec 51 00 00 00 	cmpl   $0x0,0x51ec(%rip)        # 40650c <is_checker>
  401320:	74 4b                	je     40136d <usage+0x5b>
  401322:	48 8d 3d df 1c 00 00 	lea    0x1cdf(%rip),%rdi        # 403008 <_IO_stdin_used+0x8>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 7d fd ff ff       	callq  4010b0 <printf@plt>
  401333:	48 8d 3d 06 1d 00 00 	lea    0x1d06(%rip),%rdi        # 403040 <_IO_stdin_used+0x40>
  40133a:	e8 41 fd ff ff       	callq  401080 <puts@plt>
  40133f:	48 8d 3d 72 1e 00 00 	lea    0x1e72(%rip),%rdi        # 4031b8 <_IO_stdin_used+0x1b8>
  401346:	e8 35 fd ff ff       	callq  401080 <puts@plt>
  40134b:	48 8d 3d 16 1d 00 00 	lea    0x1d16(%rip),%rdi        # 403068 <_IO_stdin_used+0x68>
  401352:	e8 29 fd ff ff       	callq  401080 <puts@plt>
  401357:	48 8d 3d 74 1e 00 00 	lea    0x1e74(%rip),%rdi        # 4031d2 <_IO_stdin_used+0x1d2>
  40135e:	e8 1d fd ff ff       	callq  401080 <puts@plt>
  401363:	bf 00 00 00 00       	mov    $0x0,%edi
  401368:	e8 83 fe ff ff       	callq  4011f0 <exit@plt>
  40136d:	48 8d 3d 7a 1e 00 00 	lea    0x1e7a(%rip),%rdi        # 4031ee <_IO_stdin_used+0x1ee>
  401374:	b8 00 00 00 00       	mov    $0x0,%eax
  401379:	e8 32 fd ff ff       	callq  4010b0 <printf@plt>
  40137e:	48 8d 3d 0b 1d 00 00 	lea    0x1d0b(%rip),%rdi        # 403090 <_IO_stdin_used+0x90>
  401385:	e8 f6 fc ff ff       	callq  401080 <puts@plt>
  40138a:	48 8d 3d 27 1d 00 00 	lea    0x1d27(%rip),%rdi        # 4030b8 <_IO_stdin_used+0xb8>
  401391:	e8 ea fc ff ff       	callq  401080 <puts@plt>
  401396:	48 8d 3d 6f 1e 00 00 	lea    0x1e6f(%rip),%rdi        # 40320c <_IO_stdin_used+0x20c>
  40139d:	e8 de fc ff ff       	callq  401080 <puts@plt>
  4013a2:	eb bf                	jmp    401363 <usage+0x51>

00000000004013a4 <initialize_target>:
  4013a4:	55                   	push   %rbp
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  4013ad:	89 f5                	mov    %esi,%ebp
  4013af:	89 3d 47 51 00 00    	mov    %edi,0x5147(%rip)        # 4064fc <check_level>
  4013b5:	8b 3d 75 4d 00 00    	mov    0x4d75(%rip),%edi        # 406130 <target_id>
  4013bb:	e8 ab 1a 00 00       	callq  402e6b <gencookie>
  4013c0:	89 05 42 51 00 00    	mov    %eax,0x5142(%rip)        # 406508 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 9e 1a 00 00       	callq  402e6b <gencookie>
  4013cd:	89 05 31 51 00 00    	mov    %eax,0x5131(%rip)        # 406504 <authkey>
  4013d3:	8b 05 57 4d 00 00    	mov    0x4d57(%rip),%eax        # 406130 <target_id>
  4013d9:	8d 78 01             	lea    0x1(%rax),%edi
  4013dc:	e8 6f fc ff ff       	callq  401050 <srandom@plt>
  4013e1:	e8 7a fd ff ff       	callq  401160 <random@plt>
  4013e6:	89 c7                	mov    %eax,%edi
  4013e8:	e8 de 02 00 00       	callq  4016cb <scramble>
  4013ed:	89 c3                	mov    %eax,%ebx
  4013ef:	85 ed                	test   %ebp,%ebp
  4013f1:	75 3d                	jne    401430 <initialize_target+0x8c>
  4013f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f8:	01 d8                	add    %ebx,%eax
  4013fa:	0f b7 c0             	movzwl %ax,%eax
  4013fd:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  401404:	89 c0                	mov    %eax,%eax
  401406:	48 89 05 73 50 00 00 	mov    %rax,0x5073(%rip)        # 406480 <buf_offset>
  40140d:	c6 05 14 5d 00 00 63 	movb   $0x63,0x5d14(%rip)        # 407128 <target_prefix>
  401414:	83 3d dd 50 00 00 00 	cmpl   $0x0,0x50dd(%rip)        # 4064f8 <notify>
  40141b:	74 09                	je     401426 <initialize_target+0x82>
  40141d:	83 3d e8 50 00 00 00 	cmpl   $0x0,0x50e8(%rip)        # 40650c <is_checker>
  401424:	74 22                	je     401448 <initialize_target+0xa4>
  401426:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  40142d:	5b                   	pop    %rbx
  40142e:	5d                   	pop    %rbp
  40142f:	c3                   	retq   
  401430:	bf 00 00 00 00       	mov    $0x0,%edi
  401435:	e8 16 fd ff ff       	callq  401150 <time@plt>
  40143a:	89 c7                	mov    %eax,%edi
  40143c:	e8 0f fc ff ff       	callq  401050 <srandom@plt>
  401441:	e8 1a fd ff ff       	callq  401160 <random@plt>
  401446:	eb b0                	jmp    4013f8 <initialize_target+0x54>
  401448:	48 89 e7             	mov    %rsp,%rdi
  40144b:	be 00 01 00 00       	mov    $0x100,%esi
  401450:	e8 7b fd ff ff       	callq  4011d0 <gethostname@plt>
  401455:	89 c5                	mov    %eax,%ebp
  401457:	85 c0                	test   %eax,%eax
  401459:	75 26                	jne    401481 <initialize_target+0xdd>
  40145b:	89 c3                	mov    %eax,%ebx
  40145d:	48 63 c3             	movslq %ebx,%rax
  401460:	48 8d 15 f9 4c 00 00 	lea    0x4cf9(%rip),%rdx        # 406160 <host_table>
  401467:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  40146b:	48 85 ff             	test   %rdi,%rdi
  40146e:	74 2c                	je     40149c <initialize_target+0xf8>
  401470:	48 89 e6             	mov    %rsp,%rsi
  401473:	e8 b8 fb ff ff       	callq  401030 <strcasecmp@plt>
  401478:	85 c0                	test   %eax,%eax
  40147a:	74 1b                	je     401497 <initialize_target+0xf3>
  40147c:	83 c3 01             	add    $0x1,%ebx
  40147f:	eb dc                	jmp    40145d <initialize_target+0xb9>
  401481:	48 8d 3d 60 1c 00 00 	lea    0x1c60(%rip),%rdi        # 4030e8 <_IO_stdin_used+0xe8>
  401488:	e8 f3 fb ff ff       	callq  401080 <puts@plt>
  40148d:	bf 08 00 00 00       	mov    $0x8,%edi
  401492:	e8 59 fd ff ff       	callq  4011f0 <exit@plt>
  401497:	bd 01 00 00 00       	mov    $0x1,%ebp
  40149c:	85 ed                	test   %ebp,%ebp
  40149e:	74 38                	je     4014d8 <initialize_target+0x134>
  4014a0:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4014a7:	00 
  4014a8:	e8 23 17 00 00       	callq  402bd0 <init_driver>
  4014ad:	85 c0                	test   %eax,%eax
  4014af:	0f 89 71 ff ff ff    	jns    401426 <initialize_target+0x82>
  4014b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4014bc:	00 
  4014bd:	48 8d 3d 9c 1c 00 00 	lea    0x1c9c(%rip),%rdi        # 403160 <_IO_stdin_used+0x160>
  4014c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c9:	e8 e2 fb ff ff       	callq  4010b0 <printf@plt>
  4014ce:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d3:	e8 18 fd ff ff       	callq  4011f0 <exit@plt>
  4014d8:	48 89 e6             	mov    %rsp,%rsi
  4014db:	48 8d 3d 3e 1c 00 00 	lea    0x1c3e(%rip),%rdi        # 403120 <_IO_stdin_used+0x120>
  4014e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4014e7:	e8 c4 fb ff ff       	callq  4010b0 <printf@plt>
  4014ec:	bf 08 00 00 00       	mov    $0x8,%edi
  4014f1:	e8 fa fc ff ff       	callq  4011f0 <exit@plt>

00000000004014f6 <main>:
  4014f6:	41 56                	push   %r14
  4014f8:	41 55                	push   %r13
  4014fa:	41 54                	push   %r12
  4014fc:	55                   	push   %rbp
  4014fd:	53                   	push   %rbx
  4014fe:	89 fd                	mov    %edi,%ebp
  401500:	48 89 f3             	mov    %rsi,%rbx
  401503:	48 c7 c6 a2 1f 40 00 	mov    $0x401fa2,%rsi
  40150a:	bf 0b 00 00 00       	mov    $0xb,%edi
  40150f:	e8 ec fb ff ff       	callq  401100 <signal@plt>
  401514:	48 c7 c6 4e 1f 40 00 	mov    $0x401f4e,%rsi
  40151b:	bf 07 00 00 00       	mov    $0x7,%edi
  401520:	e8 db fb ff ff       	callq  401100 <signal@plt>
  401525:	48 c7 c6 f6 1f 40 00 	mov    $0x401ff6,%rsi
  40152c:	bf 04 00 00 00       	mov    $0x4,%edi
  401531:	e8 ca fb ff ff       	callq  401100 <signal@plt>
  401536:	83 3d cf 4f 00 00 00 	cmpl   $0x0,0x4fcf(%rip)        # 40650c <is_checker>
  40153d:	75 26                	jne    401565 <main+0x6f>
  40153f:	4c 8d 25 e7 1c 00 00 	lea    0x1ce7(%rip),%r12        # 40322d <_IO_stdin_used+0x22d>
  401546:	48 8b 05 53 4f 00 00 	mov    0x4f53(%rip),%rax        # 4064a0 <stdin@@GLIBC_2.2.5>
  40154d:	48 89 05 9c 4f 00 00 	mov    %rax,0x4f9c(%rip)        # 4064f0 <infile>
  401554:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40155a:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401560:	e9 88 00 00 00       	jmpq   4015ed <main+0xf7>
  401565:	48 c7 c6 4a 20 40 00 	mov    $0x40204a,%rsi
  40156c:	bf 0e 00 00 00       	mov    $0xe,%edi
  401571:	e8 8a fb ff ff       	callq  401100 <signal@plt>
  401576:	bf 05 00 00 00       	mov    $0x5,%edi
  40157b:	e8 50 fb ff ff       	callq  4010d0 <alarm@plt>
  401580:	4c 8d 25 9e 1c 00 00 	lea    0x1c9e(%rip),%r12        # 403225 <_IO_stdin_used+0x225>
  401587:	eb bd                	jmp    401546 <main+0x50>
  401589:	48 8b 3b             	mov    (%rbx),%rdi
  40158c:	e8 81 fd ff ff       	callq  401312 <usage>
  401591:	48 8d 35 e2 1e 00 00 	lea    0x1ee2(%rip),%rsi        # 40347a <_IO_stdin_used+0x47a>
  401598:	48 8b 3d 09 4f 00 00 	mov    0x4f09(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
  40159f:	e8 fc fb ff ff       	callq  4011a0 <fopen@plt>
  4015a4:	48 89 05 45 4f 00 00 	mov    %rax,0x4f45(%rip)        # 4064f0 <infile>
  4015ab:	48 85 c0             	test   %rax,%rax
  4015ae:	75 3d                	jne    4015ed <main+0xf7>
  4015b0:	48 8b 15 f1 4e 00 00 	mov    0x4ef1(%rip),%rdx        # 4064a8 <optarg@@GLIBC_2.2.5>
  4015b7:	48 8d 35 74 1c 00 00 	lea    0x1c74(%rip),%rsi        # 403232 <_IO_stdin_used+0x232>
  4015be:	48 8b 3d fb 4e 00 00 	mov    0x4efb(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  4015c5:	e8 56 fb ff ff       	callq  401120 <fprintf@plt>
  4015ca:	b8 01 00 00 00       	mov    $0x1,%eax
  4015cf:	e9 ce 00 00 00       	jmpq   4016a2 <main+0x1ac>
  4015d4:	ba 10 00 00 00       	mov    $0x10,%edx
  4015d9:	be 00 00 00 00       	mov    $0x0,%esi
  4015de:	48 8b 3d c3 4e 00 00 	mov    0x4ec3(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
  4015e5:	e8 d6 fb ff ff       	callq  4011c0 <strtoul@plt>
  4015ea:	41 89 c6             	mov    %eax,%r14d
  4015ed:	4c 89 e2             	mov    %r12,%rdx
  4015f0:	48 89 de             	mov    %rbx,%rsi
  4015f3:	89 ef                	mov    %ebp,%edi
  4015f5:	e8 b6 fb ff ff       	callq  4011b0 <getopt@plt>
  4015fa:	3c ff                	cmp    $0xff,%al
  4015fc:	74 5d                	je     40165b <main+0x165>
  4015fe:	0f be f0             	movsbl %al,%esi
  401601:	83 e8 61             	sub    $0x61,%eax
  401604:	3c 10                	cmp    $0x10,%al
  401606:	77 3a                	ja     401642 <main+0x14c>
  401608:	0f b6 c0             	movzbl %al,%eax
  40160b:	48 8d 15 5e 1c 00 00 	lea    0x1c5e(%rip),%rdx        # 403270 <_IO_stdin_used+0x270>
  401612:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401616:	48 01 d0             	add    %rdx,%rax
  401619:	ff e0                	jmpq   *%rax
  40161b:	ba 0a 00 00 00       	mov    $0xa,%edx
  401620:	be 00 00 00 00       	mov    $0x0,%esi
  401625:	48 8b 3d 7c 4e 00 00 	mov    0x4e7c(%rip),%rdi        # 4064a8 <optarg@@GLIBC_2.2.5>
  40162c:	e8 ff fa ff ff       	callq  401130 <strtol@plt>
  401631:	41 89 c5             	mov    %eax,%r13d
  401634:	eb b7                	jmp    4015ed <main+0xf7>
  401636:	c7 05 b8 4e 00 00 00 	movl   $0x0,0x4eb8(%rip)        # 4064f8 <notify>
  40163d:	00 00 00 
  401640:	eb ab                	jmp    4015ed <main+0xf7>
  401642:	48 8d 3d 06 1c 00 00 	lea    0x1c06(%rip),%rdi        # 40324f <_IO_stdin_used+0x24f>
  401649:	b8 00 00 00 00       	mov    $0x0,%eax
  40164e:	e8 5d fa ff ff       	callq  4010b0 <printf@plt>
  401653:	48 8b 3b             	mov    (%rbx),%rdi
  401656:	e8 b7 fc ff ff       	callq  401312 <usage>
  40165b:	be 00 00 00 00       	mov    $0x0,%esi
  401660:	44 89 ef             	mov    %r13d,%edi
  401663:	e8 3c fd ff ff       	callq  4013a4 <initialize_target>
  401668:	83 3d 9d 4e 00 00 00 	cmpl   $0x0,0x4e9d(%rip)        # 40650c <is_checker>
  40166f:	74 09                	je     40167a <main+0x184>
  401671:	44 39 35 8c 4e 00 00 	cmp    %r14d,0x4e8c(%rip)        # 406504 <authkey>
  401678:	75 31                	jne    4016ab <main+0x1b5>
  40167a:	8b 35 88 4e 00 00    	mov    0x4e88(%rip),%esi        # 406508 <cookie>
  401680:	48 8d 3d db 1b 00 00 	lea    0x1bdb(%rip),%rdi        # 403262 <_IO_stdin_used+0x262>
  401687:	b8 00 00 00 00       	mov    $0x0,%eax
  40168c:	e8 1f fa ff ff       	callq  4010b0 <printf@plt>
  401691:	48 8b 3d e8 4d 00 00 	mov    0x4de8(%rip),%rdi        # 406480 <buf_offset>
  401698:	e8 88 0a 00 00       	callq  402125 <stable_launch>
  40169d:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a2:	5b                   	pop    %rbx
  4016a3:	5d                   	pop    %rbp
  4016a4:	41 5c                	pop    %r12
  4016a6:	41 5d                	pop    %r13
  4016a8:	41 5e                	pop    %r14
  4016aa:	c3                   	retq   
  4016ab:	44 89 f6             	mov    %r14d,%esi
  4016ae:	48 8d 3d d3 1a 00 00 	lea    0x1ad3(%rip),%rdi        # 403188 <_IO_stdin_used+0x188>
  4016b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ba:	e8 f1 f9 ff ff       	callq  4010b0 <printf@plt>
  4016bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c4:	e8 72 06 00 00       	callq  401d3b <check_fail>
  4016c9:	eb af                	jmp    40167a <main+0x184>

00000000004016cb <scramble>:
  4016cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4016d0:	83 f8 09             	cmp    $0x9,%eax
  4016d3:	77 13                	ja     4016e8 <scramble+0x1d>
  4016d5:	69 d0 2e 8a 00 00    	imul   $0x8a2e,%eax,%edx
  4016db:	01 fa                	add    %edi,%edx
  4016dd:	89 c1                	mov    %eax,%ecx
  4016df:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  4016e3:	83 c0 01             	add    $0x1,%eax
  4016e6:	eb e8                	jmp    4016d0 <scramble+0x5>
  4016e8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016ec:	69 c0 7a 9d 00 00    	imul   $0x9d7a,%eax,%eax
  4016f2:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016f6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016fa:	69 c0 06 4e 00 00    	imul   $0x4e06,%eax,%eax
  401700:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401704:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401708:	69 c0 8e 71 00 00    	imul   $0x718e,%eax,%eax
  40170e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401712:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401716:	69 c0 ce b7 00 00    	imul   $0xb7ce,%eax,%eax
  40171c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401720:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401724:	69 c0 31 bb 00 00    	imul   $0xbb31,%eax,%eax
  40172a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40172e:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401732:	69 c0 93 2f 00 00    	imul   $0x2f93,%eax,%eax
  401738:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40173c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401740:	69 c0 c4 70 00 00    	imul   $0x70c4,%eax,%eax
  401746:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40174a:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40174e:	69 c0 9e 9f 00 00    	imul   $0x9f9e,%eax,%eax
  401754:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401758:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40175c:	69 c0 42 83 00 00    	imul   $0x8342,%eax,%eax
  401762:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401766:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40176a:	69 c0 9d 65 00 00    	imul   $0x659d,%eax,%eax
  401770:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401774:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401778:	69 c0 05 35 00 00    	imul   $0x3505,%eax,%eax
  40177e:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401782:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401786:	69 c0 dc ca 00 00    	imul   $0xcadc,%eax,%eax
  40178c:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401790:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401794:	69 c0 0c a1 00 00    	imul   $0xa10c,%eax,%eax
  40179a:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40179e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017a2:	69 c0 5d 4c 00 00    	imul   $0x4c5d,%eax,%eax
  4017a8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017ac:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4017b0:	69 c0 9a 11 00 00    	imul   $0x119a,%eax,%eax
  4017b6:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017ba:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4017be:	69 c0 50 9b 00 00    	imul   $0x9b50,%eax,%eax
  4017c4:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4017c8:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4017cc:	69 c0 1d 1a 00 00    	imul   $0x1a1d,%eax,%eax
  4017d2:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4017d6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017da:	69 c0 a8 7b 00 00    	imul   $0x7ba8,%eax,%eax
  4017e0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017e4:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017e8:	69 c0 2c d5 00 00    	imul   $0xd52c,%eax,%eax
  4017ee:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017f2:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4017f6:	69 c0 1a 2f 00 00    	imul   $0x2f1a,%eax,%eax
  4017fc:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401800:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401804:	69 c0 59 09 00 00    	imul   $0x959,%eax,%eax
  40180a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40180e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401812:	69 c0 9f 40 00 00    	imul   $0x409f,%eax,%eax
  401818:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40181c:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401820:	69 c0 53 21 00 00    	imul   $0x2153,%eax,%eax
  401826:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40182a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40182e:	69 c0 04 62 00 00    	imul   $0x6204,%eax,%eax
  401834:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401838:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40183c:	69 c0 53 bd 00 00    	imul   $0xbd53,%eax,%eax
  401842:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401846:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40184a:	69 c0 c5 5e 00 00    	imul   $0x5ec5,%eax,%eax
  401850:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401854:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401858:	69 c0 9d bf 00 00    	imul   $0xbf9d,%eax,%eax
  40185e:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401862:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401866:	69 c0 d7 1f 00 00    	imul   $0x1fd7,%eax,%eax
  40186c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401870:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401874:	69 c0 dd f3 00 00    	imul   $0xf3dd,%eax,%eax
  40187a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40187e:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401882:	69 c0 cb 71 00 00    	imul   $0x71cb,%eax,%eax
  401888:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40188c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401890:	69 c0 3f 9e 00 00    	imul   $0x9e3f,%eax,%eax
  401896:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40189a:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40189e:	69 c0 8b b4 00 00    	imul   $0xb48b,%eax,%eax
  4018a4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4018a8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4018ac:	69 c0 72 f6 00 00    	imul   $0xf672,%eax,%eax
  4018b2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4018b6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018ba:	69 c0 08 44 00 00    	imul   $0x4408,%eax,%eax
  4018c0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018c4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4018c8:	69 c0 a9 63 00 00    	imul   $0x63a9,%eax,%eax
  4018ce:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4018d2:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4018d6:	69 c0 fb 5b 00 00    	imul   $0x5bfb,%eax,%eax
  4018dc:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4018e0:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4018e4:	69 c0 cf d1 00 00    	imul   $0xd1cf,%eax,%eax
  4018ea:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4018ee:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4018f2:	69 c0 21 e7 00 00    	imul   $0xe721,%eax,%eax
  4018f8:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4018fc:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401900:	69 c0 d7 7c 00 00    	imul   $0x7cd7,%eax,%eax
  401906:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40190a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40190e:	69 c0 b7 97 00 00    	imul   $0x97b7,%eax,%eax
  401914:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401918:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40191c:	69 c0 c6 10 00 00    	imul   $0x10c6,%eax,%eax
  401922:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401926:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40192a:	69 c0 83 2c 00 00    	imul   $0x2c83,%eax,%eax
  401930:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401934:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401938:	69 c0 1d 20 00 00    	imul   $0x201d,%eax,%eax
  40193e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401942:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401946:	69 c0 0c 31 00 00    	imul   $0x310c,%eax,%eax
  40194c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401950:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401954:	69 c0 8e b8 00 00    	imul   $0xb88e,%eax,%eax
  40195a:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40195e:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401962:	69 c0 71 19 00 00    	imul   $0x1971,%eax,%eax
  401968:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40196c:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401970:	69 c0 f2 af 00 00    	imul   $0xaff2,%eax,%eax
  401976:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40197a:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40197e:	69 c0 2a 0f 00 00    	imul   $0xf2a,%eax,%eax
  401984:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401988:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40198c:	69 c0 2f fe 00 00    	imul   $0xfe2f,%eax,%eax
  401992:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401996:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40199a:	69 c0 02 72 00 00    	imul   $0x7202,%eax,%eax
  4019a0:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019a4:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019a8:	69 c0 54 c6 00 00    	imul   $0xc654,%eax,%eax
  4019ae:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4019b2:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4019b6:	69 c0 dc ce 00 00    	imul   $0xcedc,%eax,%eax
  4019bc:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4019c0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4019c4:	69 c0 98 6a 00 00    	imul   $0x6a98,%eax,%eax
  4019ca:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4019ce:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4019d2:	69 c0 45 8b 00 00    	imul   $0x8b45,%eax,%eax
  4019d8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4019dc:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4019e0:	69 c0 22 ff 00 00    	imul   $0xff22,%eax,%eax
  4019e6:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4019ea:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019ee:	69 c0 9b 21 00 00    	imul   $0x219b,%eax,%eax
  4019f4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4019f8:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4019fc:	69 c0 79 19 00 00    	imul   $0x1979,%eax,%eax
  401a02:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401a06:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401a0a:	69 c0 4b e0 00 00    	imul   $0xe04b,%eax,%eax
  401a10:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401a14:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a18:	69 c0 79 9a 00 00    	imul   $0x9a79,%eax,%eax
  401a1e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a22:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401a26:	69 c0 91 4d 00 00    	imul   $0x4d91,%eax,%eax
  401a2c:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401a30:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a34:	69 c0 2e b4 00 00    	imul   $0xb42e,%eax,%eax
  401a3a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401a3e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a42:	69 c0 d5 a9 00 00    	imul   $0xa9d5,%eax,%eax
  401a48:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401a4c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a50:	69 c0 ff 34 00 00    	imul   $0x34ff,%eax,%eax
  401a56:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a5a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401a5e:	69 c0 85 0a 00 00    	imul   $0xa85,%eax,%eax
  401a64:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401a68:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a6c:	69 c0 31 0c 00 00    	imul   $0xc31,%eax,%eax
  401a72:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a76:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401a7a:	69 c0 07 95 00 00    	imul   $0x9507,%eax,%eax
  401a80:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401a84:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401a88:	69 c0 85 4a 00 00    	imul   $0x4a85,%eax,%eax
  401a8e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401a92:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401a96:	69 c0 a8 6a 00 00    	imul   $0x6aa8,%eax,%eax
  401a9c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401aa0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401aa4:	69 c0 e0 19 00 00    	imul   $0x19e0,%eax,%eax
  401aaa:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401aae:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401ab2:	69 c0 8e 9c 00 00    	imul   $0x9c8e,%eax,%eax
  401ab8:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401abc:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401ac0:	69 c0 e9 18 00 00    	imul   $0x18e9,%eax,%eax
  401ac6:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401aca:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401ace:	69 c0 ea 28 00 00    	imul   $0x28ea,%eax,%eax
  401ad4:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401ad8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401adc:	69 c0 47 0c 00 00    	imul   $0xc47,%eax,%eax
  401ae2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401ae6:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401aea:	69 c0 f9 6b 00 00    	imul   $0x6bf9,%eax,%eax
  401af0:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401af4:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401af8:	69 c0 8c 1a 00 00    	imul   $0x1a8c,%eax,%eax
  401afe:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401b02:	ba 00 00 00 00       	mov    $0x0,%edx
  401b07:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0c:	83 fa 09             	cmp    $0x9,%edx
  401b0f:	77 0d                	ja     401b1e <scramble+0x453>
  401b11:	89 d1                	mov    %edx,%ecx
  401b13:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401b17:	01 c8                	add    %ecx,%eax
  401b19:	83 c2 01             	add    $0x1,%edx
  401b1c:	eb ee                	jmp    401b0c <scramble+0x441>
  401b1e:	c3                   	retq   

0000000000401b1f <getbuf>:
  401b1f:	48 83 ec 38          	sub    $0x38,%rsp
  401b23:	48 89 e7             	mov    %rsp,%rdi
  401b26:	e8 43 02 00 00       	callq  401d6e <Gets>
  401b2b:	b8 01 00 00 00       	mov    $0x1,%eax
  401b30:	48 83 c4 38          	add    $0x38,%rsp
  401b34:	c3                   	retq   

0000000000401b35 <touch1>:
  401b35:	48 83 ec 08          	sub    $0x8,%rsp
  401b39:	c7 05 bd 49 00 00 01 	movl   $0x1,0x49bd(%rip)        # 406500 <vlevel>
  401b40:	00 00 00 
  401b43:	48 8d 3d cf 17 00 00 	lea    0x17cf(%rip),%rdi        # 403319 <_IO_stdin_used+0x319>
  401b4a:	e8 31 f5 ff ff       	callq  401080 <puts@plt>
  401b4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401b54:	e8 0f 03 00 00       	callq  401e68 <validate>
  401b59:	bf 00 00 00 00       	mov    $0x0,%edi
  401b5e:	e8 8d f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401b63 <touch2>:
  401b63:	48 83 ec 08          	sub    $0x8,%rsp
  401b67:	89 fe                	mov    %edi,%esi
  401b69:	c7 05 8d 49 00 00 02 	movl   $0x2,0x498d(%rip)        # 406500 <vlevel>
  401b70:	00 00 00 
  401b73:	39 3d 8f 49 00 00    	cmp    %edi,0x498f(%rip)        # 406508 <cookie>
  401b79:	74 25                	je     401ba0 <touch2+0x3d>
  401b7b:	48 8d 3d e6 17 00 00 	lea    0x17e6(%rip),%rdi        # 403368 <_IO_stdin_used+0x368>
  401b82:	b8 00 00 00 00       	mov    $0x0,%eax
  401b87:	e8 24 f5 ff ff       	callq  4010b0 <printf@plt>
  401b8c:	bf 02 00 00 00       	mov    $0x2,%edi
  401b91:	e8 90 03 00 00       	callq  401f26 <fail>
  401b96:	bf 00 00 00 00       	mov    $0x0,%edi
  401b9b:	e8 50 f6 ff ff       	callq  4011f0 <exit@plt>
  401ba0:	48 8d 3d 99 17 00 00 	lea    0x1799(%rip),%rdi        # 403340 <_IO_stdin_used+0x340>
  401ba7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bac:	e8 ff f4 ff ff       	callq  4010b0 <printf@plt>
  401bb1:	bf 02 00 00 00       	mov    $0x2,%edi
  401bb6:	e8 ad 02 00 00       	callq  401e68 <validate>
  401bbb:	eb d9                	jmp    401b96 <touch2+0x33>

0000000000401bbd <hexmatch>:
  401bbd:	41 54                	push   %r12
  401bbf:	55                   	push   %rbp
  401bc0:	53                   	push   %rbx
  401bc1:	48 83 ec 70          	sub    $0x70,%rsp
  401bc5:	89 fd                	mov    %edi,%ebp
  401bc7:	48 89 f3             	mov    %rsi,%rbx
  401bca:	e8 91 f5 ff ff       	callq  401160 <random@plt>
  401bcf:	48 89 c1             	mov    %rax,%rcx
  401bd2:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401bd9:	0a d7 a3 
  401bdc:	48 f7 ea             	imul   %rdx
  401bdf:	48 01 ca             	add    %rcx,%rdx
  401be2:	48 c1 fa 06          	sar    $0x6,%rdx
  401be6:	48 89 c8             	mov    %rcx,%rax
  401be9:	48 c1 f8 3f          	sar    $0x3f,%rax
  401bed:	48 29 c2             	sub    %rax,%rdx
  401bf0:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401bf4:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401bf8:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401bff:	00 
  401c00:	48 29 c1             	sub    %rax,%rcx
  401c03:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401c07:	89 ea                	mov    %ebp,%edx
  401c09:	48 8d 35 26 17 00 00 	lea    0x1726(%rip),%rsi        # 403336 <_IO_stdin_used+0x336>
  401c10:	4c 89 e7             	mov    %r12,%rdi
  401c13:	b8 00 00 00 00       	mov    $0x0,%eax
  401c18:	e8 c3 f5 ff ff       	callq  4011e0 <sprintf@plt>
  401c1d:	ba 09 00 00 00       	mov    $0x9,%edx
  401c22:	4c 89 e6             	mov    %r12,%rsi
  401c25:	48 89 df             	mov    %rbx,%rdi
  401c28:	e8 33 f4 ff ff       	callq  401060 <strncmp@plt>
  401c2d:	85 c0                	test   %eax,%eax
  401c2f:	0f 94 c0             	sete   %al
  401c32:	0f b6 c0             	movzbl %al,%eax
  401c35:	48 83 c4 70          	add    $0x70,%rsp
  401c39:	5b                   	pop    %rbx
  401c3a:	5d                   	pop    %rbp
  401c3b:	41 5c                	pop    %r12
  401c3d:	c3                   	retq   

0000000000401c3e <touch3>:
  401c3e:	53                   	push   %rbx
  401c3f:	48 89 fb             	mov    %rdi,%rbx
  401c42:	c7 05 b4 48 00 00 03 	movl   $0x3,0x48b4(%rip)        # 406500 <vlevel>
  401c49:	00 00 00 
  401c4c:	48 89 fe             	mov    %rdi,%rsi
  401c4f:	8b 3d b3 48 00 00    	mov    0x48b3(%rip),%edi        # 406508 <cookie>
  401c55:	e8 63 ff ff ff       	callq  401bbd <hexmatch>
  401c5a:	85 c0                	test   %eax,%eax
  401c5c:	74 28                	je     401c86 <touch3+0x48>
  401c5e:	48 89 de             	mov    %rbx,%rsi
  401c61:	48 8d 3d 28 17 00 00 	lea    0x1728(%rip),%rdi        # 403390 <_IO_stdin_used+0x390>
  401c68:	b8 00 00 00 00       	mov    $0x0,%eax
  401c6d:	e8 3e f4 ff ff       	callq  4010b0 <printf@plt>
  401c72:	bf 03 00 00 00       	mov    $0x3,%edi
  401c77:	e8 ec 01 00 00       	callq  401e68 <validate>
  401c7c:	bf 00 00 00 00       	mov    $0x0,%edi
  401c81:	e8 6a f5 ff ff       	callq  4011f0 <exit@plt>
  401c86:	48 89 de             	mov    %rbx,%rsi
  401c89:	48 8d 3d 28 17 00 00 	lea    0x1728(%rip),%rdi        # 4033b8 <_IO_stdin_used+0x3b8>
  401c90:	b8 00 00 00 00       	mov    $0x0,%eax
  401c95:	e8 16 f4 ff ff       	callq  4010b0 <printf@plt>
  401c9a:	bf 03 00 00 00       	mov    $0x3,%edi
  401c9f:	e8 82 02 00 00       	callq  401f26 <fail>
  401ca4:	eb d6                	jmp    401c7c <touch3+0x3e>

0000000000401ca6 <test>:
  401ca6:	48 83 ec 08          	sub    $0x8,%rsp
  401caa:	b8 00 00 00 00       	mov    $0x0,%eax
  401caf:	e8 6b fe ff ff       	callq  401b1f <getbuf>
  401cb4:	89 c6                	mov    %eax,%esi
  401cb6:	48 8d 3d 23 17 00 00 	lea    0x1723(%rip),%rdi        # 4033e0 <_IO_stdin_used+0x3e0>
  401cbd:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc2:	e8 e9 f3 ff ff       	callq  4010b0 <printf@plt>
  401cc7:	48 83 c4 08          	add    $0x8,%rsp
  401ccb:	c3                   	retq   

0000000000401ccc <save_char>:
  401ccc:	8b 05 52 54 00 00    	mov    0x5452(%rip),%eax        # 407124 <gets_cnt>
  401cd2:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401cd7:	7f 4a                	jg     401d23 <save_char+0x57>
  401cd9:	89 f9                	mov    %edi,%ecx
  401cdb:	c0 e9 04             	shr    $0x4,%cl
  401cde:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401ce1:	4c 8d 05 68 19 00 00 	lea    0x1968(%rip),%r8        # 403650 <trans_char>
  401ce8:	83 e1 0f             	and    $0xf,%ecx
  401ceb:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401cf0:	48 8d 0d 29 48 00 00 	lea    0x4829(%rip),%rcx        # 406520 <gets_buf>
  401cf7:	48 63 f2             	movslq %edx,%rsi
  401cfa:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401cfe:	8d 72 01             	lea    0x1(%rdx),%esi
  401d01:	83 e7 0f             	and    $0xf,%edi
  401d04:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401d09:	48 63 f6             	movslq %esi,%rsi
  401d0c:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401d10:	83 c2 02             	add    $0x2,%edx
  401d13:	48 63 d2             	movslq %edx,%rdx
  401d16:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401d1a:	83 c0 01             	add    $0x1,%eax
  401d1d:	89 05 01 54 00 00    	mov    %eax,0x5401(%rip)        # 407124 <gets_cnt>
  401d23:	c3                   	retq   

0000000000401d24 <save_term>:
  401d24:	8b 05 fa 53 00 00    	mov    0x53fa(%rip),%eax        # 407124 <gets_cnt>
  401d2a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401d2d:	48 98                	cltq   
  401d2f:	48 8d 15 ea 47 00 00 	lea    0x47ea(%rip),%rdx        # 406520 <gets_buf>
  401d36:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401d3a:	c3                   	retq   

0000000000401d3b <check_fail>:
  401d3b:	48 83 ec 08          	sub    $0x8,%rsp
  401d3f:	0f be 35 e2 53 00 00 	movsbl 0x53e2(%rip),%esi        # 407128 <target_prefix>
  401d46:	48 8d 0d d3 47 00 00 	lea    0x47d3(%rip),%rcx        # 406520 <gets_buf>
  401d4d:	8b 15 a9 47 00 00    	mov    0x47a9(%rip),%edx        # 4064fc <check_level>
  401d53:	48 8d 3d a9 16 00 00 	lea    0x16a9(%rip),%rdi        # 403403 <_IO_stdin_used+0x403>
  401d5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5f:	e8 4c f3 ff ff       	callq  4010b0 <printf@plt>
  401d64:	bf 01 00 00 00       	mov    $0x1,%edi
  401d69:	e8 82 f4 ff ff       	callq  4011f0 <exit@plt>

0000000000401d6e <Gets>:
  401d6e:	41 54                	push   %r12
  401d70:	55                   	push   %rbp
  401d71:	53                   	push   %rbx
  401d72:	49 89 fc             	mov    %rdi,%r12
  401d75:	c7 05 a5 53 00 00 00 	movl   $0x0,0x53a5(%rip)        # 407124 <gets_cnt>
  401d7c:	00 00 00 
  401d7f:	48 89 fb             	mov    %rdi,%rbx
  401d82:	48 8b 3d 67 47 00 00 	mov    0x4767(%rip),%rdi        # 4064f0 <infile>
  401d89:	e8 82 f4 ff ff       	callq  401210 <getc@plt>
  401d8e:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d91:	74 18                	je     401dab <Gets+0x3d>
  401d93:	83 f8 0a             	cmp    $0xa,%eax
  401d96:	74 13                	je     401dab <Gets+0x3d>
  401d98:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d9c:	88 03                	mov    %al,(%rbx)
  401d9e:	0f b6 f8             	movzbl %al,%edi
  401da1:	e8 26 ff ff ff       	callq  401ccc <save_char>
  401da6:	48 89 eb             	mov    %rbp,%rbx
  401da9:	eb d7                	jmp    401d82 <Gets+0x14>
  401dab:	c6 03 00             	movb   $0x0,(%rbx)
  401dae:	b8 00 00 00 00       	mov    $0x0,%eax
  401db3:	e8 6c ff ff ff       	callq  401d24 <save_term>
  401db8:	4c 89 e0             	mov    %r12,%rax
  401dbb:	5b                   	pop    %rbx
  401dbc:	5d                   	pop    %rbp
  401dbd:	41 5c                	pop    %r12
  401dbf:	c3                   	retq   

0000000000401dc0 <notify_server>:
  401dc0:	83 3d 45 47 00 00 00 	cmpl   $0x0,0x4745(%rip)        # 40650c <is_checker>
  401dc7:	0f 85 9a 00 00 00    	jne    401e67 <notify_server+0xa7>
  401dcd:	53                   	push   %rbx
  401dce:	48 81 ec 00 20 00 00 	sub    $0x2000,%rsp
  401dd5:	81 3d 45 53 00 00 9c 	cmpl   $0x1f9c,0x5345(%rip)        # 407124 <gets_cnt>
  401ddc:	1f 00 00 
  401ddf:	7f 5a                	jg     401e3b <notify_server+0x7b>
  401de1:	44 0f be 0d 3f 53 00 	movsbl 0x533f(%rip),%r9d        # 407128 <target_prefix>
  401de8:	00 
  401de9:	83 3d 08 47 00 00 00 	cmpl   $0x0,0x4708(%rip)        # 4064f8 <notify>
  401df0:	74 64                	je     401e56 <notify_server+0x96>
  401df2:	44 8b 05 0b 47 00 00 	mov    0x470b(%rip),%r8d        # 406504 <authkey>
  401df9:	85 ff                	test   %edi,%edi
  401dfb:	74 61                	je     401e5e <notify_server+0x9e>
  401dfd:	48 8d 1d 1a 16 00 00 	lea    0x161a(%rip),%rbx        # 40341e <_IO_stdin_used+0x41e>
  401e04:	48 89 e7             	mov    %rsp,%rdi
  401e07:	48 8d 05 12 47 00 00 	lea    0x4712(%rip),%rax        # 406520 <gets_buf>
  401e0e:	50                   	push   %rax
  401e0f:	56                   	push   %rsi
  401e10:	48 89 d9             	mov    %rbx,%rcx
  401e13:	8b 15 17 43 00 00    	mov    0x4317(%rip),%edx        # 406130 <target_id>
  401e19:	48 8d 35 03 16 00 00 	lea    0x1603(%rip),%rsi        # 403423 <_IO_stdin_used+0x423>
  401e20:	b8 00 00 00 00       	mov    $0x0,%eax
  401e25:	e8 b6 f3 ff ff       	callq  4011e0 <sprintf@plt>
  401e2a:	48 89 df             	mov    %rbx,%rdi
  401e2d:	e8 4e f2 ff ff       	callq  401080 <puts@plt>
  401e32:	48 81 c4 10 20 00 00 	add    $0x2010,%rsp
  401e39:	5b                   	pop    %rbx
  401e3a:	c3                   	retq   
  401e3b:	48 8d 3d a6 16 00 00 	lea    0x16a6(%rip),%rdi        # 4034e8 <_IO_stdin_used+0x4e8>
  401e42:	b8 00 00 00 00       	mov    $0x0,%eax
  401e47:	e8 64 f2 ff ff       	callq  4010b0 <printf@plt>
  401e4c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e51:	e8 9a f3 ff ff       	callq  4011f0 <exit@plt>
  401e56:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401e5c:	eb 9b                	jmp    401df9 <notify_server+0x39>
  401e5e:	48 8d 1d b4 15 00 00 	lea    0x15b4(%rip),%rbx        # 403419 <_IO_stdin_used+0x419>
  401e65:	eb 9d                	jmp    401e04 <notify_server+0x44>
  401e67:	c3                   	retq   

0000000000401e68 <validate>:
  401e68:	53                   	push   %rbx
  401e69:	89 fb                	mov    %edi,%ebx
  401e6b:	83 3d 9a 46 00 00 00 	cmpl   $0x0,0x469a(%rip)        # 40650c <is_checker>
  401e72:	74 68                	je     401edc <validate+0x74>
  401e74:	39 3d 86 46 00 00    	cmp    %edi,0x4686(%rip)        # 406500 <vlevel>
  401e7a:	75 2d                	jne    401ea9 <validate+0x41>
  401e7c:	8b 35 7a 46 00 00    	mov    0x467a(%rip),%esi        # 4064fc <check_level>
  401e82:	39 fe                	cmp    %edi,%esi
  401e84:	75 39                	jne    401ebf <validate+0x57>
  401e86:	0f be 35 9b 52 00 00 	movsbl 0x529b(%rip),%esi        # 407128 <target_prefix>
  401e8d:	48 8d 0d 8c 46 00 00 	lea    0x468c(%rip),%rcx        # 406520 <gets_buf>
  401e94:	89 fa                	mov    %edi,%edx
  401e96:	48 8d 3d c0 15 00 00 	lea    0x15c0(%rip),%rdi        # 40345d <_IO_stdin_used+0x45d>
  401e9d:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea2:	e8 09 f2 ff ff       	callq  4010b0 <printf@plt>
  401ea7:	5b                   	pop    %rbx
  401ea8:	c3                   	retq   
  401ea9:	48 8d 3d 8f 15 00 00 	lea    0x158f(%rip),%rdi        # 40343f <_IO_stdin_used+0x43f>
  401eb0:	e8 cb f1 ff ff       	callq  401080 <puts@plt>
  401eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eba:	e8 7c fe ff ff       	callq  401d3b <check_fail>
  401ebf:	89 fa                	mov    %edi,%edx
  401ec1:	48 8d 3d 50 16 00 00 	lea    0x1650(%rip),%rdi        # 403518 <_IO_stdin_used+0x518>
  401ec8:	b8 00 00 00 00       	mov    $0x0,%eax
  401ecd:	e8 de f1 ff ff       	callq  4010b0 <printf@plt>
  401ed2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed7:	e8 5f fe ff ff       	callq  401d3b <check_fail>
  401edc:	39 3d 1e 46 00 00    	cmp    %edi,0x461e(%rip)        # 406500 <vlevel>
  401ee2:	74 1a                	je     401efe <validate+0x96>
  401ee4:	48 8d 3d 54 15 00 00 	lea    0x1554(%rip),%rdi        # 40343f <_IO_stdin_used+0x43f>
  401eeb:	e8 90 f1 ff ff       	callq  401080 <puts@plt>
  401ef0:	89 de                	mov    %ebx,%esi
  401ef2:	bf 00 00 00 00       	mov    $0x0,%edi
  401ef7:	e8 c4 fe ff ff       	callq  401dc0 <notify_server>
  401efc:	eb a9                	jmp    401ea7 <validate+0x3f>
  401efe:	0f be 15 23 52 00 00 	movsbl 0x5223(%rip),%edx        # 407128 <target_prefix>
  401f05:	89 fe                	mov    %edi,%esi
  401f07:	48 8d 3d 32 16 00 00 	lea    0x1632(%rip),%rdi        # 403540 <_IO_stdin_used+0x540>
  401f0e:	b8 00 00 00 00       	mov    $0x0,%eax
  401f13:	e8 98 f1 ff ff       	callq  4010b0 <printf@plt>
  401f18:	89 de                	mov    %ebx,%esi
  401f1a:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1f:	e8 9c fe ff ff       	callq  401dc0 <notify_server>
  401f24:	eb 81                	jmp    401ea7 <validate+0x3f>

0000000000401f26 <fail>:
  401f26:	48 83 ec 08          	sub    $0x8,%rsp
  401f2a:	83 3d db 45 00 00 00 	cmpl   $0x0,0x45db(%rip)        # 40650c <is_checker>
  401f31:	75 11                	jne    401f44 <fail+0x1e>
  401f33:	89 fe                	mov    %edi,%esi
  401f35:	bf 00 00 00 00       	mov    $0x0,%edi
  401f3a:	e8 81 fe ff ff       	callq  401dc0 <notify_server>
  401f3f:	48 83 c4 08          	add    $0x8,%rsp
  401f43:	c3                   	retq   
  401f44:	b8 00 00 00 00       	mov    $0x0,%eax
  401f49:	e8 ed fd ff ff       	callq  401d3b <check_fail>

0000000000401f4e <bushandler>:
  401f4e:	48 83 ec 08          	sub    $0x8,%rsp
  401f52:	83 3d b3 45 00 00 00 	cmpl   $0x0,0x45b3(%rip)        # 40650c <is_checker>
  401f59:	74 16                	je     401f71 <bushandler+0x23>
  401f5b:	48 8d 3d 10 15 00 00 	lea    0x1510(%rip),%rdi        # 403472 <_IO_stdin_used+0x472>
  401f62:	e8 19 f1 ff ff       	callq  401080 <puts@plt>
  401f67:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6c:	e8 ca fd ff ff       	callq  401d3b <check_fail>
  401f71:	48 8d 3d 00 16 00 00 	lea    0x1600(%rip),%rdi        # 403578 <_IO_stdin_used+0x578>
  401f78:	e8 03 f1 ff ff       	callq  401080 <puts@plt>
  401f7d:	48 8d 3d f8 14 00 00 	lea    0x14f8(%rip),%rdi        # 40347c <_IO_stdin_used+0x47c>
  401f84:	e8 f7 f0 ff ff       	callq  401080 <puts@plt>
  401f89:	be 00 00 00 00       	mov    $0x0,%esi
  401f8e:	bf 00 00 00 00       	mov    $0x0,%edi
  401f93:	e8 28 fe ff ff       	callq  401dc0 <notify_server>
  401f98:	bf 01 00 00 00       	mov    $0x1,%edi
  401f9d:	e8 4e f2 ff ff       	callq  4011f0 <exit@plt>

0000000000401fa2 <seghandler>:
  401fa2:	48 83 ec 08          	sub    $0x8,%rsp
  401fa6:	83 3d 5f 45 00 00 00 	cmpl   $0x0,0x455f(%rip)        # 40650c <is_checker>
  401fad:	74 16                	je     401fc5 <seghandler+0x23>
  401faf:	48 8d 3d dc 14 00 00 	lea    0x14dc(%rip),%rdi        # 403492 <_IO_stdin_used+0x492>
  401fb6:	e8 c5 f0 ff ff       	callq  401080 <puts@plt>
  401fbb:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc0:	e8 76 fd ff ff       	callq  401d3b <check_fail>
  401fc5:	48 8d 3d cc 15 00 00 	lea    0x15cc(%rip),%rdi        # 403598 <_IO_stdin_used+0x598>
  401fcc:	e8 af f0 ff ff       	callq  401080 <puts@plt>
  401fd1:	48 8d 3d a4 14 00 00 	lea    0x14a4(%rip),%rdi        # 40347c <_IO_stdin_used+0x47c>
  401fd8:	e8 a3 f0 ff ff       	callq  401080 <puts@plt>
  401fdd:	be 00 00 00 00       	mov    $0x0,%esi
  401fe2:	bf 00 00 00 00       	mov    $0x0,%edi
  401fe7:	e8 d4 fd ff ff       	callq  401dc0 <notify_server>
  401fec:	bf 01 00 00 00       	mov    $0x1,%edi
  401ff1:	e8 fa f1 ff ff       	callq  4011f0 <exit@plt>

0000000000401ff6 <illegalhandler>:
  401ff6:	48 83 ec 08          	sub    $0x8,%rsp
  401ffa:	83 3d 0b 45 00 00 00 	cmpl   $0x0,0x450b(%rip)        # 40650c <is_checker>
  402001:	74 16                	je     402019 <illegalhandler+0x23>
  402003:	48 8d 3d 9b 14 00 00 	lea    0x149b(%rip),%rdi        # 4034a5 <_IO_stdin_used+0x4a5>
  40200a:	e8 71 f0 ff ff       	callq  401080 <puts@plt>
  40200f:	b8 00 00 00 00       	mov    $0x0,%eax
  402014:	e8 22 fd ff ff       	callq  401d3b <check_fail>
  402019:	48 8d 3d a0 15 00 00 	lea    0x15a0(%rip),%rdi        # 4035c0 <_IO_stdin_used+0x5c0>
  402020:	e8 5b f0 ff ff       	callq  401080 <puts@plt>
  402025:	48 8d 3d 50 14 00 00 	lea    0x1450(%rip),%rdi        # 40347c <_IO_stdin_used+0x47c>
  40202c:	e8 4f f0 ff ff       	callq  401080 <puts@plt>
  402031:	be 00 00 00 00       	mov    $0x0,%esi
  402036:	bf 00 00 00 00       	mov    $0x0,%edi
  40203b:	e8 80 fd ff ff       	callq  401dc0 <notify_server>
  402040:	bf 01 00 00 00       	mov    $0x1,%edi
  402045:	e8 a6 f1 ff ff       	callq  4011f0 <exit@plt>

000000000040204a <sigalrmhandler>:
  40204a:	48 83 ec 08          	sub    $0x8,%rsp
  40204e:	83 3d b7 44 00 00 00 	cmpl   $0x0,0x44b7(%rip)        # 40650c <is_checker>
  402055:	74 16                	je     40206d <sigalrmhandler+0x23>
  402057:	48 8d 3d 5b 14 00 00 	lea    0x145b(%rip),%rdi        # 4034b9 <_IO_stdin_used+0x4b9>
  40205e:	e8 1d f0 ff ff       	callq  401080 <puts@plt>
  402063:	b8 00 00 00 00       	mov    $0x0,%eax
  402068:	e8 ce fc ff ff       	callq  401d3b <check_fail>
  40206d:	be 05 00 00 00       	mov    $0x5,%esi
  402072:	48 8d 3d 77 15 00 00 	lea    0x1577(%rip),%rdi        # 4035f0 <_IO_stdin_used+0x5f0>
  402079:	b8 00 00 00 00       	mov    $0x0,%eax
  40207e:	e8 2d f0 ff ff       	callq  4010b0 <printf@plt>
  402083:	be 00 00 00 00       	mov    $0x0,%esi
  402088:	bf 00 00 00 00       	mov    $0x0,%edi
  40208d:	e8 2e fd ff ff       	callq  401dc0 <notify_server>
  402092:	bf 01 00 00 00       	mov    $0x1,%edi
  402097:	e8 54 f1 ff ff       	callq  4011f0 <exit@plt>

000000000040209c <launch>:
  40209c:	55                   	push   %rbp
  40209d:	48 89 e5             	mov    %rsp,%rbp
  4020a0:	48 89 fa             	mov    %rdi,%rdx
  4020a3:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4020a7:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020ab:	48 29 c4             	sub    %rax,%rsp
  4020ae:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020b3:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020b7:	be f4 00 00 00       	mov    $0xf4,%esi
  4020bc:	e8 ff ef ff ff       	callq  4010c0 <memset@plt>
  4020c1:	48 8b 05 d8 43 00 00 	mov    0x43d8(%rip),%rax        # 4064a0 <stdin@@GLIBC_2.2.5>
  4020c8:	48 39 05 21 44 00 00 	cmp    %rax,0x4421(%rip)        # 4064f0 <infile>
  4020cf:	74 2b                	je     4020fc <launch+0x60>
  4020d1:	c7 05 25 44 00 00 00 	movl   $0x0,0x4425(%rip)        # 406500 <vlevel>
  4020d8:	00 00 00 
  4020db:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e0:	e8 c1 fb ff ff       	callq  401ca6 <test>
  4020e5:	83 3d 20 44 00 00 00 	cmpl   $0x0,0x4420(%rip)        # 40650c <is_checker>
  4020ec:	75 21                	jne    40210f <launch+0x73>
  4020ee:	48 8d 3d e4 13 00 00 	lea    0x13e4(%rip),%rdi        # 4034d9 <_IO_stdin_used+0x4d9>
  4020f5:	e8 86 ef ff ff       	callq  401080 <puts@plt>
  4020fa:	c9                   	leaveq 
  4020fb:	c3                   	retq   
  4020fc:	48 8d 3d be 13 00 00 	lea    0x13be(%rip),%rdi        # 4034c1 <_IO_stdin_used+0x4c1>
  402103:	b8 00 00 00 00       	mov    $0x0,%eax
  402108:	e8 a3 ef ff ff       	callq  4010b0 <printf@plt>
  40210d:	eb c2                	jmp    4020d1 <launch+0x35>
  40210f:	48 8d 3d b8 13 00 00 	lea    0x13b8(%rip),%rdi        # 4034ce <_IO_stdin_used+0x4ce>
  402116:	e8 65 ef ff ff       	callq  401080 <puts@plt>
  40211b:	b8 00 00 00 00       	mov    $0x0,%eax
  402120:	e8 16 fc ff ff       	callq  401d3b <check_fail>

0000000000402125 <stable_launch>:
  402125:	53                   	push   %rbx
  402126:	48 89 3d bb 43 00 00 	mov    %rdi,0x43bb(%rip)        # 4064e8 <global_offset>
  40212d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402133:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402139:	b9 32 01 00 00       	mov    $0x132,%ecx
  40213e:	ba 07 00 00 00       	mov    $0x7,%edx
  402143:	be 00 00 10 00       	mov    $0x100000,%esi
  402148:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40214d:	e8 4e ef ff ff       	callq  4010a0 <mmap@plt>
  402152:	48 89 c3             	mov    %rax,%rbx
  402155:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40215b:	75 43                	jne    4021a0 <stable_launch+0x7b>
  40215d:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402164:	48 89 15 c5 4f 00 00 	mov    %rdx,0x4fc5(%rip)        # 407130 <stack_top>
  40216b:	48 89 e0             	mov    %rsp,%rax
  40216e:	48 89 d4             	mov    %rdx,%rsp
  402171:	48 89 c2             	mov    %rax,%rdx
  402174:	48 89 15 65 43 00 00 	mov    %rdx,0x4365(%rip)        # 4064e0 <global_save_stack>
  40217b:	48 8b 3d 66 43 00 00 	mov    0x4366(%rip),%rdi        # 4064e8 <global_offset>
  402182:	e8 15 ff ff ff       	callq  40209c <launch>
  402187:	48 8b 05 52 43 00 00 	mov    0x4352(%rip),%rax        # 4064e0 <global_save_stack>
  40218e:	48 89 c4             	mov    %rax,%rsp
  402191:	be 00 00 10 00       	mov    $0x100000,%esi
  402196:	48 89 df             	mov    %rbx,%rdi
  402199:	e8 e2 ef ff ff       	callq  401180 <munmap@plt>
  40219e:	5b                   	pop    %rbx
  40219f:	c3                   	retq   
  4021a0:	be 00 00 10 00       	mov    $0x100000,%esi
  4021a5:	48 89 c7             	mov    %rax,%rdi
  4021a8:	e8 d3 ef ff ff       	callq  401180 <munmap@plt>
  4021ad:	ba 00 60 58 55       	mov    $0x55586000,%edx
  4021b2:	48 8d 35 6f 14 00 00 	lea    0x146f(%rip),%rsi        # 403628 <_IO_stdin_used+0x628>
  4021b9:	48 8b 3d 00 43 00 00 	mov    0x4300(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  4021c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c5:	e8 56 ef ff ff       	callq  401120 <fprintf@plt>
  4021ca:	bf 01 00 00 00       	mov    $0x1,%edi
  4021cf:	e8 1c f0 ff ff       	callq  4011f0 <exit@plt>

00000000004021d4 <rio_readinitb>:
  4021d4:	89 37                	mov    %esi,(%rdi)
  4021d6:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021dd:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021e1:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021e5:	c3                   	retq   

00000000004021e6 <sigalrm_handler>:
  4021e6:	48 83 ec 08          	sub    $0x8,%rsp
  4021ea:	ba 00 00 00 00       	mov    $0x0,%edx
  4021ef:	48 8d 35 6a 14 00 00 	lea    0x146a(%rip),%rsi        # 403660 <trans_char+0x10>
  4021f6:	48 8b 3d c3 42 00 00 	mov    0x42c3(%rip),%rdi        # 4064c0 <stderr@@GLIBC_2.2.5>
  4021fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402202:	e8 19 ef ff ff       	callq  401120 <fprintf@plt>
  402207:	bf 01 00 00 00       	mov    $0x1,%edi
  40220c:	e8 df ef ff ff       	callq  4011f0 <exit@plt>

0000000000402211 <urlencode>:
  402211:	41 54                	push   %r12
  402213:	55                   	push   %rbp
  402214:	53                   	push   %rbx
  402215:	48 83 ec 10          	sub    $0x10,%rsp
  402219:	48 89 fb             	mov    %rdi,%rbx
  40221c:	48 89 f5             	mov    %rsi,%rbp
  40221f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402226:	b8 00 00 00 00       	mov    $0x0,%eax
  40222b:	f2 ae                	repnz scas %es:(%rdi),%al
  40222d:	48 89 ce             	mov    %rcx,%rsi
  402230:	48 f7 d6             	not    %rsi
  402233:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402236:	eb 0e                	jmp    402246 <urlencode+0x35>
  402238:	88 55 00             	mov    %dl,0x0(%rbp)
  40223b:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40223f:	48 83 c3 01          	add    $0x1,%rbx
  402243:	44 89 e0             	mov    %r12d,%eax
  402246:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40224a:	85 c0                	test   %eax,%eax
  40224c:	0f 84 95 00 00 00    	je     4022e7 <urlencode+0xd6>
  402252:	0f b6 13             	movzbl (%rbx),%edx
  402255:	80 fa 2a             	cmp    $0x2a,%dl
  402258:	0f 94 c1             	sete   %cl
  40225b:	80 fa 2d             	cmp    $0x2d,%dl
  40225e:	0f 94 c0             	sete   %al
  402261:	08 c1                	or     %al,%cl
  402263:	75 d3                	jne    402238 <urlencode+0x27>
  402265:	80 fa 2e             	cmp    $0x2e,%dl
  402268:	74 ce                	je     402238 <urlencode+0x27>
  40226a:	80 fa 5f             	cmp    $0x5f,%dl
  40226d:	74 c9                	je     402238 <urlencode+0x27>
  40226f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402272:	3c 09                	cmp    $0x9,%al
  402274:	76 c2                	jbe    402238 <urlencode+0x27>
  402276:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402279:	3c 19                	cmp    $0x19,%al
  40227b:	76 bb                	jbe    402238 <urlencode+0x27>
  40227d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402280:	3c 19                	cmp    $0x19,%al
  402282:	76 b4                	jbe    402238 <urlencode+0x27>
  402284:	80 fa 20             	cmp    $0x20,%dl
  402287:	74 4c                	je     4022d5 <urlencode+0xc4>
  402289:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40228c:	3c 5f                	cmp    $0x5f,%al
  40228e:	0f 96 c1             	setbe  %cl
  402291:	80 fa 09             	cmp    $0x9,%dl
  402294:	0f 94 c0             	sete   %al
  402297:	08 c1                	or     %al,%cl
  402299:	74 47                	je     4022e2 <urlencode+0xd1>
  40229b:	0f b6 d2             	movzbl %dl,%edx
  40229e:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4022a3:	48 8d 35 4e 14 00 00 	lea    0x144e(%rip),%rsi        # 4036f8 <trans_char+0xa8>
  4022aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4022af:	e8 2c ef ff ff       	callq  4011e0 <sprintf@plt>
  4022b4:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  4022b9:	88 45 00             	mov    %al,0x0(%rbp)
  4022bc:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  4022c1:	88 45 01             	mov    %al,0x1(%rbp)
  4022c4:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4022c9:	88 45 02             	mov    %al,0x2(%rbp)
  4022cc:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4022d0:	e9 6a ff ff ff       	jmpq   40223f <urlencode+0x2e>
  4022d5:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4022d9:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4022dd:	e9 5d ff ff ff       	jmpq   40223f <urlencode+0x2e>
  4022e2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022e7:	48 83 c4 10          	add    $0x10,%rsp
  4022eb:	5b                   	pop    %rbx
  4022ec:	5d                   	pop    %rbp
  4022ed:	41 5c                	pop    %r12
  4022ef:	c3                   	retq   

00000000004022f0 <rio_writen>:
  4022f0:	41 55                	push   %r13
  4022f2:	41 54                	push   %r12
  4022f4:	55                   	push   %rbp
  4022f5:	53                   	push   %rbx
  4022f6:	48 83 ec 08          	sub    $0x8,%rsp
  4022fa:	41 89 fc             	mov    %edi,%r12d
  4022fd:	48 89 f5             	mov    %rsi,%rbp
  402300:	49 89 d5             	mov    %rdx,%r13
  402303:	48 89 d3             	mov    %rdx,%rbx
  402306:	eb 06                	jmp    40230e <rio_writen+0x1e>
  402308:	48 29 c3             	sub    %rax,%rbx
  40230b:	48 01 c5             	add    %rax,%rbp
  40230e:	48 85 db             	test   %rbx,%rbx
  402311:	74 24                	je     402337 <rio_writen+0x47>
  402313:	48 89 da             	mov    %rbx,%rdx
  402316:	48 89 ee             	mov    %rbp,%rsi
  402319:	44 89 e7             	mov    %r12d,%edi
  40231c:	e8 6f ed ff ff       	callq  401090 <write@plt>
  402321:	48 85 c0             	test   %rax,%rax
  402324:	7f e2                	jg     402308 <rio_writen+0x18>
  402326:	e8 15 ed ff ff       	callq  401040 <__errno_location@plt>
  40232b:	83 38 04             	cmpl   $0x4,(%rax)
  40232e:	75 15                	jne    402345 <rio_writen+0x55>
  402330:	b8 00 00 00 00       	mov    $0x0,%eax
  402335:	eb d1                	jmp    402308 <rio_writen+0x18>
  402337:	4c 89 e8             	mov    %r13,%rax
  40233a:	48 83 c4 08          	add    $0x8,%rsp
  40233e:	5b                   	pop    %rbx
  40233f:	5d                   	pop    %rbp
  402340:	41 5c                	pop    %r12
  402342:	41 5d                	pop    %r13
  402344:	c3                   	retq   
  402345:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40234c:	eb ec                	jmp    40233a <rio_writen+0x4a>

000000000040234e <rio_read>:
  40234e:	41 55                	push   %r13
  402350:	41 54                	push   %r12
  402352:	55                   	push   %rbp
  402353:	53                   	push   %rbx
  402354:	48 83 ec 08          	sub    $0x8,%rsp
  402358:	48 89 fb             	mov    %rdi,%rbx
  40235b:	49 89 f5             	mov    %rsi,%r13
  40235e:	49 89 d4             	mov    %rdx,%r12
  402361:	eb 0a                	jmp    40236d <rio_read+0x1f>
  402363:	e8 d8 ec ff ff       	callq  401040 <__errno_location@plt>
  402368:	83 38 04             	cmpl   $0x4,(%rax)
  40236b:	75 5a                	jne    4023c7 <rio_read+0x79>
  40236d:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402370:	85 ed                	test   %ebp,%ebp
  402372:	7f 22                	jg     402396 <rio_read+0x48>
  402374:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402378:	ba 00 20 00 00       	mov    $0x2000,%edx
  40237d:	48 89 ee             	mov    %rbp,%rsi
  402380:	8b 3b                	mov    (%rbx),%edi
  402382:	e8 69 ed ff ff       	callq  4010f0 <read@plt>
  402387:	89 43 04             	mov    %eax,0x4(%rbx)
  40238a:	85 c0                	test   %eax,%eax
  40238c:	78 d5                	js     402363 <rio_read+0x15>
  40238e:	74 40                	je     4023d0 <rio_read+0x82>
  402390:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402394:	eb d7                	jmp    40236d <rio_read+0x1f>
  402396:	89 e8                	mov    %ebp,%eax
  402398:	4c 39 e0             	cmp    %r12,%rax
  40239b:	72 03                	jb     4023a0 <rio_read+0x52>
  40239d:	44 89 e5             	mov    %r12d,%ebp
  4023a0:	4c 63 e5             	movslq %ebp,%r12
  4023a3:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4023a7:	4c 89 e2             	mov    %r12,%rdx
  4023aa:	4c 89 ef             	mov    %r13,%rdi
  4023ad:	e8 8e ed ff ff       	callq  401140 <memcpy@plt>
  4023b2:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4023b6:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4023b9:	4c 89 e0             	mov    %r12,%rax
  4023bc:	48 83 c4 08          	add    $0x8,%rsp
  4023c0:	5b                   	pop    %rbx
  4023c1:	5d                   	pop    %rbp
  4023c2:	41 5c                	pop    %r12
  4023c4:	41 5d                	pop    %r13
  4023c6:	c3                   	retq   
  4023c7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023ce:	eb ec                	jmp    4023bc <rio_read+0x6e>
  4023d0:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d5:	eb e5                	jmp    4023bc <rio_read+0x6e>

00000000004023d7 <rio_readlineb>:
  4023d7:	41 55                	push   %r13
  4023d9:	41 54                	push   %r12
  4023db:	55                   	push   %rbp
  4023dc:	53                   	push   %rbx
  4023dd:	48 83 ec 18          	sub    $0x18,%rsp
  4023e1:	49 89 fd             	mov    %rdi,%r13
  4023e4:	48 89 f5             	mov    %rsi,%rbp
  4023e7:	49 89 d4             	mov    %rdx,%r12
  4023ea:	bb 01 00 00 00       	mov    $0x1,%ebx
  4023ef:	4c 39 e3             	cmp    %r12,%rbx
  4023f2:	73 44                	jae    402438 <rio_readlineb+0x61>
  4023f4:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4023f9:	ba 01 00 00 00       	mov    $0x1,%edx
  4023fe:	4c 89 ef             	mov    %r13,%rdi
  402401:	e8 48 ff ff ff       	callq  40234e <rio_read>
  402406:	83 f8 01             	cmp    $0x1,%eax
  402409:	75 19                	jne    402424 <rio_readlineb+0x4d>
  40240b:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  40240f:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402414:	88 45 00             	mov    %al,0x0(%rbp)
  402417:	3c 0a                	cmp    $0xa,%al
  402419:	74 1a                	je     402435 <rio_readlineb+0x5e>
  40241b:	48 83 c3 01          	add    $0x1,%rbx
  40241f:	48 89 d5             	mov    %rdx,%rbp
  402422:	eb cb                	jmp    4023ef <rio_readlineb+0x18>
  402424:	85 c0                	test   %eax,%eax
  402426:	75 22                	jne    40244a <rio_readlineb+0x73>
  402428:	48 83 fb 01          	cmp    $0x1,%rbx
  40242c:	75 0a                	jne    402438 <rio_readlineb+0x61>
  40242e:	b8 00 00 00 00       	mov    $0x0,%eax
  402433:	eb 0a                	jmp    40243f <rio_readlineb+0x68>
  402435:	48 89 d5             	mov    %rdx,%rbp
  402438:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40243c:	48 89 d8             	mov    %rbx,%rax
  40243f:	48 83 c4 18          	add    $0x18,%rsp
  402443:	5b                   	pop    %rbx
  402444:	5d                   	pop    %rbp
  402445:	41 5c                	pop    %r12
  402447:	41 5d                	pop    %r13
  402449:	c3                   	retq   
  40244a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402451:	eb ec                	jmp    40243f <rio_readlineb+0x68>

0000000000402453 <submitr>:
  402453:	41 57                	push   %r15
  402455:	41 56                	push   %r14
  402457:	41 55                	push   %r13
  402459:	41 54                	push   %r12
  40245b:	55                   	push   %rbp
  40245c:	53                   	push   %rbx
  40245d:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402464:	49 89 fd             	mov    %rdi,%r13
  402467:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40246b:	49 89 d7             	mov    %rdx,%r15
  40246e:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402473:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402478:	4d 89 ce             	mov    %r9,%r14
  40247b:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  402482:	00 
  402483:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  40248a:	00 00 00 00 
  40248e:	ba 00 00 00 00       	mov    $0x0,%edx
  402493:	be 01 00 00 00       	mov    $0x1,%esi
  402498:	bf 02 00 00 00       	mov    $0x2,%edi
  40249d:	e8 7e ed ff ff       	callq  401220 <socket@plt>
  4024a2:	85 c0                	test   %eax,%eax
  4024a4:	0f 88 9a 02 00 00    	js     402744 <submitr+0x2f1>
  4024aa:	89 c3                	mov    %eax,%ebx
  4024ac:	4c 89 ef             	mov    %r13,%rdi
  4024af:	e8 5c ec ff ff       	callq  401110 <gethostbyname@plt>
  4024b4:	48 85 c0             	test   %rax,%rax
  4024b7:	0f 84 d3 02 00 00    	je     402790 <submitr+0x33d>
  4024bd:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  4024c4:	00 
  4024c5:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  4024cc:	00 00 00 00 00 
  4024d1:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  4024d8:	00 00 00 00 
  4024dc:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  4024e3:	00 00 00 
  4024e6:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  4024ed:	00 02 00 
  4024f0:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4024f4:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4024f8:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  4024ff:	00 
  402500:	48 8b 31             	mov    (%rcx),%rsi
  402503:	e8 88 ec ff ff       	callq  401190 <memmove@plt>
  402508:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40250d:	66 c1 c0 08          	rol    $0x8,%ax
  402511:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402518:	00 
  402519:	ba 10 00 00 00       	mov    $0x10,%edx
  40251e:	4c 89 e6             	mov    %r12,%rsi
  402521:	89 df                	mov    %ebx,%edi
  402523:	e8 d8 ec ff ff       	callq  401200 <connect@plt>
  402528:	85 c0                	test   %eax,%eax
  40252a:	0f 88 c8 02 00 00    	js     4027f8 <submitr+0x3a5>
  402530:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402537:	b8 00 00 00 00       	mov    $0x0,%eax
  40253c:	48 89 f1             	mov    %rsi,%rcx
  40253f:	4c 89 f7             	mov    %r14,%rdi
  402542:	f2 ae                	repnz scas %es:(%rdi),%al
  402544:	48 89 ca             	mov    %rcx,%rdx
  402547:	48 f7 d2             	not    %rdx
  40254a:	48 89 f1             	mov    %rsi,%rcx
  40254d:	4c 89 ff             	mov    %r15,%rdi
  402550:	f2 ae                	repnz scas %es:(%rdi),%al
  402552:	48 f7 d1             	not    %rcx
  402555:	49 89 c8             	mov    %rcx,%r8
  402558:	48 89 f1             	mov    %rsi,%rcx
  40255b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402560:	f2 ae                	repnz scas %es:(%rdi),%al
  402562:	48 f7 d1             	not    %rcx
  402565:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40256a:	48 89 f1             	mov    %rsi,%rcx
  40256d:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402572:	f2 ae                	repnz scas %es:(%rdi),%al
  402574:	48 89 c8             	mov    %rcx,%rax
  402577:	48 f7 d0             	not    %rax
  40257a:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40257f:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402584:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  40258b:	00 
  40258c:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402592:	0f 87 ba 02 00 00    	ja     402852 <submitr+0x3ff>
  402598:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  40259f:	00 
  4025a0:	b9 00 04 00 00       	mov    $0x400,%ecx
  4025a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025aa:	48 89 f7             	mov    %rsi,%rdi
  4025ad:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4025b0:	4c 89 f7             	mov    %r14,%rdi
  4025b3:	e8 59 fc ff ff       	callq  402211 <urlencode>
  4025b8:	85 c0                	test   %eax,%eax
  4025ba:	0f 88 05 03 00 00    	js     4028c5 <submitr+0x472>
  4025c0:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  4025c7:	00 
  4025c8:	4d 89 e9             	mov    %r13,%r9
  4025cb:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  4025d2:	00 
  4025d3:	4c 89 f9             	mov    %r15,%rcx
  4025d6:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4025db:	48 8d 35 a6 10 00 00 	lea    0x10a6(%rip),%rsi        # 403688 <trans_char+0x38>
  4025e2:	4c 89 e7             	mov    %r12,%rdi
  4025e5:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ea:	e8 f1 eb ff ff       	callq  4011e0 <sprintf@plt>
  4025ef:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4025f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4025fb:	4c 89 e7             	mov    %r12,%rdi
  4025fe:	f2 ae                	repnz scas %es:(%rdi),%al
  402600:	48 89 ca             	mov    %rcx,%rdx
  402603:	48 f7 d2             	not    %rdx
  402606:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40260a:	4c 89 e6             	mov    %r12,%rsi
  40260d:	89 df                	mov    %ebx,%edi
  40260f:	e8 dc fc ff ff       	callq  4022f0 <rio_writen>
  402614:	48 85 c0             	test   %rax,%rax
  402617:	0f 88 33 03 00 00    	js     402950 <submitr+0x4fd>
  40261d:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  402624:	00 
  402625:	89 de                	mov    %ebx,%esi
  402627:	4c 89 e7             	mov    %r12,%rdi
  40262a:	e8 a5 fb ff ff       	callq  4021d4 <rio_readinitb>
  40262f:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402636:	00 
  402637:	ba 00 20 00 00       	mov    $0x2000,%edx
  40263c:	4c 89 e7             	mov    %r12,%rdi
  40263f:	e8 93 fd ff ff       	callq  4023d7 <rio_readlineb>
  402644:	48 85 c0             	test   %rax,%rax
  402647:	0f 8e 72 03 00 00    	jle    4029bf <submitr+0x56c>
  40264d:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  402654:	00 
  402655:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  40265c:	00 
  40265d:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402664:	00 
  402665:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40266a:	48 8d 35 8e 10 00 00 	lea    0x108e(%rip),%rsi        # 4036ff <trans_char+0xaf>
  402671:	b8 00 00 00 00       	mov    $0x0,%eax
  402676:	e8 f5 ea ff ff       	callq  401170 <__isoc99_sscanf@plt>
  40267b:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402682:	00 
  402683:	b9 03 00 00 00       	mov    $0x3,%ecx
  402688:	48 8d 3d 87 10 00 00 	lea    0x1087(%rip),%rdi        # 403716 <trans_char+0xc6>
  40268f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402691:	0f 97 c0             	seta   %al
  402694:	1c 00                	sbb    $0x0,%al
  402696:	84 c0                	test   %al,%al
  402698:	0f 84 9f 03 00 00    	je     402a3d <submitr+0x5ea>
  40269e:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4026a5:	00 
  4026a6:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4026ad:	00 
  4026ae:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026b3:	e8 1f fd ff ff       	callq  4023d7 <rio_readlineb>
  4026b8:	48 85 c0             	test   %rax,%rax
  4026bb:	7f be                	jg     40267b <submitr+0x228>
  4026bd:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026c4:	3a 20 43 
  4026c7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4026ce:	20 75 6e 
  4026d1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4026d5:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4026d9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026e0:	74 6f 20 
  4026e3:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  4026ea:	68 65 61 
  4026ed:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4026f1:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4026f5:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4026fc:	66 72 6f 
  4026ff:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402706:	20 72 65 
  402709:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40270d:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402711:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402718:	73 65 72 
  40271b:	48 89 45 30          	mov    %rax,0x30(%rbp)
  40271f:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402726:	89 df                	mov    %ebx,%edi
  402728:	e8 b3 e9 ff ff       	callq  4010e0 <close@plt>
  40272d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402732:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402739:	5b                   	pop    %rbx
  40273a:	5d                   	pop    %rbp
  40273b:	41 5c                	pop    %r12
  40273d:	41 5d                	pop    %r13
  40273f:	41 5e                	pop    %r14
  402741:	41 5f                	pop    %r15
  402743:	c3                   	retq   
  402744:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40274b:	3a 20 43 
  40274e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402755:	20 75 6e 
  402758:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40275c:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402760:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402767:	74 6f 20 
  40276a:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402771:	65 20 73 
  402774:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402778:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40277c:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402783:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402789:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40278e:	eb a2                	jmp    402732 <submitr+0x2df>
  402790:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402797:	3a 20 44 
  40279a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4027a1:	20 75 6e 
  4027a4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027a8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027ac:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4027b3:	74 6f 20 
  4027b6:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4027bd:	76 65 20 
  4027c0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4027c4:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4027c8:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4027cf:	72 20 61 
  4027d2:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4027d6:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4027dd:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4027e3:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4027e7:	89 df                	mov    %ebx,%edi
  4027e9:	e8 f2 e8 ff ff       	callq  4010e0 <close@plt>
  4027ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f3:	e9 3a ff ff ff       	jmpq   402732 <submitr+0x2df>
  4027f8:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4027ff:	3a 20 55 
  402802:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402809:	20 74 6f 
  40280c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402810:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402814:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40281b:	65 63 74 
  40281e:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402825:	68 65 20 
  402828:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40282c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402830:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402837:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  40283d:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402841:	89 df                	mov    %ebx,%edi
  402843:	e8 98 e8 ff ff       	callq  4010e0 <close@plt>
  402848:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40284d:	e9 e0 fe ff ff       	jmpq   402732 <submitr+0x2df>
  402852:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402859:	3a 20 52 
  40285c:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402863:	20 73 74 
  402866:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40286a:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40286e:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402875:	74 6f 6f 
  402878:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  40287f:	65 2e 20 
  402882:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402886:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40288a:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402891:	61 73 65 
  402894:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  40289b:	49 54 52 
  40289e:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028a2:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4028a6:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4028ad:	55 46 00 
  4028b0:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4028b4:	89 df                	mov    %ebx,%edi
  4028b6:	e8 25 e8 ff ff       	callq  4010e0 <close@plt>
  4028bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028c0:	e9 6d fe ff ff       	jmpq   402732 <submitr+0x2df>
  4028c5:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4028cc:	3a 20 52 
  4028cf:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4028d6:	20 73 74 
  4028d9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028dd:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028e1:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4028e8:	63 6f 6e 
  4028eb:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  4028f2:	20 61 6e 
  4028f5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028f9:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028fd:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402904:	67 61 6c 
  402907:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  40290e:	6e 70 72 
  402911:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402915:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402919:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402920:	6c 65 20 
  402923:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  40292a:	63 74 65 
  40292d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402931:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402935:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  40293b:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  40293f:	89 df                	mov    %ebx,%edi
  402941:	e8 9a e7 ff ff       	callq  4010e0 <close@plt>
  402946:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40294b:	e9 e2 fd ff ff       	jmpq   402732 <submitr+0x2df>
  402950:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402957:	3a 20 43 
  40295a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402961:	20 75 6e 
  402964:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402968:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40296c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402973:	74 6f 20 
  402976:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  40297d:	20 74 6f 
  402980:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402984:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402988:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40298f:	72 65 73 
  402992:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402999:	65 72 76 
  40299c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029a0:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029a4:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  4029aa:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  4029ae:	89 df                	mov    %ebx,%edi
  4029b0:	e8 2b e7 ff ff       	callq  4010e0 <close@plt>
  4029b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029ba:	e9 73 fd ff ff       	jmpq   402732 <submitr+0x2df>
  4029bf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029c6:	3a 20 43 
  4029c9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4029d0:	20 75 6e 
  4029d3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029d7:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4029db:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029e2:	74 6f 20 
  4029e5:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  4029ec:	66 69 72 
  4029ef:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029f3:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029f7:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4029fe:	61 64 65 
  402a01:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402a08:	6d 20 72 
  402a0b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a0f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a13:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402a1a:	20 73 65 
  402a1d:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a21:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402a28:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402a2c:	89 df                	mov    %ebx,%edi
  402a2e:	e8 ad e6 ff ff       	callq  4010e0 <close@plt>
  402a33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a38:	e9 f5 fc ff ff       	jmpq   402732 <submitr+0x2df>
  402a3d:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402a44:	00 
  402a45:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402a4c:	00 
  402a4d:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a52:	e8 80 f9 ff ff       	callq  4023d7 <rio_readlineb>
  402a57:	48 85 c0             	test   %rax,%rax
  402a5a:	0f 8e 97 00 00 00    	jle    402af7 <submitr+0x6a4>
  402a60:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402a67:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402a6d:	0f 85 08 01 00 00    	jne    402b7b <submitr+0x728>
  402a73:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402a7a:	00 
  402a7b:	48 89 ef             	mov    %rbp,%rdi
  402a7e:	e8 ed e5 ff ff       	callq  401070 <strcpy@plt>
  402a83:	89 df                	mov    %ebx,%edi
  402a85:	e8 56 e6 ff ff       	callq  4010e0 <close@plt>
  402a8a:	b9 04 00 00 00       	mov    $0x4,%ecx
  402a8f:	48 8d 3d 7a 0c 00 00 	lea    0xc7a(%rip),%rdi        # 403710 <trans_char+0xc0>
  402a96:	48 89 ee             	mov    %rbp,%rsi
  402a99:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a9b:	0f 97 c0             	seta   %al
  402a9e:	1c 00                	sbb    $0x0,%al
  402aa0:	0f be c0             	movsbl %al,%eax
  402aa3:	85 c0                	test   %eax,%eax
  402aa5:	0f 84 87 fc ff ff    	je     402732 <submitr+0x2df>
  402aab:	b9 05 00 00 00       	mov    $0x5,%ecx
  402ab0:	48 8d 3d 5d 0c 00 00 	lea    0xc5d(%rip),%rdi        # 403714 <trans_char+0xc4>
  402ab7:	48 89 ee             	mov    %rbp,%rsi
  402aba:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402abc:	0f 97 c0             	seta   %al
  402abf:	1c 00                	sbb    $0x0,%al
  402ac1:	0f be c0             	movsbl %al,%eax
  402ac4:	85 c0                	test   %eax,%eax
  402ac6:	0f 84 66 fc ff ff    	je     402732 <submitr+0x2df>
  402acc:	b9 03 00 00 00       	mov    $0x3,%ecx
  402ad1:	48 8d 3d 41 0c 00 00 	lea    0xc41(%rip),%rdi        # 403719 <trans_char+0xc9>
  402ad8:	48 89 ee             	mov    %rbp,%rsi
  402adb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402add:	0f 97 c0             	seta   %al
  402ae0:	1c 00                	sbb    $0x0,%al
  402ae2:	0f be c0             	movsbl %al,%eax
  402ae5:	85 c0                	test   %eax,%eax
  402ae7:	0f 84 45 fc ff ff    	je     402732 <submitr+0x2df>
  402aed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402af2:	e9 3b fc ff ff       	jmpq   402732 <submitr+0x2df>
  402af7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402afe:	3a 20 43 
  402b01:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402b08:	20 75 6e 
  402b0b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b0f:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402b13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b1a:	74 6f 20 
  402b1d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402b24:	73 74 61 
  402b27:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b2b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b2f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402b36:	65 73 73 
  402b39:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402b40:	72 6f 6d 
  402b43:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b47:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b4b:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402b52:	6c 74 20 
  402b55:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b59:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402b60:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402b66:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402b6a:	89 df                	mov    %ebx,%edi
  402b6c:	e8 6f e5 ff ff       	callq  4010e0 <close@plt>
  402b71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b76:	e9 b7 fb ff ff       	jmpq   402732 <submitr+0x2df>
  402b7b:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402b80:	48 8d 35 41 0b 00 00 	lea    0xb41(%rip),%rsi        # 4036c8 <trans_char+0x78>
  402b87:	48 89 ef             	mov    %rbp,%rdi
  402b8a:	b8 00 00 00 00       	mov    $0x0,%eax
  402b8f:	e8 4c e6 ff ff       	callq  4011e0 <sprintf@plt>
  402b94:	89 df                	mov    %ebx,%edi
  402b96:	e8 45 e5 ff ff       	callq  4010e0 <close@plt>
  402b9b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ba0:	e9 8d fb ff ff       	jmpq   402732 <submitr+0x2df>

0000000000402ba5 <init_timeout>:
  402ba5:	85 ff                	test   %edi,%edi
  402ba7:	74 26                	je     402bcf <init_timeout+0x2a>
  402ba9:	53                   	push   %rbx
  402baa:	89 fb                	mov    %edi,%ebx
  402bac:	78 1a                	js     402bc8 <init_timeout+0x23>
  402bae:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 4021e6 <sigalrm_handler>
  402bb5:	bf 0e 00 00 00       	mov    $0xe,%edi
  402bba:	e8 41 e5 ff ff       	callq  401100 <signal@plt>
  402bbf:	89 df                	mov    %ebx,%edi
  402bc1:	e8 0a e5 ff ff       	callq  4010d0 <alarm@plt>
  402bc6:	5b                   	pop    %rbx
  402bc7:	c3                   	retq   
  402bc8:	bb 00 00 00 00       	mov    $0x0,%ebx
  402bcd:	eb df                	jmp    402bae <init_timeout+0x9>
  402bcf:	c3                   	retq   

0000000000402bd0 <init_driver>:
  402bd0:	41 54                	push   %r12
  402bd2:	55                   	push   %rbp
  402bd3:	53                   	push   %rbx
  402bd4:	48 83 ec 10          	sub    $0x10,%rsp
  402bd8:	49 89 fc             	mov    %rdi,%r12
  402bdb:	be 01 00 00 00       	mov    $0x1,%esi
  402be0:	bf 0d 00 00 00       	mov    $0xd,%edi
  402be5:	e8 16 e5 ff ff       	callq  401100 <signal@plt>
  402bea:	be 01 00 00 00       	mov    $0x1,%esi
  402bef:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402bf4:	e8 07 e5 ff ff       	callq  401100 <signal@plt>
  402bf9:	be 01 00 00 00       	mov    $0x1,%esi
  402bfe:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c03:	e8 f8 e4 ff ff       	callq  401100 <signal@plt>
  402c08:	ba 00 00 00 00       	mov    $0x0,%edx
  402c0d:	be 01 00 00 00       	mov    $0x1,%esi
  402c12:	bf 02 00 00 00       	mov    $0x2,%edi
  402c17:	e8 04 e6 ff ff       	callq  401220 <socket@plt>
  402c1c:	85 c0                	test   %eax,%eax
  402c1e:	0f 88 8a 00 00 00    	js     402cae <init_driver+0xde>
  402c24:	89 c3                	mov    %eax,%ebx
  402c26:	48 8d 3d ef 0a 00 00 	lea    0xaef(%rip),%rdi        # 40371c <trans_char+0xcc>
  402c2d:	e8 de e4 ff ff       	callq  401110 <gethostbyname@plt>
  402c32:	48 85 c0             	test   %rax,%rax
  402c35:	0f 84 c6 00 00 00    	je     402d01 <init_driver+0x131>
  402c3b:	48 89 e5             	mov    %rsp,%rbp
  402c3e:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402c45:	00 00 
  402c47:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402c4e:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402c54:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402c5a:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402c5e:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c62:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402c66:	48 8b 31             	mov    (%rcx),%rsi
  402c69:	e8 22 e5 ff ff       	callq  401190 <memmove@plt>
  402c6e:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402c75:	ba 10 00 00 00       	mov    $0x10,%edx
  402c7a:	48 89 ee             	mov    %rbp,%rsi
  402c7d:	89 df                	mov    %ebx,%edi
  402c7f:	e8 7c e5 ff ff       	callq  401200 <connect@plt>
  402c84:	85 c0                	test   %eax,%eax
  402c86:	0f 88 e7 00 00 00    	js     402d73 <init_driver+0x1a3>
  402c8c:	89 df                	mov    %ebx,%edi
  402c8e:	e8 4d e4 ff ff       	callq  4010e0 <close@plt>
  402c93:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402c9a:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402ca0:	b8 00 00 00 00       	mov    $0x0,%eax
  402ca5:	48 83 c4 10          	add    $0x10,%rsp
  402ca9:	5b                   	pop    %rbx
  402caa:	5d                   	pop    %rbp
  402cab:	41 5c                	pop    %r12
  402cad:	c3                   	retq   
  402cae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cb5:	3a 20 43 
  402cb8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402cbf:	20 75 6e 
  402cc2:	49 89 04 24          	mov    %rax,(%r12)
  402cc6:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402ccb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cd2:	74 6f 20 
  402cd5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402cdc:	65 20 73 
  402cdf:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402ce4:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ce9:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402cf0:	6b 65 
  402cf2:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402cf9:	00 
  402cfa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cff:	eb a4                	jmp    402ca5 <init_driver+0xd5>
  402d01:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d08:	3a 20 44 
  402d0b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402d12:	20 75 6e 
  402d15:	49 89 04 24          	mov    %rax,(%r12)
  402d19:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d1e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d25:	74 6f 20 
  402d28:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402d2f:	76 65 20 
  402d32:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402d37:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402d3c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d43:	72 20 61 
  402d46:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402d4b:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402d52:	72 65 
  402d54:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402d5b:	73 
  402d5c:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402d62:	89 df                	mov    %ebx,%edi
  402d64:	e8 77 e3 ff ff       	callq  4010e0 <close@plt>
  402d69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d6e:	e9 32 ff ff ff       	jmpq   402ca5 <init_driver+0xd5>
  402d73:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402d7a:	3a 20 55 
  402d7d:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402d84:	20 74 6f 
  402d87:	49 89 04 24          	mov    %rax,(%r12)
  402d8b:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402d90:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402d97:	65 63 74 
  402d9a:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402da1:	65 72 76 
  402da4:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402da9:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402dae:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402db5:	72 
  402db6:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402dbc:	89 df                	mov    %ebx,%edi
  402dbe:	e8 1d e3 ff ff       	callq  4010e0 <close@plt>
  402dc3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dc8:	e9 d8 fe ff ff       	jmpq   402ca5 <init_driver+0xd5>

0000000000402dcd <driver_post>:
  402dcd:	53                   	push   %rbx
  402dce:	4c 89 cb             	mov    %r9,%rbx
  402dd1:	45 85 c0             	test   %r8d,%r8d
  402dd4:	75 18                	jne    402dee <driver_post+0x21>
  402dd6:	48 85 ff             	test   %rdi,%rdi
  402dd9:	74 05                	je     402de0 <driver_post+0x13>
  402ddb:	80 3f 00             	cmpb   $0x0,(%rdi)
  402dde:	75 32                	jne    402e12 <driver_post+0x45>
  402de0:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402de5:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402de9:	44 89 c0             	mov    %r8d,%eax
  402dec:	5b                   	pop    %rbx
  402ded:	c3                   	retq   
  402dee:	48 89 ce             	mov    %rcx,%rsi
  402df1:	48 8d 3d 3c 09 00 00 	lea    0x93c(%rip),%rdi        # 403734 <trans_char+0xe4>
  402df8:	b8 00 00 00 00       	mov    $0x0,%eax
  402dfd:	e8 ae e2 ff ff       	callq  4010b0 <printf@plt>
  402e02:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e07:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e10:	eb da                	jmp    402dec <driver_post+0x1f>
  402e12:	48 83 ec 08          	sub    $0x8,%rsp
  402e16:	41 51                	push   %r9
  402e18:	49 89 c9             	mov    %rcx,%r9
  402e1b:	49 89 d0             	mov    %rdx,%r8
  402e1e:	48 89 f9             	mov    %rdi,%rcx
  402e21:	48 89 f2             	mov    %rsi,%rdx
  402e24:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402e29:	48 8d 3d ec 08 00 00 	lea    0x8ec(%rip),%rdi        # 40371c <trans_char+0xcc>
  402e30:	e8 1e f6 ff ff       	callq  402453 <submitr>
  402e35:	48 83 c4 10          	add    $0x10,%rsp
  402e39:	eb b1                	jmp    402dec <driver_post+0x1f>

0000000000402e3b <check>:
  402e3b:	89 f8                	mov    %edi,%eax
  402e3d:	c1 e8 1c             	shr    $0x1c,%eax
  402e40:	74 1d                	je     402e5f <check+0x24>
  402e42:	b9 00 00 00 00       	mov    $0x0,%ecx
  402e47:	83 f9 1f             	cmp    $0x1f,%ecx
  402e4a:	7f 0d                	jg     402e59 <check+0x1e>
  402e4c:	89 f8                	mov    %edi,%eax
  402e4e:	d3 e8                	shr    %cl,%eax
  402e50:	3c 0a                	cmp    $0xa,%al
  402e52:	74 11                	je     402e65 <check+0x2a>
  402e54:	83 c1 08             	add    $0x8,%ecx
  402e57:	eb ee                	jmp    402e47 <check+0xc>
  402e59:	b8 01 00 00 00       	mov    $0x1,%eax
  402e5e:	c3                   	retq   
  402e5f:	b8 00 00 00 00       	mov    $0x0,%eax
  402e64:	c3                   	retq   
  402e65:	b8 00 00 00 00       	mov    $0x0,%eax
  402e6a:	c3                   	retq   

0000000000402e6b <gencookie>:
  402e6b:	53                   	push   %rbx
  402e6c:	83 c7 01             	add    $0x1,%edi
  402e6f:	e8 dc e1 ff ff       	callq  401050 <srandom@plt>
  402e74:	e8 e7 e2 ff ff       	callq  401160 <random@plt>
  402e79:	89 c3                	mov    %eax,%ebx
  402e7b:	89 c7                	mov    %eax,%edi
  402e7d:	e8 b9 ff ff ff       	callq  402e3b <check>
  402e82:	85 c0                	test   %eax,%eax
  402e84:	74 ee                	je     402e74 <gencookie+0x9>
  402e86:	89 d8                	mov    %ebx,%eax
  402e88:	5b                   	pop    %rbx
  402e89:	c3                   	retq   
  402e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000402e90 <__libc_csu_init>:
  402e90:	41 57                	push   %r15
  402e92:	49 89 d7             	mov    %rdx,%r15
  402e95:	41 56                	push   %r14
  402e97:	49 89 f6             	mov    %rsi,%r14
  402e9a:	41 55                	push   %r13
  402e9c:	41 89 fd             	mov    %edi,%r13d
  402e9f:	41 54                	push   %r12
  402ea1:	4c 8d 25 68 2f 00 00 	lea    0x2f68(%rip),%r12        # 405e10 <__frame_dummy_init_array_entry>
  402ea8:	55                   	push   %rbp
  402ea9:	48 8d 2d 68 2f 00 00 	lea    0x2f68(%rip),%rbp        # 405e18 <__init_array_end>
  402eb0:	53                   	push   %rbx
  402eb1:	4c 29 e5             	sub    %r12,%rbp
  402eb4:	48 83 ec 08          	sub    $0x8,%rsp
  402eb8:	e8 43 e1 ff ff       	callq  401000 <_init>
  402ebd:	48 c1 fd 03          	sar    $0x3,%rbp
  402ec1:	74 1b                	je     402ede <__libc_csu_init+0x4e>
  402ec3:	31 db                	xor    %ebx,%ebx
  402ec5:	0f 1f 00             	nopl   (%rax)
  402ec8:	4c 89 fa             	mov    %r15,%rdx
  402ecb:	4c 89 f6             	mov    %r14,%rsi
  402ece:	44 89 ef             	mov    %r13d,%edi
  402ed1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402ed5:	48 83 c3 01          	add    $0x1,%rbx
  402ed9:	48 39 dd             	cmp    %rbx,%rbp
  402edc:	75 ea                	jne    402ec8 <__libc_csu_init+0x38>
  402ede:	48 83 c4 08          	add    $0x8,%rsp
  402ee2:	5b                   	pop    %rbx
  402ee3:	5d                   	pop    %rbp
  402ee4:	41 5c                	pop    %r12
  402ee6:	41 5d                	pop    %r13
  402ee8:	41 5e                	pop    %r14
  402eea:	41 5f                	pop    %r15
  402eec:	c3                   	retq   
  402eed:	0f 1f 00             	nopl   (%rax)

0000000000402ef0 <__libc_csu_fini>:
  402ef0:	c3                   	retq   

Disassembly of section .fini:

0000000000402ef4 <_fini>:
  402ef4:	48 83 ec 08          	sub    $0x8,%rsp
  402ef8:	48 83 c4 08          	add    $0x8,%rsp
  402efc:	c3                   	retq   

Disassembly of section .rodata:

0000000000403000 <_IO_stdin_used>:
  403000:	01 00                	add    %eax,(%rax)
  403002:	02 00                	add    (%rax),%al
  403004:	00 00                	add    %al,(%rax)
  403006:	00 00                	add    %al,(%rax)
  403008:	55                   	push   %rbp
  403009:	73 61                	jae    40306c <_IO_stdin_used+0x6c>
  40300b:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  40300f:	5b                   	pop    %rbx
  403010:	2d 68 5d 20 25       	sub    $0x25205d68,%eax
  403015:	73 20                	jae    403037 <_IO_stdin_used+0x37>
  403017:	2d 69 20 3c 69       	sub    $0x693c2069,%eax
  40301c:	6e                   	outsb  %ds:(%rsi),(%dx)
  40301d:	66 69 6c 65 3e 20 2d 	imul   $0x2d20,0x3e(%rbp,%riz,2),%bp
  403024:	61                   	(bad)  
  403025:	20 3c 61             	and    %bh,(%rcx,%riz,2)
  403028:	75 74                	jne    40309e <_IO_stdin_used+0x9e>
  40302a:	68 6b 65 79 3e       	pushq  $0x3e79656b
  40302f:	20 2d 6c 20 3c 6c    	and    %ch,0x6c3c206c(%rip)        # 6c7c50a1 <_end+0x6c3bdf69>
  403035:	65 76 65             	gs jbe 40309d <_IO_stdin_used+0x9d>
  403038:	6c                   	insb   (%dx),%es:(%rdi)
  403039:	3e 0a 00             	or     %ds:(%rax),%al
  40303c:	00 00                	add    %al,(%rax)
  40303e:	00 00                	add    %al,(%rax)
  403040:	20 20                	and    %ah,(%rax)
  403042:	2d 68 20 20 20       	sub    $0x20202068,%eax
  403047:	20 20                	and    %ah,(%rax)
  403049:	20 20                	and    %ah,(%rax)
  40304b:	20 20                	and    %ah,(%rax)
  40304d:	20 20                	and    %ah,(%rax)
  40304f:	50                   	push   %rax
  403050:	72 69                	jb     4030bb <_IO_stdin_used+0xbb>
  403052:	6e                   	outsb  %ds:(%rsi),(%dx)
  403053:	74 20                	je     403075 <_IO_stdin_used+0x75>
  403055:	68 65 6c 70 20       	pushq  $0x20706c65
  40305a:	69 6e 66 6f 72 6d 61 	imul   $0x616d726f,0x66(%rsi),%ebp
  403061:	74 69                	je     4030cc <_IO_stdin_used+0xcc>
  403063:	6f                   	outsl  %ds:(%rsi),(%dx)
  403064:	6e                   	outsb  %ds:(%rsi),(%dx)
  403065:	00 00                	add    %al,(%rax)
  403067:	00 20                	add    %ah,(%rax)
  403069:	20 2d 61 20 3c 61    	and    %ch,0x613c2061(%rip)        # 617c50d0 <_end+0x613bdf98>
  40306f:	75 74                	jne    4030e5 <_IO_stdin_used+0xe5>
  403071:	68 6b 65 79 3e       	pushq  $0x3e79656b
  403076:	20 41 75             	and    %al,0x75(%rcx)
  403079:	74 68                	je     4030e3 <_IO_stdin_used+0xe3>
  40307b:	65 6e                	outsb  %gs:(%rsi),(%dx)
  40307d:	74 69                	je     4030e8 <_IO_stdin_used+0xe8>
  40307f:	63 61 74             	movslq 0x74(%rcx),%esp
  403082:	69 6f 6e 20 6b 65 79 	imul   $0x79656b20,0x6e(%rdi),%ebp
  403089:	00 00                	add    %al,(%rax)
  40308b:	00 00                	add    %al,(%rax)
  40308d:	00 00                	add    %al,(%rax)
  40308f:	00 20                	add    %ah,(%rax)
  403091:	20 2d 68 20 20 20    	and    %ch,0x20202068(%rip)        # 206050ff <_end+0x201fdfc7>
  403097:	20 20                	and    %ah,(%rax)
  403099:	20 20                	and    %ah,(%rax)
  40309b:	20 20                	and    %ah,(%rax)
  40309d:	20 50 72             	and    %dl,0x72(%rax)
  4030a0:	69 6e 74 20 68 65 6c 	imul   $0x6c656820,0x74(%rsi),%ebp
  4030a7:	70 20                	jo     4030c9 <_IO_stdin_used+0xc9>
  4030a9:	69 6e 66 6f 72 6d 61 	imul   $0x616d726f,0x66(%rsi),%ebp
  4030b0:	74 69                	je     40311b <_IO_stdin_used+0x11b>
  4030b2:	6f                   	outsl  %ds:(%rsi),(%dx)
  4030b3:	6e                   	outsb  %ds:(%rsi),(%dx)
  4030b4:	00 00                	add    %al,(%rax)
  4030b6:	00 00                	add    %al,(%rax)
  4030b8:	20 20                	and    %ah,(%rax)
  4030ba:	2d 71 20 20 20       	sub    $0x20202071,%eax
  4030bf:	20 20                	and    %ah,(%rax)
  4030c1:	20 20                	and    %ah,(%rax)
  4030c3:	20 20                	and    %ah,(%rax)
  4030c5:	20 44 6f 6e          	and    %al,0x6e(%rdi,%rbp,2)
  4030c9:	27                   	(bad)  
  4030ca:	74 20                	je     4030ec <_IO_stdin_used+0xec>
  4030cc:	73 75                	jae    403143 <_IO_stdin_used+0x143>
  4030ce:	62                   	(bad)  
  4030cf:	6d                   	insl   (%dx),%es:(%rdi)
  4030d0:	69 74 20 72 65 73 75 	imul   $0x6c757365,0x72(%rax,%riz,1),%esi
  4030d7:	6c 
  4030d8:	74 20                	je     4030fa <_IO_stdin_used+0xfa>
  4030da:	74 6f                	je     40314b <_IO_stdin_used+0x14b>
  4030dc:	20 73 65             	and    %dh,0x65(%rbx)
  4030df:	72 76                	jb     403157 <_IO_stdin_used+0x157>
  4030e1:	65 72 00             	gs jb  4030e4 <_IO_stdin_used+0xe4>
  4030e4:	00 00                	add    %al,(%rax)
  4030e6:	00 00                	add    %al,(%rax)
  4030e8:	46                   	rex.RX
  4030e9:	41                   	rex.B
  4030ea:	49                   	rex.WB
  4030eb:	4c                   	rex.WR
  4030ec:	45                   	rex.RB
  4030ed:	44 3a 20             	cmp    (%rax),%r12b
  4030f0:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  4030f2:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
  4030f9:	61 
  4030fa:	74 69                	je     403165 <_IO_stdin_used+0x165>
  4030fc:	6f                   	outsl  %ds:(%rsi),(%dx)
  4030fd:	6e                   	outsb  %ds:(%rsi),(%dx)
  4030fe:	20 65 72             	and    %ah,0x72(%rbp)
  403101:	72 6f                	jb     403172 <_IO_stdin_used+0x172>
  403103:	72 3a                	jb     40313f <_IO_stdin_used+0x13f>
  403105:	20 52 75             	and    %dl,0x75(%rdx)
  403108:	6e                   	outsb  %ds:(%rsi),(%dx)
  403109:	6e                   	outsb  %ds:(%rsi),(%dx)
  40310a:	69 6e 67 20 6f 6e 20 	imul   $0x206e6f20,0x67(%rsi),%ebp
  403111:	75 6e                	jne    403181 <_IO_stdin_used+0x181>
  403113:	6b 6e 6f 77          	imul   $0x77,0x6f(%rsi),%ebp
  403117:	6e                   	outsb  %ds:(%rsi),(%dx)
  403118:	20 68 6f             	and    %ch,0x6f(%rax)
  40311b:	73 74                	jae    403191 <_IO_stdin_used+0x191>
  40311d:	00 00                	add    %al,(%rax)
  40311f:	00 46 41             	add    %al,0x41(%rsi)
  403122:	49                   	rex.WB
  403123:	4c                   	rex.WR
  403124:	45                   	rex.RB
  403125:	44 3a 20             	cmp    (%rax),%r12b
  403128:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  40312a:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
  403131:	61 
  403132:	74 69                	je     40319d <_IO_stdin_used+0x19d>
  403134:	6f                   	outsl  %ds:(%rsi),(%dx)
  403135:	6e                   	outsb  %ds:(%rsi),(%dx)
  403136:	20 65 72             	and    %ah,0x72(%rbp)
  403139:	72 6f                	jb     4031aa <_IO_stdin_used+0x1aa>
  40313b:	72 3a                	jb     403177 <_IO_stdin_used+0x177>
  40313d:	20 52 75             	and    %dl,0x75(%rdx)
  403140:	6e                   	outsb  %ds:(%rsi),(%dx)
  403141:	6e                   	outsb  %ds:(%rsi),(%dx)
  403142:	69 6e 67 20 6f 6e 20 	imul   $0x206e6f20,0x67(%rsi),%ebp
  403149:	61                   	(bad)  
  40314a:	6e                   	outsb  %ds:(%rsi),(%dx)
  40314b:	20 69 6c             	and    %ch,0x6c(%rcx)
  40314e:	6c                   	insb   (%dx),%es:(%rdi)
  40314f:	65 67 61             	gs addr32 (bad) 
  403152:	6c                   	insb   (%dx),%es:(%rdi)
  403153:	20 68 6f             	and    %ch,0x6f(%rax)
  403156:	73 74                	jae    4031cc <_IO_stdin_used+0x1cc>
  403158:	20 5b 25             	and    %bl,0x25(%rbx)
  40315b:	73 5d                	jae    4031ba <_IO_stdin_used+0x1ba>
  40315d:	0a 00                	or     (%rax),%al
  40315f:	00 46 41             	add    %al,0x41(%rsi)
  403162:	49                   	rex.WB
  403163:	4c                   	rex.WR
  403164:	45                   	rex.RB
  403165:	44 3a 20             	cmp    (%rax),%r12b
  403168:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  40316a:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
  403171:	61 
  403172:	74 69                	je     4031dd <_IO_stdin_used+0x1dd>
  403174:	6f                   	outsl  %ds:(%rsi),(%dx)
  403175:	6e                   	outsb  %ds:(%rsi),(%dx)
  403176:	20 65 72             	and    %ah,0x72(%rbp)
  403179:	72 6f                	jb     4031ea <_IO_stdin_used+0x1ea>
  40317b:	72 3a                	jb     4031b7 <_IO_stdin_used+0x1b7>
  40317d:	0a 25 73 0a 00 00    	or     0xa73(%rip),%ah        # 403bf6 <__GNU_EH_FRAME_HDR+0x4aa>
  403183:	00 00                	add    %al,(%rax)
  403185:	00 00                	add    %al,(%rax)
  403187:	00 53 75             	add    %dl,0x75(%rbx)
  40318a:	70 70                	jo     4031fc <_IO_stdin_used+0x1fc>
  40318c:	6c                   	insb   (%dx),%es:(%rdi)
  40318d:	69 65 64 20 61 75 74 	imul   $0x74756120,0x64(%rbp),%esp
  403194:	68 65 6e 74 69       	pushq  $0x69746e65
  403199:	63 61 74             	movslq 0x74(%rcx),%esp
  40319c:	69 6f 6e 20 6b 65 79 	imul   $0x79656b20,0x6e(%rdi),%ebp
  4031a3:	20 30                	and    %dh,(%rax)
  4031a5:	78 25                	js     4031cc <_IO_stdin_used+0x1cc>
  4031a7:	78 20                	js     4031c9 <_IO_stdin_used+0x1c9>
  4031a9:	21 3d 20 74 61 72    	and    %edi,0x72617420(%rip)        # 72a1a5cf <_end+0x72613497>
  4031af:	67 65 74 20          	addr32 gs je 4031d3 <_IO_stdin_used+0x1d3>
  4031b3:	6b 65 79 0a          	imul   $0xa,0x79(%rbp),%esp
  4031b7:	00 20                	add    %ah,(%rax)
  4031b9:	20 2d 69 20 3c 69    	and    %ch,0x693c2069(%rip)        # 697c5228 <_end+0x693be0f0>
  4031bf:	6e                   	outsb  %ds:(%rsi),(%dx)
  4031c0:	66 69 6c 65 3e 20 20 	imul   $0x2020,0x3e(%rbp,%riz,2),%bp
  4031c7:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  4031c9:	70 75                	jo     403240 <_IO_stdin_used+0x240>
  4031cb:	74 20                	je     4031ed <_IO_stdin_used+0x1ed>
  4031cd:	66 69 6c 65 00 20 20 	imul   $0x2020,0x0(%rbp,%riz,2),%bp
  4031d4:	2d 6c 20 3c 6c       	sub    $0x6c3c206c,%eax
  4031d9:	65 76 65             	gs jbe 403241 <_IO_stdin_used+0x241>
  4031dc:	6c                   	insb   (%dx),%es:(%rdi)
  4031dd:	3e 20 20             	and    %ah,%ds:(%rax)
  4031e0:	20 41 74             	and    %al,0x74(%rcx)
  4031e3:	74 61                	je     403246 <_IO_stdin_used+0x246>
  4031e5:	63 6b 20             	movslq 0x20(%rbx),%ebp
  4031e8:	6c                   	insb   (%dx),%es:(%rdi)
  4031e9:	65 76 65             	gs jbe 403251 <_IO_stdin_used+0x251>
  4031ec:	6c                   	insb   (%dx),%es:(%rdi)
  4031ed:	00 55 73             	add    %dl,0x73(%rbp)
  4031f0:	61                   	(bad)  
  4031f1:	67 65 3a 20          	cmp    %gs:(%eax),%ah
  4031f5:	5b                   	pop    %rbx
  4031f6:	2d 68 71 5d 20       	sub    $0x205d7168,%eax
  4031fb:	25 73 20 2d 69       	and    $0x692d2073,%eax
  403200:	20 3c 69             	and    %bh,(%rcx,%rbp,2)
  403203:	6e                   	outsb  %ds:(%rsi),(%dx)
  403204:	66 69 6c 65 3e 20 0a 	imul   $0xa20,0x3e(%rbp,%riz,2),%bp
  40320b:	00 20                	add    %ah,(%rax)
  40320d:	20 2d 69 20 3c 69    	and    %ch,0x693c2069(%rip)        # 697c527c <_end+0x693be144>
  403213:	6e                   	outsb  %ds:(%rsi),(%dx)
  403214:	66 69 6c 65 3e 20 49 	imul   $0x4920,0x3e(%rbp,%riz,2),%bp
  40321b:	6e                   	outsb  %ds:(%rsi),(%dx)
  40321c:	70 75                	jo     403293 <_IO_stdin_used+0x293>
  40321e:	74 20                	je     403240 <_IO_stdin_used+0x240>
  403220:	66 69 6c 65 00 68 69 	imul   $0x6968,0x0(%rbp,%riz,2),%bp
  403227:	3a 61 3a             	cmp    0x3a(%rcx),%ah
  40322a:	6c                   	insb   (%dx),%es:(%rdi)
  40322b:	3a 00                	cmp    (%rax),%al
  40322d:	68 71 69 3a 00       	pushq  $0x3a6971
  403232:	43 61                	rex.XB (bad) 
  403234:	6e                   	outsb  %ds:(%rsi),(%dx)
  403235:	6e                   	outsb  %ds:(%rsi),(%dx)
  403236:	6f                   	outsl  %ds:(%rsi),(%dx)
  403237:	74 20                	je     403259 <_IO_stdin_used+0x259>
  403239:	6f                   	outsl  %ds:(%rsi),(%dx)
  40323a:	70 65                	jo     4032a1 <_IO_stdin_used+0x2a1>
  40323c:	6e                   	outsb  %ds:(%rsi),(%dx)
  40323d:	20 69 6e             	and    %ch,0x6e(%rcx)
  403240:	70 75                	jo     4032b7 <_IO_stdin_used+0x2b7>
  403242:	74 20                	je     403264 <_IO_stdin_used+0x264>
  403244:	66 69 6c 65 20 27 25 	imul   $0x2527,0x20(%rbp,%riz,2),%bp
  40324b:	73 27                	jae    403274 <_IO_stdin_used+0x274>
  40324d:	0a 00                	or     (%rax),%al
  40324f:	55                   	push   %rbp
  403250:	6e                   	outsb  %ds:(%rsi),(%dx)
  403251:	6b 6e 6f 77          	imul   $0x77,0x6f(%rsi),%ebp
  403255:	6e                   	outsb  %ds:(%rsi),(%dx)
  403256:	20 66 6c             	and    %ah,0x6c(%rsi)
  403259:	61                   	(bad)  
  40325a:	67 20 27             	and    %ah,(%edi)
  40325d:	25 63 27 0a 00       	and    $0xa2763,%eax
  403262:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  403264:	6f                   	outsl  %ds:(%rsi),(%dx)
  403265:	6b 69 65 3a          	imul   $0x3a,0x65(%rcx),%ebp
  403269:	20 30                	and    %dh,(%rax)
  40326b:	78 25                	js     403292 <_IO_stdin_used+0x292>
  40326d:	78 0a                	js     403279 <_IO_stdin_used+0x279>
  40326f:	00 64 e3 ff          	add    %ah,-0x1(%rbx,%riz,8)
  403273:	ff d2                	callq  *%rdx
  403275:	e3 ff                	jrcxz  403276 <_IO_stdin_used+0x276>
  403277:	ff d2                	callq  *%rdx
  403279:	e3 ff                	jrcxz  40327a <_IO_stdin_used+0x27a>
  40327b:	ff d2                	callq  *%rdx
  40327d:	e3 ff                	jrcxz  40327e <_IO_stdin_used+0x27e>
  40327f:	ff d2                	callq  *%rdx
  403281:	e3 ff                	jrcxz  403282 <_IO_stdin_used+0x282>
  403283:	ff d2                	callq  *%rdx
  403285:	e3 ff                	jrcxz  403286 <_IO_stdin_used+0x286>
  403287:	ff d2                	callq  *%rdx
  403289:	e3 ff                	jrcxz  40328a <_IO_stdin_used+0x28a>
  40328b:	ff 19                	lcall  *(%rcx)
  40328d:	e3 ff                	jrcxz  40328e <_IO_stdin_used+0x28e>
  40328f:	ff 21                	jmpq   *(%rcx)
  403291:	e3 ff                	jrcxz  403292 <_IO_stdin_used+0x292>
  403293:	ff d2                	callq  *%rdx
  403295:	e3 ff                	jrcxz  403296 <_IO_stdin_used+0x296>
  403297:	ff d2                	callq  *%rdx
  403299:	e3 ff                	jrcxz  40329a <_IO_stdin_used+0x29a>
  40329b:	ff ab e3 ff ff d2    	ljmp   *-0x2d00001d(%rbx)
  4032a1:	e3 ff                	jrcxz  4032a2 <_IO_stdin_used+0x2a2>
  4032a3:	ff d2                	callq  *%rdx
  4032a5:	e3 ff                	jrcxz  4032a6 <_IO_stdin_used+0x2a6>
  4032a7:	ff d2                	callq  *%rdx
  4032a9:	e3 ff                	jrcxz  4032aa <_IO_stdin_used+0x2aa>
  4032ab:	ff d2                	callq  *%rdx
  4032ad:	e3 ff                	jrcxz  4032ae <_IO_stdin_used+0x2ae>
  4032af:	ff c6                	inc    %esi
  4032b1:	e3 ff                	jrcxz  4032b2 <_IO_stdin_used+0x2b2>
  4032b3:	ff 00                	incl   (%rax)
  4032b5:	00 00                	add    %al,(%rax)
  4032b7:	00 41 6e             	add    %al,0x6e(%rcx)
  4032ba:	74 6f                	je     40332b <_IO_stdin_used+0x32b>
  4032bc:	6e                   	outsb  %ds:(%rsi),(%dx)
  4032bd:	69 20 50 6f 6b 75    	imul   $0x756b6f50,(%rax),%esp
  4032c3:	73 69                	jae    40332e <_IO_stdin_used+0x32e>
  4032c5:	c5 84 73             	(bad)  
  4032c8:	6b 69 20 3c          	imul   $0x3c,0x20(%rcx),%ebp
  4032cc:	70 61                	jo     40332f <_IO_stdin_used+0x32f>
  4032ce:	6e                   	outsb  %ds:(%rsi),(%dx)
  4032cf:	61                   	(bad)  
  4032d0:	6e                   	outsb  %ds:(%rsi),(%dx)
  4032d1:	74 6f                	je     403342 <_IO_stdin_used+0x342>
  4032d3:	6e                   	outsb  %ds:(%rsi),(%dx)
  4032d4:	69 30 31 40 75 73    	imul   $0x73754031,(%rax),%esi
  4032da:	65 72 73             	gs jb  403350 <_IO_stdin_used+0x350>
  4032dd:	2e 6e                	outsb  %cs:(%rsi),(%dx)
  4032df:	6f                   	outsl  %ds:(%rsi),(%dx)
  4032e0:	72 65                	jb     403347 <_IO_stdin_used+0x347>
  4032e2:	70 6c                	jo     403350 <_IO_stdin_used+0x350>
  4032e4:	79 2e                	jns    403314 <_IO_stdin_used+0x314>
  4032e6:	67 69 74 68 75 62 2e 	imul   $0x6f632e62,0x75(%eax,%ebp,2),%esi
  4032ed:	63 6f 
  4032ef:	6d                   	insl   (%dx),%es:(%rdi)
  4032f0:	3e 00 61 74          	add    %ah,%ds:0x74(%rcx)
  4032f4:	74 61                	je     403357 <_IO_stdin_used+0x357>
  4032f6:	63 6b 6c             	movslq 0x6c(%rbx),%ebp
  4032f9:	61                   	(bad)  
  4032fa:	62                   	(bad)  
  4032fb:	00 61 73             	add    %ah,0x73(%rcx)
  4032fe:	6b 31 39             	imul   $0x39,(%rcx),%esi
  403301:	00 6d 69             	add    %ch,0x69(%rbp)
  403304:	6d                   	insl   (%dx),%es:(%rdi)
  403305:	69 6b 65 72 2e 69 69 	imul   $0x69692e72,0x65(%rbx),%ebp
  40330c:	2e 75 6e             	jne,pn 40337d <_IO_stdin_used+0x37d>
  40330f:	69 2e 77 72 6f 63    	imul   $0x636f7277,(%rsi),%ebp
  403315:	2e 70 6c             	jo,pn  403384 <_IO_stdin_used+0x384>
  403318:	00 54 6f 75          	add    %dl,0x75(%rdi,%rbp,2)
  40331c:	63 68 31             	movslq 0x31(%rax),%ebp
  40331f:	21 3a                	and    %edi,(%rdx)
  403321:	20 59 6f             	and    %bl,0x6f(%rcx)
  403324:	75 20                	jne    403346 <_IO_stdin_used+0x346>
  403326:	63 61 6c             	movslq 0x6c(%rcx),%esp
  403329:	6c                   	insb   (%dx),%es:(%rdi)
  40332a:	65 64 20 74 6f 75    	gs and %dh,%fs:0x75(%rdi,%rbp,2)
  403330:	63 68 31             	movslq 0x31(%rax),%ebp
  403333:	28 29                	sub    %ch,(%rcx)
  403335:	00 25 2e 38 78 00    	add    %ah,0x78382e(%rip)        # b86b69 <_end+0x77fa31>
  40333b:	00 00                	add    %al,(%rax)
  40333d:	00 00                	add    %al,(%rax)
  40333f:	00 54 6f 75          	add    %dl,0x75(%rdi,%rbp,2)
  403343:	63 68 32             	movslq 0x32(%rax),%ebp
  403346:	21 3a                	and    %edi,(%rdx)
  403348:	20 59 6f             	and    %bl,0x6f(%rcx)
  40334b:	75 20                	jne    40336d <_IO_stdin_used+0x36d>
  40334d:	63 61 6c             	movslq 0x6c(%rcx),%esp
  403350:	6c                   	insb   (%dx),%es:(%rdi)
  403351:	65 64 20 74 6f 75    	gs and %dh,%fs:0x75(%rdi,%rbp,2)
  403357:	63 68 32             	movslq 0x32(%rax),%ebp
  40335a:	28 30                	sub    %dh,(%rax)
  40335c:	78 25                	js     403383 <_IO_stdin_used+0x383>
  40335e:	2e 38 78 29          	cmp    %bh,%cs:0x29(%rax)
  403362:	0a 00                	or     (%rax),%al
  403364:	00 00                	add    %al,(%rax)
  403366:	00 00                	add    %al,(%rax)
  403368:	4d 69 73 66 69 72 65 	imul   $0x3a657269,0x66(%r11),%r14
  40336f:	3a 
  403370:	20 59 6f             	and    %bl,0x6f(%rcx)
  403373:	75 20                	jne    403395 <_IO_stdin_used+0x395>
  403375:	63 61 6c             	movslq 0x6c(%rcx),%esp
  403378:	6c                   	insb   (%dx),%es:(%rdi)
  403379:	65 64 20 74 6f 75    	gs and %dh,%fs:0x75(%rdi,%rbp,2)
  40337f:	63 68 32             	movslq 0x32(%rax),%ebp
  403382:	28 30                	sub    %dh,(%rax)
  403384:	78 25                	js     4033ab <_IO_stdin_used+0x3ab>
  403386:	2e 38 78 29          	cmp    %bh,%cs:0x29(%rax)
  40338a:	0a 00                	or     (%rax),%al
  40338c:	00 00                	add    %al,(%rax)
  40338e:	00 00                	add    %al,(%rax)
  403390:	54                   	push   %rsp
  403391:	6f                   	outsl  %ds:(%rsi),(%dx)
  403392:	75 63                	jne    4033f7 <_IO_stdin_used+0x3f7>
  403394:	68 33 21 3a 20       	pushq  $0x203a2133
  403399:	59                   	pop    %rcx
  40339a:	6f                   	outsl  %ds:(%rsi),(%dx)
  40339b:	75 20                	jne    4033bd <_IO_stdin_used+0x3bd>
  40339d:	63 61 6c             	movslq 0x6c(%rcx),%esp
  4033a0:	6c                   	insb   (%dx),%es:(%rdi)
  4033a1:	65 64 20 74 6f 75    	gs and %dh,%fs:0x75(%rdi,%rbp,2)
  4033a7:	63 68 33             	movslq 0x33(%rax),%ebp
  4033aa:	28 22                	sub    %ah,(%rdx)
  4033ac:	25 73 22 29 0a       	and    $0xa292273,%eax
  4033b1:	00 00                	add    %al,(%rax)
  4033b3:	00 00                	add    %al,(%rax)
  4033b5:	00 00                	add    %al,(%rax)
  4033b7:	00 4d 69             	add    %cl,0x69(%rbp)
  4033ba:	73 66                	jae    403422 <_IO_stdin_used+0x422>
  4033bc:	69 72 65 3a 20 59 6f 	imul   $0x6f59203a,0x65(%rdx),%esi
  4033c3:	75 20                	jne    4033e5 <_IO_stdin_used+0x3e5>
  4033c5:	63 61 6c             	movslq 0x6c(%rcx),%esp
  4033c8:	6c                   	insb   (%dx),%es:(%rdi)
  4033c9:	65 64 20 74 6f 75    	gs and %dh,%fs:0x75(%rdi,%rbp,2)
  4033cf:	63 68 33             	movslq 0x33(%rax),%ebp
  4033d2:	28 22                	sub    %ah,(%rdx)
  4033d4:	25 73 22 29 0a       	and    $0xa292273,%eax
  4033d9:	00 00                	add    %al,(%rax)
  4033db:	00 00                	add    %al,(%rax)
  4033dd:	00 00                	add    %al,(%rax)
  4033df:	00 4e 6f             	add    %cl,0x6f(%rsi)
  4033e2:	20 65 78             	and    %ah,0x78(%rbp)
  4033e5:	70 6c                	jo     403453 <_IO_stdin_used+0x453>
  4033e7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4033e8:	69 74 2e 20 20 47 65 	imul   $0x74654720,0x20(%rsi,%rbp,1),%esi
  4033ef:	74 
  4033f0:	62                   	(bad)  
  4033f1:	75 66                	jne    403459 <_IO_stdin_used+0x459>
  4033f3:	20 72 65             	and    %dh,0x65(%rdx)
  4033f6:	74 75                	je     40346d <_IO_stdin_used+0x46d>
  4033f8:	72 6e                	jb     403468 <_IO_stdin_used+0x468>
  4033fa:	65 64 20 30          	gs and %dh,%fs:(%rax)
  4033fe:	78 25                	js     403425 <_IO_stdin_used+0x425>
  403400:	78 0a                	js     40340c <_IO_stdin_used+0x40c>
  403402:	00 0a                	add    %cl,(%rdx)
  403404:	46                   	rex.RX
  403405:	41                   	rex.B
  403406:	49                   	rex.WB
  403407:	4c 09 25 63 74 61 72 	or     %r12,0x72617463(%rip)        # 72a1a871 <_end+0x72613739>
  40340e:	67 65 74 09          	addr32 gs je 40341b <_IO_stdin_used+0x41b>
  403412:	25 64 09 25 73       	and    $0x73250964,%eax
  403417:	0a 00                	or     (%rax),%al
  403419:	46                   	rex.RX
  40341a:	41                   	rex.B
  40341b:	49                   	rex.WB
  40341c:	4c 00 50 41          	rex.WR add %r10b,0x41(%rax)
  403420:	53                   	push   %rbx
  403421:	53                   	push   %rbx
  403422:	00 25 64 3a 25 73    	add    %ah,0x73253a64(%rip)        # 73656e8c <_end+0x7324fd54>
  403428:	3a 30                	cmp    (%rax),%dh
  40342a:	78 25                	js     403451 <_IO_stdin_used+0x451>
  40342c:	2e 38 78 3a          	cmp    %bh,%cs:0x3a(%rax)
  403430:	25 63 74 61 72       	and    $0x72617463,%eax
  403435:	67 65 74 3a          	addr32 gs je 403473 <_IO_stdin_used+0x473>
  403439:	25 64 3a 25 73       	and    $0x73253a64,%eax
  40343e:	00 0a                	add    %cl,(%rdx)
  403440:	4d 69 73 6d 61 74 63 	imul   $0x68637461,0x6d(%r11),%r14
  403447:	68 
  403448:	65 64 20 76 61       	gs and %dh,%fs:0x61(%rsi)
  40344d:	6c                   	insb   (%dx),%es:(%rdi)
  40344e:	69 64 61 74 69 6f 6e 	imul   $0x206e6f69,0x74(%rcx,%riz,2),%esp
  403455:	20 
  403456:	6c                   	insb   (%dx),%es:(%rdi)
  403457:	65 76 65             	gs jbe 4034bf <_IO_stdin_used+0x4bf>
  40345a:	6c                   	insb   (%dx),%es:(%rdi)
  40345b:	73 00                	jae    40345d <_IO_stdin_used+0x45d>
  40345d:	50                   	push   %rax
  40345e:	41 53                	push   %r11
  403460:	53                   	push   %rbx
  403461:	09 25 63 74 61 72    	or     %esp,0x72617463(%rip)        # 72a1a8ca <_end+0x72613792>
  403467:	67 65 74 09          	addr32 gs je 403474 <_IO_stdin_used+0x474>
  40346b:	25 64 09 25 73       	and    $0x73250964,%eax
  403470:	0a 00                	or     (%rax),%al
  403472:	42 75 73             	rex.X jne 4034e8 <_IO_stdin_used+0x4e8>
  403475:	20 65 72             	and    %ah,0x72(%rbp)
  403478:	72 6f                	jb     4034e9 <_IO_stdin_used+0x4e9>
  40347a:	72 00                	jb     40347c <_IO_stdin_used+0x47c>
  40347c:	42                   	rex.X
  40347d:	65 74 74             	gs je  4034f4 <_IO_stdin_used+0x4f4>
  403480:	65 72 20             	gs jb  4034a3 <_IO_stdin_used+0x4a3>
  403483:	6c                   	insb   (%dx),%es:(%rdi)
  403484:	75 63                	jne    4034e9 <_IO_stdin_used+0x4e9>
  403486:	6b 20 6e             	imul   $0x6e,(%rax),%esp
  403489:	65 78 74             	gs js  403500 <_IO_stdin_used+0x500>
  40348c:	20 74 69 6d          	and    %dh,0x6d(%rcx,%rbp,2)
  403490:	65 00 53 65          	add    %dl,%gs:0x65(%rbx)
  403494:	67 6d                	insl   (%dx),%es:(%edi)
  403496:	65 6e                	outsb  %gs:(%rsi),(%dx)
  403498:	74 61                	je     4034fb <_IO_stdin_used+0x4fb>
  40349a:	74 69                	je     403505 <_IO_stdin_used+0x505>
  40349c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40349d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40349e:	20 46 61             	and    %al,0x61(%rsi)
  4034a1:	75 6c                	jne    40350f <_IO_stdin_used+0x50f>
  4034a3:	74 00                	je     4034a5 <_IO_stdin_used+0x4a5>
  4034a5:	49 6c                	rex.WB insb (%dx),%es:(%rdi)
  4034a7:	6c                   	insb   (%dx),%es:(%rdi)
  4034a8:	65 67 61             	gs addr32 (bad) 
  4034ab:	6c                   	insb   (%dx),%es:(%rdi)
  4034ac:	20 69 6e             	and    %ch,0x6e(%rcx)
  4034af:	73 74                	jae    403525 <_IO_stdin_used+0x525>
  4034b1:	72 75                	jb     403528 <_IO_stdin_used+0x528>
  4034b3:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4034b7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4034b8:	00 54 69 6d          	add    %dl,0x6d(%rcx,%rbp,2)
  4034bc:	65 6f                	outsl  %gs:(%rsi),(%dx)
  4034be:	75 74                	jne    403534 <_IO_stdin_used+0x534>
  4034c0:	00 54 79 70          	add    %dl,0x70(%rcx,%rdi,2)
  4034c4:	65 20 73 74          	and    %dh,%gs:0x74(%rbx)
  4034c8:	72 69                	jb     403533 <_IO_stdin_used+0x533>
  4034ca:	6e                   	outsb  %ds:(%rsi),(%dx)
  4034cb:	67 3a 00             	cmp    (%eax),%al
  4034ce:	4e 6f                	rex.WRX outsl %ds:(%rsi),(%dx)
  4034d0:	20 65 78             	and    %ah,0x78(%rbp)
  4034d3:	70 6c                	jo     403541 <_IO_stdin_used+0x541>
  4034d5:	6f                   	outsl  %ds:(%rsi),(%dx)
  4034d6:	69 74 00 4e 6f 72 6d 	imul   $0x616d726f,0x4e(%rax,%rax,1),%esi
  4034dd:	61 
  4034de:	6c                   	insb   (%dx),%es:(%rdi)
  4034df:	20 72 65             	and    %dh,0x65(%rdx)
  4034e2:	74 75                	je     403559 <_IO_stdin_used+0x559>
  4034e4:	72 6e                	jb     403554 <_IO_stdin_used+0x554>
  4034e6:	00 00                	add    %al,(%rax)
  4034e8:	49 6e                	rex.WB outsb %ds:(%rsi),(%dx)
  4034ea:	74 65                	je     403551 <_IO_stdin_used+0x551>
  4034ec:	72 6e                	jb     40355c <_IO_stdin_used+0x55c>
  4034ee:	61                   	(bad)  
  4034ef:	6c                   	insb   (%dx),%es:(%rdi)
  4034f0:	20 45 72             	and    %al,0x72(%rbp)
  4034f3:	72 6f                	jb     403564 <_IO_stdin_used+0x564>
  4034f5:	72 3a                	jb     403531 <_IO_stdin_used+0x531>
  4034f7:	20 49 6e             	and    %cl,0x6e(%rcx)
  4034fa:	70 75                	jo     403571 <_IO_stdin_used+0x571>
  4034fc:	74 20                	je     40351e <_IO_stdin_used+0x51e>
  4034fe:	73 74                	jae    403574 <_IO_stdin_used+0x574>
  403500:	72 69                	jb     40356b <_IO_stdin_used+0x56b>
  403502:	6e                   	outsb  %ds:(%rsi),(%dx)
  403503:	67 20 69 73          	and    %ch,0x73(%ecx)
  403507:	20 74 6f 6f          	and    %dh,0x6f(%rdi,%rbp,2)
  40350b:	20 6c 61 72          	and    %ch,0x72(%rcx,%riz,2)
  40350f:	67 65 2e 00 00       	gs add %al,%cs:(%eax)
  403514:	00 00                	add    %al,(%rax)
  403516:	00 00                	add    %al,(%rax)
  403518:	0a 43 68             	or     0x68(%rbx),%al
  40351b:	65 63 6b 20          	movslq %gs:0x20(%rbx),%ebp
  40351f:	6c                   	insb   (%dx),%es:(%rdi)
  403520:	65 76 65             	gs jbe 403588 <_IO_stdin_used+0x588>
  403523:	6c                   	insb   (%dx),%es:(%rdi)
  403524:	20 25 64 20 21 3d    	and    %ah,0x3d212064(%rip)        # 3d61558e <_end+0x3d20e456>
  40352a:	20 61 74             	and    %ah,0x74(%rcx)
  40352d:	74 61                	je     403590 <_IO_stdin_used+0x590>
  40352f:	63 6b 20             	movslq 0x20(%rbx),%ebp
  403532:	6c                   	insb   (%dx),%es:(%rdi)
  403533:	65 76 65             	gs jbe 40359b <_IO_stdin_used+0x59b>
  403536:	6c                   	insb   (%dx),%es:(%rdi)
  403537:	20 25 64 0a 00 00    	and    %ah,0xa64(%rip)        # 403fa1 <__FRAME_END__+0x17d>
  40353d:	00 00                	add    %al,(%rax)
  40353f:	00 56 61             	add    %dl,0x61(%rsi)
  403542:	6c                   	insb   (%dx),%es:(%rdi)
  403543:	69 64 20 73 6f 6c 75 	imul   $0x74756c6f,0x73(%rax,%riz,1),%esp
  40354a:	74 
  40354b:	69 6f 6e 20 66 6f 72 	imul   $0x726f6620,0x6e(%rdi),%ebp
  403552:	20 6c 65 76          	and    %ch,0x76(%rbp,%riz,2)
  403556:	65 6c                	gs insb (%dx),%es:(%rdi)
  403558:	20 25 64 20 77 69    	and    %ah,0x69772064(%rip)        # 69b755c2 <_end+0x6976e48a>
  40355e:	74 68                	je     4035c8 <_IO_stdin_used+0x5c8>
  403560:	20 74 61 72          	and    %dh,0x72(%rcx,%riz,2)
  403564:	67 65 74 20          	addr32 gs je 403588 <_IO_stdin_used+0x588>
  403568:	25 63 74 61 72       	and    $0x72617463,%eax
  40356d:	67 65 74 0a          	addr32 gs je 40357b <_IO_stdin_used+0x57b>
  403571:	00 00                	add    %al,(%rax)
  403573:	00 00                	add    %al,(%rax)
  403575:	00 00                	add    %al,(%rax)
  403577:	00 43 72             	add    %al,0x72(%rbx)
  40357a:	61                   	(bad)  
  40357b:	73 68                	jae    4035e5 <_IO_stdin_used+0x5e5>
  40357d:	21 3a                	and    %edi,(%rdx)
  40357f:	20 59 6f             	and    %bl,0x6f(%rcx)
  403582:	75 20                	jne    4035a4 <_IO_stdin_used+0x5a4>
  403584:	63 61 75             	movslq 0x75(%rcx),%esp
  403587:	73 65                	jae    4035ee <_IO_stdin_used+0x5ee>
  403589:	64 20 61 20          	and    %ah,%fs:0x20(%rcx)
  40358d:	62                   	(bad)  
  40358e:	75 73                	jne    403603 <_IO_stdin_used+0x603>
  403590:	20 65 72             	and    %ah,0x72(%rbp)
  403593:	72 6f                	jb     403604 <_IO_stdin_used+0x604>
  403595:	72 21                	jb     4035b8 <_IO_stdin_used+0x5b8>
  403597:	00 4f 75             	add    %cl,0x75(%rdi)
  40359a:	63 68 21             	movslq 0x21(%rax),%ebp
  40359d:	3a 20                	cmp    (%rax),%ah
  40359f:	59                   	pop    %rcx
  4035a0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4035a1:	75 20                	jne    4035c3 <_IO_stdin_used+0x5c3>
  4035a3:	63 61 75             	movslq 0x75(%rcx),%esp
  4035a6:	73 65                	jae    40360d <_IO_stdin_used+0x60d>
  4035a8:	64 20 61 20          	and    %ah,%fs:0x20(%rcx)
  4035ac:	73 65                	jae    403613 <_IO_stdin_used+0x613>
  4035ae:	67 6d                	insl   (%dx),%es:(%edi)
  4035b0:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4035b2:	74 61                	je     403615 <_IO_stdin_used+0x615>
  4035b4:	74 69                	je     40361f <_IO_stdin_used+0x61f>
  4035b6:	6f                   	outsl  %ds:(%rsi),(%dx)
  4035b7:	6e                   	outsb  %ds:(%rsi),(%dx)
  4035b8:	20 66 61             	and    %ah,0x61(%rsi)
  4035bb:	75 6c                	jne    403629 <_IO_stdin_used+0x629>
  4035bd:	74 21                	je     4035e0 <_IO_stdin_used+0x5e0>
  4035bf:	00 4f 6f             	add    %cl,0x6f(%rdi)
  4035c2:	70 73                	jo     403637 <_IO_stdin_used+0x637>
  4035c4:	21 3a                	and    %edi,(%rdx)
  4035c6:	20 59 6f             	and    %bl,0x6f(%rcx)
  4035c9:	75 20                	jne    4035eb <_IO_stdin_used+0x5eb>
  4035cb:	65 78 65             	gs js  403633 <_IO_stdin_used+0x633>
  4035ce:	63 75 74             	movslq 0x74(%rbp),%esi
  4035d1:	65 64 20 61 6e       	gs and %ah,%fs:0x6e(%rcx)
  4035d6:	20 69 6c             	and    %ch,0x6c(%rcx)
  4035d9:	6c                   	insb   (%dx),%es:(%rdi)
  4035da:	65 67 61             	gs addr32 (bad) 
  4035dd:	6c                   	insb   (%dx),%es:(%rdi)
  4035de:	20 69 6e             	and    %ch,0x6e(%rcx)
  4035e1:	73 74                	jae    403657 <trans_char+0x7>
  4035e3:	72 75                	jb     40365a <trans_char+0xa>
  4035e5:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
  4035e9:	6e                   	outsb  %ds:(%rsi),(%dx)
  4035ea:	00 00                	add    %al,(%rax)
  4035ec:	00 00                	add    %al,(%rax)
  4035ee:	00 00                	add    %al,(%rax)
  4035f0:	0a 54 69 6d          	or     0x6d(%rcx,%rbp,2),%dl
  4035f4:	65 6f                	outsl  %gs:(%rsi),(%dx)
  4035f6:	75 74                	jne    40366c <trans_char+0x1c>
  4035f8:	21 3a                	and    %edi,(%rdx)
  4035fa:	20 59 6f             	and    %bl,0x6f(%rcx)
  4035fd:	75 72                	jne    403671 <trans_char+0x21>
  4035ff:	20 61 74             	and    %ah,0x74(%rcx)
  403602:	74 61                	je     403665 <trans_char+0x15>
  403604:	63 6b 20             	movslq 0x20(%rbx),%ebp
  403607:	74 61                	je     40366a <trans_char+0x1a>
  403609:	6b 65 73 20          	imul   $0x20,0x73(%rbp),%esp
  40360d:	6d                   	insl   (%dx),%es:(%rdi)
  40360e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40360f:	72 65                	jb     403676 <trans_char+0x26>
  403611:	20 74 68 61          	and    %dh,0x61(%rax,%rbp,2)
  403615:	6e                   	outsb  %ds:(%rsi),(%dx)
  403616:	20 25 64 20 73 65    	and    %ah,0x65732064(%rip)        # 65b35680 <_end+0x6572e548>
  40361c:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
  40361f:	64 73 0a             	fs jae 40362c <_IO_stdin_used+0x62c>
  403622:	00 00                	add    %al,(%rax)
  403624:	00 00                	add    %al,(%rax)
  403626:	00 00                	add    %al,(%rax)
  403628:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  40362a:	75 6c                	jne    403698 <trans_char+0x48>
  40362c:	64 6e                	outsb  %fs:(%rsi),(%dx)
  40362e:	27                   	(bad)  
  40362f:	74 20                	je     403651 <trans_char+0x1>
  403631:	6d                   	insl   (%dx),%es:(%rdi)
  403632:	61                   	(bad)  
  403633:	70 20                	jo     403655 <trans_char+0x5>
  403635:	73 74                	jae    4036ab <trans_char+0x5b>
  403637:	61                   	(bad)  
  403638:	63 6b 20             	movslq 0x20(%rbx),%ebp
  40363b:	74 6f                	je     4036ac <trans_char+0x5c>
  40363d:	20 73 65             	and    %dh,0x65(%rbx)
  403640:	67 6d                	insl   (%dx),%es:(%edi)
  403642:	65 6e                	outsb  %gs:(%rsi),(%dx)
  403644:	74 20                	je     403666 <trans_char+0x16>
  403646:	61                   	(bad)  
  403647:	74 20                	je     403669 <trans_char+0x19>
  403649:	30 78 25             	xor    %bh,0x25(%rax)
  40364c:	6c                   	insb   (%dx),%es:(%rdi)
  40364d:	78 0a                	js     403659 <trans_char+0x9>
	...

0000000000403650 <trans_char>:
  403650:	30 31                	xor    %dh,(%rcx)
  403652:	32 33                	xor    (%rbx),%dh
  403654:	34 35                	xor    $0x35,%al
  403656:	36 37                	ss (bad) 
  403658:	38 39                	cmp    %bh,(%rcx)
  40365a:	41                   	rex.B
  40365b:	42                   	rex.X
  40365c:	43                   	rex.XB
  40365d:	44                   	rex.R
  40365e:	45                   	rex.RB
  40365f:	46 50                	rex.RX push %rax
  403661:	72 6f                	jb     4036d2 <trans_char+0x82>
  403663:	67 72 61             	addr32 jb 4036c7 <trans_char+0x77>
  403666:	6d                   	insl   (%dx),%es:(%rdi)
  403667:	20 74 69 6d          	and    %dh,0x6d(%rcx,%rbp,2)
  40366b:	65 64 20 6f 75       	gs and %ch,%fs:0x75(%rdi)
  403670:	74 20                	je     403692 <trans_char+0x42>
  403672:	61                   	(bad)  
  403673:	66 74 65             	data16 je 4036db <trans_char+0x8b>
  403676:	72 20                	jb     403698 <trans_char+0x48>
  403678:	25 64 20 73 65       	and    $0x65732064,%eax
  40367d:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
  403680:	64 73 0a             	fs jae 40368d <trans_char+0x3d>
  403683:	00 00                	add    %al,(%rax)
  403685:	00 00                	add    %al,(%rax)
  403687:	00 47 45             	add    %al,0x45(%rdi)
  40368a:	54                   	push   %rsp
  40368b:	20 2f                	and    %ch,(%rdi)
  40368d:	73 75                	jae    403704 <trans_char+0xb4>
  40368f:	62                   	(bad)  
  403690:	6d                   	insl   (%dx),%es:(%rdi)
  403691:	69 74 3f 75 73 65 72 	imul   $0x3d726573,0x75(%rdi,%rdi,1),%esi
  403698:	3d 
  403699:	25 73 26 63 6f       	and    $0x6f632673,%eax
  40369e:	75 72                	jne    403712 <trans_char+0xc2>
  4036a0:	73 65                	jae    403707 <trans_char+0xb7>
  4036a2:	3d 25 73 26 72       	cmp    $0x72267325,%eax
  4036a7:	65 73 75             	gs jae 40371f <trans_char+0xcf>
  4036aa:	6c                   	insb   (%dx),%es:(%rdi)
  4036ab:	74 3d                	je     4036ea <trans_char+0x9a>
  4036ad:	25 73 20 48 54       	and    $0x54482073,%eax
  4036b2:	54                   	push   %rsp
  4036b3:	50                   	push   %rax
  4036b4:	2f                   	(bad)  
  4036b5:	31 2e                	xor    %ebp,(%rsi)
  4036b7:	30 0d 0a 48 6f 73    	xor    %cl,0x736f480a(%rip)        # 73af7ec7 <_end+0x736f0d8f>
  4036bd:	74 3a                	je     4036f9 <trans_char+0xa9>
  4036bf:	20 25 73 0d 0a 0d    	and    %ah,0xd0a0d73(%rip)        # d4a4438 <_end+0xd09d300>
  4036c5:	0a 00                	or     (%rax),%al
  4036c7:	00 45 72             	add    %al,0x72(%rbp)
  4036ca:	72 6f                	jb     40373b <trans_char+0xeb>
  4036cc:	72 3a                	jb     403708 <trans_char+0xb8>
  4036ce:	20 48 54             	and    %cl,0x54(%rax)
  4036d1:	54                   	push   %rsp
  4036d2:	50                   	push   %rax
  4036d3:	20 72 65             	and    %dh,0x65(%rdx)
  4036d6:	71 75                	jno    40374d <__GNU_EH_FRAME_HDR+0x1>
  4036d8:	65 73 74             	gs jae 40374f <__GNU_EH_FRAME_HDR+0x3>
  4036db:	20 66 61             	and    %ah,0x61(%rsi)
  4036de:	69 6c 65 64 20 77 69 	imul   $0x74697720,0x64(%rbp,%riz,2),%ebp
  4036e5:	74 
  4036e6:	68 20 65 72 72       	pushq  $0x72726520
  4036eb:	6f                   	outsl  %ds:(%rsi),(%dx)
  4036ec:	72 20                	jb     40370e <trans_char+0xbe>
  4036ee:	25 64 3a 20 25       	and    $0x25203a64,%eax
  4036f3:	73 00                	jae    4036f5 <trans_char+0xa5>
  4036f5:	00 00                	add    %al,(%rax)
  4036f7:	00 25 25 25 30 32    	add    %ah,0x32302525(%rip)        # 32705c22 <_end+0x322feaea>
  4036fd:	58                   	pop    %rax
  4036fe:	00 25 73 20 25 64    	add    %ah,0x64252073(%rip)        # 64655777 <_end+0x6424e63f>
  403704:	20 25 5b 61 2d 7a    	and    %ah,0x7a2d615b(%rip)        # 7a6d9865 <_end+0x7a2d272d>
  40370a:	41 2d 7a 20 5d 00    	rex.B sub $0x5d207a,%eax
  403710:	4f                   	rex.WRXB
  403711:	4b 0a 00             	rex.WXB or (%r8),%al
  403714:	4f                   	rex.WRXB
  403715:	4b 0d 0a 00 4f 4b    	rex.WXB or $0x4b4f000a,%rax
  40371b:	00 63 68             	add    %ah,0x68(%rbx)
  40371e:	61                   	(bad)  
  40371f:	6e                   	outsb  %ds:(%rsi),(%dx)
  403720:	67 65 6d             	gs insl (%dx),%es:(%edi)
  403723:	65 2e 79 6f          	gs jns,pn 403796 <__GNU_EH_FRAME_HDR+0x4a>
  403727:	75 72                	jne    40379b <__GNU_EH_FRAME_HDR+0x4f>
  403729:	73 63                	jae    40378e <__GNU_EH_FRAME_HDR+0x42>
  40372b:	68 6f 6f 6c 2e       	pushq  $0x2e6c6f6f
  403730:	65 64 75 00          	gs fs jne 403734 <trans_char+0xe4>
  403734:	0a 41 55             	or     0x55(%rcx),%al
  403737:	54                   	push   %rsp
  403738:	4f 52                	rex.WRXB push %r10
  40373a:	45 53                	rex.RB push %r11
  40373c:	55                   	push   %rbp
  40373d:	4c 54                	rex.WR push %rsp
  40373f:	5f                   	pop    %rdi
  403740:	53                   	push   %rbx
  403741:	54                   	push   %rsp
  403742:	52                   	push   %rdx
  403743:	49                   	rex.WB
  403744:	4e                   	rex.WRX
  403745:	47 3d 25 73 0a 00    	rex.RXB cmp $0xa7325,%eax

Disassembly of section .eh_frame_hdr:

000000000040374c <__GNU_EH_FRAME_HDR>:
  40374c:	01 1b                	add    %ebx,(%rbx)
  40374e:	03 3b                	add    (%rbx),%edi
  403750:	48 01 00             	add    %rax,(%rax)
  403753:	00 28                	add    %ch,(%rax)
  403755:	00 00                	add    %al,(%rax)
  403757:	00 d4                	add    %dl,%ah
  403759:	d8 ff                	fdivr  %st(7),%st
  40375b:	ff a4 01 00 00 e4 da 	jmpq   *-0x251c0000(%rcx,%rax,1)
  403762:	ff                   	(bad)  
  403763:	ff 64 01 00          	jmpq   *0x0(%rcx,%rax,1)
  403767:	00 14 db             	add    %dl,(%rbx,%rbx,8)
  40376a:	ff                   	(bad)  
  40376b:	ff 90 01 00 00 c6    	callq  *-0x39ffffff(%rax)
  403771:	db ff                	(bad)  
  403773:	ff cc                	dec    %esp
  403775:	01 00                	add    %eax,(%rax)
  403777:	00 58 dc             	add    %bl,-0x24(%rax)
  40377a:	ff                   	(bad)  
  40377b:	ff e0                	jmpq   *%rax
  40377d:	01 00                	add    %eax,(%rax)
  40377f:	00 aa dd ff ff 0c    	add    %ch,0xcffffdd(%rdx)
  403785:	02 00                	add    (%rax),%al
  403787:	00 7f df             	add    %bh,-0x21(%rdi)
  40378a:	ff                   	(bad)  
  40378b:	ff 4c 02 00          	decl   0x0(%rdx,%rax,1)
  40378f:	00 d3                	add    %dl,%bl
  403791:	e3 ff                	jrcxz  403792 <__GNU_EH_FRAME_HDR+0x46>
  403793:	ff 64 02 00          	jmpq   *0x0(%rdx,%rax,1)
  403797:	00 e9                	add    %ch,%cl
  403799:	e3 ff                	jrcxz  40379a <__GNU_EH_FRAME_HDR+0x4e>
  40379b:	ff                   	(bad)  
  40379c:	7c 02                	jl     4037a0 <__GNU_EH_FRAME_HDR+0x54>
  40379e:	00 00                	add    %al,(%rax)
  4037a0:	17                   	(bad)  
  4037a1:	e4 ff                	in     $0xff,%al
  4037a3:	ff 90 02 00 00 71    	callq  *0x71000002(%rax)
  4037a9:	e4 ff                	in     $0xff,%al
  4037ab:	ff a4 02 00 00 f2 e4 	jmpq   *-0x1b0e0000(%rdx,%rax,1)
  4037b2:	ff                   	(bad)  
  4037b3:	ff                   	(bad)  
  4037b4:	d8 02                	fadds  (%rdx)
  4037b6:	00 00                	add    %al,(%rax)
  4037b8:	5a                   	pop    %rdx
  4037b9:	e5 ff                	in     $0xff,%eax
  4037bb:	ff f0                	push   %rax
  4037bd:	02 00                	add    (%rax),%al
  4037bf:	00 80 e5 ff ff 0c    	add    %al,0xcffffe5(%rax)
  4037c5:	03 00                	add    (%rax),%eax
  4037c7:	00 d8                	add    %bl,%al
  4037c9:	e5 ff                	in     $0xff,%eax
  4037cb:	ff 20                	jmpq   *(%rax)
  4037cd:	03 00                	add    (%rax),%eax
  4037cf:	00 ef                	add    %ch,%bh
  4037d1:	e5 ff                	in     $0xff,%eax
  4037d3:	ff 34 03             	pushq  (%rbx,%rax,1)
  4037d6:	00 00                	add    %al,(%rax)
  4037d8:	22 e6                	and    %dh,%ah
  4037da:	ff                   	(bad)  
  4037db:	ff 48 03             	decl   0x3(%rax)
  4037de:	00 00                	add    %al,(%rax)
  4037e0:	74 e6                	je     4037c8 <__GNU_EH_FRAME_HDR+0x7c>
  4037e2:	ff                   	(bad)  
  4037e3:	ff 74 03 00          	pushq  0x0(%rbx,%rax,1)
  4037e7:	00 1c e7             	add    %bl,(%rdi,%riz,8)
  4037ea:	ff                   	(bad)  
  4037eb:	ff a4 03 00 00 da e7 	jmpq   *-0x18260000(%rbx,%rax,1)
  4037f2:	ff                   	(bad)  
  4037f3:	ff c0                	inc    %eax
  4037f5:	03 00                	add    (%rax),%eax
  4037f7:	00 02                	add    %al,(%rdx)
  4037f9:	e8 ff ff dc 03       	callq  41d37fd <_end+0x3dcc6c5>
  4037fe:	00 00                	add    %al,(%rax)
  403800:	56                   	push   %rsi
  403801:	e8 ff ff f0 03       	callq  4313805 <_end+0x3f0c6cd>
  403806:	00 00                	add    %al,(%rax)
  403808:	aa                   	stos   %al,%es:(%rdi)
  403809:	e8 ff ff 04 04       	callq  445380d <_end+0x404c6d5>
  40380e:	00 00                	add    %al,(%rax)
  403810:	fe                   	(bad)  
  403811:	e8 ff ff 18 04       	callq  4593815 <_end+0x418c6dd>
  403816:	00 00                	add    %al,(%rax)
  403818:	50                   	push   %rax
  403819:	e9 ff ff 2c 04       	jmpq   46d381d <_end+0x42cc6e5>
  40381e:	00 00                	add    %al,(%rax)
  403820:	d9 e9                	fldl2t 
  403822:	ff                   	(bad)  
  403823:	ff 50 04             	callq  *0x4(%rax)
  403826:	00 00                	add    %al,(%rax)
  403828:	88 ea                	mov    %ch,%dl
  40382a:	ff                   	(bad)  
  40382b:	ff 74 04 00          	pushq  0x0(%rsp,%rax,1)
  40382f:	00 9a ea ff ff 88    	add    %bl,-0x77000016(%rdx)
  403835:	04 00                	add    $0x0,%al
  403837:	00 c5                	add    %al,%ch
  403839:	ea                   	(bad)  
  40383a:	ff                   	(bad)  
  40383b:	ff 9c 04 00 00 a4 eb 	lcall  *-0x145c0000(%rsp,%rax,1)
  403842:	ff                   	(bad)  
  403843:	ff cc                	dec    %esp
  403845:	04 00                	add    $0x0,%al
  403847:	00 02                	add    %al,(%rdx)
  403849:	ec                   	in     (%dx),%al
  40384a:	ff                   	(bad)  
  40384b:	ff 08                	decl   (%rax)
  40384d:	05 00 00 8b ec       	add    $0xec8b0000,%eax
  403852:	ff                   	(bad)  
  403853:	ff 44 05 00          	incl   0x0(%rbp,%rax,1)
  403857:	00 07                	add    %al,(%rdi)
  403859:	ed                   	in     (%dx),%eax
  40385a:	ff                   	(bad)  
  40385b:	ff 80 05 00 00 59    	incl   0x59000005(%rax)
  403861:	f4                   	hlt    
  403862:	ff                   	(bad)  
  403863:	ff d0                	callq  *%rax
  403865:	05 00 00 84 f4       	add    $0xf4840000,%eax
  40386a:	ff                   	(bad)  
  40386b:	ff f0                	push   %rax
  40386d:	05 00 00 81 f6       	add    $0xf6810000,%eax
  403872:	ff                   	(bad)  
  403873:	ff 24 06             	jmpq   *(%rsi,%rax,1)
  403876:	00 00                	add    %al,(%rax)
  403878:	ef                   	out    %eax,(%dx)
  403879:	f6 ff                	idiv   %bh
  40387b:	ff 4c 06 00          	decl   0x0(%rsi,%rax,1)
  40387f:	00 1f                	add    %bl,(%rdi)
  403881:	f7 ff                	idiv   %edi
  403883:	ff 60 06             	jmpq   *0x6(%rax)
  403886:	00 00                	add    %al,(%rax)
  403888:	44 f7 ff             	rex.R idiv %edi
  40388b:	ff                   	(bad)  
  40388c:	7c 06                	jl     403894 <__GNU_EH_FRAME_HDR+0x148>
  40388e:	00 00                	add    %al,(%rax)
  403890:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  403891:	f7 ff                	idiv   %edi
  403893:	ff c4                	inc    %esp
  403895:	06                   	(bad)  
	...

Disassembly of section .eh_frame:

0000000000403898 <__FRAME_END__-0x58c>:
  403898:	14 00                	adc    $0x0,%al
  40389a:	00 00                	add    %al,(%rax)
  40389c:	00 00                	add    %al,(%rax)
  40389e:	00 00                	add    %al,(%rax)
  4038a0:	01 7a 52             	add    %edi,0x52(%rdx)
  4038a3:	00 01                	add    %al,(%rcx)
  4038a5:	78 10                	js     4038b7 <__GNU_EH_FRAME_HDR+0x16b>
  4038a7:	01 1b                	add    %ebx,(%rbx)
  4038a9:	0c 07                	or     $0x7,%al
  4038ab:	08 90 01 07 10 10    	or     %dl,0x10100701(%rax)
  4038b1:	00 00                	add    %al,(%rax)
  4038b3:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4038b6:	00 00                	add    %al,(%rax)
  4038b8:	78 d9                	js     403893 <__GNU_EH_FRAME_HDR+0x147>
  4038ba:	ff                   	(bad)  
  4038bb:	ff 2b                	ljmp   *(%rbx)
  4038bd:	00 00                	add    %al,(%rax)
  4038bf:	00 00                	add    %al,(%rax)
  4038c1:	00 00                	add    %al,(%rax)
  4038c3:	00 14 00             	add    %dl,(%rax,%rax,1)
  4038c6:	00 00                	add    %al,(%rax)
  4038c8:	00 00                	add    %al,(%rax)
  4038ca:	00 00                	add    %al,(%rax)
  4038cc:	01 7a 52             	add    %edi,0x52(%rdx)
  4038cf:	00 01                	add    %al,(%rcx)
  4038d1:	78 10                	js     4038e3 <__GNU_EH_FRAME_HDR+0x197>
  4038d3:	01 1b                	add    %ebx,(%rbx)
  4038d5:	0c 07                	or     $0x7,%al
  4038d7:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  4038dd:	00 00                	add    %al,(%rax)
  4038df:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4038e2:	00 00                	add    %al,(%rax)
  4038e4:	7c d9                	jl     4038bf <__GNU_EH_FRAME_HDR+0x173>
  4038e6:	ff                   	(bad)  
  4038e7:	ff 01                	incl   (%rcx)
  4038e9:	00 00                	add    %al,(%rax)
  4038eb:	00 00                	add    %al,(%rax)
  4038ed:	00 00                	add    %al,(%rax)
  4038ef:	00 24 00             	add    %ah,(%rax,%rax,1)
  4038f2:	00 00                	add    %al,(%rax)
  4038f4:	30 00                	xor    %al,(%rax)
  4038f6:	00 00                	add    %al,(%rax)
  4038f8:	28 d7                	sub    %dl,%bh
  4038fa:	ff                   	(bad)  
  4038fb:	ff 10                	callq  *(%rax)
  4038fd:	02 00                	add    (%rax),%al
  4038ff:	00 00                	add    %al,(%rax)
  403901:	0e                   	(bad)  
  403902:	10 46 0e             	adc    %al,0xe(%rsi)
  403905:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  403908:	0b 77 08             	or     0x8(%rdi),%esi
  40390b:	80 00 3f             	addb   $0x3f,(%rax)
  40390e:	1a 3b                	sbb    (%rbx),%bh
  403910:	2a 33                	sub    (%rbx),%dh
  403912:	24 22                	and    $0x22,%al
  403914:	00 00                	add    %al,(%rax)
  403916:	00 00                	add    %al,(%rax)
  403918:	10 00                	adc    %al,(%rax)
  40391a:	00 00                	add    %al,(%rax)
  40391c:	58                   	pop    %rax
  40391d:	00 00                	add    %al,(%rax)
  40391f:	00 f2                	add    %dh,%dl
  403921:	d9 ff                	fcos   
  403923:	ff 92 00 00 00 00    	callq  *0x0(%rdx)
  403929:	44 0e                	rex.R (bad) 
  40392b:	10 28                	adc    %ch,(%rax)
  40392d:	00 00                	add    %al,(%rax)
  40392f:	00 6c 00 00          	add    %ch,0x0(%rax,%rax,1)
  403933:	00 70 da             	add    %dh,-0x26(%rax)
  403936:	ff                   	(bad)  
  403937:	ff 52 01             	callq  *0x1(%rdx)
  40393a:	00 00                	add    %al,(%rax)
  40393c:	00 41 0e             	add    %al,0xe(%rcx)
  40393f:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
  403945:	83 03 47             	addl   $0x47,(%rbx)
  403948:	0e                   	(bad)  
  403949:	a0 42 02 80 0a 0e 18 	movabs 0xe41180e0a800242,%al
  403950:	41 0e 
  403952:	10 41 0e             	adc    %al,0xe(%rcx)
  403955:	08 41 0b             	or     %al,0xb(%rcx)
  403958:	3c 00                	cmp    $0x0,%al
  40395a:	00 00                	add    %al,(%rax)
  40395c:	98                   	cwtl   
  40395d:	00 00                	add    %al,(%rax)
  40395f:	00 96 db ff ff d5    	add    %dl,-0x2a000025(%rsi)
  403965:	01 00                	add    %eax,(%rax)
  403967:	00 00                	add    %al,(%rax)
  403969:	42 0e                	rex.X (bad) 
  40396b:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
  403971:	8d 03                	lea    (%rbx),%eax
  403973:	42 0e                	rex.X (bad) 
  403975:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
  40397c:	05 41 0e 30 83       	add    $0x83300e41,%eax
  403981:	06                   	(bad)  
  403982:	03 a5 01 0a 0e 28    	add    0x280e0a01(%rbp),%esp
  403988:	41 0e                	rex.B (bad) 
  40398a:	20 42 0e             	and    %al,0xe(%rdx)
  40398d:	18 42 0e             	sbb    %al,0xe(%rdx)
  403990:	10 42 0e             	adc    %al,0xe(%rdx)
  403993:	08 41 0b             	or     %al,0xb(%rcx)
  403996:	00 00                	add    %al,(%rax)
  403998:	14 00                	adc    $0x0,%al
  40399a:	00 00                	add    %al,(%rax)
  40399c:	d8 00                	fadds  (%rax)
  40399e:	00 00                	add    %al,(%rax)
  4039a0:	2b dd                	sub    %ebp,%ebx
  4039a2:	ff                   	(bad)  
  4039a3:	ff 54 04 00          	callq  *0x0(%rsp,%rax,1)
	...
  4039af:	00 14 00             	add    %dl,(%rax,%rax,1)
  4039b2:	00 00                	add    %al,(%rax)
  4039b4:	f0 00 00             	lock add %al,(%rax)
  4039b7:	00 67 e1             	add    %ah,-0x1f(%rdi)
  4039ba:	ff                   	(bad)  
  4039bb:	ff 16                	callq  *(%rsi)
  4039bd:	00 00                	add    %al,(%rax)
  4039bf:	00 00                	add    %al,(%rax)
  4039c1:	44 0e                	rex.R (bad) 
  4039c3:	40 51                	rex push %rcx
  4039c5:	0e                   	(bad)  
  4039c6:	08 00                	or     %al,(%rax)
  4039c8:	10 00                	adc    %al,(%rax)
  4039ca:	00 00                	add    %al,(%rax)
  4039cc:	08 01                	or     %al,(%rcx)
  4039ce:	00 00                	add    %al,(%rax)
  4039d0:	65 e1 ff             	gs loope 4039d2 <__GNU_EH_FRAME_HDR+0x286>
  4039d3:	ff 2e                	ljmp   *(%rsi)
  4039d5:	00 00                	add    %al,(%rax)
  4039d7:	00 00                	add    %al,(%rax)
  4039d9:	44 0e                	rex.R (bad) 
  4039db:	10 10                	adc    %dl,(%rax)
  4039dd:	00 00                	add    %al,(%rax)
  4039df:	00 1c 01             	add    %bl,(%rcx,%rax,1)
  4039e2:	00 00                	add    %al,(%rax)
  4039e4:	7f e1                	jg     4039c7 <__GNU_EH_FRAME_HDR+0x27b>
  4039e6:	ff                   	(bad)  
  4039e7:	ff 5a 00             	lcall  *0x0(%rdx)
  4039ea:	00 00                	add    %al,(%rax)
  4039ec:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  4039f0:	30 00                	xor    %al,(%rax)
  4039f2:	00 00                	add    %al,(%rax)
  4039f4:	30 01                	xor    %al,(%rcx)
  4039f6:	00 00                	add    %al,(%rax)
  4039f8:	c5 e1 ff             	(bad)  
  4039fb:	ff 81 00 00 00 00    	incl   0x0(%rcx)
  403a01:	42 0e                	rex.X (bad) 
  403a03:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  403a0a:	03 41 0e             	add    0xe(%rcx),%eax
  403a0d:	20 83 04 44 0e 90    	and    %al,-0x6ff1bbfc(%rbx)
  403a13:	01 02                	add    %eax,(%rdx)
  403a15:	74 0e                	je     403a25 <__GNU_EH_FRAME_HDR+0x2d9>
  403a17:	20 41 0e             	and    %al,0xe(%rcx)
  403a1a:	18 41 0e             	sbb    %al,0xe(%rcx)
  403a1d:	10 42 0e             	adc    %al,0xe(%rdx)
  403a20:	08 00                	or     %al,(%rax)
  403a22:	00 00                	add    %al,(%rax)
  403a24:	14 00                	adc    $0x0,%al
  403a26:	00 00                	add    %al,(%rax)
  403a28:	64 01 00             	add    %eax,%fs:(%rax)
  403a2b:	00 12                	add    %dl,(%rdx)
  403a2d:	e2 ff                	loop   403a2e <__GNU_EH_FRAME_HDR+0x2e2>
  403a2f:	ff 68 00             	ljmp   *0x0(%rax)
  403a32:	00 00                	add    %al,(%rax)
  403a34:	00 41 0e             	add    %al,0xe(%rcx)
  403a37:	10 83 02 00 00 18    	adc    %al,0x18000002(%rbx)
  403a3d:	00 00                	add    %al,(%rax)
  403a3f:	00 7c 01 00          	add    %bh,0x0(%rcx,%rax,1)
  403a43:	00 62 e2             	add    %ah,-0x1e(%rdx)
  403a46:	ff                   	(bad)  
  403a47:	ff 26                	jmpq   *(%rsi)
  403a49:	00 00                	add    %al,(%rax)
  403a4b:	00 00                	add    %al,(%rax)
  403a4d:	44 0e                	rex.R (bad) 
  403a4f:	10 61 0e             	adc    %ah,0xe(%rcx)
  403a52:	08 00                	or     %al,(%rax)
  403a54:	00 00                	add    %al,(%rax)
  403a56:	00 00                	add    %al,(%rax)
  403a58:	10 00                	adc    %al,(%rax)
  403a5a:	00 00                	add    %al,(%rax)
  403a5c:	98                   	cwtl   
  403a5d:	01 00                	add    %eax,(%rax)
  403a5f:	00 6c e2 ff          	add    %ch,-0x1(%rdx,%riz,8)
  403a63:	ff 58 00             	lcall  *0x0(%rax)
  403a66:	00 00                	add    %al,(%rax)
  403a68:	00 00                	add    %al,(%rax)
  403a6a:	00 00                	add    %al,(%rax)
  403a6c:	10 00                	adc    %al,(%rax)
  403a6e:	00 00                	add    %al,(%rax)
  403a70:	ac                   	lods   %ds:(%rsi),%al
  403a71:	01 00                	add    %eax,(%rax)
  403a73:	00 b0 e2 ff ff 17    	add    %dh,0x17ffffe2(%rax)
  403a79:	00 00                	add    %al,(%rax)
  403a7b:	00 00                	add    %al,(%rax)
  403a7d:	00 00                	add    %al,(%rax)
  403a7f:	00 10                	add    %dl,(%rax)
  403a81:	00 00                	add    %al,(%rax)
  403a83:	00 c0                	add    %al,%al
  403a85:	01 00                	add    %eax,(%rax)
  403a87:	00 b3 e2 ff ff 33    	add    %dh,0x33ffffe2(%rbx)
  403a8d:	00 00                	add    %al,(%rax)
  403a8f:	00 00                	add    %al,(%rax)
  403a91:	44 0e                	rex.R (bad) 
  403a93:	10 28                	adc    %ch,(%rax)
  403a95:	00 00                	add    %al,(%rax)
  403a97:	00 d4                	add    %dl,%ah
  403a99:	01 00                	add    %eax,(%rax)
  403a9b:	00 d2                	add    %dl,%dl
  403a9d:	e2 ff                	loop   403a9e <__GNU_EH_FRAME_HDR+0x352>
  403a9f:	ff 52 00             	callq  *0x0(%rdx)
  403aa2:	00 00                	add    %al,(%rax)
  403aa4:	00 42 0e             	add    %al,0xe(%rdx)
  403aa7:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  403aae:	03 41 0e             	add    0xe(%rcx),%eax
  403ab1:	20 83 04 02 4a 0e    	and    %al,0xe4a0204(%rbx)
  403ab7:	18 41 0e             	sbb    %al,0xe(%rcx)
  403aba:	10 42 0e             	adc    %al,0xe(%rdx)
  403abd:	08 00                	or     %al,(%rax)
  403abf:	00 2c 00             	add    %ch,(%rax,%rax,1)
  403ac2:	00 00                	add    %al,(%rax)
  403ac4:	00 02                	add    %al,(%rdx)
  403ac6:	00 00                	add    %al,(%rax)
  403ac8:	f8                   	clc    
  403ac9:	e2 ff                	loop   403aca <__GNU_EH_FRAME_HDR+0x37e>
  403acb:	ff a8 00 00 00 00    	ljmp   *0x0(%rax)
  403ad1:	4e 0e                	rex.WRX (bad) 
  403ad3:	10 83 02 47 0e 90    	adc    %al,-0x6ff1b8fe(%rbx)
  403ad9:	40 7a 0e             	rex jp 403aea <__GNU_EH_FRAME_HDR+0x39e>
  403adc:	98                   	cwtl   
  403add:	40                   	rex
  403ade:	41 0e                	rex.B (bad) 
  403ae0:	a0 40 69 0e 10 41 0e 	movabs 0x41080e41100e6940,%al
  403ae7:	08 41 
  403ae9:	0e                   	(bad)  
  403aea:	90                   	nop
  403aeb:	40 6c                	rex insb (%dx),%es:(%rdi)
  403aed:	0e                   	(bad)  
  403aee:	08 c3                	or     %al,%bl
  403af0:	18 00                	sbb    %al,(%rax)
  403af2:	00 00                	add    %al,(%rax)
  403af4:	30 02                	xor    %al,(%rdx)
  403af6:	00 00                	add    %al,(%rax)
  403af8:	70 e3                	jo     403add <__GNU_EH_FRAME_HDR+0x391>
  403afa:	ff                   	(bad)  
  403afb:	ff                   	(bad)  
  403afc:	be 00 00 00 00       	mov    $0x0,%esi
  403b01:	41 0e                	rex.B (bad) 
  403b03:	10 83 02 7f 0a 0e    	adc    %al,0xe0a7f02(%rbx)
  403b09:	08 41 0b             	or     %al,0xb(%rcx)
  403b0c:	18 00                	sbb    %al,(%rax)
  403b0e:	00 00                	add    %al,(%rax)
  403b10:	4c 02 00             	rex.WR add (%rax),%r8b
  403b13:	00 12                	add    %dl,(%rdx)
  403b15:	e4 ff                	in     $0xff,%al
  403b17:	ff 28                	ljmp   *(%rax)
  403b19:	00 00                	add    %al,(%rax)
  403b1b:	00 00                	add    %al,(%rax)
  403b1d:	44 0e                	rex.R (bad) 
  403b1f:	10 59 0a             	adc    %bl,0xa(%rcx)
  403b22:	0e                   	(bad)  
  403b23:	08 41 0b             	or     %al,0xb(%rcx)
  403b26:	00 00                	add    %al,(%rax)
  403b28:	10 00                	adc    %al,(%rax)
  403b2a:	00 00                	add    %al,(%rax)
  403b2c:	68 02 00 00 1e       	pushq  $0x1e000002
  403b31:	e4 ff                	in     $0xff,%al
  403b33:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
  403b37:	00 00                	add    %al,(%rax)
  403b39:	44 0e                	rex.R (bad) 
  403b3b:	10 10                	adc    %dl,(%rax)
  403b3d:	00 00                	add    %al,(%rax)
  403b3f:	00 7c 02 00          	add    %bh,0x0(%rdx,%rax,1)
  403b43:	00 5e e4             	add    %bl,-0x1c(%rsi)
  403b46:	ff                   	(bad)  
  403b47:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
  403b4b:	00 00                	add    %al,(%rax)
  403b4d:	44 0e                	rex.R (bad) 
  403b4f:	10 10                	adc    %dl,(%rax)
  403b51:	00 00                	add    %al,(%rax)
  403b53:	00 90 02 00 00 9e    	add    %dl,-0x61fffffe(%rax)
  403b59:	e4 ff                	in     $0xff,%al
  403b5b:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
  403b5f:	00 00                	add    %al,(%rax)
  403b61:	44 0e                	rex.R (bad) 
  403b63:	10 10                	adc    %dl,(%rax)
  403b65:	00 00                	add    %al,(%rax)
  403b67:	00 a4 02 00 00 de e4 	add    %ah,-0x1b220000(%rdx,%rax,1)
  403b6e:	ff                   	(bad)  
  403b6f:	ff 52 00             	callq  *0x0(%rdx)
  403b72:	00 00                	add    %al,(%rax)
  403b74:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
  403b78:	20 00                	and    %al,(%rax)
  403b7a:	00 00                	add    %al,(%rax)
  403b7c:	b8 02 00 00 1c       	mov    $0x1c000002,%eax
  403b81:	e5 ff                	in     $0xff,%eax
  403b83:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  403b89:	41 0e                	rex.B (bad) 
  403b8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403b91:	02 5b 0a             	add    0xa(%rbx),%bl
  403b94:	0c 07                	or     $0x7,%al
  403b96:	08 41 0b             	or     %al,0xb(%rcx)
  403b99:	00 00                	add    %al,(%rax)
  403b9b:	00 20                	add    %ah,(%rax)
  403b9d:	00 00                	add    %al,(%rax)
  403b9f:	00 dc                	add    %bl,%ah
  403ba1:	02 00                	add    (%rax),%al
  403ba3:	00 81 e5 ff ff af    	add    %al,-0x5000001b(%rcx)
  403ba9:	00 00                	add    %al,(%rax)
  403bab:	00 00                	add    %al,(%rax)
  403bad:	41 0e                	rex.B (bad) 
  403baf:	10 83 02 02 79 0a    	adc    %al,0xa790202(%rbx)
  403bb5:	0e                   	(bad)  
  403bb6:	08 41 0b             	or     %al,0xb(%rcx)
  403bb9:	00 00                	add    %al,(%rax)
  403bbb:	00 00                	add    %al,(%rax)
  403bbd:	00 00                	add    %al,(%rax)
  403bbf:	00 10                	add    %dl,(%rax)
  403bc1:	00 00                	add    %al,(%rax)
  403bc3:	00 00                	add    %al,(%rax)
  403bc5:	03 00                	add    (%rax),%eax
  403bc7:	00 0c e6             	add    %cl,(%rsi,%riz,8)
  403bca:	ff                   	(bad)  
  403bcb:	ff 12                	callq  *(%rdx)
  403bcd:	00 00                	add    %al,(%rax)
  403bcf:	00 00                	add    %al,(%rax)
  403bd1:	00 00                	add    %al,(%rax)
  403bd3:	00 10                	add    %dl,(%rax)
  403bd5:	00 00                	add    %al,(%rax)
  403bd7:	00 14 03             	add    %dl,(%rbx,%rax,1)
  403bda:	00 00                	add    %al,(%rax)
  403bdc:	0a e6                	or     %dh,%ah
  403bde:	ff                   	(bad)  
  403bdf:	ff 2b                	ljmp   *(%rbx)
  403be1:	00 00                	add    %al,(%rax)
  403be3:	00 00                	add    %al,(%rax)
  403be5:	44 0e                	rex.R (bad) 
  403be7:	10 2c 00             	adc    %ch,(%rax,%rax,1)
  403bea:	00 00                	add    %al,(%rax)
  403bec:	28 03                	sub    %al,(%rbx)
  403bee:	00 00                	add    %al,(%rax)
  403bf0:	21 e6                	and    %esp,%esi
  403bf2:	ff                   	(bad)  
  403bf3:	ff                   	(bad)  
  403bf4:	df 00                	filds  (%rax)
  403bf6:	00 00                	add    %al,(%rax)
  403bf8:	00 42 0e             	add    %al,0xe(%rdx)
  403bfb:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  403c02:	03 41 0e             	add    0xe(%rcx),%eax
  403c05:	20 83 04 44 0e 30    	and    %al,0x300e4404(%rbx)
  403c0b:	02 d2                	add    %dl,%dl
  403c0d:	0e                   	(bad)  
  403c0e:	20 41 0e             	and    %al,0xe(%rcx)
  403c11:	18 41 0e             	sbb    %al,0xe(%rcx)
  403c14:	10 42 0e             	adc    %al,0xe(%rdx)
  403c17:	08 38                	or     %bh,(%rax)
  403c19:	00 00                	add    %al,(%rax)
  403c1b:	00 58 03             	add    %bl,0x3(%rax)
  403c1e:	00 00                	add    %al,(%rax)
  403c20:	d0 e6                	shl    %dh
  403c22:	ff                   	(bad)  
  403c23:	ff 5e 00             	lcall  *0x0(%rsi)
  403c26:	00 00                	add    %al,(%rax)
  403c28:	00 42 0e             	add    %al,0xe(%rdx)
  403c2b:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  403c31:	8c 03                	mov    %es,(%rbx)
  403c33:	41 0e                	rex.B (bad) 
  403c35:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  403c3b:	83 05 44 0e 30 02 44 	addl   $0x44,0x2300e44(%rip)        # 2704a86 <_end+0x22fd94e>
  403c42:	0a 0e                	or     (%rsi),%cl
  403c44:	28 41 0e             	sub    %al,0xe(%rcx)
  403c47:	20 41 0e             	and    %al,0xe(%rcx)
  403c4a:	18 42 0e             	sbb    %al,0xe(%rdx)
  403c4d:	10 42 0e             	adc    %al,0xe(%rdx)
  403c50:	08 41 0b             	or     %al,0xb(%rcx)
  403c53:	00 38                	add    %bh,(%rax)
  403c55:	00 00                	add    %al,(%rax)
  403c57:	00 94 03 00 00 f2 e6 	add    %dl,-0x190e0000(%rbx,%rax,1)
  403c5e:	ff                   	(bad)  
  403c5f:	ff 89 00 00 00 00    	decl   0x0(%rcx)
  403c65:	42 0e                	rex.X (bad) 
  403c67:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  403c6d:	8c 03                	mov    %es,(%rbx)
  403c6f:	41 0e                	rex.B (bad) 
  403c71:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  403c77:	83 05 44 0e 30 02 68 	addl   $0x68,0x2300e44(%rip)        # 2704ac2 <_end+0x22fd98a>
  403c7e:	0a 0e                	or     (%rsi),%cl
  403c80:	28 41 0e             	sub    %al,0xe(%rcx)
  403c83:	20 41 0e             	and    %al,0xe(%rcx)
  403c86:	18 42 0e             	sbb    %al,0xe(%rdx)
  403c89:	10 42 0e             	adc    %al,0xe(%rdx)
  403c8c:	08 41 0b             	or     %al,0xb(%rcx)
  403c8f:	00 38                	add    %bh,(%rax)
  403c91:	00 00                	add    %al,(%rax)
  403c93:	00 d0                	add    %dl,%al
  403c95:	03 00                	add    (%rax),%eax
  403c97:	00 3f                	add    %bh,(%rdi)
  403c99:	e7 ff                	out    %eax,$0xff
  403c9b:	ff                   	(bad)  
  403c9c:	7c 00                	jl     403c9e <__GNU_EH_FRAME_HDR+0x552>
  403c9e:	00 00                	add    %al,(%rax)
  403ca0:	00 42 0e             	add    %al,0xe(%rdx)
  403ca3:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
  403ca9:	8c 03                	mov    %es,(%rbx)
  403cab:	41 0e                	rex.B (bad) 
  403cad:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
  403cb3:	83 05 44 0e 40 02 62 	addl   $0x62,0x2400e44(%rip)        # 2804afe <_end+0x23fd9c6>
  403cba:	0a 0e                	or     (%rsi),%cl
  403cbc:	28 41 0e             	sub    %al,0xe(%rcx)
  403cbf:	20 41 0e             	and    %al,0xe(%rcx)
  403cc2:	18 42 0e             	sbb    %al,0xe(%rdx)
  403cc5:	10 42 0e             	adc    %al,0xe(%rdx)
  403cc8:	08 41 0b             	or     %al,0xb(%rcx)
  403ccb:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
  403ccf:	00 0c 04             	add    %cl,(%rsp,%rax,1)
  403cd2:	00 00                	add    %al,(%rax)
  403cd4:	7f e7                	jg     403cbd <__GNU_EH_FRAME_HDR+0x571>
  403cd6:	ff                   	(bad)  
  403cd7:	ff 52 07             	callq  *0x7(%rdx)
  403cda:	00 00                	add    %al,(%rax)
  403cdc:	00 42 0e             	add    %al,0xe(%rdx)
  403cdf:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
  403ce5:	8e 03                	mov    (%rbx),%es
  403ce7:	42 0e                	rex.X (bad) 
  403ce9:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
  403cef:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86704b36 <_end+0xffffffff862fd9fe>
  403cf5:	06                   	(bad)  
  403cf6:	41 0e                	rex.B (bad) 
  403cf8:	38 83 07 47 0e 90    	cmp    %al,-0x6ff1b8f9(%rbx)
  403cfe:	c1 02 03             	roll   $0x3,(%rdx)
  403d01:	d5                   	(bad)  
  403d02:	02 0a                	add    (%rdx),%cl
  403d04:	0e                   	(bad)  
  403d05:	38 41 0e             	cmp    %al,0xe(%rcx)
  403d08:	30 41 0e             	xor    %al,0xe(%rcx)
  403d0b:	28 42 0e             	sub    %al,0xe(%rdx)
  403d0e:	20 42 0e             	and    %al,0xe(%rdx)
  403d11:	18 42 0e             	sbb    %al,0xe(%rdx)
  403d14:	10 42 0e             	adc    %al,0xe(%rdx)
  403d17:	08 41 0b             	or     %al,0xb(%rcx)
  403d1a:	00 00                	add    %al,(%rax)
  403d1c:	1c 00                	sbb    $0x0,%al
  403d1e:	00 00                	add    %al,(%rax)
  403d20:	5c                   	pop    %rsp
  403d21:	04 00                	add    $0x0,%al
  403d23:	00 81 ee ff ff 2b    	add    %al,0x2bffffee(%rcx)
  403d29:	00 00                	add    %al,(%rax)
  403d2b:	00 00                	add    %al,(%rax)
  403d2d:	45 0e                	rex.RB (bad) 
  403d2f:	10 83 02 5d 0a 0e    	adc    %al,0xe0a5d02(%rbx)
  403d35:	08 41 0b             	or     %al,0xb(%rcx)
  403d38:	47 0e                	rex.RXB (bad) 
  403d3a:	08 c3                	or     %al,%bl
  403d3c:	30 00                	xor    %al,(%rax)
  403d3e:	00 00                	add    %al,(%rax)
  403d40:	7c 04                	jl     403d46 <__GNU_EH_FRAME_HDR+0x5fa>
  403d42:	00 00                	add    %al,(%rax)
  403d44:	8c ee                	mov    %gs,%esi
  403d46:	ff                   	(bad)  
  403d47:	ff                   	(bad)  
  403d48:	fd                   	std    
  403d49:	01 00                	add    %eax,(%rax)
  403d4b:	00 00                	add    %al,(%rax)
  403d4d:	42 0e                	rex.X (bad) 
  403d4f:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
  403d56:	03 41 0e             	add    0xe(%rcx),%eax
  403d59:	20 83 04 44 0e 30    	and    %al,0x300e4404(%rbx)
  403d5f:	02 d1                	add    %cl,%dl
  403d61:	0a 0e                	or     (%rsi),%cl
  403d63:	20 41 0e             	and    %al,0xe(%rcx)
  403d66:	18 41 0e             	sbb    %al,0xe(%rcx)
  403d69:	10 42 0e             	adc    %al,0xe(%rdx)
  403d6c:	08 41 0b             	or     %al,0xb(%rcx)
  403d6f:	00 24 00             	add    %ah,(%rax,%rax,1)
  403d72:	00 00                	add    %al,(%rax)
  403d74:	b0 04                	mov    $0x4,%al
  403d76:	00 00                	add    %al,(%rax)
  403d78:	55                   	push   %rbp
  403d79:	f0 ff                	lock (bad) 
  403d7b:	ff 6e 00             	ljmp   *0x0(%rsi)
  403d7e:	00 00                	add    %al,(%rax)
  403d80:	00 41 0e             	add    %al,0xe(%rcx)
  403d83:	10 83 02 5f 0a 0e    	adc    %al,0xe0a5f02(%rbx)
  403d89:	08 41 0b             	or     %al,0xb(%rcx)
  403d8c:	68 0e 18 42 0e       	pushq  $0xe42180e
  403d91:	20 61 0e             	and    %ah,0xe(%rcx)
  403d94:	10 00                	adc    %al,(%rax)
  403d96:	00 00                	add    %al,(%rax)
  403d98:	10 00                	adc    %al,(%rax)
  403d9a:	00 00                	add    %al,(%rax)
  403d9c:	d8 04 00             	fadds  (%rax,%rax,1)
  403d9f:	00 9b f0 ff ff 30    	add    %bl,0x30fffff0(%rbx)
  403da5:	00 00                	add    %al,(%rax)
  403da7:	00 00                	add    %al,(%rax)
  403da9:	00 00                	add    %al,(%rax)
  403dab:	00 18                	add    %bl,(%rax)
  403dad:	00 00                	add    %al,(%rax)
  403daf:	00 ec                	add    %ch,%ah
  403db1:	04 00                	add    $0x0,%al
  403db3:	00 b7 f0 ff ff 1f    	add    %dh,0x1ffffff0(%rdi)
  403db9:	00 00                	add    %al,(%rax)
  403dbb:	00 00                	add    %al,(%rax)
  403dbd:	41 0e                	rex.B (bad) 
  403dbf:	10 83 02 5d 0e 08    	adc    %al,0x80e5d02(%rbx)
  403dc5:	00 00                	add    %al,(%rax)
  403dc7:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
  403dcb:	00 08                	add    %cl,(%rax)
  403dcd:	05 00 00 c0 f0       	add    $0xf0c00000,%eax
  403dd2:	ff                   	(bad)  
  403dd3:	ff 5d 00             	lcall  *0x0(%rbp)
  403dd6:	00 00                	add    %al,(%rax)
  403dd8:	00 42 0e             	add    %al,0xe(%rdx)
  403ddb:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
  403de1:	8e 03                	mov    (%rbx),%es
  403de3:	45 0e                	rex.RB (bad) 
  403de5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  403deb:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86704c39 <_end+0xffffffff862fdb01>
  403df1:	06                   	(bad)  
  403df2:	48 0e                	rex.W (bad) 
  403df4:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
  403dfa:	6a 0e                	pushq  $0xe
  403dfc:	38 41 0e             	cmp    %al,0xe(%rcx)
  403dff:	30 41 0e             	xor    %al,0xe(%rcx)
  403e02:	28 42 0e             	sub    %al,0xe(%rdx)
  403e05:	20 42 0e             	and    %al,0xe(%rdx)
  403e08:	18 42 0e             	sbb    %al,0xe(%rdx)
  403e0b:	10 42 0e             	adc    %al,0xe(%rdx)
  403e0e:	08 00                	or     %al,(%rax)
  403e10:	10 00                	adc    %al,(%rax)
  403e12:	00 00                	add    %al,(%rax)
  403e14:	50                   	push   %rax
  403e15:	05 00 00 d8 f0       	add    $0xf0d80000,%eax
  403e1a:	ff                   	(bad)  
  403e1b:	ff 01                	incl   (%rcx)
  403e1d:	00 00                	add    %al,(%rax)
  403e1f:	00 00                	add    %al,(%rax)
  403e21:	00 00                	add    %al,(%rax)
	...

0000000000403e24 <__FRAME_END__>:
  403e24:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000405e10 <__frame_dummy_init_array_entry>:
  405e10:	10 13                	adc    %dl,(%rbx)
  405e12:	40 00 00             	add    %al,(%rax)
  405e15:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000405e18 <__do_global_dtors_aux_fini_array_entry>:
  405e18:	e0 12                	loopne 405e2c <_DYNAMIC+0xc>
  405e1a:	40 00 00             	add    %al,(%rax)
  405e1d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000405e20 <_DYNAMIC>:
  405e20:	01 00                	add    %eax,(%rax)
  405e22:	00 00                	add    %al,(%rax)
  405e24:	00 00                	add    %al,(%rax)
  405e26:	00 00                	add    %al,(%rax)
  405e28:	01 00                	add    %eax,(%rax)
  405e2a:	00 00                	add    %al,(%rax)
  405e2c:	00 00                	add    %al,(%rax)
  405e2e:	00 00                	add    %al,(%rax)
  405e30:	0c 00                	or     $0x0,%al
  405e32:	00 00                	add    %al,(%rax)
  405e34:	00 00                	add    %al,(%rax)
  405e36:	00 00                	add    %al,(%rax)
  405e38:	00 10                	add    %dl,(%rax)
  405e3a:	40 00 00             	add    %al,(%rax)
  405e3d:	00 00                	add    %al,(%rax)
  405e3f:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 405e45 <_DYNAMIC+0x25>
  405e45:	00 00                	add    %al,(%rax)
  405e47:	00 f4                	add    %dh,%ah
  405e49:	2e 40 00 00          	add    %al,%cs:(%rax)
  405e4d:	00 00                	add    %al,(%rax)
  405e4f:	00 19                	add    %bl,(%rcx)
  405e51:	00 00                	add    %al,(%rax)
  405e53:	00 00                	add    %al,(%rax)
  405e55:	00 00                	add    %al,(%rax)
  405e57:	00 10                	add    %dl,(%rax)
  405e59:	5e                   	pop    %rsi
  405e5a:	40 00 00             	add    %al,(%rax)
  405e5d:	00 00                	add    %al,(%rax)
  405e5f:	00 1b                	add    %bl,(%rbx)
  405e61:	00 00                	add    %al,(%rax)
  405e63:	00 00                	add    %al,(%rax)
  405e65:	00 00                	add    %al,(%rax)
  405e67:	00 08                	add    %cl,(%rax)
  405e69:	00 00                	add    %al,(%rax)
  405e6b:	00 00                	add    %al,(%rax)
  405e6d:	00 00                	add    %al,(%rax)
  405e6f:	00 1a                	add    %bl,(%rdx)
  405e71:	00 00                	add    %al,(%rax)
  405e73:	00 00                	add    %al,(%rax)
  405e75:	00 00                	add    %al,(%rax)
  405e77:	00 18                	add    %bl,(%rax)
  405e79:	5e                   	pop    %rsi
  405e7a:	40 00 00             	add    %al,(%rax)
  405e7d:	00 00                	add    %al,(%rax)
  405e7f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  405e82:	00 00                	add    %al,(%rax)
  405e84:	00 00                	add    %al,(%rax)
  405e86:	00 00                	add    %al,(%rax)
  405e88:	08 00                	or     %al,(%rax)
  405e8a:	00 00                	add    %al,(%rax)
  405e8c:	00 00                	add    %al,(%rax)
  405e8e:	00 00                	add    %al,(%rax)
  405e90:	f5                   	cmc    
  405e91:	fe                   	(bad)  
  405e92:	ff 6f 00             	ljmp   *0x0(%rdi)
  405e95:	00 00                	add    %al,(%rax)
  405e97:	00 08                	add    %cl,(%rax)
  405e99:	03 40 00             	add    0x0(%rax),%eax
  405e9c:	00 00                	add    %al,(%rax)
  405e9e:	00 00                	add    %al,(%rax)
  405ea0:	05 00 00 00 00       	add    $0x0,%eax
  405ea5:	00 00                	add    %al,(%rax)
  405ea7:	00 c8                	add    %cl,%al
  405ea9:	06                   	(bad)  
  405eaa:	40 00 00             	add    %al,(%rax)
  405ead:	00 00                	add    %al,(%rax)
  405eaf:	00 06                	add    %al,(%rsi)
  405eb1:	00 00                	add    %al,(%rax)
  405eb3:	00 00                	add    %al,(%rax)
  405eb5:	00 00                	add    %al,(%rax)
  405eb7:	00 38                	add    %bh,(%rax)
  405eb9:	03 40 00             	add    0x0(%rax),%eax
  405ebc:	00 00                	add    %al,(%rax)
  405ebe:	00 00                	add    %al,(%rax)
  405ec0:	0a 00                	or     (%rax),%al
  405ec2:	00 00                	add    %al,(%rax)
  405ec4:	00 00                	add    %al,(%rax)
  405ec6:	00 00                	add    %al,(%rax)
  405ec8:	4d 01 00             	add    %r8,(%r8)
  405ecb:	00 00                	add    %al,(%rax)
  405ecd:	00 00                	add    %al,(%rax)
  405ecf:	00 0b                	add    %cl,(%rbx)
  405ed1:	00 00                	add    %al,(%rax)
  405ed3:	00 00                	add    %al,(%rax)
  405ed5:	00 00                	add    %al,(%rax)
  405ed7:	00 18                	add    %bl,(%rax)
  405ed9:	00 00                	add    %al,(%rax)
  405edb:	00 00                	add    %al,(%rax)
  405edd:	00 00                	add    %al,(%rax)
  405edf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 405ee5 <_DYNAMIC+0xc5>
	...
  405eed:	00 00                	add    %al,(%rax)
  405eef:	00 03                	add    %al,(%rbx)
	...
  405ef9:	60                   	(bad)  
  405efa:	40 00 00             	add    %al,(%rax)
  405efd:	00 00                	add    %al,(%rax)
  405eff:	00 02                	add    %al,(%rdx)
	...
  405f09:	03 00                	add    (%rax),%eax
  405f0b:	00 00                	add    %al,(%rax)
  405f0d:	00 00                	add    %al,(%rax)
  405f0f:	00 14 00             	add    %dl,(%rax,%rax,1)
  405f12:	00 00                	add    %al,(%rax)
  405f14:	00 00                	add    %al,(%rax)
  405f16:	00 00                	add    %al,(%rax)
  405f18:	07                   	(bad)  
  405f19:	00 00                	add    %al,(%rax)
  405f1b:	00 00                	add    %al,(%rax)
  405f1d:	00 00                	add    %al,(%rax)
  405f1f:	00 17                	add    %dl,(%rdi)
  405f21:	00 00                	add    %al,(%rax)
  405f23:	00 00                	add    %al,(%rax)
  405f25:	00 00                	add    %al,(%rax)
  405f27:	00 20                	add    %ah,(%rax)
  405f29:	09 40 00             	or     %eax,0x0(%rax)
  405f2c:	00 00                	add    %al,(%rax)
  405f2e:	00 00                	add    %al,(%rax)
  405f30:	07                   	(bad)  
  405f31:	00 00                	add    %al,(%rax)
  405f33:	00 00                	add    %al,(%rax)
  405f35:	00 00                	add    %al,(%rax)
  405f37:	00 a8 08 40 00 00    	add    %ch,0x4008(%rax)
  405f3d:	00 00                	add    %al,(%rax)
  405f3f:	00 08                	add    %cl,(%rax)
  405f41:	00 00                	add    %al,(%rax)
  405f43:	00 00                	add    %al,(%rax)
  405f45:	00 00                	add    %al,(%rax)
  405f47:	00 78 00             	add    %bh,0x0(%rax)
  405f4a:	00 00                	add    %al,(%rax)
  405f4c:	00 00                	add    %al,(%rax)
  405f4e:	00 00                	add    %al,(%rax)
  405f50:	09 00                	or     %eax,(%rax)
  405f52:	00 00                	add    %al,(%rax)
  405f54:	00 00                	add    %al,(%rax)
  405f56:	00 00                	add    %al,(%rax)
  405f58:	18 00                	sbb    %al,(%rax)
  405f5a:	00 00                	add    %al,(%rax)
  405f5c:	00 00                	add    %al,(%rax)
  405f5e:	00 00                	add    %al,(%rax)
  405f60:	fe                   	(bad)  
  405f61:	ff                   	(bad)  
  405f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f65:	00 00                	add    %al,(%rax)
  405f67:	00 68 08             	add    %ch,0x8(%rax)
  405f6a:	40 00 00             	add    %al,(%rax)
  405f6d:	00 00                	add    %al,(%rax)
  405f6f:	00 ff                	add    %bh,%bh
  405f71:	ff                   	(bad)  
  405f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f75:	00 00                	add    %al,(%rax)
  405f77:	00 01                	add    %al,(%rcx)
  405f79:	00 00                	add    %al,(%rax)
  405f7b:	00 00                	add    %al,(%rax)
  405f7d:	00 00                	add    %al,(%rax)
  405f7f:	00 f0                	add    %dh,%al
  405f81:	ff                   	(bad)  
  405f82:	ff 6f 00             	ljmp   *0x0(%rdi)
  405f85:	00 00                	add    %al,(%rax)
  405f87:	00 16                	add    %dl,(%rsi)
  405f89:	08 40 00             	or     %al,0x0(%rax)
	...

Disassembly of section .got:

0000000000405ff0 <.got>:
	...

Disassembly of section .got.plt:

0000000000406000 <_GLOBAL_OFFSET_TABLE_>:
  406000:	20 5e 40             	and    %bl,0x40(%rsi)
	...
  406017:	00 36                	add    %dh,(%rsi)
  406019:	10 40 00             	adc    %al,0x0(%rax)
  40601c:	00 00                	add    %al,(%rax)
  40601e:	00 00                	add    %al,(%rax)
  406020:	46 10 40 00          	rex.RX adc %r8b,0x0(%rax)
  406024:	00 00                	add    %al,(%rax)
  406026:	00 00                	add    %al,(%rax)
  406028:	56                   	push   %rsi
  406029:	10 40 00             	adc    %al,0x0(%rax)
  40602c:	00 00                	add    %al,(%rax)
  40602e:	00 00                	add    %al,(%rax)
  406030:	66 10 40 00          	data16 adc %al,0x0(%rax)
  406034:	00 00                	add    %al,(%rax)
  406036:	00 00                	add    %al,(%rax)
  406038:	76 10                	jbe    40604a <_GLOBAL_OFFSET_TABLE_+0x4a>
  40603a:	40 00 00             	add    %al,(%rax)
  40603d:	00 00                	add    %al,(%rax)
  40603f:	00 86 10 40 00 00    	add    %al,0x4010(%rsi)
  406045:	00 00                	add    %al,(%rax)
  406047:	00 96 10 40 00 00    	add    %dl,0x4010(%rsi)
  40604d:	00 00                	add    %al,(%rax)
  40604f:	00 a6 10 40 00 00    	add    %ah,0x4010(%rsi)
  406055:	00 00                	add    %al,(%rax)
  406057:	00 b6 10 40 00 00    	add    %dh,0x4010(%rsi)
  40605d:	00 00                	add    %al,(%rax)
  40605f:	00 c6                	add    %al,%dh
  406061:	10 40 00             	adc    %al,0x0(%rax)
  406064:	00 00                	add    %al,(%rax)
  406066:	00 00                	add    %al,(%rax)
  406068:	d6                   	(bad)  
  406069:	10 40 00             	adc    %al,0x0(%rax)
  40606c:	00 00                	add    %al,(%rax)
  40606e:	00 00                	add    %al,(%rax)
  406070:	e6 10                	out    %al,$0x10
  406072:	40 00 00             	add    %al,(%rax)
  406075:	00 00                	add    %al,(%rax)
  406077:	00 f6                	add    %dh,%dh
  406079:	10 40 00             	adc    %al,0x0(%rax)
  40607c:	00 00                	add    %al,(%rax)
  40607e:	00 00                	add    %al,(%rax)
  406080:	06                   	(bad)  
  406081:	11 40 00             	adc    %eax,0x0(%rax)
  406084:	00 00                	add    %al,(%rax)
  406086:	00 00                	add    %al,(%rax)
  406088:	16                   	(bad)  
  406089:	11 40 00             	adc    %eax,0x0(%rax)
  40608c:	00 00                	add    %al,(%rax)
  40608e:	00 00                	add    %al,(%rax)
  406090:	26 11 40 00          	adc    %eax,%es:0x0(%rax)
  406094:	00 00                	add    %al,(%rax)
  406096:	00 00                	add    %al,(%rax)
  406098:	36 11 40 00          	adc    %eax,%ss:0x0(%rax)
  40609c:	00 00                	add    %al,(%rax)
  40609e:	00 00                	add    %al,(%rax)
  4060a0:	46 11 40 00          	rex.RX adc %r8d,0x0(%rax)
  4060a4:	00 00                	add    %al,(%rax)
  4060a6:	00 00                	add    %al,(%rax)
  4060a8:	56                   	push   %rsi
  4060a9:	11 40 00             	adc    %eax,0x0(%rax)
  4060ac:	00 00                	add    %al,(%rax)
  4060ae:	00 00                	add    %al,(%rax)
  4060b0:	66 11 40 00          	adc    %ax,0x0(%rax)
  4060b4:	00 00                	add    %al,(%rax)
  4060b6:	00 00                	add    %al,(%rax)
  4060b8:	76 11                	jbe    4060cb <_GLOBAL_OFFSET_TABLE_+0xcb>
  4060ba:	40 00 00             	add    %al,(%rax)
  4060bd:	00 00                	add    %al,(%rax)
  4060bf:	00 86 11 40 00 00    	add    %al,0x4011(%rsi)
  4060c5:	00 00                	add    %al,(%rax)
  4060c7:	00 96 11 40 00 00    	add    %dl,0x4011(%rsi)
  4060cd:	00 00                	add    %al,(%rax)
  4060cf:	00 a6 11 40 00 00    	add    %ah,0x4011(%rsi)
  4060d5:	00 00                	add    %al,(%rax)
  4060d7:	00 b6 11 40 00 00    	add    %dh,0x4011(%rsi)
  4060dd:	00 00                	add    %al,(%rax)
  4060df:	00 c6                	add    %al,%dh
  4060e1:	11 40 00             	adc    %eax,0x0(%rax)
  4060e4:	00 00                	add    %al,(%rax)
  4060e6:	00 00                	add    %al,(%rax)
  4060e8:	d6                   	(bad)  
  4060e9:	11 40 00             	adc    %eax,0x0(%rax)
  4060ec:	00 00                	add    %al,(%rax)
  4060ee:	00 00                	add    %al,(%rax)
  4060f0:	e6 11                	out    %al,$0x11
  4060f2:	40 00 00             	add    %al,(%rax)
  4060f5:	00 00                	add    %al,(%rax)
  4060f7:	00 f6                	add    %dh,%dh
  4060f9:	11 40 00             	adc    %eax,0x0(%rax)
  4060fc:	00 00                	add    %al,(%rax)
  4060fe:	00 00                	add    %al,(%rax)
  406100:	06                   	(bad)  
  406101:	12 40 00             	adc    0x0(%rax),%al
  406104:	00 00                	add    %al,(%rax)
  406106:	00 00                	add    %al,(%rax)
  406108:	16                   	(bad)  
  406109:	12 40 00             	adc    0x0(%rax),%al
  40610c:	00 00                	add    %al,(%rax)
  40610e:	00 00                	add    %al,(%rax)
  406110:	26 12 40 00          	adc    %es:0x0(%rax),%al
  406114:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000406120 <__data_start>:
	...

0000000000406128 <__dso_handle>:
	...

0000000000406130 <target_id>:
  406130:	ae                   	scas   %es:(%rdi),%al
  406131:	f7 98 02 00 00 00    	negl   0x2(%rax)
	...

0000000000406140 <user_id>:
  406140:	b8 32 40 00 00       	mov    $0x4032,%eax
  406145:	00 00                	add    %al,(%rax)
	...

0000000000406148 <lab>:
  406148:	f2 32 40 00          	repnz xor 0x0(%rax),%al
  40614c:	00 00                	add    %al,(%rax)
	...

0000000000406150 <course>:
  406150:	fc                   	cld    
  406151:	32 40 00             	xor    0x0(%rax),%al
	...

0000000000406160 <host_table>:
  406160:	02 33                	add    (%rbx),%dh
  406162:	40 00 00             	add    %al,(%rax)
	...

0000000000406480 <buf_offset>:
  406480:	00 01                	add    %al,(%rcx)
  406482:	00 00                	add    %al,(%rax)
  406484:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

00000000004064a0 <stdin@@GLIBC_2.2.5>:
	...

00000000004064a8 <optarg@@GLIBC_2.2.5>:
	...

00000000004064c0 <stderr@@GLIBC_2.2.5>:
	...

00000000004064c8 <completed.7325>:
	...

00000000004064e0 <global_save_stack>:
	...

00000000004064e8 <global_offset>:
	...

00000000004064f0 <infile>:
	...

00000000004064f8 <notify>:
  4064f8:	00 00                	add    %al,(%rax)
	...

00000000004064fc <check_level>:
  4064fc:	00 00                	add    %al,(%rax)
	...

0000000000406500 <vlevel>:
  406500:	00 00                	add    %al,(%rax)
	...

0000000000406504 <authkey>:
  406504:	00 00                	add    %al,(%rax)
	...

0000000000406508 <cookie>:
  406508:	00 00                	add    %al,(%rax)
	...

000000000040650c <is_checker>:
	...

0000000000406520 <gets_buf>:
	...

0000000000407124 <gets_cnt>:
  407124:	00 00                	add    %al,(%rax)
	...

0000000000407128 <target_prefix>:
	...

0000000000407130 <stack_top>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 38 2e 33 	imul   $0x332e3820,0x6e(%rcx),%esp
  10:	2e 30 2d 36 29 20 38 	xor    %ch,%cs:0x38202936(%rip)        # 3820294d <_end+0x37dfb815>
  17:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  1a:	30 00                	xor    %al,(%rax)

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	12 13                	adc    (%rbx),%dl
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
	...
  2d:	00 00                	add    %al,(%rax)
  2f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  32:	00 00                	add    %al,(%rax)
  34:	02 00                	add    (%rax),%al
  36:	62                   	(bad)  
  37:	0c 00                	or     $0x0,%al
  39:	00 08                	add    %cl,(%rax)
  3b:	00 00                	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 cb                	add    %cl,%bl
  41:	16                   	(bad)  
  42:	40 00 00             	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 54 04 00          	add    %dl,0x0(%rsp,%rax,1)
	...
  5f:	00 2c 00             	add    %ch,(%rax,%rax,1)
  62:	00 00                	add    %al,(%rax)
  64:	02 00                	add    (%rax),%al
  66:	1e                   	(bad)  
  67:	0d 00 00 08 00       	or     $0x80000,%eax
  6c:	00 00                	add    %al,(%rax)
  6e:	00 00                	add    %al,(%rax)
  70:	1f                   	(bad)  
  71:	1b 40 00             	sbb    0x0(%rax),%eax
  74:	00 00                	add    %al,(%rax)
  76:	00 00                	add    %al,(%rax)
  78:	16                   	(bad)  
	...
  8d:	00 00                	add    %al,(%rax)
  8f:	00 1c 00             	add    %bl,(%rax,%rax,1)
  92:	00 00                	add    %al,(%rax)
  94:	02 00                	add    (%rax),%al
  96:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  97:	11 00                	adc    %eax,(%rax)
  99:	00 08                	add    %cl,(%rax)
	...
  af:	00 2c 00             	add    %ch,(%rax,%rax,1)
  b2:	00 00                	add    %al,(%rax)
  b4:	02 00                	add    (%rax),%al
  b6:	5e                   	pop    %rsi
  b7:	12 00                	adc    (%rax),%al
  b9:	00 08                	add    %cl,(%rax)
  bb:	00 00                	add    %al,(%rax)
  bd:	00 00                	add    %al,(%rax)
  bf:	00 35 1b 40 00 00    	add    %dh,0x401b(%rip)        # 40e0 <_init-0x3fcf20>
  c5:	00 00                	add    %al,(%rax)
  c7:	00 97 01 00 00 00    	add    %dl,0x1(%rdi)
	...
  dd:	00 00                	add    %al,(%rax)
  df:	00 2c 00             	add    %ch,(%rax,%rax,1)
  e2:	00 00                	add    %al,(%rax)
  e4:	02 00                	add    (%rax),%al
  e6:	28 1a                	sub    %bl,(%rdx)
  e8:	00 00                	add    %al,(%rax)
  ea:	08 00                	or     %al,(%rax)
  ec:	00 00                	add    %al,(%rax)
  ee:	00 00                	add    %al,(%rax)
  f0:	cc                   	int3   
  f1:	1c 40                	sbb    $0x40,%al
  f3:	00 00                	add    %al,(%rax)
  f5:	00 00                	add    %al,(%rax)
  f7:	00 08                	add    %cl,(%rax)
  f9:	05 00 00 00 00       	add    $0x0,%eax
	...
 10e:	00 00                	add    %al,(%rax)
 110:	2c 00                	sub    $0x0,%al
 112:	00 00                	add    %al,(%rax)
 114:	02 00                	add    (%rax),%al
 116:	52                   	push   %rdx
 117:	28 00                	sub    %al,(%rax)
 119:	00 08                	add    %cl,(%rax)
 11b:	00 00                	add    %al,(%rax)
 11d:	00 00                	add    %al,(%rax)
 11f:	00 d4                	add    %dl,%ah
 121:	21 40 00             	and    %eax,0x0(%rax)
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	67 0c 00             	addr32 or $0x0,%al
	...
 13f:	00 2c 00             	add    %ch,(%rax,%rax,1)
 142:	00 00                	add    %al,(%rax)
 144:	02 00                	add    (%rax),%al
 146:	f6 3a                	idivb  (%rdx)
 148:	00 00                	add    %al,(%rax)
 14a:	08 00                	or     %al,(%rax)
 14c:	00 00                	add    %al,(%rax)
 14e:	00 00                	add    %al,(%rax)
 150:	3b 2e                	cmp    (%rsi),%ebp
 152:	40 00 00             	add    %al,(%rax)
 155:	00 00                	add    %al,(%rax)
 157:	00 4f 00             	add    %cl,0x0(%rdi)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	5e                   	pop    %rsi
       1:	0c 00                	or     $0x0,%al
       3:	00 04 00             	add    %al,(%rax,%rax,1)
       6:	00 00                	add    %al,(%rax)
       8:	00 00                	add    %al,(%rax)
       a:	08 01                	or     %al,(%rcx)
       c:	99                   	cltd   
       d:	00 00                	add    %al,(%rax)
       f:	00 0c 51             	add    %cl,(%rcx,%rdx,2)
      12:	03 00                	add    (%rax),%eax
      14:	00 48 01             	add    %cl,0x1(%rax)
      17:	00 00                	add    %al,(%rax)
      19:	12 13                	adc    (%rbx),%dl
      1b:	40 00 00             	add    %al,(%rax)
      1e:	00 00                	add    %al,(%rax)
      20:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
      26:	00 00                	add    %al,(%rax)
      28:	00 00                	add    %al,(%rax)
      2a:	00 00                	add    %al,(%rax)
      2c:	00 02                	add    %al,(%rdx)
      2e:	7e 06                	jle    36 <_init-0x400fca>
      30:	00 00                	add    %al,(%rax)
      32:	03 d8                	add    %eax,%ebx
      34:	17                   	(bad)  
      35:	39 00                	cmp    %eax,(%rax)
      37:	00 00                	add    %al,(%rax)
      39:	03 08                	add    (%rax),%ecx
      3b:	07                   	(bad)  
      3c:	5b                   	pop    %rbx
      3d:	02 00                	add    (%rax),%al
      3f:	00 03                	add    %al,(%rbx)
      41:	04 07                	add    $0x7,%al
      43:	60                   	(bad)  
      44:	02 00                	add    (%rax),%al
      46:	00 04 08             	add    %al,(%rax,%rcx,1)
      49:	03 01                	add    (%rcx),%eax
      4b:	08 21                	or     %ah,(%rcx)
      4d:	02 00                	add    (%rax),%al
      4f:	00 03                	add    %al,(%rbx)
      51:	02 07                	add    (%rdi),%al
      53:	32 03                	xor    (%rbx),%al
      55:	00 00                	add    %al,(%rax)
      57:	03 01                	add    (%rcx),%eax
      59:	06                   	(bad)  
      5a:	23 02                	and    (%rdx),%eax
      5c:	00 00                	add    %al,(%rax)
      5e:	03 02                	add    (%rdx),%eax
      60:	05 73 00 00 00       	add    $0x73,%eax
      65:	05 04 05 69 6e       	add    $0x6e690504,%eax
      6a:	74 00                	je     6c <_init-0x400f94>
      6c:	03 08                	add    (%rax),%ecx
      6e:	05 a5 01 00 00       	add    $0x1a5,%eax
      73:	02 95 03 00 00 04    	add    0x4000003(%rbp),%dl
      79:	96                   	xchg   %eax,%esi
      7a:	19 6c 00 00          	sbb    %ebp,0x0(%rax,%rax,1)
      7e:	00 02                	add    %al,(%rdx)
      80:	62 03                	(bad)  
      82:	00 00                	add    %al,(%rax)
      84:	04 97                	add    $0x97,%al
      86:	1b 6c 00 00          	sbb    0x0(%rax,%rax,1),%ebp
      8a:	00 06                	add    %al,(%rsi)
      8c:	08 91 00 00 00 03    	or     %dl,0x3000000(%rcx)
      92:	01 06                	add    %eax,(%rsi)
      94:	2a 02                	sub    (%rdx),%al
      96:	00 00                	add    %al,(%rax)
      98:	07                   	(bad)  
      99:	91                   	xchg   %eax,%ecx
      9a:	00 00                	add    %al,(%rax)
      9c:	00 08                	add    %cl,(%rax)
      9e:	10 02                	adc    %al,(%rdx)
      a0:	00 00                	add    %al,(%rax)
      a2:	d8 05 31 08 24 02    	fadds  0x2240831(%rip)        # 22408d9 <_end+0x1e397a1>
      a8:	00 00                	add    %al,(%rax)
      aa:	09 13                	or     %edx,(%rbx)
      ac:	04 00                	add    $0x0,%al
      ae:	00 05 33 07 65 00    	add    %al,0x650733(%rip)        # 6507e7 <_end+0x2496af>
      b4:	00 00                	add    %al,(%rax)
      b6:	00 09                	add    %cl,(%rcx)
      b8:	b3 02                	mov    $0x2,%bl
      ba:	00 00                	add    %al,(%rax)
      bc:	05 36 09 8b 00       	add    $0x8b0936,%eax
      c1:	00 00                	add    %al,(%rax)
      c3:	08 09                	or     %cl,(%rcx)
      c5:	8e 02                	mov    (%rdx),%es
      c7:	00 00                	add    %al,(%rax)
      c9:	05 37 09 8b 00       	add    $0x8b0937,%eax
      ce:	00 00                	add    %al,(%rax)
      d0:	10 09                	adc    %cl,(%rcx)
      d2:	22 00                	and    (%rax),%al
      d4:	00 00                	add    %al,(%rax)
      d6:	05 38 09 8b 00       	add    $0x8b0938,%eax
      db:	00 00                	add    %al,(%rax)
      dd:	18 09                	sbb    %cl,(%rcx)
      df:	9b                   	fwait
      e0:	02 00                	add    (%rax),%al
      e2:	00 05 39 09 8b 00    	add    %al,0x8b0939(%rip)        # 8b0a21 <_end+0x4a98e9>
      e8:	00 00                	add    %al,(%rax)
      ea:	20 09                	and    %cl,(%rcx)
      ec:	d6                   	(bad)  
      ed:	00 00                	add    %al,(%rax)
      ef:	00 05 3a 09 8b 00    	add    %al,0x8b093a(%rip)        # 8b0a2f <_end+0x4a98f7>
      f5:	00 00                	add    %al,(%rax)
      f7:	28 09                	sub    %cl,(%rcx)
      f9:	5d                   	pop    %rbp
      fa:	00 00                	add    %al,(%rax)
      fc:	00 05 3b 09 8b 00    	add    %al,0x8b093b(%rip)        # 8b0a3d <_end+0x4a9905>
     102:	00 00                	add    %al,(%rax)
     104:	30 09                	xor    %cl,(%rcx)
     106:	f6 00 00             	testb  $0x0,(%rax)
     109:	00 05 3c 09 8b 00    	add    %al,0x8b093c(%rip)        # 8b0a4b <_end+0x4a9913>
     10f:	00 00                	add    %al,(%rax)
     111:	38 09                	cmp    %cl,(%rcx)
     113:	d4                   	(bad)  
     114:	02 00                	add    (%rax),%al
     116:	00 05 3d 09 8b 00    	add    %al,0x8b093d(%rip)        # 8b0a59 <_end+0x4a9921>
     11c:	00 00                	add    %al,(%rax)
     11e:	40 09 e4             	rex or %esp,%esp
     121:	03 00                	add    (%rax),%eax
     123:	00 05 40 09 8b 00    	add    %al,0x8b0940(%rip)        # 8b0a69 <_end+0x4a9931>
     129:	00 00                	add    %al,(%rax)
     12b:	48 09 9d 03 00 00 05 	or     %rbx,0x5000003(%rbp)
     132:	41 09 8b 00 00 00 50 	or     %ecx,0x50000000(%r11)
     139:	09 50 00             	or     %edx,0x0(%rax)
     13c:	00 00                	add    %al,(%rax)
     13e:	05 42 09 8b 00       	add    $0x8b0942,%eax
     143:	00 00                	add    %al,(%rax)
     145:	58                   	pop    %rax
     146:	09 14 01             	or     %edx,(%rcx,%rax,1)
     149:	00 00                	add    %al,(%rax)
     14b:	05 44 16 3d 02       	add    $0x23d1644,%eax
     150:	00 00                	add    %al,(%rax)
     152:	60                   	(bad)  
     153:	09 75 03             	or     %esi,0x3(%rbp)
     156:	00 00                	add    %al,(%rax)
     158:	05 46 14 43 02       	add    $0x2431446,%eax
     15d:	00 00                	add    %al,(%rax)
     15f:	68 09 04 04 00       	pushq  $0x40409
     164:	00 05 48 07 65 00    	add    %al,0x650748(%rip)        # 6508b2 <_end+0x24977a>
     16a:	00 00                	add    %al,(%rax)
     16c:	70 09                	jo     177 <_init-0x400e89>
     16e:	b3 03                	mov    $0x3,%bl
     170:	00 00                	add    %al,(%rax)
     172:	05 49 07 65 00       	add    $0x650749,%eax
     177:	00 00                	add    %al,(%rax)
     179:	74 09                	je     184 <_init-0x400e7c>
     17b:	07                   	(bad)  
     17c:	00 00                	add    %al,(%rax)
     17e:	00 05 4a 0b 73 00    	add    %al,0x730b4a(%rip)        # 730cce <_end+0x329b96>
     184:	00 00                	add    %al,(%rax)
     186:	78 09                	js     191 <_init-0x400e6f>
     188:	de 01                	fiadds (%rcx)
     18a:	00 00                	add    %al,(%rax)
     18c:	05 4d 12 50 00       	add    $0x50124d,%eax
     191:	00 00                	add    %al,(%rax)
     193:	80 09 01             	orb    $0x1,(%rcx)
     196:	02 00                	add    (%rax),%al
     198:	00 05 4e 0f 57 00    	add    %al,0x570f4e(%rip)        # 5710ec <_end+0x169fb4>
     19e:	00 00                	add    %al,(%rax)
     1a0:	82                   	(bad)  
     1a1:	09 78 02             	or     %edi,0x2(%rax)
     1a4:	00 00                	add    %al,(%rax)
     1a6:	05 4f 08 49 02       	add    $0x249084f,%eax
     1ab:	00 00                	add    %al,(%rax)
     1ad:	83 09 b9             	orl    $0xffffffb9,(%rcx)
     1b0:	01 00                	add    %eax,(%rax)
     1b2:	00 05 51 0f 59 02    	add    %al,0x2590f51(%rip)        # 2591109 <_end+0x2189fd1>
     1b8:	00 00                	add    %al,(%rax)
     1ba:	88 09                	mov    %cl,(%rcx)
     1bc:	0b 00                	or     (%rax),%eax
     1be:	00 00                	add    %al,(%rax)
     1c0:	05 59 0d 7f 00       	add    $0x7f0d59,%eax
     1c5:	00 00                	add    %al,(%rax)
     1c7:	90                   	nop
     1c8:	09 24 04             	or     %esp,(%rsp,%rax,1)
     1cb:	00 00                	add    %al,(%rax)
     1cd:	05 5b 17 64 02       	add    $0x264175b,%eax
     1d2:	00 00                	add    %al,(%rax)
     1d4:	98                   	cwtl   
     1d5:	09 7f 03             	or     %edi,0x3(%rdi)
     1d8:	00 00                	add    %al,(%rax)
     1da:	05 5c 19 6f 02       	add    $0x26f195c,%eax
     1df:	00 00                	add    %al,(%rax)
     1e1:	a0 09 01 03 00 00 05 	movabs 0x145d050000030109,%al
     1e8:	5d 14 
     1ea:	43 02 00             	rex.XB add (%r8),%al
     1ed:	00 a8 09 e9 00 00    	add    %ch,0xe909(%rax)
     1f3:	00 05 5e 09 47 00    	add    %al,0x47095e(%rip)        # 470b57 <_end+0x69a1f>
     1f9:	00 00                	add    %al,(%rax)
     1fb:	b0 09                	mov    $0x9,%al
     1fd:	15 03 00 00 05       	adc    $0x5000003,%eax
     202:	5f                   	pop    %rdi
     203:	0a 2d 00 00 00 b8    	or     -0x48000000(%rip),%ch        # ffffffffb8000209 <_end+0xffffffffb7bf90d1>
     209:	09 bb 03 00 00 05    	or     %edi,0x5000003(%rbx)
     20f:	60                   	(bad)  
     210:	07                   	(bad)  
     211:	65 00 00             	add    %al,%gs:(%rax)
     214:	00 c0                	add    %al,%al
     216:	09 aa 02 00 00 05    	or     %ebp,0x5000002(%rdx)
     21c:	62                   	(bad)  
     21d:	08 75 02             	or     %dh,0x2(%rbp)
     220:	00 00                	add    %al,(%rax)
     222:	c4                   	(bad)  
     223:	00 02                	add    %al,(%rdx)
     225:	14 02                	adc    $0x2,%al
     227:	00 00                	add    %al,(%rax)
     229:	06                   	(bad)  
     22a:	07                   	(bad)  
     22b:	19 9d 00 00 00 0a    	sbb    %ebx,0xa000000(%rbp)
     231:	7d 00                	jge    233 <_init-0x400dcd>
     233:	00 00                	add    %al,(%rax)
     235:	05 2b 0e 0b 6d       	add    $0x6d0b0e2b,%eax
     23a:	02 00                	add    (%rax),%al
     23c:	00 06                	add    %al,(%rsi)
     23e:	08 38                	or     %bh,(%rax)
     240:	02 00                	add    (%rax),%al
     242:	00 06                	add    %al,(%rsi)
     244:	08 9d 00 00 00 0c    	or     %bl,0xc000000(%rbp)
     24a:	91                   	xchg   %eax,%ecx
     24b:	00 00                	add    %al,(%rax)
     24d:	00 59 02             	add    %bl,0x2(%rcx)
     250:	00 00                	add    %al,(%rax)
     252:	0d 39 00 00 00       	or     $0x39,%eax
     257:	00 00                	add    %al,(%rax)
     259:	06                   	(bad)  
     25a:	08 30                	or     %dh,(%rax)
     25c:	02 00                	add    (%rax),%al
     25e:	00 0b                	add    %cl,(%rbx)
     260:	21 04 00             	and    %eax,(%rax,%rax,1)
     263:	00 06                	add    %al,(%rsi)
     265:	08 5f 02             	or     %bl,0x2(%rdi)
     268:	00 00                	add    %al,(%rax)
     26a:	0b 7c 03 00          	or     0x0(%rbx,%rax,1),%edi
     26e:	00 06                	add    %al,(%rsi)
     270:	08 6a 02             	or     %ch,0x2(%rdx)
     273:	00 00                	add    %al,(%rax)
     275:	0c 91                	or     $0x91,%al
     277:	00 00                	add    %al,(%rax)
     279:	00 85 02 00 00 0d    	add    %al,0xd000002(%rbp)
     27f:	39 00                	cmp    %eax,(%rax)
     281:	00 00                	add    %al,(%rax)
     283:	13 00                	adc    (%rax),%eax
     285:	0e                   	(bad)  
     286:	ad                   	lods   %ds:(%rsi),%eax
     287:	03 00                	add    (%rax),%eax
     289:	00 07                	add    %al,(%rdi)
     28b:	89 0e                	mov    %ecx,(%rsi)
     28d:	91                   	xchg   %eax,%ecx
     28e:	02 00                	add    (%rax),%al
     290:	00 06                	add    %al,(%rsi)
     292:	08 24 02             	or     %ah,(%rdx,%rax,1)
     295:	00 00                	add    %al,(%rax)
     297:	0e                   	(bad)  
     298:	1a 04 00             	sbb    (%rax,%rax,1),%al
     29b:	00 07                	add    %al,(%rdi)
     29d:	8a 0e                	mov    (%rsi),%cl
     29f:	91                   	xchg   %eax,%ecx
     2a0:	02 00                	add    (%rax),%al
     2a2:	00 0e                	add    %cl,(%rsi)
     2a4:	99                   	cltd   
     2a5:	01 00                	add    %eax,(%rax)
     2a7:	00 07                	add    %al,(%rdi)
     2a9:	8b 0e                	mov    (%rsi),%ecx
     2ab:	91                   	xchg   %eax,%ecx
     2ac:	02 00                	add    (%rax),%al
     2ae:	00 0e                	add    %cl,(%rsi)
     2b0:	47 00 00             	rex.RXB add %r8b,(%r8)
     2b3:	00 08                	add    %cl,(%rax)
     2b5:	1a 0c 65 00 00 00 0c 	sbb    0xc000000(,%riz,2),%cl
     2bc:	d1 02                	roll   (%rdx)
     2be:	00 00                	add    %al,(%rax)
     2c0:	c6 02 00             	movb   $0x0,(%rdx)
     2c3:	00 0f                	add    %cl,(%rdi)
     2c5:	00 07                	add    %al,(%rdi)
     2c7:	bb 02 00 00 06       	mov    $0x6000002,%ebx
     2cc:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
     2d2:	cb                   	lret   
     2d3:	02 00                	add    (%rax),%al
     2d5:	00 0e                	add    %cl,(%rsi)
     2d7:	36 00 00             	add    %al,%ss:(%rax)
     2da:	00 08                	add    %cl,(%rax)
     2dc:	1b 1a                	sbb    (%rdx),%ebx
     2de:	c6 02 00             	movb   $0x0,(%rdx)
     2e1:	00 03                	add    %al,(%rbx)
     2e3:	08 05 a0 01 00 00    	or     %al,0x1a0(%rip)        # 489 <_init-0x400b77>
     2e9:	03 08                	add    (%rax),%ecx
     2eb:	07                   	(bad)  
     2ec:	56                   	push   %rsi
     2ed:	02 00                	add    (%rax),%al
     2ef:	00 0c d1             	add    %cl,(%rcx,%rdx,8)
     2f2:	02 00                	add    (%rax),%al
     2f4:	00 00                	add    %al,(%rax)
     2f6:	03 00                	add    (%rax),%eax
     2f8:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 337 <_init-0x400cc9>
     2fe:	40 00 07             	add    %al,(%rdi)
     301:	f0 02 00             	lock add (%rax),%al
     304:	00 10                	add    %dl,(%rax)
     306:	c0 02 00             	rolb   $0x0,(%rdx)
     309:	00 09                	add    %cl,(%rcx)
     30b:	1e                   	(bad)  
     30c:	01 1a                	add    %ebx,(%rdx)
     30e:	00 03                	add    %al,(%rbx)
     310:	00 00                	add    %al,(%rax)
     312:	10 c1                	adc    %al,%cl
     314:	02 00                	add    (%rax),%al
     316:	00 09                	add    %cl,(%rcx)
     318:	1f                   	(bad)  
     319:	01 1a                	add    %ebx,(%rdx)
     31b:	00 03                	add    %al,(%rbx)
     31d:	00 00                	add    %al,(%rax)
     31f:	10 0a                	adc    %cl,(%rdx)
     321:	01 00                	add    %eax,(%rax)
     323:	00 0a                	add    %cl,(%rdx)
     325:	1f                   	(bad)  
     326:	02 0f                	add    (%rdi),%cl
     328:	2c 03                	sub    $0x3,%al
     32a:	00 00                	add    %al,(%rax)
     32c:	06                   	(bad)  
     32d:	08 8b 00 00 00 0e    	or     %cl,0xe000000(%rbx)
     333:	4f 02 00             	rex.WRXB add (%r8),%r8b
     336:	00 0b                	add    %cl,(%rbx)
     338:	24 0e                	and    $0xe,%al
     33a:	8b 00                	mov    (%rax),%eax
     33c:	00 00                	add    %al,(%rax)
     33e:	0e                   	(bad)  
     33f:	00 00                	add    %al,(%rax)
     341:	00 00                	add    %al,(%rax)
     343:	0b 32                	or     (%rdx),%esi
     345:	0c 65                	or     $0x65,%al
     347:	00 00                	add    %al,(%rax)
     349:	00 0e                	add    %cl,(%rsi)
     34b:	41 01 00             	add    %eax,(%r8)
     34e:	00 0b                	add    %cl,(%rbx)
     350:	37                   	(bad)  
     351:	0c 65                	or     $0x65,%al
     353:	00 00                	add    %al,(%rax)
     355:	00 0e                	add    %cl,(%rsi)
     357:	fd                   	std    
     358:	03 00                	add    (%rax),%eax
     35a:	00 0b                	add    %cl,(%rbx)
     35c:	3b 0c 65 00 00 00 0c 	cmp    0xc000000(,%riz,2),%ecx
     363:	8b 00                	mov    (%rax),%eax
     365:	00 00                	add    %al,(%rax)
     367:	72 03                	jb     36c <_init-0x400c94>
     369:	00 00                	add    %al,(%rax)
     36b:	0d 39 00 00 00       	or     $0x39,%eax
     370:	01 00                	add    %eax,(%rax)
     372:	0e                   	(bad)  
     373:	88 00                	mov    %al,(%rax)
     375:	00 00                	add    %al,(%rax)
     377:	0c 9f                	or     $0x9f,%al
     379:	0e                   	(bad)  
     37a:	62 03                	(bad)  
     37c:	00 00                	add    %al,(%rax)
     37e:	0e                   	(bad)  
     37f:	bf 01 00 00 0c       	mov    $0xc000001,%edi
     384:	a0 0c 65 00 00 00 0e 	movabs 0x1ae0e000000650c,%al
     38b:	ae 01 
     38d:	00 00                	add    %al,(%rax)
     38f:	0c a1                	or     $0xa1,%al
     391:	11 6c 00 00          	adc    %ebp,0x0(%rax,%rax,1)
     395:	00 0e                	add    %cl,(%rsi)
     397:	8a 00                	mov    (%rax),%al
     399:	00 00                	add    %al,(%rax)
     39b:	0c a6                	or     $0xa6,%al
     39d:	0e                   	(bad)  
     39e:	62 03                	(bad)  
     3a0:	00 00                	add    %al,(%rax)
     3a2:	0e                   	(bad)  
     3a3:	c1 01 00             	roll   $0x0,(%rcx)
     3a6:	00 0c ae             	add    %cl,(%rsi,%rbp,4)
     3a9:	0c 65                	or     $0x65,%al
     3ab:	00 00                	add    %al,(%rax)
     3ad:	00 0e                	add    %cl,(%rsi)
     3af:	b0 01                	mov    $0x1,%al
     3b1:	00 00                	add    %al,(%rax)
     3b3:	0c af                	or     $0xaf,%al
     3b5:	11 6c 00 00          	adc    %ebp,0x0(%rax,%rax,1)
     3b9:	00 11                	add    %dl,(%rcx)
     3bb:	79 01                	jns    3be <_init-0x400c42>
     3bd:	00 00                	add    %al,(%rax)
     3bf:	0d 3c 05 65 00       	or     $0x65053c,%eax
     3c4:	00 00                	add    %al,(%rax)
     3c6:	09 03                	or     %eax,(%rbx)
     3c8:	0c 65                	or     $0x65,%al
     3ca:	40 00 00             	add    %al,(%rax)
     3cd:	00 00                	add    %al,(%rax)
     3cf:	00 11                	add    %dl,(%rcx)
     3d1:	5b                   	pop    %rbx
     3d2:	03 00                	add    (%rax),%eax
     3d4:	00 0d 3d 0a 40 00    	add    %cl,0x400a3d(%rip)        # 400e17 <_init-0x1e9>
     3da:	00 00                	add    %al,(%rax)
     3dc:	09 03                	or     %eax,(%rbx)
     3de:	08 65 40             	or     %ah,0x40(%rbp)
     3e1:	00 00                	add    %al,(%rax)
     3e3:	00 00                	add    %al,(%rax)
     3e5:	00 11                	add    %dl,(%rcx)
     3e7:	49 03 00             	add    (%r8),%rax
     3ea:	00 0d 3e 0a 40 00    	add    %cl,0x400a3e(%rip)        # 400e2e <_init-0x1d2>
     3f0:	00 00                	add    %al,(%rax)
     3f2:	09 03                	or     %eax,(%rbx)
     3f4:	04 65                	add    $0x65,%al
     3f6:	40 00 00             	add    %al,(%rax)
     3f9:	00 00                	add    %al,(%rax)
     3fb:	00 11                	add    %dl,(%rcx)
     3fd:	8b 01                	mov    (%rcx),%eax
     3ff:	00 00                	add    %al,(%rax)
     401:	0d 3f 05 65 00       	or     $0x65053f,%eax
     406:	00 00                	add    %al,(%rax)
     408:	09 03                	or     %eax,(%rbx)
     40a:	00 65 40             	add    %ah,0x40(%rbp)
     40d:	00 00                	add    %al,(%rax)
     40f:	00 00                	add    %al,(%rax)
     411:	00 11                	add    %dl,(%rcx)
     413:	1c 03                	sbb    $0x3,%al
     415:	00 00                	add    %al,(%rax)
     417:	0d 40 05 65 00       	or     $0x650540,%eax
     41c:	00 00                	add    %al,(%rax)
     41e:	09 03                	or     %eax,(%rbx)
     420:	fc                   	cld    
     421:	64 40 00 00          	add    %al,%fs:(%rax)
     425:	00 00                	add    %al,(%rax)
     427:	00 11                	add    %dl,(%rcx)
     429:	92                   	xchg   %eax,%edx
     42a:	01 00                	add    %eax,(%rax)
     42c:	00 0d 41 05 65 00    	add    %cl,0x650541(%rip)        # 650973 <_end+0x24983b>
     432:	00 00                	add    %al,(%rax)
     434:	09 03                	or     %eax,(%rbx)
     436:	f8                   	clc    
     437:	64 40 00 00          	add    %al,%fs:(%rax)
     43b:	00 00                	add    %al,(%rax)
     43d:	00 11                	add    %dl,(%rcx)
     43f:	03 01                	add    (%rcx),%eax
     441:	00 00                	add    %al,(%rax)
     443:	0d 42 07 91 02       	or     $0x2910742,%eax
     448:	00 00                	add    %al,(%rax)
     44a:	09 03                	or     %eax,(%rbx)
     44c:	f0 64 40 00 00       	lock add %al,%fs:(%rax)
     451:	00 00                	add    %al,(%rax)
     453:	00 11                	add    %dl,(%rcx)
     455:	cb                   	lret   
     456:	00 00                	add    %al,(%rax)
     458:	00 0d 43 08 2d 00    	add    %cl,0x2d0843(%rip)        # 2d0ca1 <_init-0x13035f>
     45e:	00 00                	add    %al,(%rax)
     460:	09 03                	or     %eax,(%rbx)
     462:	80 64 40 00 00       	andb   $0x0,0x0(%rax,%rax,2)
     467:	00 00                	add    %al,(%rax)
     469:	00 11                	add    %dl,(%rcx)
     46b:	d0 03                	rolb   (%rbx)
     46d:	00 00                	add    %al,(%rax)
     46f:	0d 44 06 91 00       	or     $0x910644,%eax
     474:	00 00                	add    %al,(%rax)
     476:	09 03                	or     %eax,(%rbx)
     478:	28 71 40             	sub    %dh,0x40(%rcx)
     47b:	00 00                	add    %al,(%rax)
     47d:	00 00                	add    %al,(%rax)
     47f:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
     482:	00 00                	add    %al,(%rax)
     484:	00 91 04 00 00 12    	add    %dl,0x12000004(%rcx)
     48a:	39 00                	cmp    %eax,(%rax)
     48c:	00 00                	add    %al,(%rax)
     48e:	ff 1f                	lcall  *(%rdi)
     490:	00 0c 8b             	add    %cl,(%rbx,%rcx,4)
     493:	00 00                	add    %al,(%rax)
     495:	00 a1 04 00 00 0d    	add    %ah,0xd000004(%rcx)
     49b:	39 00                	cmp    %eax,(%rax)
     49d:	00 00                	add    %al,(%rax)
     49f:	63 00                	movslq (%rax),%eax
     4a1:	11 3a                	adc    %edi,(%rdx)
     4a3:	02 00                	add    (%rax),%al
     4a5:	00 0e                	add    %cl,(%rsi)
     4a7:	14 07                	adc    $0x7,%al
     4a9:	91                   	xchg   %eax,%ecx
     4aa:	04 00                	add    $0x0,%al
     4ac:	00 09                	add    %cl,(%rcx)
     4ae:	03 60 61             	add    0x61(%rax),%esp
     4b1:	40 00 00             	add    %al,(%rax)
     4b4:	00 00                	add    %al,(%rax)
     4b6:	00 11                	add    %dl,(%rcx)
     4b8:	84 01                	test   %al,(%rcx)
     4ba:	00 00                	add    %al,(%rax)
     4bc:	0e                   	(bad)  
     4bd:	1a 07                	sbb    (%rdi),%al
     4bf:	8b 00                	mov    (%rax),%eax
     4c1:	00 00                	add    %al,(%rax)
     4c3:	09 03                	or     %eax,(%rbx)
     4c5:	50                   	push   %rax
     4c6:	61                   	(bad)  
     4c7:	40 00 00             	add    %al,(%rax)
     4ca:	00 00                	add    %al,(%rax)
     4cc:	00 13                	add    %dl,(%rbx)
     4ce:	6c                   	insb   (%dx),%es:(%rdi)
     4cf:	61                   	(bad)  
     4d0:	62                   	(bad)  
     4d1:	00 0e                	add    %cl,(%rsi)
     4d3:	1b 07                	sbb    (%rdi),%eax
     4d5:	8b 00                	mov    (%rax),%eax
     4d7:	00 00                	add    %al,(%rax)
     4d9:	09 03                	or     %eax,(%rbx)
     4db:	48 61                	rex.W (bad) 
     4dd:	40 00 00             	add    %al,(%rax)
     4e0:	00 00                	add    %al,(%rax)
     4e2:	00 11                	add    %dl,(%rcx)
     4e4:	45 02 00             	add    (%r8),%r8b
     4e7:	00 0e                	add    %cl,(%rsi)
     4e9:	21 05 65 00 00 00    	and    %eax,0x65(%rip)        # 554 <_init-0x400aac>
     4ef:	09 03                	or     %eax,(%rbx)
     4f1:	30 61 40             	xor    %ah,0x40(%rcx)
     4f4:	00 00                	add    %al,(%rax)
     4f6:	00 00                	add    %al,(%rax)
     4f8:	00 11                	add    %dl,(%rcx)
     4fa:	6b 00 00             	imul   $0x0,(%rax),%eax
     4fd:	00 0e                	add    %cl,(%rsi)
     4ff:	22 07                	and    (%rdi),%al
     501:	8b 00                	mov    (%rax),%eax
     503:	00 00                	add    %al,(%rax)
     505:	09 03                	or     %eax,(%rbx)
     507:	40 61                	rex (bad) 
     509:	40 00 00             	add    %al,(%rax)
     50c:	00 00                	add    %al,(%rax)
     50e:	00 14 e4             	add    %dl,(%rsp,%riz,8)
     511:	00 00                	add    %al,(%rax)
     513:	00 01                	add    %al,(%rcx)
     515:	60                   	(bad)  
     516:	05 65 00 00 00       	add    $0x65,%eax
     51b:	f6 14 40             	notb   (%rax,%rax,2)
     51e:	00 00                	add    %al,(%rax)
     520:	00 00                	add    %al,(%rax)
     522:	00 d5                	add    %dl,%ch
     524:	01 00                	add    %eax,(%rax)
     526:	00 00                	add    %al,(%rax)
     528:	00 00                	add    %al,(%rax)
     52a:	00 01                	add    %al,(%rcx)
     52c:	9c                   	pushfq 
     52d:	9d                   	popfq  
     52e:	07                   	(bad)  
     52f:	00 00                	add    %al,(%rax)
     531:	15 42 00 00 00       	adc    $0x42,%eax
     536:	01 60 0e             	add    %esp,0xe(%rax)
     539:	65 00 00             	add    %al,%gs:(%rax)
     53c:	00 08                	add    %cl,(%rax)
     53e:	00 00                	add    %al,(%rax)
     540:	00 00                	add    %al,(%rax)
     542:	00 00                	add    %al,(%rax)
     544:	00 15 f7 01 00 00    	add    %dl,0x1f7(%rip)        # 741 <_init-0x4008bf>
     54a:	01 60 1a             	add    %esp,0x1a(%rax)
     54d:	2c 03                	sub    $0x3,%al
     54f:	00 00                	add    %al,(%rax)
     551:	6f                   	outsl  %ds:(%rsi),(%dx)
     552:	00 00                	add    %al,(%rax)
     554:	00 67 00             	add    %ah,0x0(%rdi)
     557:	00 00                	add    %al,(%rax)
     559:	16                   	(bad)  
     55a:	63 00                	movslq (%rax),%eax
     55c:	01 62 0a             	add    %esp,0xa(%rdx)
     55f:	91                   	xchg   %eax,%ecx
     560:	00 00                	add    %al,(%rax)
     562:	00 dc                	add    %bl,%ah
     564:	00 00                	add    %al,(%rax)
     566:	00 ce                	add    %cl,%dh
     568:	00 00                	add    %al,(%rax)
     56a:	00 17                	add    %dl,(%rdi)
     56c:	1d 01 00 00 01       	sbb    $0x1000001,%eax
     571:	63 09                	movslq (%rcx),%ecx
     573:	65 00 00             	add    %al,%gs:(%rax)
     576:	00 01                	add    %al,(%rcx)
     578:	18 28                	sbb    %ch,(%rax)
     57a:	03 00                	add    (%rax),%eax
     57c:	00 01                	add    %al,(%rcx)
     57e:	64 0b 8b 00 00 00 7d 	or     %fs:0x7d000000(%rbx),%ecx
     585:	01 00                	add    %eax,(%rax)
     587:	00 71 01             	add    %dh,0x1(%rcx)
     58a:	00 00                	add    %al,(%rax)
     58c:	18 45 03             	sbb    %al,0x3(%rbp)
     58f:	00 00                	add    %al,(%rax)
     591:	01 65 0e             	add    %esp,0xe(%rbp)
     594:	40 00 00             	add    %al,(%rax)
     597:	00 24 02             	add    %ah,(%rdx,%rax,1)
     59a:	00 00                	add    %al,(%rax)
     59c:	1a 02                	sbb    (%rdx),%al
     59e:	00 00                	add    %al,(%rax)
     5a0:	18 c1                	sbb    %al,%cl
     5a2:	03 00                	add    (%rax),%eax
     5a4:	00 01                	add    %al,(%rcx)
     5a6:	66 0e                	data16 (bad) 
     5a8:	40 00 00             	add    %al,(%rax)
     5ab:	00 9e 02 00 00 94    	add    %bl,-0x6bfffffe(%rsi)
     5b1:	02 00                	add    (%rax),%al
     5b3:	00 19                	add    %bl,(%rcx)
     5b5:	4b 0b 00             	rex.WXB or (%r8),%rax
     5b8:	00 1b                	add    %bl,(%rbx)
     5ba:	16                   	(bad)  
     5bb:	40 00 00             	add    %al,(%rax)
     5be:	00 00                	add    %al,(%rax)
     5c0:	00 01                	add    %al,(%rcx)
     5c2:	1b 16                	sbb    (%rsi),%edx
     5c4:	40 00 00             	add    %al,(%rax)
     5c7:	00 00                	add    %al,(%rax)
     5c9:	00 16                	add    %dl,(%rsi)
     5cb:	00 00                	add    %al,(%rax)
     5cd:	00 00                	add    %al,(%rax)
     5cf:	00 00                	add    %al,(%rax)
     5d1:	00 01                	add    %al,(%rcx)
     5d3:	84 12                	test   %dl,(%rdx)
     5d5:	f7 05 00 00 1a 5d 0b 	testl  $0x1b00000b,0x5d1a0000(%rip)        # 5d1a05df <_end+0x5cd994a7>
     5dc:	00 00 1b 
     5df:	31 16                	xor    %edx,(%rsi)
     5e1:	40 00 00             	add    %al,(%rax)
     5e4:	00 00                	add    %al,(%rax)
     5e6:	00 6b 0b             	add    %ch,0xb(%rbx)
     5e9:	00 00                	add    %al,(%rax)
     5eb:	1c 01                	sbb    $0x1,%al
     5ed:	54                   	push   %rsp
     5ee:	01 30                	add    %esi,(%rax)
     5f0:	1c 01                	sbb    $0x1,%al
     5f2:	51                   	push   %rcx
     5f3:	01 3a                	add    %edi,(%rdx)
     5f5:	00 00                	add    %al,(%rax)
     5f7:	1d 14 15 40 00       	sbb    $0x401514,%eax
     5fc:	00 00                	add    %al,(%rax)
     5fe:	00 00                	add    %al,(%rax)
     600:	77 0b                	ja     60d <_init-0x4009f3>
     602:	00 00                	add    %al,(%rax)
     604:	0e                   	(bad)  
     605:	06                   	(bad)  
     606:	00 00                	add    %al,(%rax)
     608:	1c 01                	sbb    $0x1,%al
     60a:	55                   	push   %rbp
     60b:	01 3b                	add    %edi,(%rbx)
     60d:	00 1d 25 15 40 00    	add    %bl,0x401525(%rip)        # 401b38 <touch1+0x3>
     613:	00 00                	add    %al,(%rax)
     615:	00 00                	add    %al,(%rax)
     617:	77 0b                	ja     624 <_init-0x4009dc>
     619:	00 00                	add    %al,(%rax)
     61b:	25 06 00 00 1c       	and    $0x1c000006,%eax
     620:	01 55 01             	add    %edx,0x1(%rbp)
     623:	37                   	(bad)  
     624:	00 1d 36 15 40 00    	add    %bl,0x401536(%rip)        # 401b60 <touch1+0x2b>
     62a:	00 00                	add    %al,(%rax)
     62c:	00 00                	add    %al,(%rax)
     62e:	77 0b                	ja     63b <_init-0x4009c5>
     630:	00 00                	add    %al,(%rax)
     632:	3c 06                	cmp    $0x6,%al
     634:	00 00                	add    %al,(%rax)
     636:	1c 01                	sbb    $0x1,%al
     638:	55                   	push   %rbp
     639:	01 34 00             	add    %esi,(%rax,%rax,1)
     63c:	1d 76 15 40 00       	sbb    $0x401576,%eax
     641:	00 00                	add    %al,(%rax)
     643:	00 00                	add    %al,(%rax)
     645:	77 0b                	ja     652 <_init-0x4009ae>
     647:	00 00                	add    %al,(%rax)
     649:	53                   	push   %rbx
     64a:	06                   	(bad)  
     64b:	00 00                	add    %al,(%rax)
     64d:	1c 01                	sbb    $0x1,%al
     64f:	55                   	push   %rbp
     650:	01 3e                	add    %edi,(%rsi)
     652:	00 1d 80 15 40 00    	add    %bl,0x401580(%rip)        # 401bd8 <hexmatch+0x1b>
     658:	00 00                	add    %al,(%rax)
     65a:	00 00                	add    %al,(%rax)
     65c:	83 0b 00             	orl    $0x0,(%rbx)
     65f:	00 6a 06             	add    %ch,0x6(%rdx)
     662:	00 00                	add    %al,(%rax)
     664:	1c 01                	sbb    $0x1,%al
     666:	55                   	push   %rbp
     667:	01 35 00 1e 91 15    	add    %esi,0x15911e00(%rip)        # 1591246d <_end+0x1550b335>
     66d:	40 00 00             	add    %al,(%rax)
     670:	00 00                	add    %al,(%rax)
     672:	00 9d 07 00 00 1d    	add    %bl,0x1d000007(%rbp)
     678:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     679:	15 40 00 00 00       	adc    $0x40,%eax
     67e:	00 00                	add    %al,(%rax)
     680:	90                   	nop
     681:	0b 00                	or     (%rax),%eax
     683:	00 96 06 00 00 1c    	add    %dl,0x1c000006(%rsi)
     689:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
     68d:	7a 34                	jp     6c3 <_init-0x40093d>
     68f:	40 00 00             	add    %al,(%rax)
     692:	00 00                	add    %al,(%rax)
     694:	00 00                	add    %al,(%rax)
     696:	1d ca 15 40 00       	sbb    $0x4015ca,%eax
     69b:	00 00                	add    %al,(%rax)
     69d:	00 00                	add    %al,(%rax)
     69f:	9c                   	pushfq 
     6a0:	0b 00                	or     (%rax),%eax
     6a2:	00 b5 06 00 00 1c    	add    %dh,0x1c000006(%rbp)
     6a8:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
     6ac:	32 32                	xor    (%rdx),%dh
     6ae:	40 00 00             	add    %al,(%rax)
     6b1:	00 00                	add    %al,(%rax)
     6b3:	00 00                	add    %al,(%rax)
     6b5:	1d ea 15 40 00       	sbb    $0x4015ea,%eax
     6ba:	00 00                	add    %al,(%rax)
     6bc:	00 00                	add    %al,(%rax)
     6be:	a9 0b 00 00 d1       	test   $0xd100000b,%eax
     6c3:	06                   	(bad)  
     6c4:	00 00                	add    %al,(%rax)
     6c6:	1c 01                	sbb    $0x1,%al
     6c8:	54                   	push   %rsp
     6c9:	01 30                	add    %esi,(%rax)
     6cb:	1c 01                	sbb    $0x1,%al
     6cd:	51                   	push   %rcx
     6ce:	01 40 00             	add    %eax,0x0(%rax)
     6d1:	1d fa 15 40 00       	sbb    $0x4015fa,%eax
     6d6:	00 00                	add    %al,(%rax)
     6d8:	00 00                	add    %al,(%rax)
     6da:	b5 0b                	mov    $0xb,%ch
     6dc:	00 00                	add    %al,(%rax)
     6de:	f5                   	cmc    
     6df:	06                   	(bad)  
     6e0:	00 00                	add    %al,(%rax)
     6e2:	1c 01                	sbb    $0x1,%al
     6e4:	55                   	push   %rbp
     6e5:	02 76 00             	add    0x0(%rsi),%dh
     6e8:	1c 01                	sbb    $0x1,%al
     6ea:	54                   	push   %rsp
     6eb:	02 73 00             	add    0x0(%rbx),%dh
     6ee:	1c 01                	sbb    $0x1,%al
     6f0:	51                   	push   %rcx
     6f1:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
     6f5:	1d 53 16 40 00       	sbb    $0x401653,%eax
     6fa:	00 00                	add    %al,(%rax)
     6fc:	00 00                	add    %al,(%rax)
     6fe:	c1 0b 00             	rorl   $0x0,(%rbx)
     701:	00 14 07             	add    %dl,(%rdi,%rax,1)
     704:	00 00                	add    %al,(%rax)
     706:	1c 01                	sbb    $0x1,%al
     708:	55                   	push   %rbp
     709:	09 03                	or     %eax,(%rbx)
     70b:	4f 32 40 00          	rex.WRXB xor 0x0(%r8),%r8b
     70f:	00 00                	add    %al,(%rax)
     711:	00 00                	add    %al,(%rax)
     713:	00 1e                	add    %bl,(%rsi)
     715:	5b                   	pop    %rbx
     716:	16                   	(bad)  
     717:	40 00 00             	add    %al,(%rax)
     71a:	00 00                	add    %al,(%rax)
     71c:	00 9d 07 00 00 1d    	add    %bl,0x1d000007(%rbp)
     722:	68 16 40 00 00       	pushq  $0x4016
     727:	00 00                	add    %al,(%rax)
     729:	00 01                	add    %al,(%rcx)
     72b:	09 00                	or     %eax,(%rax)
     72d:	00 3e                	add    %bh,(%rsi)
     72f:	07                   	(bad)  
     730:	00 00                	add    %al,(%rax)
     732:	1c 01                	sbb    $0x1,%al
     734:	55                   	push   %rbp
     735:	02 7d 00             	add    0x0(%rbp),%bh
     738:	1c 01                	sbb    $0x1,%al
     73a:	54                   	push   %rsp
     73b:	01 30                	add    %esi,(%rax)
     73d:	00 1d 91 16 40 00    	add    %bl,0x401691(%rip)        # 401dd4 <notify_server+0x14>
     743:	00 00                	add    %al,(%rax)
     745:	00 00                	add    %al,(%rax)
     747:	c1 0b 00             	rorl   $0x0,(%rbx)
     74a:	00 5d 07             	add    %bl,0x7(%rbp)
     74d:	00 00                	add    %al,(%rax)
     74f:	1c 01                	sbb    $0x1,%al
     751:	55                   	push   %rbp
     752:	09 03                	or     %eax,(%rbx)
     754:	62 32                	(bad)  
     756:	40 00 00             	add    %al,(%rax)
     759:	00 00                	add    %al,(%rax)
     75b:	00 00                	add    %al,(%rax)
     75d:	1e                   	(bad)  
     75e:	9d                   	popfq  
     75f:	16                   	(bad)  
     760:	40 00 00             	add    %al,(%rax)
     763:	00 00                	add    %al,(%rax)
     765:	00 ce                	add    %cl,%dh
     767:	0b 00                	or     (%rax),%eax
     769:	00 1d bf 16 40 00    	add    %bl,0x4016bf(%rip)        # 401e2e <notify_server+0x6e>
     76f:	00 00                	add    %al,(%rax)
     771:	00 00                	add    %al,(%rax)
     773:	c1 0b 00             	rorl   $0x0,(%rbx)
     776:	00 8f 07 00 00 1c    	add    %cl,0x1c000007(%rdi)
     77c:	01 55 09             	add    %edx,0x9(%rbp)
     77f:	03 88 31 40 00 00    	add    0x4031(%rax),%ecx
     785:	00 00                	add    %al,(%rax)
     787:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     78a:	54                   	push   %rsp
     78b:	02 7e 00             	add    0x0(%rsi),%bh
     78e:	00 1e                	add    %bl,(%rsi)
     790:	c9                   	leaveq 
     791:	16                   	(bad)  
     792:	40 00 00             	add    %al,(%rax)
     795:	00 00                	add    %al,(%rax)
     797:	00 da                	add    %bl,%dl
     799:	0b 00                	or     (%rax),%eax
     79b:	00 00                	add    %al,(%rax)
     79d:	1f                   	(bad)  
     79e:	30 00                	xor    %al,(%rax)
     7a0:	00 00                	add    %al,(%rax)
     7a2:	01 49 0d             	add    %ecx,0xd(%rcx)
     7a5:	12 13                	adc    (%rbx),%dl
     7a7:	40 00 00             	add    %al,(%rax)
     7aa:	00 00                	add    %al,(%rax)
     7ac:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
     7b2:	00 00                	add    %al,(%rax)
     7b4:	00 01                	add    %al,(%rcx)
     7b6:	9c                   	pushfq 
     7b7:	01 09                	add    %ecx,(%rcx)
     7b9:	00 00                	add    %al,(%rax)
     7bb:	15 15 07 00 00       	adc    $0x715,%eax
     7c0:	01 49 19             	add    %ecx,0x19(%rcx)
     7c3:	8b 00                	mov    (%rax),%eax
     7c5:	00 00                	add    %al,(%rax)
     7c7:	18 03                	sbb    %al,(%rbx)
     7c9:	00 00                	add    %al,(%rax)
     7cb:	0e                   	(bad)  
     7cc:	03 00                	add    (%rax),%eax
     7ce:	00 1d 33 13 40 00    	add    %bl,0x401333(%rip)        # 401b07 <scramble+0x43c>
     7d4:	00 00                	add    %al,(%rax)
     7d6:	00 00                	add    %al,(%rax)
     7d8:	c1 0b 00             	rorl   $0x0,(%rbx)
     7db:	00 f5                	add    %dh,%ch
     7dd:	07                   	(bad)  
     7de:	00 00                	add    %al,(%rax)
     7e0:	1c 01                	sbb    $0x1,%al
     7e2:	55                   	push   %rbp
     7e3:	09 03                	or     %eax,(%rbx)
     7e5:	08 30                	or     %dh,(%rax)
     7e7:	40 00 00             	add    %al,(%rax)
     7ea:	00 00                	add    %al,(%rax)
     7ec:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     7ef:	54                   	push   %rsp
     7f0:	03 f3                	add    %ebx,%esi
     7f2:	01 55 00             	add    %edx,0x0(%rbp)
     7f5:	1d 3f 13 40 00       	sbb    $0x40133f,%eax
     7fa:	00 00                	add    %al,(%rax)
     7fc:	00 00                	add    %al,(%rax)
     7fe:	e6 0b                	out    %al,$0xb
     800:	00 00                	add    %al,(%rax)
     802:	14 08                	adc    $0x8,%al
     804:	00 00                	add    %al,(%rax)
     806:	1c 01                	sbb    $0x1,%al
     808:	55                   	push   %rbp
     809:	09 03                	or     %eax,(%rbx)
     80b:	40 30 40 00          	xor    %al,0x0(%rax)
     80f:	00 00                	add    %al,(%rax)
     811:	00 00                	add    %al,(%rax)
     813:	00 1d 4b 13 40 00    	add    %bl,0x40134b(%rip)        # 401b64 <touch2+0x1>
     819:	00 00                	add    %al,(%rax)
     81b:	00 00                	add    %al,(%rax)
     81d:	e6 0b                	out    %al,$0xb
     81f:	00 00                	add    %al,(%rax)
     821:	33 08                	xor    (%rax),%ecx
     823:	00 00                	add    %al,(%rax)
     825:	1c 01                	sbb    $0x1,%al
     827:	55                   	push   %rbp
     828:	09 03                	or     %eax,(%rbx)
     82a:	b8 31 40 00 00       	mov    $0x4031,%eax
     82f:	00 00                	add    %al,(%rax)
     831:	00 00                	add    %al,(%rax)
     833:	1d 57 13 40 00       	sbb    $0x401357,%eax
     838:	00 00                	add    %al,(%rax)
     83a:	00 00                	add    %al,(%rax)
     83c:	e6 0b                	out    %al,$0xb
     83e:	00 00                	add    %al,(%rax)
     840:	52                   	push   %rdx
     841:	08 00                	or     %al,(%rax)
     843:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     846:	55                   	push   %rbp
     847:	09 03                	or     %eax,(%rbx)
     849:	68 30 40 00 00       	pushq  $0x4030
     84e:	00 00                	add    %al,(%rax)
     850:	00 00                	add    %al,(%rax)
     852:	1d 63 13 40 00       	sbb    $0x401363,%eax
     857:	00 00                	add    %al,(%rax)
     859:	00 00                	add    %al,(%rax)
     85b:	e6 0b                	out    %al,$0xb
     85d:	00 00                	add    %al,(%rax)
     85f:	71 08                	jno    869 <_init-0x400797>
     861:	00 00                	add    %al,(%rax)
     863:	1c 01                	sbb    $0x1,%al
     865:	55                   	push   %rbp
     866:	09 03                	or     %eax,(%rbx)
     868:	d2 31                	shlb   %cl,(%rcx)
     86a:	40 00 00             	add    %al,(%rax)
     86d:	00 00                	add    %al,(%rax)
     86f:	00 00                	add    %al,(%rax)
     871:	1d 6d 13 40 00       	sbb    $0x40136d,%eax
     876:	00 00                	add    %al,(%rax)
     878:	00 00                	add    %al,(%rax)
     87a:	f1                   	icebp  
     87b:	0b 00                	or     (%rax),%eax
     87d:	00 88 08 00 00 1c    	add    %cl,0x1c000008(%rax)
     883:	01 55 01             	add    %edx,0x1(%rbp)
     886:	30 00                	xor    %al,(%rax)
     888:	1d 7e 13 40 00       	sbb    $0x40137e,%eax
     88d:	00 00                	add    %al,(%rax)
     88f:	00 00                	add    %al,(%rax)
     891:	c1 0b 00             	rorl   $0x0,(%rbx)
     894:	00 a7 08 00 00 1c    	add    %ah,0x1c000008(%rdi)
     89a:	01 55 09             	add    %edx,0x9(%rbp)
     89d:	03 ee                	add    %esi,%ebp
     89f:	31 40 00             	xor    %eax,0x0(%rax)
     8a2:	00 00                	add    %al,(%rax)
     8a4:	00 00                	add    %al,(%rax)
     8a6:	00 1d 8a 13 40 00    	add    %bl,0x40138a(%rip)        # 401c36 <hexmatch+0x79>
     8ac:	00 00                	add    %al,(%rax)
     8ae:	00 00                	add    %al,(%rax)
     8b0:	e6 0b                	out    %al,$0xb
     8b2:	00 00                	add    %al,(%rax)
     8b4:	c6                   	(bad)  
     8b5:	08 00                	or     %al,(%rax)
     8b7:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     8ba:	55                   	push   %rbp
     8bb:	09 03                	or     %eax,(%rbx)
     8bd:	90                   	nop
     8be:	30 40 00             	xor    %al,0x0(%rax)
     8c1:	00 00                	add    %al,(%rax)
     8c3:	00 00                	add    %al,(%rax)
     8c5:	00 1d 96 13 40 00    	add    %bl,0x401396(%rip)        # 401c61 <touch3+0x23>
     8cb:	00 00                	add    %al,(%rax)
     8cd:	00 00                	add    %al,(%rax)
     8cf:	e6 0b                	out    %al,$0xb
     8d1:	00 00                	add    %al,(%rax)
     8d3:	e5 08                	in     $0x8,%eax
     8d5:	00 00                	add    %al,(%rax)
     8d7:	1c 01                	sbb    $0x1,%al
     8d9:	55                   	push   %rbp
     8da:	09 03                	or     %eax,(%rbx)
     8dc:	b8 30 40 00 00       	mov    $0x4030,%eax
     8e1:	00 00                	add    %al,(%rax)
     8e3:	00 00                	add    %al,(%rax)
     8e5:	1b a2 13 40 00 00    	sbb    0x4013(%rdx),%esp
     8eb:	00 00                	add    %al,(%rax)
     8ed:	00 e6                	add    %ah,%dh
     8ef:	0b 00                	or     (%rax),%eax
     8f1:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     8f4:	55                   	push   %rbp
     8f5:	09 03                	or     %eax,(%rbx)
     8f7:	0c 32                	or     $0x32,%al
     8f9:	40 00 00             	add    %al,(%rax)
     8fc:	00 00                	add    %al,(%rax)
     8fe:	00 00                	add    %al,(%rax)
     900:	00 1f                	add    %bl,(%rdi)
     902:	24 01                	and    $0x1,%al
     904:	00 00                	add    %al,(%rax)
     906:	01 1a                	add    %ebx,(%rdx)
     908:	0d a4 13 40 00       	or     $0x4013a4,%eax
     90d:	00 00                	add    %al,(%rax)
     90f:	00 00                	add    %al,(%rax)
     911:	52                   	push   %rdx
     912:	01 00                	add    %eax,(%rax)
     914:	00 00                	add    %al,(%rax)
     916:	00 00                	add    %al,(%rax)
     918:	00 01                	add    %al,(%rcx)
     91a:	9c                   	pushfq 
     91b:	3b 0b                	cmp    (%rbx),%ecx
     91d:	00 00                	add    %al,(%rax)
     91f:	15 c1 03 00 00       	adc    $0x3c1,%eax
     924:	01 1a                	add    %ebx,(%rdx)
     926:	23 65 00             	and    0x0(%rbp),%esp
     929:	00 00                	add    %al,(%rax)
     92b:	93                   	xchg   %eax,%ebx
     92c:	03 00                	add    (%rax),%eax
     92e:	00 8d 03 00 00 15    	add    %cl,0x15000003(%rbp)
     934:	ca 01 00             	lret   $0x1
     937:	00 01                	add    %al,(%rcx)
     939:	1a 32                	sbb    (%rdx),%dh
     93b:	65 00 00             	add    %al,%gs:(%rax)
     93e:	00 f1                	add    %dh,%cl
     940:	03 00                	add    (%rax),%eax
     942:	00 e7                	add    %ah,%bh
     944:	03 00                	add    (%rax),%eax
     946:	00 16                	add    %dl,(%rsi)
     948:	72 31                	jb     97b <_init-0x400685>
     94a:	00 01                	add    %al,(%rcx)
     94c:	20 0e                	and    %cl,(%rsi)
     94e:	40 00 00             	add    %al,(%rax)
     951:	00 70 04             	add    %dh,0x4(%rax)
     954:	00 00                	add    %al,(%rax)
     956:	66 04 00             	data16 add $0x0,%al
     959:	00 16                	add    %dl,(%rsi)
     95b:	72 32                	jb     98f <_init-0x400671>
     95d:	00 01                	add    %al,(%rcx)
     95f:	21 0e                	and    %ecx,(%rsi)
     961:	40 00 00             	add    %al,(%rax)
     964:	00 e7                	add    %ah,%bh
     966:	04 00                	add    $0x0,%al
     968:	00 df                	add    %bl,%bh
     96a:	04 00                	add    $0x0,%al
     96c:	00 20                	add    %ah,(%rax)
     96e:	48 14 40             	rex.W adc $0x40,%al
     971:	00 00                	add    %al,(%rax)
     973:	00 00                	add    %al,(%rax)
     975:	00 ae 00 00 00 00    	add    %ch,0x0(%rsi)
     97b:	00 00                	add    %al,(%rax)
     97d:	00 c8                	add    %cl,%al
     97f:	0a 00                	or     (%rax),%al
     981:	00 16                	add    %dl,(%rsi)
     983:	69 00 01 29 06 65    	imul   $0x65062901,(%rax),%eax
     989:	00 00                	add    %al,(%rax)
     98b:	00 49 05             	add    %cl,0x5(%rcx)
     98e:	00 00                	add    %al,(%rax)
     990:	45 05 00 00 21 85    	rex.RB add $0x85210000,%eax
     996:	02 00                	add    (%rax),%al
     998:	00 01                	add    %al,(%rcx)
     99a:	2a 07                	sub    (%rdi),%al
     99c:	3b 0b                	cmp    (%rbx),%ecx
     99e:	00 00                	add    %al,(%rax)
     9a0:	04 91                	add    $0x91,%al
     9a2:	e0 bd                	loopne 961 <_init-0x40069f>
     9a4:	7f 21                	jg     9c7 <_init-0x400639>
     9a6:	2f                   	(bad)  
     9a7:	02 00                	add    (%rax),%al
     9a9:	00 01                	add    %al,(%rcx)
     9ab:	2b 07                	sub    (%rdi),%eax
     9ad:	80 04 00 00          	addb   $0x0,(%rax,%rax,1)
     9b1:	04 91                	add    $0x91,%al
     9b3:	e0 bf                	loopne 974 <_init-0x40068c>
     9b5:	7f 18                	jg     9cf <_init-0x400631>
     9b7:	8a 03                	mov    (%rbx),%al
     9b9:	00 00                	add    %al,(%rax)
     9bb:	01 2c 06             	add    %ebp,(%rsi,%rax,1)
     9be:	65 00 00             	add    %al,%gs:(%rax)
     9c1:	00 83 05 00 00 7f    	add    %al,0x7f000005(%rbx)
     9c7:	05 00 00 1d 55       	add    $0x551d0000,%eax
     9cc:	14 40                	adc    $0x40,%al
     9ce:	00 00                	add    %al,(%rax)
     9d0:	00 00                	add    %al,(%rax)
     9d2:	00 fe                	add    %bh,%dh
     9d4:	0b 00                	or     (%rax),%eax
     9d6:	00 e9                	add    %ch,%cl
     9d8:	09 00                	or     %eax,(%rax)
     9da:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     9dd:	55                   	push   %rbp
     9de:	02 77 00             	add    0x0(%rdi),%dh
     9e1:	1c 01                	sbb    $0x1,%al
     9e3:	54                   	push   %rsp
     9e4:	03 0a                	add    (%rdx),%ecx
     9e6:	00 01                	add    %al,(%rcx)
     9e8:	00 1d 78 14 40 00    	add    %bl,0x401478(%rip)        # 401e66 <notify_server+0xa6>
     9ee:	00 00                	add    %al,(%rax)
     9f0:	00 00                	add    %al,(%rax)
     9f2:	0b 0c 00             	or     (%rax,%rax,1),%ecx
     9f5:	00 01                	add    %al,(%rcx)
     9f7:	0a 00                	or     (%rax),%al
     9f9:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     9fc:	54                   	push   %rsp
     9fd:	02 77 00             	add    0x0(%rdi),%dh
     a00:	00 1d 8d 14 40 00    	add    %bl,0x40148d(%rip)        # 401e93 <validate+0x2b>
     a06:	00 00                	add    %al,(%rax)
     a08:	00 00                	add    %al,(%rax)
     a0a:	e6 0b                	out    %al,$0xb
     a0c:	00 00                	add    %al,(%rax)
     a0e:	20 0a                	and    %cl,(%rdx)
     a10:	00 00                	add    %al,(%rax)
     a12:	1c 01                	sbb    $0x1,%al
     a14:	55                   	push   %rbp
     a15:	09 03                	or     %eax,(%rbx)
     a17:	e8 30 40 00 00       	callq  4a4c <_init-0x3fc5b4>
     a1c:	00 00                	add    %al,(%rax)
     a1e:	00 00                	add    %al,(%rax)
     a20:	1d 97 14 40 00       	sbb    $0x401497,%eax
     a25:	00 00                	add    %al,(%rax)
     a27:	00 00                	add    %al,(%rax)
     a29:	f1                   	icebp  
     a2a:	0b 00                	or     (%rax),%eax
     a2c:	00 37                	add    %dh,(%rdi)
     a2e:	0a 00                	or     (%rax),%al
     a30:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     a33:	55                   	push   %rbp
     a34:	01 38                	add    %edi,(%rax)
     a36:	00 1d ad 14 40 00    	add    %bl,0x4014ad(%rip)        # 401ee9 <validate+0x81>
     a3c:	00 00                	add    %al,(%rax)
     a3e:	00 00                	add    %al,(%rax)
     a40:	17                   	(bad)  
     a41:	0c 00                	or     $0x0,%al
     a43:	00 51 0a             	add    %dl,0xa(%rcx)
     a46:	00 00                	add    %al,(%rax)
     a48:	1c 01                	sbb    $0x1,%al
     a4a:	55                   	push   %rbp
     a4b:	04 91                	add    $0x91,%al
     a4d:	e0 bf                	loopne a0e <_init-0x4005f2>
     a4f:	7f 00                	jg     a51 <_init-0x4005af>
     a51:	1d ce 14 40 00       	sbb    $0x4014ce,%eax
     a56:	00 00                	add    %al,(%rax)
     a58:	00 00                	add    %al,(%rax)
     a5a:	c1 0b 00             	rorl   $0x0,(%rbx)
     a5d:	00 78 0a             	add    %bh,0xa(%rax)
     a60:	00 00                	add    %al,(%rax)
     a62:	1c 01                	sbb    $0x1,%al
     a64:	55                   	push   %rbp
     a65:	09 03                	or     %eax,(%rbx)
     a67:	60                   	(bad)  
     a68:	31 40 00             	xor    %eax,0x0(%rax)
     a6b:	00 00                	add    %al,(%rax)
     a6d:	00 00                	add    %al,(%rax)
     a6f:	1c 01                	sbb    $0x1,%al
     a71:	54                   	push   %rsp
     a72:	04 91                	add    $0x91,%al
     a74:	e0 bf                	loopne a35 <_init-0x4005cb>
     a76:	7f 00                	jg     a78 <_init-0x400588>
     a78:	1d d8 14 40 00       	sbb    $0x4014d8,%eax
     a7d:	00 00                	add    %al,(%rax)
     a7f:	00 00                	add    %al,(%rax)
     a81:	f1                   	icebp  
     a82:	0b 00                	or     (%rax),%eax
     a84:	00 8f 0a 00 00 1c    	add    %cl,0x1c00000a(%rdi)
     a8a:	01 55 01             	add    %edx,0x1(%rbp)
     a8d:	38 00                	cmp    %al,(%rax)
     a8f:	1d ec 14 40 00       	sbb    $0x4014ec,%eax
     a94:	00 00                	add    %al,(%rax)
     a96:	00 00                	add    %al,(%rax)
     a98:	c1 0b 00             	rorl   $0x0,(%rbx)
     a9b:	00 b4 0a 00 00 1c 01 	add    %dh,0x11c0000(%rdx,%rcx,1)
     aa2:	55                   	push   %rbp
     aa3:	09 03                	or     %eax,(%rbx)
     aa5:	20 31                	and    %dh,(%rcx)
     aa7:	40 00 00             	add    %al,(%rax)
     aaa:	00 00                	add    %al,(%rax)
     aac:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     aaf:	54                   	push   %rsp
     ab0:	02 77 00             	add    0x0(%rdi),%dh
     ab3:	00 1b                	add    %bl,(%rbx)
     ab5:	f6 14 40             	notb   (%rax,%rax,2)
     ab8:	00 00                	add    %al,(%rax)
     aba:	00 00                	add    %al,(%rax)
     abc:	00 f1                	add    %dh,%cl
     abe:	0b 00                	or     (%rax),%eax
     ac0:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     ac3:	55                   	push   %rbp
     ac4:	01 38                	add    %edi,(%rax)
     ac6:	00 00                	add    %al,(%rax)
     ac8:	1e                   	(bad)  
     ac9:	c0 13 40             	rclb   $0x40,(%rbx)
     acc:	00 00                	add    %al,(%rax)
     ace:	00 00                	add    %al,(%rax)
     ad0:	00 23                	add    %ah,(%rbx)
     ad2:	0c 00                	or     $0x0,%al
     ad4:	00 1e                	add    %bl,(%rsi)
     ad6:	cd 13                	int    $0x13
     ad8:	40 00 00             	add    %al,(%rax)
     adb:	00 00                	add    %al,(%rax)
     add:	00 23                	add    %ah,(%rbx)
     adf:	0c 00                	or     $0x0,%al
     ae1:	00 1e                	add    %bl,(%rsi)
     ae3:	e1 13                	loope  af8 <_init-0x400508>
     ae5:	40 00 00             	add    %al,(%rax)
     ae8:	00 00                	add    %al,(%rax)
     aea:	00 2f                	add    %ch,(%rdi)
     aec:	0c 00                	or     $0x0,%al
     aee:	00 1e                	add    %bl,(%rsi)
     af0:	e6 13                	out    %al,$0x13
     af2:	40 00 00             	add    %al,(%rax)
     af5:	00 00                	add    %al,(%rax)
     af7:	00 3c 0c             	add    %bh,(%rsp,%rcx,1)
     afa:	00 00                	add    %al,(%rax)
     afc:	1e                   	(bad)  
     afd:	ed                   	in     (%dx),%eax
     afe:	13 40 00             	adc    0x0(%rax),%eax
     b01:	00 00                	add    %al,(%rax)
     b03:	00 00                	add    %al,(%rax)
     b05:	49 0c 00             	rex.WB or $0x0,%al
     b08:	00 1d 3a 14 40 00    	add    %bl,0x40143a(%rip)        # 401f48 <fail+0x22>
     b0e:	00 00                	add    %al,(%rax)
     b10:	00 00                	add    %al,(%rax)
     b12:	55                   	push   %rbp
     b13:	0c 00                	or     $0x0,%al
     b15:	00 20                	add    %ah,(%rax)
     b17:	0b 00                	or     (%rax),%eax
     b19:	00 1c 01             	add    %bl,(%rcx,%rax,1)
     b1c:	55                   	push   %rbp
     b1d:	01 30                	add    %esi,(%rax)
     b1f:	00 1e                	add    %bl,(%rsi)
     b21:	41 14 40             	rex.B adc $0x40,%al
     b24:	00 00                	add    %al,(%rax)
     b26:	00 00                	add    %al,(%rax)
     b28:	00 2f                	add    %ch,(%rdi)
     b2a:	0c 00                	or     $0x0,%al
     b2c:	00 1e                	add    %bl,(%rsi)
     b2e:	46 14 40             	rex.RX adc $0x40,%al
     b31:	00 00                	add    %al,(%rax)
     b33:	00 00                	add    %al,(%rax)
     b35:	00 3c 0c             	add    %bh,(%rsp,%rcx,1)
     b38:	00 00                	add    %al,(%rax)
     b3a:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
     b3d:	00 00                	add    %al,(%rax)
     b3f:	00 4b 0b             	add    %cl,0xb(%rbx)
     b42:	00 00                	add    %al,(%rax)
     b44:	0d 39 00 00 00       	or     $0x39,%eax
     b49:	ff 00                	incl   (%rax)
     b4b:	22 f2                	and    %dl,%dh
     b4d:	01 00                	add    %eax,(%rax)
     b4f:	00 02                	add    %al,(%rdx)
     b51:	69 01 01 65 00 00    	imul   $0x6501,(%rcx),%eax
     b57:	00 03                	add    %al,(%rbx)
     b59:	6b 0b 00             	imul   $0x0,(%rbx),%ecx
     b5c:	00 23                	add    %ah,(%rbx)
     b5e:	0c 04                	or     $0x4,%al
     b60:	00 00                	add    %al,(%rax)
     b62:	02 69 01             	add    0x1(%rcx),%ch
     b65:	01 cb                	add    %ecx,%ebx
     b67:	02 00                	add    (%rax),%al
     b69:	00 00                	add    %al,(%rax)
     b6b:	24 d7                	and    $0xd7,%al
     b6d:	01 00                	add    %eax,(%rax)
     b6f:	00 d7                	add    %dl,%bh
     b71:	01 00                	add    %eax,(%rax)
     b73:	00 02                	add    %al,(%rdx)
     b75:	b0 11                	mov    $0x11,%al
     b77:	24 fa                	and    $0xfa,%al
     b79:	02 00                	add    (%rax),%al
     b7b:	00 fa                	add    %bh,%dl
     b7d:	02 00                	add    (%rax),%al
     b7f:	00 09                	add    %cl,(%rcx)
     b81:	58                   	pop    %rax
     b82:	17                   	(bad)  
     b83:	25 0f 03 00 00       	and    $0x30f,%eax
     b88:	0f 03 00             	lsl    (%rax),%eax
     b8b:	00 0a                	add    %cl,(%rdx)
     b8d:	b0 01                	mov    $0x1,%al
     b8f:	15 24 de 03 00       	adc    $0x3de24,%eax
     b94:	00 de                	add    %bl,%dh
     b96:	03 00                	add    (%rax),%eax
     b98:	00 07                	add    %al,(%rdi)
     b9a:	f6 0e 25             	testb  $0x25,(%rsi)
     b9d:	ea                   	(bad)  
     b9e:	01 00                	add    %eax,(%rax)
     ba0:	00 ea                	add    %ch,%dl
     ba2:	01 00                	add    %eax,(%rax)
     ba4:	00 07                	add    %al,(%rdi)
     ba6:	46 01 0c 24          	add    %r9d,(%rsp,%r12,1)
     baa:	19 02                	sbb    %eax,(%rdx)
     bac:	00 00                	add    %al,(%rax)
     bae:	19 02                	sbb    %eax,(%rdx)
     bb0:	00 00                	add    %al,(%rax)
     bb2:	02 b4 1a 24 cd 02 00 	add    0x2cd24(%rdx,%rbx,1),%dh
     bb9:	00 cd                	add    %cl,%ch
     bbb:	02 00                	add    (%rax),%al
     bbd:	00 0b                	add    %cl,(%rbx)
     bbf:	5b                   	pop    %rbx
     bc0:	0c 25                	or     $0x25,%al
     bc2:	eb 01                	jmp    bc5 <_init-0x40043b>
     bc4:	00 00                	add    %al,(%rax)
     bc6:	eb 01                	jmp    bc9 <_init-0x400437>
     bc8:	00 00                	add    %al,(%rax)
     bca:	07                   	(bad)  
     bcb:	4c 01 0c 24          	add    %r9,(%rsp)
     bcf:	e0 02                	loopne bd3 <_init-0x40042d>
     bd1:	00 00                	add    %al,(%rax)
     bd3:	e0 02                	loopne bd7 <_init-0x400429>
     bd5:	00 00                	add    %al,(%rax)
     bd7:	0d 5d 06 24 36       	or     $0x3624065d,%eax
     bdc:	01 00                	add    %eax,(%rax)
     bde:	00 36                	add    %dh,(%rsi)
     be0:	01 00                	add    %eax,(%rax)
     be2:	00 0d 56 06 26 1d    	add    %cl,0x1d260656(%rip)        # 1d26123e <_end+0x1ce5a106>
     be8:	00 00                	add    %al,(%rax)
     bea:	00 13                	add    %dl,(%rbx)
     bec:	00 00                	add    %al,(%rax)
     bee:	00 12                	add    %dl,(%rdx)
     bf0:	00 25 fc 01 00 00    	add    %ah,0x1fc(%rip)        # df2 <_init-0x40020e>
     bf6:	fc                   	cld    
     bf7:	01 00                	add    %eax,(%rax)
     bf9:	00 02                	add    %al,(%rdx)
     bfb:	66 02 0d 25 82 02 00 	data16 add 0x28225(%rip),%cl        # 28e27 <_init-0x3d81d9>
     c02:	00 82 02 00 00 0a    	add    %al,0xa000002(%rdx)
     c08:	6d                   	insl   (%dx),%es:(%rdi)
     c09:	03 0c 24             	add    (%rsp),%ecx
     c0c:	f2 03 00             	repnz add (%rax),%eax
     c0f:	00 f2                	add    %dh,%dl
     c11:	03 00                	add    (%rax),%eax
     c13:	00 0f                	add    %cl,(%rdi)
     c15:	74 0c                	je     c23 <_init-0x4003dd>
     c17:	24 ee                	and    $0xee,%al
     c19:	02 00                	add    (%rax),%al
     c1b:	00 ee                	add    %ch,%dh
     c1d:	02 00                	add    (%rax),%al
     c1f:	00 10                	add    %dl,(%rax)
     c21:	26 05 24 58 03 00    	es add $0x35824,%eax
     c27:	00 58 03             	add    %bl,0x3(%rax)
     c2a:	00 00                	add    %al,(%rax)
     c2c:	11 0a                	adc    %ecx,(%rdx)
     c2e:	0a 25 91 00 00 00    	or     0x91(%rip),%ah        # cc5 <_init-0x40033b>
     c34:	91                   	xchg   %eax,%ecx
     c35:	00 00                	add    %al,(%rax)
     c37:	00 02                	add    %al,(%rdx)
     c39:	94                   	xchg   %eax,%esp
     c3a:	01 0d 25 d0 01 00    	add    %ecx,0x1d025(%rip)        # 1dc65 <_init-0x3e339b>
     c40:	00 d0                	add    %dl,%al
     c42:	01 00                	add    %eax,(%rax)
     c44:	00 02                	add    %al,(%rdx)
     c46:	91                   	xchg   %eax,%ecx
     c47:	01 11                	add    %edx,(%rcx)
     c49:	24 6c                	and    $0x6c,%al
     c4b:	03 00                	add    (%rax),%eax
     c4d:	00 6c 03 00          	add    %ch,0x0(%rbx,%rax,1)
     c51:	00 0d 62 0a 24 cb    	add    %cl,-0x34dbf59e(%rip)        # ffffffffcb2416b9 <_end+0xffffffffcae3a581>
     c57:	03 00                	add    (%rax),%eax
     c59:	00 cb                	add    %cl,%bl
     c5b:	03 00                	add    (%rax),%eax
     c5d:	00 0c 4b             	add    %cl,(%rbx,%rcx,2)
     c60:	0f 00                	(bad)  
     c62:	b8 00 00 00 04       	mov    $0x4000000,%eax
     c67:	00 40 02             	add    %al,0x2(%rax)
     c6a:	00 00                	add    %al,(%rax)
     c6c:	08 01                	or     %al,(%rcx)
     c6e:	99                   	cltd   
     c6f:	00 00                	add    %al,(%rax)
     c71:	00 0c 32             	add    %cl,(%rdx,%rsi,1)
     c74:	04 00                	add    $0x0,%al
     c76:	00 48 01             	add    %cl,0x1(%rax)
     c79:	00 00                	add    %al,(%rax)
     c7b:	cb                   	lret   
     c7c:	16                   	(bad)  
     c7d:	40 00 00             	add    %al,(%rax)
     c80:	00 00                	add    %al,(%rax)
     c82:	00 54 04 00          	add    %dl,0x0(%rsp,%rax,1)
     c86:	00 00                	add    %al,(%rax)
     c88:	00 00                	add    %al,(%rax)
     c8a:	00 8e 03 00 00 02    	add    %cl,0x2000003(%rsi)
     c90:	6c                   	insb   (%dx),%es:(%rdi)
     c91:	03 00                	add    (%rax),%eax
     c93:	00 01                	add    %al,(%rcx)
     c95:	01 0a                	add    %ecx,(%rdx)
     c97:	93                   	xchg   %eax,%ebx
     c98:	00 00                	add    %al,(%rax)
     c9a:	00 cb                	add    %cl,%bl
     c9c:	16                   	(bad)  
     c9d:	40 00 00             	add    %al,(%rax)
     ca0:	00 00                	add    %al,(%rax)
     ca2:	00 54 04 00          	add    %dl,0x0(%rsp,%rax,1)
     ca6:	00 00                	add    %al,(%rax)
     ca8:	00 00                	add    %al,(%rax)
     caa:	00 01                	add    %al,(%rcx)
     cac:	9c                   	pushfq 
     cad:	93                   	xchg   %eax,%ebx
     cae:	00 00                	add    %al,(%rax)
     cb0:	00 03                	add    %al,(%rbx)
     cb2:	76 61                	jbe    d15 <_init-0x4002eb>
     cb4:	6c                   	insb   (%dx),%es:(%rdi)
     cb5:	00 01                	add    %al,(%rcx)
     cb7:	01 1c 93             	add    %ebx,(%rbx,%rdx,4)
     cba:	00 00                	add    %al,(%rax)
     cbc:	00 01                	add    %al,(%rcx)
     cbe:	55                   	push   %rbp
     cbf:	04 61                	add    $0x61,%al
     cc1:	00 01                	add    %al,(%rcx)
     cc3:	03 17                	add    (%rdi),%edx
     cc5:	af                   	scas   %es:(%rdi),%eax
     cc6:	00 00                	add    %al,(%rax)
     cc8:	00 02                	add    %al,(%rdx)
     cca:	91                   	xchg   %eax,%ecx
     ccb:	48 05 2d 04 00 00    	add    $0x42d,%rax
     cd1:	01 04 0e             	add    %eax,(%rsi,%rcx,1)
     cd4:	93                   	xchg   %eax,%ebx
     cd5:	00 00                	add    %al,(%rax)
     cd7:	00 be 05 00 00 ba    	add    %bh,-0x45fffffb(%rsi)
     cdd:	05 00 00 06 69       	add    $0x69060000,%eax
     ce2:	64 78 00             	fs js  ce5 <_init-0x40031b>
     ce5:	01 05 0e 93 00 00    	add    %eax,0x930e(%rip)        # 9ff9 <_init-0x3f7007>
     ceb:	00 fd                	add    %bh,%ch
     ced:	05 00 00 f5 05       	add    $0x5f50000,%eax
     cf2:	00 00                	add    %al,(%rax)
     cf4:	00 07                	add    %al,(%rdi)
     cf6:	04 07                	add    $0x7,%al
     cf8:	60                   	(bad)  
     cf9:	02 00                	add    (%rax),%al
     cfb:	00 08                	add    %cl,(%rax)
     cfd:	93                   	xchg   %eax,%ebx
     cfe:	00 00                	add    %al,(%rax)
     d00:	00 09                	add    %cl,(%rcx)
     d02:	9a                   	(bad)  
     d03:	00 00                	add    %al,(%rax)
     d05:	00 af 00 00 00 0a    	add    %ch,0xa000000(%rdi)
     d0b:	b4 00                	mov    $0x0,%ah
     d0d:	00 00                	add    %al,(%rax)
     d0f:	09 00                	or     %eax,(%rax)
     d11:	08 9f 00 00 00 07    	or     %bl,0x7000000(%rdi)
     d17:	08 07                	or     %al,(%rdi)
     d19:	5b                   	pop    %rbx
     d1a:	02 00                	add    (%rax),%al
     d1c:	00 00                	add    %al,(%rax)
     d1e:	85 04 00             	test   %eax,(%rax,%rax,1)
     d21:	00 04 00             	add    %al,(%rax,%rax,1)
     d24:	e0 02                	loopne d28 <_init-0x4002d8>
     d26:	00 00                	add    %al,(%rax)
     d28:	08 01                	or     %al,(%rcx)
     d2a:	58                   	pop    %rax
     d2b:	04 00                	add    $0x0,%al
     d2d:	00 0c 4d 04 00 00 48 	add    %cl,0x48000004(,%rcx,2)
     d34:	01 00                	add    %eax,(%rax)
     d36:	00 1f                	add    %bl,(%rdi)
     d38:	1b 40 00             	sbb    0x0(%rax),%eax
     d3b:	00 00                	add    %al,(%rax)
     d3d:	00 00                	add    %al,(%rax)
     d3f:	16                   	(bad)  
     d40:	00 00                	add    %al,(%rax)
     d42:	00 00                	add    %al,(%rax)
     d44:	00 00                	add    %al,(%rax)
     d46:	00 a5 06 00 00 02    	add    %ah,0x2000006(%rbp)
     d4c:	7e 06                	jle    d54 <_init-0x4002ac>
     d4e:	00 00                	add    %al,(%rax)
     d50:	02 d8                	add    %al,%bl
     d52:	17                   	(bad)  
     d53:	39 00                	cmp    %eax,(%rax)
     d55:	00 00                	add    %al,(%rax)
     d57:	03 08                	add    (%rax),%ecx
     d59:	07                   	(bad)  
     d5a:	5b                   	pop    %rbx
     d5b:	02 00                	add    (%rax),%al
     d5d:	00 03                	add    %al,(%rbx)
     d5f:	04 07                	add    $0x7,%al
     d61:	60                   	(bad)  
     d62:	02 00                	add    (%rax),%al
     d64:	00 04 08             	add    %al,(%rax,%rcx,1)
     d67:	03 01                	add    (%rcx),%eax
     d69:	08 21                	or     %ah,(%rcx)
     d6b:	02 00                	add    (%rax),%al
     d6d:	00 03                	add    %al,(%rbx)
     d6f:	02 07                	add    (%rdi),%al
     d71:	32 03                	xor    (%rbx),%al
     d73:	00 00                	add    %al,(%rax)
     d75:	03 01                	add    (%rcx),%eax
     d77:	06                   	(bad)  
     d78:	23 02                	and    (%rdx),%eax
     d7a:	00 00                	add    %al,(%rax)
     d7c:	03 02                	add    (%rdx),%eax
     d7e:	05 73 00 00 00       	add    $0x73,%eax
     d83:	05 04 05 69 6e       	add    $0x6e690504,%eax
     d88:	74 00                	je     d8a <_init-0x400276>
     d8a:	03 08                	add    (%rax),%ecx
     d8c:	05 a5 01 00 00       	add    $0x1a5,%eax
     d91:	02 95 03 00 00 03    	add    0x3000003(%rbp),%dl
     d97:	96                   	xchg   %eax,%esi
     d98:	19 6c 00 00          	sbb    %ebp,0x0(%rax,%rax,1)
     d9c:	00 02                	add    %al,(%rdx)
     d9e:	62 03                	(bad)  
     da0:	00 00                	add    %al,(%rax)
     da2:	03 97 1b 6c 00 00    	add    0x6c1b(%rdi),%edx
     da8:	00 06                	add    %al,(%rsi)
     daa:	08 91 00 00 00 03    	or     %dl,0x3000000(%rcx)
     db0:	01 06                	add    %eax,(%rsi)
     db2:	2a 02                	sub    (%rdx),%al
     db4:	00 00                	add    %al,(%rax)
     db6:	07                   	(bad)  
     db7:	91                   	xchg   %eax,%ecx
     db8:	00 00                	add    %al,(%rax)
     dba:	00 08                	add    %cl,(%rax)
     dbc:	10 02                	adc    %al,(%rdx)
     dbe:	00 00                	add    %al,(%rax)
     dc0:	d8 04 31             	fadds  (%rcx,%rsi,1)
     dc3:	08 24 02             	or     %ah,(%rdx,%rax,1)
     dc6:	00 00                	add    %al,(%rax)
     dc8:	09 13                	or     %edx,(%rbx)
     dca:	04 00                	add    $0x0,%al
     dcc:	00 04 33             	add    %al,(%rbx,%rsi,1)
     dcf:	07                   	(bad)  
     dd0:	65 00 00             	add    %al,%gs:(%rax)
     dd3:	00 00                	add    %al,(%rax)
     dd5:	09 b3 02 00 00 04    	or     %esi,0x4000002(%rbx)
     ddb:	36 09 8b 00 00 00 08 	or     %ecx,%ss:0x8000000(%rbx)
     de2:	09 8e 02 00 00 04    	or     %ecx,0x4000002(%rsi)
     de8:	37                   	(bad)  
     de9:	09 8b 00 00 00 10    	or     %ecx,0x10000000(%rbx)
     def:	09 22                	or     %esp,(%rdx)
     df1:	00 00                	add    %al,(%rax)
     df3:	00 04 38             	add    %al,(%rax,%rdi,1)
     df6:	09 8b 00 00 00 18    	or     %ecx,0x18000000(%rbx)
     dfc:	09 9b 02 00 00 04    	or     %ebx,0x4000002(%rbx)
     e02:	39 09                	cmp    %ecx,(%rcx)
     e04:	8b 00                	mov    (%rax),%eax
     e06:	00 00                	add    %al,(%rax)
     e08:	20 09                	and    %cl,(%rcx)
     e0a:	d6                   	(bad)  
     e0b:	00 00                	add    %al,(%rax)
     e0d:	00 04 3a             	add    %al,(%rdx,%rdi,1)
     e10:	09 8b 00 00 00 28    	or     %ecx,0x28000000(%rbx)
     e16:	09 5d 00             	or     %ebx,0x0(%rbp)
     e19:	00 00                	add    %al,(%rax)
     e1b:	04 3b                	add    $0x3b,%al
     e1d:	09 8b 00 00 00 30    	or     %ecx,0x30000000(%rbx)
     e23:	09 f6                	or     %esi,%esi
     e25:	00 00                	add    %al,(%rax)
     e27:	00 04 3c             	add    %al,(%rsp,%rdi,1)
     e2a:	09 8b 00 00 00 38    	or     %ecx,0x38000000(%rbx)
     e30:	09 d4                	or     %edx,%esp
     e32:	02 00                	add    (%rax),%al
     e34:	00 04 3d 09 8b 00 00 	add    %al,0x8b09(,%rdi,1)
     e3b:	00 40 09             	add    %al,0x9(%rax)
     e3e:	e4 03                	in     $0x3,%al
     e40:	00 00                	add    %al,(%rax)
     e42:	04 40                	add    $0x40,%al
     e44:	09 8b 00 00 00 48    	or     %ecx,0x48000000(%rbx)
     e4a:	09 9d 03 00 00 04    	or     %ebx,0x4000003(%rbp)
     e50:	41 09 8b 00 00 00 50 	or     %ecx,0x50000000(%r11)
     e57:	09 50 00             	or     %edx,0x0(%rax)
     e5a:	00 00                	add    %al,(%rax)
     e5c:	04 42                	add    $0x42,%al
     e5e:	09 8b 00 00 00 58    	or     %ecx,0x58000000(%rbx)
     e64:	09 14 01             	or     %edx,(%rcx,%rax,1)
     e67:	00 00                	add    %al,(%rax)
     e69:	04 44                	add    $0x44,%al
     e6b:	16                   	(bad)  
     e6c:	3d 02 00 00 60       	cmp    $0x60000002,%eax
     e71:	09 75 03             	or     %esi,0x3(%rbp)
     e74:	00 00                	add    %al,(%rax)
     e76:	04 46                	add    $0x46,%al
     e78:	14 43                	adc    $0x43,%al
     e7a:	02 00                	add    (%rax),%al
     e7c:	00 68 09             	add    %ch,0x9(%rax)
     e7f:	04 04                	add    $0x4,%al
     e81:	00 00                	add    %al,(%rax)
     e83:	04 48                	add    $0x48,%al
     e85:	07                   	(bad)  
     e86:	65 00 00             	add    %al,%gs:(%rax)
     e89:	00 70 09             	add    %dh,0x9(%rax)
     e8c:	b3 03                	mov    $0x3,%bl
     e8e:	00 00                	add    %al,(%rax)
     e90:	04 49                	add    $0x49,%al
     e92:	07                   	(bad)  
     e93:	65 00 00             	add    %al,%gs:(%rax)
     e96:	00 74 09 07          	add    %dh,0x7(%rcx,%rcx,1)
     e9a:	00 00                	add    %al,(%rax)
     e9c:	00 04 4a             	add    %al,(%rdx,%rcx,2)
     e9f:	0b 73 00             	or     0x0(%rbx),%esi
     ea2:	00 00                	add    %al,(%rax)
     ea4:	78 09                	js     eaf <_init-0x400151>
     ea6:	de 01                	fiadds (%rcx)
     ea8:	00 00                	add    %al,(%rax)
     eaa:	04 4d                	add    $0x4d,%al
     eac:	12 50 00             	adc    0x0(%rax),%dl
     eaf:	00 00                	add    %al,(%rax)
     eb1:	80 09 01             	orb    $0x1,(%rcx)
     eb4:	02 00                	add    (%rax),%al
     eb6:	00 04 4e             	add    %al,(%rsi,%rcx,2)
     eb9:	0f 57 00             	xorps  (%rax),%xmm0
     ebc:	00 00                	add    %al,(%rax)
     ebe:	82                   	(bad)  
     ebf:	09 78 02             	or     %edi,0x2(%rax)
     ec2:	00 00                	add    %al,(%rax)
     ec4:	04 4f                	add    $0x4f,%al
     ec6:	08 49 02             	or     %cl,0x2(%rcx)
     ec9:	00 00                	add    %al,(%rax)
     ecb:	83 09 b9             	orl    $0xffffffb9,(%rcx)
     ece:	01 00                	add    %eax,(%rax)
     ed0:	00 04 51             	add    %al,(%rcx,%rdx,2)
     ed3:	0f 59 02             	mulps  (%rdx),%xmm0
     ed6:	00 00                	add    %al,(%rax)
     ed8:	88 09                	mov    %cl,(%rcx)
     eda:	0b 00                	or     (%rax),%eax
     edc:	00 00                	add    %al,(%rax)
     ede:	04 59                	add    $0x59,%al
     ee0:	0d 7f 00 00 00       	or     $0x7f,%eax
     ee5:	90                   	nop
     ee6:	09 24 04             	or     %esp,(%rsp,%rax,1)
     ee9:	00 00                	add    %al,(%rax)
     eeb:	04 5b                	add    $0x5b,%al
     eed:	17                   	(bad)  
     eee:	64 02 00             	add    %fs:(%rax),%al
     ef1:	00 98 09 7f 03 00    	add    %bl,0x37f09(%rax)
     ef7:	00 04 5c             	add    %al,(%rsp,%rbx,2)
     efa:	19 6f 02             	sbb    %ebp,0x2(%rdi)
     efd:	00 00                	add    %al,(%rax)
     eff:	a0 09 01 03 00 00 04 	movabs 0x145d040000030109,%al
     f06:	5d 14 
     f08:	43 02 00             	rex.XB add (%r8),%al
     f0b:	00 a8 09 e9 00 00    	add    %ch,0xe909(%rax)
     f11:	00 04 5e             	add    %al,(%rsi,%rbx,2)
     f14:	09 47 00             	or     %eax,0x0(%rdi)
     f17:	00 00                	add    %al,(%rax)
     f19:	b0 09                	mov    $0x9,%al
     f1b:	15 03 00 00 04       	adc    $0x4000003,%eax
     f20:	5f                   	pop    %rdi
     f21:	0a 2d 00 00 00 b8    	or     -0x48000000(%rip),%ch        # ffffffffb8000f27 <_end+0xffffffffb7bf9def>
     f27:	09 bb 03 00 00 04    	or     %edi,0x4000003(%rbx)
     f2d:	60                   	(bad)  
     f2e:	07                   	(bad)  
     f2f:	65 00 00             	add    %al,%gs:(%rax)
     f32:	00 c0                	add    %al,%al
     f34:	09 aa 02 00 00 04    	or     %ebp,0x4000002(%rdx)
     f3a:	62                   	(bad)  
     f3b:	08 75 02             	or     %dh,0x2(%rbp)
     f3e:	00 00                	add    %al,(%rax)
     f40:	c4                   	(bad)  
     f41:	00 02                	add    %al,(%rdx)
     f43:	14 02                	adc    $0x2,%al
     f45:	00 00                	add    %al,(%rax)
     f47:	05 07 19 9d 00       	add    $0x9d1907,%eax
     f4c:	00 00                	add    %al,(%rax)
     f4e:	0a 7d 00             	or     0x0(%rbp),%bh
     f51:	00 00                	add    %al,(%rax)
     f53:	04 2b                	add    $0x2b,%al
     f55:	0e                   	(bad)  
     f56:	0b 6d 02             	or     0x2(%rbp),%ebp
     f59:	00 00                	add    %al,(%rax)
     f5b:	06                   	(bad)  
     f5c:	08 38                	or     %bh,(%rax)
     f5e:	02 00                	add    (%rax),%al
     f60:	00 06                	add    %al,(%rsi)
     f62:	08 9d 00 00 00 0c    	or     %bl,0xc000000(%rbp)
     f68:	91                   	xchg   %eax,%ecx
     f69:	00 00                	add    %al,(%rax)
     f6b:	00 59 02             	add    %bl,0x2(%rcx)
     f6e:	00 00                	add    %al,(%rax)
     f70:	0d 39 00 00 00       	or     $0x39,%eax
     f75:	00 00                	add    %al,(%rax)
     f77:	06                   	(bad)  
     f78:	08 30                	or     %dh,(%rax)
     f7a:	02 00                	add    (%rax),%al
     f7c:	00 0b                	add    %cl,(%rbx)
     f7e:	21 04 00             	and    %eax,(%rax,%rax,1)
     f81:	00 06                	add    %al,(%rsi)
     f83:	08 5f 02             	or     %bl,0x2(%rdi)
     f86:	00 00                	add    %al,(%rax)
     f88:	0b 7c 03 00          	or     0x0(%rbx,%rax,1),%edi
     f8c:	00 06                	add    %al,(%rsi)
     f8e:	08 6a 02             	or     %ch,0x2(%rdx)
     f91:	00 00                	add    %al,(%rax)
     f93:	0c 91                	or     $0x91,%al
     f95:	00 00                	add    %al,(%rax)
     f97:	00 85 02 00 00 0d    	add    %al,0xd000002(%rbp)
     f9d:	39 00                	cmp    %eax,(%rax)
     f9f:	00 00                	add    %al,(%rax)
     fa1:	13 00                	adc    (%rax),%eax
     fa3:	0e                   	(bad)  
     fa4:	ad                   	lods   %ds:(%rsi),%eax
     fa5:	03 00                	add    (%rax),%eax
     fa7:	00 06                	add    %al,(%rsi)
     fa9:	89 0e                	mov    %ecx,(%rsi)
     fab:	91                   	xchg   %eax,%ecx
     fac:	02 00                	add    (%rax),%al
     fae:	00 06                	add    %al,(%rsi)
     fb0:	08 24 02             	or     %ah,(%rdx,%rax,1)
     fb3:	00 00                	add    %al,(%rax)
     fb5:	0e                   	(bad)  
     fb6:	1a 04 00             	sbb    (%rax,%rax,1),%al
     fb9:	00 06                	add    %al,(%rsi)
     fbb:	8a 0e                	mov    (%rsi),%cl
     fbd:	91                   	xchg   %eax,%ecx
     fbe:	02 00                	add    (%rax),%al
     fc0:	00 0e                	add    %cl,(%rsi)
     fc2:	99                   	cltd   
     fc3:	01 00                	add    %eax,(%rax)
     fc5:	00 06                	add    %al,(%rsi)
     fc7:	8b 0e                	mov    (%rsi),%ecx
     fc9:	91                   	xchg   %eax,%ecx
     fca:	02 00                	add    (%rax),%al
     fcc:	00 0e                	add    %cl,(%rsi)
     fce:	47 00 00             	rex.RXB add %r8b,(%r8)
     fd1:	00 07                	add    %al,(%rdi)
     fd3:	1a 0c 65 00 00 00 0c 	sbb    0xc000000(,%riz,2),%cl
     fda:	d1 02                	roll   (%rdx)
     fdc:	00 00                	add    %al,(%rax)
     fde:	c6 02 00             	movb   $0x0,(%rdx)
     fe1:	00 0f                	add    %cl,(%rdi)
     fe3:	00 07                	add    %al,(%rdi)
     fe5:	bb 02 00 00 06       	mov    $0x6000002,%ebx
     fea:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
     ff0:	cb                   	lret   
     ff1:	02 00                	add    (%rax),%al
     ff3:	00 0e                	add    %cl,(%rsi)
     ff5:	36 00 00             	add    %al,%ss:(%rax)
     ff8:	00 07                	add    %al,(%rdi)
     ffa:	1b 1a                	sbb    (%rdx),%ebx
     ffc:	c6 02 00             	movb   $0x0,(%rdx)
     fff:	00 0c 8b             	add    %cl,(%rbx,%rcx,4)
    1002:	00 00                	add    %al,(%rax)
    1004:	00 f2                	add    %dh,%dl
    1006:	02 00                	add    (%rax),%al
    1008:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 1047 <_init-0x3fffb9>
    100e:	63 00                	movslq (%rax),%eax
    1010:	10 3a                	adc    %bh,(%rdx)
    1012:	02 00                	add    (%rax),%al
    1014:	00 08                	add    %cl,(%rax)
    1016:	14 07                	adc    $0x7,%al
    1018:	e2 02                	loop   101c <_init-0x3fffe4>
    101a:	00 00                	add    %al,(%rax)
    101c:	09 03                	or     %eax,(%rbx)
    101e:	60                   	(bad)  
    101f:	61                   	(bad)  
    1020:	40 00 00             	add    %al,(%rax)
    1023:	00 00                	add    %al,(%rax)
    1025:	00 10                	add    %dl,(%rax)
    1027:	84 01                	test   %al,(%rcx)
    1029:	00 00                	add    %al,(%rax)
    102b:	08 1a                	or     %bl,(%rdx)
    102d:	07                   	(bad)  
    102e:	8b 00                	mov    (%rax),%eax
    1030:	00 00                	add    %al,(%rax)
    1032:	09 03                	or     %eax,(%rbx)
    1034:	50                   	push   %rax
    1035:	61                   	(bad)  
    1036:	40 00 00             	add    %al,(%rax)
    1039:	00 00                	add    %al,(%rax)
    103b:	00 11                	add    %dl,(%rcx)
    103d:	6c                   	insb   (%dx),%es:(%rdi)
    103e:	61                   	(bad)  
    103f:	62                   	(bad)  
    1040:	00 08                	add    %cl,(%rax)
    1042:	1b 07                	sbb    (%rdi),%eax
    1044:	8b 00                	mov    (%rax),%eax
    1046:	00 00                	add    %al,(%rax)
    1048:	09 03                	or     %eax,(%rbx)
    104a:	48 61                	rex.W (bad) 
    104c:	40 00 00             	add    %al,(%rax)
    104f:	00 00                	add    %al,(%rax)
    1051:	00 10                	add    %dl,(%rax)
    1053:	45 02 00             	add    (%r8),%r8b
    1056:	00 08                	add    %cl,(%rax)
    1058:	21 05 65 00 00 00    	and    %eax,0x65(%rip)        # 10c3 <_init-0x3fff3d>
    105e:	09 03                	or     %eax,(%rbx)
    1060:	30 61 40             	xor    %ah,0x40(%rcx)
    1063:	00 00                	add    %al,(%rax)
    1065:	00 00                	add    %al,(%rax)
    1067:	00 10                	add    %dl,(%rax)
    1069:	6b 00 00             	imul   $0x0,(%rax),%eax
    106c:	00 08                	add    %cl,(%rax)
    106e:	22 07                	and    (%rdi),%al
    1070:	8b 00                	mov    (%rax),%eax
    1072:	00 00                	add    %al,(%rax)
    1074:	09 03                	or     %eax,(%rbx)
    1076:	40 61                	rex (bad) 
    1078:	40 00 00             	add    %al,(%rax)
    107b:	00 00                	add    %al,(%rax)
    107d:	00 10                	add    %dl,(%rax)
    107f:	79 01                	jns    1082 <_init-0x3fff7e>
    1081:	00 00                	add    %al,(%rax)
    1083:	09 3c 05 65 00 00 00 	or     %edi,0x65(,%rax,1)
    108a:	09 03                	or     %eax,(%rbx)
    108c:	0c 65                	or     $0x65,%al
    108e:	40 00 00             	add    %al,(%rax)
    1091:	00 00                	add    %al,(%rax)
    1093:	00 10                	add    %dl,(%rax)
    1095:	5b                   	pop    %rbx
    1096:	03 00                	add    (%rax),%eax
    1098:	00 09                	add    %cl,(%rcx)
    109a:	3d 0a 40 00 00       	cmp    $0x400a,%eax
    109f:	00 09                	add    %cl,(%rcx)
    10a1:	03 08                	add    (%rax),%ecx
    10a3:	65 40 00 00          	add    %al,%gs:(%rax)
    10a7:	00 00                	add    %al,(%rax)
    10a9:	00 10                	add    %dl,(%rax)
    10ab:	49 03 00             	add    (%r8),%rax
    10ae:	00 09                	add    %cl,(%rcx)
    10b0:	3e 0a 40 00          	or     %ds:0x0(%rax),%al
    10b4:	00 00                	add    %al,(%rax)
    10b6:	09 03                	or     %eax,(%rbx)
    10b8:	04 65                	add    $0x65,%al
    10ba:	40 00 00             	add    %al,(%rax)
    10bd:	00 00                	add    %al,(%rax)
    10bf:	00 10                	add    %dl,(%rax)
    10c1:	8b 01                	mov    (%rcx),%eax
    10c3:	00 00                	add    %al,(%rax)
    10c5:	09 3f                	or     %edi,(%rdi)
    10c7:	05 65 00 00 00       	add    $0x65,%eax
    10cc:	09 03                	or     %eax,(%rbx)
    10ce:	00 65 40             	add    %ah,0x40(%rbp)
    10d1:	00 00                	add    %al,(%rax)
    10d3:	00 00                	add    %al,(%rax)
    10d5:	00 10                	add    %dl,(%rax)
    10d7:	1c 03                	sbb    $0x3,%al
    10d9:	00 00                	add    %al,(%rax)
    10db:	09 40 05             	or     %eax,0x5(%rax)
    10de:	65 00 00             	add    %al,%gs:(%rax)
    10e1:	00 09                	add    %cl,(%rcx)
    10e3:	03 fc                	add    %esp,%edi
    10e5:	64 40 00 00          	add    %al,%fs:(%rax)
    10e9:	00 00                	add    %al,(%rax)
    10eb:	00 10                	add    %dl,(%rax)
    10ed:	92                   	xchg   %eax,%edx
    10ee:	01 00                	add    %eax,(%rax)
    10f0:	00 09                	add    %cl,(%rcx)
    10f2:	41 05 65 00 00 00    	rex.B add $0x65,%eax
    10f8:	09 03                	or     %eax,(%rbx)
    10fa:	f8                   	clc    
    10fb:	64 40 00 00          	add    %al,%fs:(%rax)
    10ff:	00 00                	add    %al,(%rax)
    1101:	00 10                	add    %dl,(%rax)
    1103:	03 01                	add    (%rcx),%eax
    1105:	00 00                	add    %al,(%rax)
    1107:	09 42 07             	or     %eax,0x7(%rdx)
    110a:	91                   	xchg   %eax,%ecx
    110b:	02 00                	add    (%rax),%al
    110d:	00 09                	add    %cl,(%rcx)
    110f:	03 f0                	add    %eax,%esi
    1111:	64 40 00 00          	add    %al,%fs:(%rax)
    1115:	00 00                	add    %al,(%rax)
    1117:	00 10                	add    %dl,(%rax)
    1119:	cb                   	lret   
    111a:	00 00                	add    %al,(%rax)
    111c:	00 09                	add    %cl,(%rcx)
    111e:	43 08 2d 00 00 00 09 	rex.XB or %bpl,0x9000000(%rip)        # 9001125 <_end+0x8bf9fed>
    1125:	03 80 64 40 00 00    	add    0x4064(%rax),%eax
    112b:	00 00                	add    %al,(%rax)
    112d:	00 10                	add    %dl,(%rax)
    112f:	d0 03                	rolb   (%rbx)
    1131:	00 00                	add    %al,(%rax)
    1133:	09 44 06 91          	or     %eax,-0x6f(%rsi,%rax,1)
    1137:	00 00                	add    %al,(%rax)
    1139:	00 09                	add    %cl,(%rcx)
    113b:	03 28                	add    (%rax),%ebp
    113d:	71 40                	jno    117f <_init-0x3ffe81>
    113f:	00 00                	add    %al,(%rax)
    1141:	00 00                	add    %al,(%rax)
    1143:	00 12                	add    %dl,(%rdx)
    1145:	46 04 00             	rex.RX add $0x0,%al
    1148:	00 01                	add    %al,(%rcx)
    114a:	0b 0a                	or     (%rdx),%ecx
    114c:	40 00 00             	add    %al,(%rax)
    114f:	00 1f                	add    %bl,(%rdi)
    1151:	1b 40 00             	sbb    0x0(%rax),%eax
    1154:	00 00                	add    %al,(%rax)
    1156:	00 00                	add    %al,(%rax)
    1158:	16                   	(bad)  
    1159:	00 00                	add    %al,(%rax)
    115b:	00 00                	add    %al,(%rax)
    115d:	00 00                	add    %al,(%rax)
    115f:	00 01                	add    %al,(%rcx)
    1161:	9c                   	pushfq 
    1162:	6c                   	insb   (%dx),%es:(%rdi)
    1163:	04 00                	add    $0x0,%al
    1165:	00 13                	add    %dl,(%rbx)
    1167:	62                   	(bad)  
    1168:	75 66                	jne    11d0 <_init-0x3ffe30>
    116a:	00 01                	add    %al,(%rcx)
    116c:	0d 0a 6c 04 00       	or     $0x46c0a,%eax
    1171:	00 02                	add    %al,(%rdx)
    1173:	91                   	xchg   %eax,%ecx
    1174:	40 14 2b             	adc    $0x2b,%al
    1177:	1b 40 00             	sbb    0x0(%rax),%eax
    117a:	00 00                	add    %al,(%rax)
    117c:	00 00                	add    %al,(%rax)
    117e:	7c 04                	jl     1184 <_init-0x3ffe7c>
    1180:	00 00                	add    %al,(%rax)
    1182:	15 01 55 02 77       	adc    $0x77025501,%eax
    1187:	00 00                	add    %al,(%rax)
    1189:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    118c:	00 00                	add    %al,(%rax)
    118e:	00 7c 04 00          	add    %bh,0x0(%rsp,%rax,1)
    1192:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 11d1 <_init-0x3ffe2f>
    1198:	2f                   	(bad)  
    1199:	00 16                	add    %dl,(%rsi)
    119b:	53                   	push   %rbx
    119c:	04 00                	add    $0x0,%al
    119e:	00 53 04             	add    %dl,0x4(%rbx)
    11a1:	00 00                	add    %al,(%rax)
    11a3:	09 53 07             	or     %edx,0x7(%rbx)
    11a6:	00 b3 00 00 00 04    	add    %dh,0x4000000(%rbx)
    11ac:	00 0f                	add    %cl,(%rdi)
    11ae:	04 00                	add    $0x0,%al
    11b0:	00 08                	add    %cl,(%rax)
    11b2:	01 99 00 00 00 0c    	add    %ebx,0xc000000(%rcx)
    11b8:	9f                   	lahf   
    11b9:	04 00                	add    $0x0,%al
    11bb:	00 48 01             	add    %cl,0x1(%rax)
    11be:	00 00                	add    %al,(%rax)
    11c0:	d0 07                	rolb   (%rdi)
    11c2:	00 00                	add    %al,(%rax)
    11c4:	02 34 00             	add    (%rax,%rax,1),%dh
    11c7:	00 00                	add    %al,(%rax)
    11c9:	2d 00 00 00 03       	sub    $0x3000000,%eax
    11ce:	2d 00 00 00 63       	sub    $0x63000000,%eax
    11d3:	00 04 08             	add    %al,(%rax,%rcx,1)
    11d6:	07                   	(bad)  
    11d7:	5b                   	pop    %rbx
    11d8:	02 00                	add    (%rax),%al
    11da:	00 05 08 3a 00 00    	add    %al,0x3a08(%rip)        # 4be8 <_init-0x3fc418>
    11e0:	00 04 01             	add    %al,(%rcx,%rax,1)
    11e3:	06                   	(bad)  
    11e4:	2a 02                	sub    (%rdx),%al
    11e6:	00 00                	add    %al,(%rax)
    11e8:	06                   	(bad)  
    11e9:	3a 02                	cmp    (%rdx),%al
    11eb:	00 00                	add    %al,(%rax)
    11ed:	01 14 07             	add    %edx,(%rdi,%rax,1)
    11f0:	1d 00 00 00 09       	sbb    $0x9000000,%eax
    11f5:	03 60 61             	add    0x61(%rax),%esp
    11f8:	40 00 00             	add    %al,(%rax)
    11fb:	00 00                	add    %al,(%rax)
    11fd:	00 06                	add    %al,(%rsi)
    11ff:	84 01                	test   %al,(%rcx)
    1201:	00 00                	add    %al,(%rax)
    1203:	01 1a                	add    %ebx,(%rdx)
    1205:	07                   	(bad)  
    1206:	34 00                	xor    $0x0,%al
    1208:	00 00                	add    %al,(%rax)
    120a:	09 03                	or     %eax,(%rbx)
    120c:	50                   	push   %rax
    120d:	61                   	(bad)  
    120e:	40 00 00             	add    %al,(%rax)
    1211:	00 00                	add    %al,(%rax)
    1213:	00 07                	add    %al,(%rdi)
    1215:	6c                   	insb   (%dx),%es:(%rdi)
    1216:	61                   	(bad)  
    1217:	62                   	(bad)  
    1218:	00 01                	add    %al,(%rcx)
    121a:	1b 07                	sbb    (%rdi),%eax
    121c:	34 00                	xor    $0x0,%al
    121e:	00 00                	add    %al,(%rax)
    1220:	09 03                	or     %eax,(%rbx)
    1222:	48 61                	rex.W (bad) 
    1224:	40 00 00             	add    %al,(%rax)
    1227:	00 00                	add    %al,(%rax)
    1229:	00 06                	add    %al,(%rsi)
    122b:	45 02 00             	add    (%r8),%r8b
    122e:	00 01                	add    %al,(%rcx)
    1230:	21 05 99 00 00 00    	and    %eax,0x99(%rip)        # 12cf <_init-0x3ffd31>
    1236:	09 03                	or     %eax,(%rbx)
    1238:	30 61 40             	xor    %ah,0x40(%rcx)
    123b:	00 00                	add    %al,(%rax)
    123d:	00 00                	add    %al,(%rax)
    123f:	00 08                	add    %cl,(%rax)
    1241:	04 05                	add    $0x5,%al
    1243:	69 6e 74 00 06 6b 00 	imul   $0x6b0600,0x74(%rsi),%ebp
    124a:	00 00                	add    %al,(%rax)
    124c:	01 22                	add    %esp,(%rdx)
    124e:	07                   	(bad)  
    124f:	34 00                	xor    $0x0,%al
    1251:	00 00                	add    %al,(%rax)
    1253:	09 03                	or     %eax,(%rbx)
    1255:	40 61                	rex (bad) 
    1257:	40 00 00             	add    %al,(%rax)
    125a:	00 00                	add    %al,(%rax)
    125c:	00 00                	add    %al,(%rax)
    125e:	c6 07 00             	movb   $0x0,(%rdi)
    1261:	00 04 00             	add    %al,(%rax,%rax,1)
    1264:	76 04                	jbe    126a <_init-0x3ffd96>
    1266:	00 00                	add    %al,(%rax)
    1268:	08 01                	or     %al,(%rcx)
    126a:	99                   	cltd   
    126b:	00 00                	add    %al,(%rax)
    126d:	00 0c cc             	add    %cl,(%rsp,%rcx,8)
    1270:	04 00                	add    $0x0,%al
    1272:	00 48 01             	add    %cl,0x1(%rax)
    1275:	00 00                	add    %al,(%rax)
    1277:	35 1b 40 00 00       	xor    $0x401b,%eax
    127c:	00 00                	add    %al,(%rax)
    127e:	00 97 01 00 00 00    	add    %dl,0x1(%rdi)
    1284:	00 00                	add    %al,(%rax)
    1286:	00 f9                	add    %bh,%cl
    1288:	07                   	(bad)  
    1289:	00 00                	add    %al,(%rax)
    128b:	02 7e 06             	add    0x6(%rsi),%bh
    128e:	00 00                	add    %al,(%rax)
    1290:	02 d8                	add    %al,%bl
    1292:	17                   	(bad)  
    1293:	39 00                	cmp    %eax,(%rax)
    1295:	00 00                	add    %al,(%rax)
    1297:	03 08                	add    (%rax),%ecx
    1299:	07                   	(bad)  
    129a:	5b                   	pop    %rbx
    129b:	02 00                	add    (%rax),%al
    129d:	00 03                	add    %al,(%rbx)
    129f:	04 07                	add    $0x7,%al
    12a1:	60                   	(bad)  
    12a2:	02 00                	add    (%rax),%al
    12a4:	00 04 08             	add    %al,(%rax,%rcx,1)
    12a7:	03 01                	add    (%rcx),%eax
    12a9:	08 21                	or     %ah,(%rcx)
    12ab:	02 00                	add    (%rax),%al
    12ad:	00 03                	add    %al,(%rbx)
    12af:	02 07                	add    (%rdi),%al
    12b1:	32 03                	xor    (%rbx),%al
    12b3:	00 00                	add    %al,(%rax)
    12b5:	03 01                	add    (%rcx),%eax
    12b7:	06                   	(bad)  
    12b8:	23 02                	and    (%rdx),%eax
    12ba:	00 00                	add    %al,(%rax)
    12bc:	03 02                	add    (%rdx),%eax
    12be:	05 73 00 00 00       	add    $0x73,%eax
    12c3:	05 04 05 69 6e       	add    $0x6e690504,%eax
    12c8:	74 00                	je     12ca <_init-0x3ffd36>
    12ca:	03 08                	add    (%rax),%ecx
    12cc:	05 a5 01 00 00       	add    $0x1a5,%eax
    12d1:	02 95 03 00 00 03    	add    0x3000003(%rbp),%dl
    12d7:	96                   	xchg   %eax,%esi
    12d8:	19 6c 00 00          	sbb    %ebp,0x0(%rax,%rax,1)
    12dc:	00 02                	add    %al,(%rdx)
    12de:	62 03                	(bad)  
    12e0:	00 00                	add    %al,(%rax)
    12e2:	03 97 1b 6c 00 00    	add    0x6c1b(%rdi),%edx
    12e8:	00 06                	add    %al,(%rsi)
    12ea:	08 91 00 00 00 03    	or     %dl,0x3000000(%rcx)
    12f0:	01 06                	add    %eax,(%rsi)
    12f2:	2a 02                	sub    (%rdx),%al
    12f4:	00 00                	add    %al,(%rax)
    12f6:	07                   	(bad)  
    12f7:	91                   	xchg   %eax,%ecx
    12f8:	00 00                	add    %al,(%rax)
    12fa:	00 08                	add    %cl,(%rax)
    12fc:	10 02                	adc    %al,(%rdx)
    12fe:	00 00                	add    %al,(%rax)
    1300:	d8 04 31             	fadds  (%rcx,%rsi,1)
    1303:	08 24 02             	or     %ah,(%rdx,%rax,1)
    1306:	00 00                	add    %al,(%rax)
    1308:	09 13                	or     %edx,(%rbx)
    130a:	04 00                	add    $0x0,%al
    130c:	00 04 33             	add    %al,(%rbx,%rsi,1)
    130f:	07                   	(bad)  
    1310:	65 00 00             	add    %al,%gs:(%rax)
    1313:	00 00                	add    %al,(%rax)
    1315:	09 b3 02 00 00 04    	or     %esi,0x4000002(%rbx)
    131b:	36 09 8b 00 00 00 08 	or     %ecx,%ss:0x8000000(%rbx)
    1322:	09 8e 02 00 00 04    	or     %ecx,0x4000002(%rsi)
    1328:	37                   	(bad)  
    1329:	09 8b 00 00 00 10    	or     %ecx,0x10000000(%rbx)
    132f:	09 22                	or     %esp,(%rdx)
    1331:	00 00                	add    %al,(%rax)
    1333:	00 04 38             	add    %al,(%rax,%rdi,1)
    1336:	09 8b 00 00 00 18    	or     %ecx,0x18000000(%rbx)
    133c:	09 9b 02 00 00 04    	or     %ebx,0x4000002(%rbx)
    1342:	39 09                	cmp    %ecx,(%rcx)
    1344:	8b 00                	mov    (%rax),%eax
    1346:	00 00                	add    %al,(%rax)
    1348:	20 09                	and    %cl,(%rcx)
    134a:	d6                   	(bad)  
    134b:	00 00                	add    %al,(%rax)
    134d:	00 04 3a             	add    %al,(%rdx,%rdi,1)
    1350:	09 8b 00 00 00 28    	or     %ecx,0x28000000(%rbx)
    1356:	09 5d 00             	or     %ebx,0x0(%rbp)
    1359:	00 00                	add    %al,(%rax)
    135b:	04 3b                	add    $0x3b,%al
    135d:	09 8b 00 00 00 30    	or     %ecx,0x30000000(%rbx)
    1363:	09 f6                	or     %esi,%esi
    1365:	00 00                	add    %al,(%rax)
    1367:	00 04 3c             	add    %al,(%rsp,%rdi,1)
    136a:	09 8b 00 00 00 38    	or     %ecx,0x38000000(%rbx)
    1370:	09 d4                	or     %edx,%esp
    1372:	02 00                	add    (%rax),%al
    1374:	00 04 3d 09 8b 00 00 	add    %al,0x8b09(,%rdi,1)
    137b:	00 40 09             	add    %al,0x9(%rax)
    137e:	e4 03                	in     $0x3,%al
    1380:	00 00                	add    %al,(%rax)
    1382:	04 40                	add    $0x40,%al
    1384:	09 8b 00 00 00 48    	or     %ecx,0x48000000(%rbx)
    138a:	09 9d 03 00 00 04    	or     %ebx,0x4000003(%rbp)
    1390:	41 09 8b 00 00 00 50 	or     %ecx,0x50000000(%r11)
    1397:	09 50 00             	or     %edx,0x0(%rax)
    139a:	00 00                	add    %al,(%rax)
    139c:	04 42                	add    $0x42,%al
    139e:	09 8b 00 00 00 58    	or     %ecx,0x58000000(%rbx)
    13a4:	09 14 01             	or     %edx,(%rcx,%rax,1)
    13a7:	00 00                	add    %al,(%rax)
    13a9:	04 44                	add    $0x44,%al
    13ab:	16                   	(bad)  
    13ac:	3d 02 00 00 60       	cmp    $0x60000002,%eax
    13b1:	09 75 03             	or     %esi,0x3(%rbp)
    13b4:	00 00                	add    %al,(%rax)
    13b6:	04 46                	add    $0x46,%al
    13b8:	14 43                	adc    $0x43,%al
    13ba:	02 00                	add    (%rax),%al
    13bc:	00 68 09             	add    %ch,0x9(%rax)
    13bf:	04 04                	add    $0x4,%al
    13c1:	00 00                	add    %al,(%rax)
    13c3:	04 48                	add    $0x48,%al
    13c5:	07                   	(bad)  
    13c6:	65 00 00             	add    %al,%gs:(%rax)
    13c9:	00 70 09             	add    %dh,0x9(%rax)
    13cc:	b3 03                	mov    $0x3,%bl
    13ce:	00 00                	add    %al,(%rax)
    13d0:	04 49                	add    $0x49,%al
    13d2:	07                   	(bad)  
    13d3:	65 00 00             	add    %al,%gs:(%rax)
    13d6:	00 74 09 07          	add    %dh,0x7(%rcx,%rcx,1)
    13da:	00 00                	add    %al,(%rax)
    13dc:	00 04 4a             	add    %al,(%rdx,%rcx,2)
    13df:	0b 73 00             	or     0x0(%rbx),%esi
    13e2:	00 00                	add    %al,(%rax)
    13e4:	78 09                	js     13ef <_init-0x3ffc11>
    13e6:	de 01                	fiadds (%rcx)
    13e8:	00 00                	add    %al,(%rax)
    13ea:	04 4d                	add    $0x4d,%al
    13ec:	12 50 00             	adc    0x0(%rax),%dl
    13ef:	00 00                	add    %al,(%rax)
    13f1:	80 09 01             	orb    $0x1,(%rcx)
    13f4:	02 00                	add    (%rax),%al
    13f6:	00 04 4e             	add    %al,(%rsi,%rcx,2)
    13f9:	0f 57 00             	xorps  (%rax),%xmm0
    13fc:	00 00                	add    %al,(%rax)
    13fe:	82                   	(bad)  
    13ff:	09 78 02             	or     %edi,0x2(%rax)
    1402:	00 00                	add    %al,(%rax)
    1404:	04 4f                	add    $0x4f,%al
    1406:	08 49 02             	or     %cl,0x2(%rcx)
    1409:	00 00                	add    %al,(%rax)
    140b:	83 09 b9             	orl    $0xffffffb9,(%rcx)
    140e:	01 00                	add    %eax,(%rax)
    1410:	00 04 51             	add    %al,(%rcx,%rdx,2)
    1413:	0f 59 02             	mulps  (%rdx),%xmm0
    1416:	00 00                	add    %al,(%rax)
    1418:	88 09                	mov    %cl,(%rcx)
    141a:	0b 00                	or     (%rax),%eax
    141c:	00 00                	add    %al,(%rax)
    141e:	04 59                	add    $0x59,%al
    1420:	0d 7f 00 00 00       	or     $0x7f,%eax
    1425:	90                   	nop
    1426:	09 24 04             	or     %esp,(%rsp,%rax,1)
    1429:	00 00                	add    %al,(%rax)
    142b:	04 5b                	add    $0x5b,%al
    142d:	17                   	(bad)  
    142e:	64 02 00             	add    %fs:(%rax),%al
    1431:	00 98 09 7f 03 00    	add    %bl,0x37f09(%rax)
    1437:	00 04 5c             	add    %al,(%rsp,%rbx,2)
    143a:	19 6f 02             	sbb    %ebp,0x2(%rdi)
    143d:	00 00                	add    %al,(%rax)
    143f:	a0 09 01 03 00 00 04 	movabs 0x145d040000030109,%al
    1446:	5d 14 
    1448:	43 02 00             	rex.XB add (%r8),%al
    144b:	00 a8 09 e9 00 00    	add    %ch,0xe909(%rax)
    1451:	00 04 5e             	add    %al,(%rsi,%rbx,2)
    1454:	09 47 00             	or     %eax,0x0(%rdi)
    1457:	00 00                	add    %al,(%rax)
    1459:	b0 09                	mov    $0x9,%al
    145b:	15 03 00 00 04       	adc    $0x4000003,%eax
    1460:	5f                   	pop    %rdi
    1461:	0a 2d 00 00 00 b8    	or     -0x48000000(%rip),%ch        # ffffffffb8001467 <_end+0xffffffffb7bfa32f>
    1467:	09 bb 03 00 00 04    	or     %edi,0x4000003(%rbx)
    146d:	60                   	(bad)  
    146e:	07                   	(bad)  
    146f:	65 00 00             	add    %al,%gs:(%rax)
    1472:	00 c0                	add    %al,%al
    1474:	09 aa 02 00 00 04    	or     %ebp,0x4000002(%rdx)
    147a:	62                   	(bad)  
    147b:	08 75 02             	or     %dh,0x2(%rbp)
    147e:	00 00                	add    %al,(%rax)
    1480:	c4                   	(bad)  
    1481:	00 02                	add    %al,(%rdx)
    1483:	14 02                	adc    $0x2,%al
    1485:	00 00                	add    %al,(%rax)
    1487:	05 07 19 9d 00       	add    $0x9d1907,%eax
    148c:	00 00                	add    %al,(%rax)
    148e:	0a 7d 00             	or     0x0(%rbp),%bh
    1491:	00 00                	add    %al,(%rax)
    1493:	04 2b                	add    $0x2b,%al
    1495:	0e                   	(bad)  
    1496:	0b 6d 02             	or     0x2(%rbp),%ebp
    1499:	00 00                	add    %al,(%rax)
    149b:	06                   	(bad)  
    149c:	08 38                	or     %bh,(%rax)
    149e:	02 00                	add    (%rax),%al
    14a0:	00 06                	add    %al,(%rsi)
    14a2:	08 9d 00 00 00 0c    	or     %bl,0xc000000(%rbp)
    14a8:	91                   	xchg   %eax,%ecx
    14a9:	00 00                	add    %al,(%rax)
    14ab:	00 59 02             	add    %bl,0x2(%rcx)
    14ae:	00 00                	add    %al,(%rax)
    14b0:	0d 39 00 00 00       	or     $0x39,%eax
    14b5:	00 00                	add    %al,(%rax)
    14b7:	06                   	(bad)  
    14b8:	08 30                	or     %dh,(%rax)
    14ba:	02 00                	add    (%rax),%al
    14bc:	00 0b                	add    %cl,(%rbx)
    14be:	21 04 00             	and    %eax,(%rax,%rax,1)
    14c1:	00 06                	add    %al,(%rsi)
    14c3:	08 5f 02             	or     %bl,0x2(%rdi)
    14c6:	00 00                	add    %al,(%rax)
    14c8:	0b 7c 03 00          	or     0x0(%rbx,%rax,1),%edi
    14cc:	00 06                	add    %al,(%rsi)
    14ce:	08 6a 02             	or     %ch,0x2(%rdx)
    14d1:	00 00                	add    %al,(%rax)
    14d3:	0c 91                	or     $0x91,%al
    14d5:	00 00                	add    %al,(%rax)
    14d7:	00 85 02 00 00 0d    	add    %al,0xd000002(%rbp)
    14dd:	39 00                	cmp    %eax,(%rax)
    14df:	00 00                	add    %al,(%rax)
    14e1:	13 00                	adc    (%rax),%eax
    14e3:	0e                   	(bad)  
    14e4:	ad                   	lods   %ds:(%rsi),%eax
    14e5:	03 00                	add    (%rax),%eax
    14e7:	00 06                	add    %al,(%rsi)
    14e9:	89 0e                	mov    %ecx,(%rsi)
    14eb:	91                   	xchg   %eax,%ecx
    14ec:	02 00                	add    (%rax),%al
    14ee:	00 06                	add    %al,(%rsi)
    14f0:	08 24 02             	or     %ah,(%rdx,%rax,1)
    14f3:	00 00                	add    %al,(%rax)
    14f5:	0e                   	(bad)  
    14f6:	1a 04 00             	sbb    (%rax,%rax,1),%al
    14f9:	00 06                	add    %al,(%rsi)
    14fb:	8a 0e                	mov    (%rsi),%cl
    14fd:	91                   	xchg   %eax,%ecx
    14fe:	02 00                	add    (%rax),%al
    1500:	00 0e                	add    %cl,(%rsi)
    1502:	99                   	cltd   
    1503:	01 00                	add    %eax,(%rax)
    1505:	00 06                	add    %al,(%rsi)
    1507:	8b 0e                	mov    (%rsi),%ecx
    1509:	91                   	xchg   %eax,%ecx
    150a:	02 00                	add    (%rax),%al
    150c:	00 0e                	add    %cl,(%rsi)
    150e:	47 00 00             	rex.RXB add %r8b,(%r8)
    1511:	00 07                	add    %al,(%rdi)
    1513:	1a 0c 65 00 00 00 0c 	sbb    0xc000000(,%riz,2),%cl
    151a:	d1 02                	roll   (%rdx)
    151c:	00 00                	add    %al,(%rax)
    151e:	c6 02 00             	movb   $0x0,(%rdx)
    1521:	00 0f                	add    %cl,(%rdi)
    1523:	00 07                	add    %al,(%rdi)
    1525:	bb 02 00 00 06       	mov    $0x6000002,%ebx
    152a:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
    1530:	cb                   	lret   
    1531:	02 00                	add    (%rax),%al
    1533:	00 0e                	add    %cl,(%rsi)
    1535:	36 00 00             	add    %al,%ss:(%rax)
    1538:	00 07                	add    %al,(%rdi)
    153a:	1b 1a                	sbb    (%rdx),%ebx
    153c:	c6 02 00             	movb   $0x0,(%rdx)
    153f:	00 03                	add    %al,(%rbx)
    1541:	08 05 a0 01 00 00    	or     %al,0x1a0(%rip)        # 16e7 <_init-0x3ff919>
    1547:	03 08                	add    (%rax),%ecx
    1549:	07                   	(bad)  
    154a:	56                   	push   %rsi
    154b:	02 00                	add    (%rax),%al
    154d:	00 0c 8b             	add    %cl,(%rbx,%rcx,4)
    1550:	00 00                	add    %al,(%rax)
    1552:	00 00                	add    %al,(%rax)
    1554:	03 00                	add    (%rax),%eax
    1556:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 1595 <_init-0x3ffa6b>
    155c:	63 00                	movslq (%rax),%eax
    155e:	10 3a                	adc    %bh,(%rdx)
    1560:	02 00                	add    (%rax),%al
    1562:	00 08                	add    %cl,(%rax)
    1564:	14 07                	adc    $0x7,%al
    1566:	f0 02 00             	lock add (%rax),%al
    1569:	00 09                	add    %cl,(%rcx)
    156b:	03 60 61             	add    0x61(%rax),%esp
    156e:	40 00 00             	add    %al,(%rax)
    1571:	00 00                	add    %al,(%rax)
    1573:	00 10                	add    %dl,(%rax)
    1575:	84 01                	test   %al,(%rcx)
    1577:	00 00                	add    %al,(%rax)
    1579:	08 1a                	or     %bl,(%rdx)
    157b:	07                   	(bad)  
    157c:	8b 00                	mov    (%rax),%eax
    157e:	00 00                	add    %al,(%rax)
    1580:	09 03                	or     %eax,(%rbx)
    1582:	50                   	push   %rax
    1583:	61                   	(bad)  
    1584:	40 00 00             	add    %al,(%rax)
    1587:	00 00                	add    %al,(%rax)
    1589:	00 11                	add    %dl,(%rcx)
    158b:	6c                   	insb   (%dx),%es:(%rdi)
    158c:	61                   	(bad)  
    158d:	62                   	(bad)  
    158e:	00 08                	add    %cl,(%rax)
    1590:	1b 07                	sbb    (%rdi),%eax
    1592:	8b 00                	mov    (%rax),%eax
    1594:	00 00                	add    %al,(%rax)
    1596:	09 03                	or     %eax,(%rbx)
    1598:	48 61                	rex.W (bad) 
    159a:	40 00 00             	add    %al,(%rax)
    159d:	00 00                	add    %al,(%rax)
    159f:	00 10                	add    %dl,(%rax)
    15a1:	45 02 00             	add    (%r8),%r8b
    15a4:	00 08                	add    %cl,(%rax)
    15a6:	21 05 65 00 00 00    	and    %eax,0x65(%rip)        # 1611 <_init-0x3ff9ef>
    15ac:	09 03                	or     %eax,(%rbx)
    15ae:	30 61 40             	xor    %ah,0x40(%rcx)
    15b1:	00 00                	add    %al,(%rax)
    15b3:	00 00                	add    %al,(%rax)
    15b5:	00 10                	add    %dl,(%rax)
    15b7:	6b 00 00             	imul   $0x0,(%rax),%eax
    15ba:	00 08                	add    %cl,(%rax)
    15bc:	22 07                	and    (%rdi),%al
    15be:	8b 00                	mov    (%rax),%eax
    15c0:	00 00                	add    %al,(%rax)
    15c2:	09 03                	or     %eax,(%rbx)
    15c4:	40 61                	rex (bad) 
    15c6:	40 00 00             	add    %al,(%rax)
    15c9:	00 00                	add    %al,(%rax)
    15cb:	00 10                	add    %dl,(%rax)
    15cd:	79 01                	jns    15d0 <_init-0x3ffa30>
    15cf:	00 00                	add    %al,(%rax)
    15d1:	09 3c 05 65 00 00 00 	or     %edi,0x65(,%rax,1)
    15d8:	09 03                	or     %eax,(%rbx)
    15da:	0c 65                	or     $0x65,%al
    15dc:	40 00 00             	add    %al,(%rax)
    15df:	00 00                	add    %al,(%rax)
    15e1:	00 10                	add    %dl,(%rax)
    15e3:	5b                   	pop    %rbx
    15e4:	03 00                	add    (%rax),%eax
    15e6:	00 09                	add    %cl,(%rcx)
    15e8:	3d 0a 40 00 00       	cmp    $0x400a,%eax
    15ed:	00 09                	add    %cl,(%rcx)
    15ef:	03 08                	add    (%rax),%ecx
    15f1:	65 40 00 00          	add    %al,%gs:(%rax)
    15f5:	00 00                	add    %al,(%rax)
    15f7:	00 10                	add    %dl,(%rax)
    15f9:	49 03 00             	add    (%r8),%rax
    15fc:	00 09                	add    %cl,(%rcx)
    15fe:	3e 0a 40 00          	or     %ds:0x0(%rax),%al
    1602:	00 00                	add    %al,(%rax)
    1604:	09 03                	or     %eax,(%rbx)
    1606:	04 65                	add    $0x65,%al
    1608:	40 00 00             	add    %al,(%rax)
    160b:	00 00                	add    %al,(%rax)
    160d:	00 10                	add    %dl,(%rax)
    160f:	8b 01                	mov    (%rcx),%eax
    1611:	00 00                	add    %al,(%rax)
    1613:	09 3f                	or     %edi,(%rdi)
    1615:	05 65 00 00 00       	add    $0x65,%eax
    161a:	09 03                	or     %eax,(%rbx)
    161c:	00 65 40             	add    %ah,0x40(%rbp)
    161f:	00 00                	add    %al,(%rax)
    1621:	00 00                	add    %al,(%rax)
    1623:	00 10                	add    %dl,(%rax)
    1625:	1c 03                	sbb    $0x3,%al
    1627:	00 00                	add    %al,(%rax)
    1629:	09 40 05             	or     %eax,0x5(%rax)
    162c:	65 00 00             	add    %al,%gs:(%rax)
    162f:	00 09                	add    %cl,(%rcx)
    1631:	03 fc                	add    %esp,%edi
    1633:	64 40 00 00          	add    %al,%fs:(%rax)
    1637:	00 00                	add    %al,(%rax)
    1639:	00 10                	add    %dl,(%rax)
    163b:	92                   	xchg   %eax,%edx
    163c:	01 00                	add    %eax,(%rax)
    163e:	00 09                	add    %cl,(%rcx)
    1640:	41 05 65 00 00 00    	rex.B add $0x65,%eax
    1646:	09 03                	or     %eax,(%rbx)
    1648:	f8                   	clc    
    1649:	64 40 00 00          	add    %al,%fs:(%rax)
    164d:	00 00                	add    %al,(%rax)
    164f:	00 10                	add    %dl,(%rax)
    1651:	03 01                	add    (%rcx),%eax
    1653:	00 00                	add    %al,(%rax)
    1655:	09 42 07             	or     %eax,0x7(%rdx)
    1658:	91                   	xchg   %eax,%ecx
    1659:	02 00                	add    (%rax),%al
    165b:	00 09                	add    %cl,(%rcx)
    165d:	03 f0                	add    %eax,%esi
    165f:	64 40 00 00          	add    %al,%fs:(%rax)
    1663:	00 00                	add    %al,(%rax)
    1665:	00 10                	add    %dl,(%rax)
    1667:	cb                   	lret   
    1668:	00 00                	add    %al,(%rax)
    166a:	00 09                	add    %cl,(%rcx)
    166c:	43 08 2d 00 00 00 09 	rex.XB or %bpl,0x9000000(%rip)        # 9001673 <_end+0x8bfa53b>
    1673:	03 80 64 40 00 00    	add    0x4064(%rax),%eax
    1679:	00 00                	add    %al,(%rax)
    167b:	00 10                	add    %dl,(%rax)
    167d:	d0 03                	rolb   (%rbx)
    167f:	00 00                	add    %al,(%rax)
    1681:	09 44 06 91          	or     %eax,-0x6f(%rsi,%rax,1)
    1685:	00 00                	add    %al,(%rax)
    1687:	00 09                	add    %cl,(%rcx)
    1689:	03 28                	add    (%rax),%ebp
    168b:	71 40                	jno    16cd <_init-0x3ff933>
    168d:	00 00                	add    %al,(%rax)
    168f:	00 00                	add    %al,(%rax)
    1691:	00 12                	add    %dl,(%rdx)
    1693:	a8 04                	test   $0x4,%al
    1695:	00 00                	add    %al,(%rax)
    1697:	01 59 06             	add    %ebx,0x6(%rcx)
    169a:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    169b:	1c 40                	sbb    $0x40,%al
    169d:	00 00                	add    %al,(%rax)
    169f:	00 00                	add    %al,(%rax)
    16a1:	00 26                	add    %ah,(%rsi)
    16a3:	00 00                	add    %al,(%rax)
    16a5:	00 00                	add    %al,(%rax)
    16a7:	00 00                	add    %al,(%rax)
    16a9:	00 01                	add    %al,(%rcx)
    16ab:	9c                   	pushfq 
    16ac:	8f 04 00             	popq   (%rax,%rax,1)
    16af:	00 13                	add    %dl,(%rbx)
    16b1:	76 61                	jbe    1714 <_init-0x3ff8ec>
    16b3:	6c                   	insb   (%dx),%es:(%rdi)
    16b4:	00 01                	add    %al,(%rcx)
    16b6:	5b                   	pop    %rbx
    16b7:	09 65 00             	or     %esp,0x0(%rbp)
    16ba:	00 00                	add    %al,(%rax)
    16bc:	5f                   	pop    %rdi
    16bd:	06                   	(bad)  
    16be:	00 00                	add    %al,(%rax)
    16c0:	5b                   	pop    %rbx
    16c1:	06                   	(bad)  
    16c2:	00 00                	add    %al,(%rax)
    16c4:	14 b4                	adc    $0xb4,%al
    16c6:	1c 40                	sbb    $0x40,%al
    16c8:	00 00                	add    %al,(%rax)
    16ca:	00 00                	add    %al,(%rax)
    16cc:	00 5a 07             	add    %bl,0x7(%rdx)
    16cf:	00 00                	add    %al,(%rax)
    16d1:	15 c7 1c 40 00       	adc    $0x401cc7,%eax
    16d6:	00 00                	add    %al,(%rax)
    16d8:	00 00                	add    %al,(%rax)
    16da:	66 07                	data16 (bad) 
    16dc:	00 00                	add    %al,(%rax)
    16de:	16                   	(bad)  
    16df:	01 55 09             	add    %edx,0x9(%rbp)
    16e2:	03 e0                	add    %eax,%esp
    16e4:	33 40 00             	xor    0x0(%rax),%eax
    16e7:	00 00                	add    %al,(%rax)
    16e9:	00 00                	add    %al,(%rax)
    16eb:	00 00                	add    %al,(%rax)
    16ed:	17                   	(bad)  
    16ee:	ec                   	in     (%dx),%al
    16ef:	04 00                	add    $0x0,%al
    16f1:	00 01                	add    %al,(%rcx)
    16f3:	46 06                	rex.RX (bad) 
    16f5:	3e 1c 40             	ds sbb $0x40,%al
    16f8:	00 00                	add    %al,(%rax)
    16fa:	00 00                	add    %al,(%rax)
    16fc:	00 68 00             	add    %ch,0x0(%rax)
    16ff:	00 00                	add    %al,(%rax)
    1701:	00 00                	add    %al,(%rax)
    1703:	00 00                	add    %al,(%rax)
    1705:	01 9c 65 05 00 00 18 	add    %ebx,0x18000005(%rbp,%riz,2)
    170c:	be 04 00 00 01       	mov    $0x1000004,%esi
    1711:	46 13 8b 00 00 00 99 	rex.RX adc -0x67000000(%rbx),%r9d
    1718:	06                   	(bad)  
    1719:	00 00                	add    %al,(%rax)
    171b:	95                   	xchg   %eax,%ebp
    171c:	06                   	(bad)  
    171d:	00 00                	add    %al,(%rax)
    171f:	19 5a 1c             	sbb    %ebx,0x1c(%rdx)
    1722:	40 00 00             	add    %al,(%rax)
    1725:	00 00                	add    %al,(%rax)
    1727:	00 65 05             	add    %ah,0x5(%rbp)
    172a:	00 00                	add    %al,(%rax)
    172c:	d9 04 00             	flds   (%rax,%rax,1)
    172f:	00 16                	add    %dl,(%rsi)
    1731:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
    1735:	00 00                	add    %al,(%rax)
    1737:	19 72 1c             	sbb    %esi,0x1c(%rdx)
    173a:	40 00 00             	add    %al,(%rax)
    173d:	00 00                	add    %al,(%rax)
    173f:	00 66 07             	add    %ah,0x7(%rsi)
    1742:	00 00                	add    %al,(%rax)
    1744:	fe 04 00             	incb   (%rax,%rax,1)
    1747:	00 16                	add    %dl,(%rsi)
    1749:	01 55 09             	add    %edx,0x9(%rbp)
    174c:	03 90 33 40 00 00    	add    0x4033(%rax),%edx
    1752:	00 00                	add    %al,(%rax)
    1754:	00 16                	add    %dl,(%rsi)
    1756:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
    175a:	00 00                	add    %al,(%rax)
    175c:	19 7c 1c 40          	sbb    %edi,0x40(%rsp,%rbx,1)
    1760:	00 00                	add    %al,(%rax)
    1762:	00 00                	add    %al,(%rax)
    1764:	00 73 07             	add    %dh,0x7(%rbx)
    1767:	00 00                	add    %al,(%rax)
    1769:	15 05 00 00 16       	adc    $0x16000005,%eax
    176e:	01 55 01             	add    %edx,0x1(%rbp)
    1771:	33 00                	xor    (%rax),%eax
    1773:	19 86 1c 40 00 00    	sbb    %eax,0x401c(%rsi)
    1779:	00 00                	add    %al,(%rax)
    177b:	00 7f 07             	add    %bh,0x7(%rdi)
    177e:	00 00                	add    %al,(%rax)
    1780:	2c 05                	sub    $0x5,%al
    1782:	00 00                	add    %al,(%rax)
    1784:	16                   	(bad)  
    1785:	01 55 01             	add    %edx,0x1(%rbp)
    1788:	30 00                	xor    %al,(%rax)
    178a:	19 9a 1c 40 00 00    	sbb    %ebx,0x401c(%rdx)
    1790:	00 00                	add    %al,(%rax)
    1792:	00 66 07             	add    %ah,0x7(%rsi)
    1795:	00 00                	add    %al,(%rax)
    1797:	51                   	push   %rcx
    1798:	05 00 00 16 01       	add    $0x1160000,%eax
    179d:	55                   	push   %rbp
    179e:	09 03                	or     %eax,(%rbx)
    17a0:	b8 33 40 00 00       	mov    $0x4033,%eax
    17a5:	00 00                	add    %al,(%rax)
    17a7:	00 16                	add    %dl,(%rsi)
    17a9:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
    17ad:	00 00                	add    %al,(%rax)
    17af:	15 a4 1c 40 00       	adc    $0x401ca4,%eax
    17b4:	00 00                	add    %al,(%rax)
    17b6:	00 00                	add    %al,(%rax)
    17b8:	8c 07                	mov    %es,(%rdi)
    17ba:	00 00                	add    %al,(%rax)
    17bc:	16                   	(bad)  
    17bd:	01 55 01             	add    %edx,0x1(%rbp)
    17c0:	33 00                	xor    (%rax),%eax
    17c2:	00 1a                	add    %bl,(%rdx)
    17c4:	b5 04                	mov    $0x4,%ch
    17c6:	00 00                	add    %al,(%rax)
    17c8:	01 3d 05 65 00 00    	add    %edi,0x6505(%rip)        # 7cd3 <_init-0x3f932d>
    17ce:	00 bd 1b 40 00 00    	add    %bh,0x401b(%rbp)
    17d4:	00 00                	add    %al,(%rax)
    17d6:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
    17dc:	00 00                	add    %al,(%rax)
    17de:	00 01                	add    %al,(%rcx)
    17e0:	9c                   	pushfq 
    17e1:	29 06                	sub    %eax,(%rsi)
    17e3:	00 00                	add    %al,(%rax)
    17e5:	1b 76 61             	sbb    0x61(%rsi),%esi
    17e8:	6c                   	insb   (%dx),%es:(%rdi)
    17e9:	00 01                	add    %al,(%rcx)
    17eb:	3d 17 40 00 00       	cmp    $0x4017,%eax
    17f0:	00 d5                	add    %dl,%ch
    17f2:	06                   	(bad)  
    17f3:	00 00                	add    %al,(%rax)
    17f5:	cf                   	iret   
    17f6:	06                   	(bad)  
    17f7:	00 00                	add    %al,(%rax)
    17f9:	18 be 04 00 00 01    	sbb    %bh,0x1000004(%rsi)
    17ff:	3d 22 8b 00 00       	cmp    $0x8b22,%eax
    1804:	00 27                	add    %ah,(%rdi)
    1806:	07                   	(bad)  
    1807:	00 00                	add    %al,(%rax)
    1809:	21 07                	and    %eax,(%rdi)
    180b:	00 00                	add    %al,(%rax)
    180d:	1c f3                	sbb    $0xf3,%al
    180f:	04 00                	add    $0x0,%al
    1811:	00 01                	add    %al,(%rcx)
    1813:	3f                   	(bad)  
    1814:	0a 29                	or     (%rcx),%ch
    1816:	06                   	(bad)  
    1817:	00 00                	add    %al,(%rax)
    1819:	03 91 f0 7e 13 73    	add    0x73137ef0(%rcx),%edx
    181f:	00 01                	add    %al,(%rcx)
    1821:	41 0b 8b 00 00 00 75 	or     0x75000000(%r11),%ecx
    1828:	07                   	(bad)  
    1829:	00 00                	add    %al,(%rax)
    182b:	73 07                	jae    1834 <_init-0x3ff7cc>
    182d:	00 00                	add    %al,(%rax)
    182f:	14 cf                	adc    $0xcf,%al
    1831:	1b 40 00             	sbb    0x0(%rax),%eax
    1834:	00 00                	add    %al,(%rax)
    1836:	00 00                	add    %al,(%rax)
    1838:	98                   	cwtl   
    1839:	07                   	(bad)  
    183a:	00 00                	add    %al,(%rax)
    183c:	19 1d 1c 40 00 00    	sbb    %ebx,0x401c(%rip)        # 585e <_init-0x3fb7a2>
    1842:	00 00                	add    %al,(%rax)
    1844:	00 a5 07 00 00 09    	add    %ah,0x9000007(%rbp)
    184a:	06                   	(bad)  
    184b:	00 00                	add    %al,(%rax)
    184d:	16                   	(bad)  
    184e:	01 55 02             	add    %edx,0x2(%rbp)
    1851:	7c 00                	jl     1853 <_init-0x3ff7ad>
    1853:	16                   	(bad)  
    1854:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
    1858:	36 33 40 00          	xor    %ss:0x0(%rax),%eax
    185c:	00 00                	add    %al,(%rax)
    185e:	00 00                	add    %al,(%rax)
    1860:	16                   	(bad)  
    1861:	01 51 02             	add    %edx,0x2(%rcx)
    1864:	76 00                	jbe    1866 <_init-0x3ff79a>
    1866:	00 15 2d 1c 40 00    	add    %dl,0x401c2d(%rip)        # 403499 <_IO_stdin_used+0x499>
    186c:	00 00                	add    %al,(%rax)
    186e:	00 00                	add    %al,(%rax)
    1870:	b2 07                	mov    $0x7,%dl
    1872:	00 00                	add    %al,(%rax)
    1874:	16                   	(bad)  
    1875:	01 55 02             	add    %edx,0x2(%rbp)
    1878:	73 00                	jae    187a <_init-0x3ff786>
    187a:	16                   	(bad)  
    187b:	01 54 02 7c          	add    %edx,0x7c(%rdx,%rax,1)
    187f:	00 16                	add    %dl,(%rsi)
    1881:	01 51 01             	add    %edx,0x1(%rcx)
    1884:	39 00                	cmp    %eax,(%rax)
    1886:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    1889:	00 00                	add    %al,(%rax)
    188b:	00 39                	add    %bh,(%rcx)
    188d:	06                   	(bad)  
    188e:	00 00                	add    %al,(%rax)
    1890:	0d 39 00 00 00       	or     $0x39,%eax
    1895:	6d                   	insl   (%dx),%es:(%rdi)
    1896:	00 17                	add    %dl,(%rdi)
    1898:	e5 04                	in     $0x4,%eax
    189a:	00 00                	add    %al,(%rax)
    189c:	01 27                	add    %esp,(%rdi)
    189e:	06                   	(bad)  
    189f:	63 1b                	movslq (%rbx),%ebx
    18a1:	40 00 00             	add    %al,(%rax)
    18a4:	00 00                	add    %al,(%rax)
    18a6:	00 5a 00             	add    %bl,0x0(%rdx)
    18a9:	00 00                	add    %al,(%rax)
    18ab:	00 00                	add    %al,(%rax)
    18ad:	00 00                	add    %al,(%rax)
    18af:	01 9c f2 06 00 00 1b 	add    %ebx,0x1b000006(%rdx,%rsi,8)
    18b6:	76 61                	jbe    1919 <_init-0x3ff6e7>
    18b8:	6c                   	insb   (%dx),%es:(%rdi)
    18b9:	00 01                	add    %al,(%rcx)
    18bb:	27                   	(bad)  
    18bc:	16                   	(bad)  
    18bd:	40 00 00             	add    %al,(%rax)
    18c0:	00 a2 07 00 00 98    	add    %ah,-0x67fffff9(%rdx)
    18c6:	07                   	(bad)  
    18c7:	00 00                	add    %al,(%rax)
    18c9:	19 8c 1b 40 00 00 00 	sbb    %ecx,0x40(%rbx,%rbx,1)
    18d0:	00 00                	add    %al,(%rax)
    18d2:	66 07                	data16 (bad) 
    18d4:	00 00                	add    %al,(%rax)
    18d6:	91                   	xchg   %eax,%ecx
    18d7:	06                   	(bad)  
    18d8:	00 00                	add    %al,(%rax)
    18da:	16                   	(bad)  
    18db:	01 55 09             	add    %edx,0x9(%rbp)
    18de:	03 68 33             	add    0x33(%rax),%ebp
    18e1:	40 00 00             	add    %al,(%rax)
    18e4:	00 00                	add    %al,(%rax)
    18e6:	00 16                	add    %dl,(%rsi)
    18e8:	01 54 03 f3          	add    %edx,-0xd(%rbx,%rax,1)
    18ec:	01 55 00             	add    %edx,0x0(%rbp)
    18ef:	19 96 1b 40 00 00    	sbb    %edx,0x401b(%rsi)
    18f5:	00 00                	add    %al,(%rax)
    18f7:	00 8c 07 00 00 a8 06 	add    %cl,0x6a80000(%rdi,%rax,1)
    18fe:	00 00                	add    %al,(%rax)
    1900:	16                   	(bad)  
    1901:	01 55 01             	add    %edx,0x1(%rbp)
    1904:	32 00                	xor    (%rax),%al
    1906:	19 a0 1b 40 00 00    	sbb    %esp,0x401b(%rax)
    190c:	00 00                	add    %al,(%rax)
    190e:	00 7f 07             	add    %bh,0x7(%rdi)
    1911:	00 00                	add    %al,(%rax)
    1913:	bf 06 00 00 16       	mov    $0x16000006,%edi
    1918:	01 55 01             	add    %edx,0x1(%rbp)
    191b:	30 00                	xor    %al,(%rax)
    191d:	19 b1 1b 40 00 00    	sbb    %esi,0x401b(%rcx)
    1923:	00 00                	add    %al,(%rax)
    1925:	00 66 07             	add    %ah,0x7(%rsi)
    1928:	00 00                	add    %al,(%rax)
    192a:	de 06                	fiadds (%rsi)
    192c:	00 00                	add    %al,(%rax)
    192e:	16                   	(bad)  
    192f:	01 55 09             	add    %edx,0x9(%rbp)
    1932:	03 40 33             	add    0x33(%rax),%eax
    1935:	40 00 00             	add    %al,(%rax)
    1938:	00 00                	add    %al,(%rax)
    193a:	00 00                	add    %al,(%rax)
    193c:	15 bb 1b 40 00       	adc    $0x401bbb,%eax
    1941:	00 00                	add    %al,(%rax)
    1943:	00 00                	add    %al,(%rax)
    1945:	73 07                	jae    194e <_init-0x3ff6b2>
    1947:	00 00                	add    %al,(%rax)
    1949:	16                   	(bad)  
    194a:	01 55 01             	add    %edx,0x1(%rbp)
    194d:	32 00                	xor    (%rax),%al
    194f:	00 12                	add    %dl,(%rdx)
    1951:	de 04 00             	fiadds (%rax,%rax,1)
    1954:	00 01                	add    %al,(%rcx)
    1956:	18 06                	sbb    %al,(%rsi)
    1958:	35 1b 40 00 00       	xor    $0x401b,%eax
    195d:	00 00                	add    %al,(%rax)
    195f:	00 2e                	add    %ch,(%rsi)
    1961:	00 00                	add    %al,(%rax)
    1963:	00 00                	add    %al,(%rax)
    1965:	00 00                	add    %al,(%rax)
    1967:	00 01                	add    %al,(%rcx)
    1969:	9c                   	pushfq 
    196a:	5a                   	pop    %rdx
    196b:	07                   	(bad)  
    196c:	00 00                	add    %al,(%rax)
    196e:	19 4f 1b             	sbb    %ecx,0x1b(%rdi)
    1971:	40 00 00             	add    %al,(%rax)
    1974:	00 00                	add    %al,(%rax)
    1976:	00 be 07 00 00 2f    	add    %bh,0x2f000007(%rsi)
    197c:	07                   	(bad)  
    197d:	00 00                	add    %al,(%rax)
    197f:	16                   	(bad)  
    1980:	01 55 09             	add    %edx,0x9(%rbp)
    1983:	03 19                	add    (%rcx),%ebx
    1985:	33 40 00             	xor    0x0(%rax),%eax
    1988:	00 00                	add    %al,(%rax)
    198a:	00 00                	add    %al,(%rax)
    198c:	00 19                	add    %bl,(%rcx)
    198e:	59                   	pop    %rcx
    198f:	1b 40 00             	sbb    0x0(%rax),%eax
    1992:	00 00                	add    %al,(%rax)
    1994:	00 00                	add    %al,(%rax)
    1996:	73 07                	jae    199f <_init-0x3ff661>
    1998:	00 00                	add    %al,(%rax)
    199a:	46 07                	rex.RX (bad) 
    199c:	00 00                	add    %al,(%rax)
    199e:	16                   	(bad)  
    199f:	01 55 01             	add    %edx,0x1(%rbp)
    19a2:	31 00                	xor    %eax,(%rax)
    19a4:	15 63 1b 40 00       	adc    $0x401b63,%eax
    19a9:	00 00                	add    %al,(%rax)
    19ab:	00 00                	add    %al,(%rax)
    19ad:	7f 07                	jg     19b6 <_init-0x3ff64a>
    19af:	00 00                	add    %al,(%rax)
    19b1:	16                   	(bad)  
    19b2:	01 55 01             	add    %edx,0x1(%rbp)
    19b5:	30 00                	xor    %al,(%rax)
    19b7:	00 1d 46 04 00 00    	add    %bl,0x446(%rip)        # 1e03 <_init-0x3ff1fd>
    19bd:	46 04 00             	rex.RX add $0x0,%al
    19c0:	00 09                	add    %cl,(%rcx)
    19c2:	4a 0a 1e             	rex.WX or (%rsi),%bl
    19c5:	eb 01                	jmp    19c8 <_init-0x3ff638>
    19c7:	00 00                	add    %al,(%rax)
    19c9:	eb 01                	jmp    19cc <_init-0x3ff634>
    19cb:	00 00                	add    %al,(%rax)
    19cd:	06                   	(bad)  
    19ce:	4c 01 0c 1d c3 04 00 	add    %r9,0x4c3(,%rbx,1)
    19d5:	00 
    19d6:	c3                   	retq   
    19d7:	04 00                	add    $0x0,%al
    19d9:	00 09                	add    %cl,(%rcx)
    19db:	54                   	push   %rsp
    19dc:	06                   	(bad)  
    19dd:	1e                   	(bad)  
    19de:	fc                   	cld    
    19df:	01 00                	add    %eax,(%rax)
    19e1:	00 fc                	add    %bh,%ah
    19e3:	01 00                	add    %eax,(%rax)
    19e5:	00 0a                	add    %cl,(%rdx)
    19e7:	66 02 0d 1d 3c 01 00 	data16 add 0x13c1d(%rip),%cl        # 1560b <_init-0x3eb9f5>
    19ee:	00 3c 01             	add    %bh,(%rcx,%rax,1)
    19f1:	00 00                	add    %al,(%rax)
    19f3:	09 55 06             	or     %edx,0x6(%rbp)
    19f6:	1e                   	(bad)  
    19f7:	d0 01                	rolb   (%rcx)
    19f9:	00 00                	add    %al,(%rax)
    19fb:	d0 01                	rolb   (%rcx)
    19fd:	00 00                	add    %al,(%rax)
    19ff:	0a 91 01 11 1e ad    	or     -0x52e1eeff(%rcx),%dl
    1a05:	04 00                	add    $0x0,%al
    1a07:	00 ad 04 00 00 06    	add    %ch,0x6000004(%rbp)
    1a0d:	4e 01 0c 1d d6 04 00 	add    %r9,0x4d6(,%r11,1)
    1a14:	00 
    1a15:	d6                   	(bad)  
    1a16:	04 00                	add    $0x0,%al
    1a18:	00 0b                	add    %cl,(%rbx)
    1a1a:	8b 0c 1f             	mov    (%rdi,%rbx,1),%ecx
    1a1d:	1d 00 00 00 13       	sbb    $0x13000000,%eax
    1a22:	00 00                	add    %al,(%rax)
    1a24:	00 0c 00             	add    %cl,(%rax,%rax,1)
    1a27:	00 26                	add    %ah,(%rsi)
    1a29:	0e                   	(bad)  
    1a2a:	00 00                	add    %al,(%rax)
    1a2c:	04 00                	add    $0x0,%al
    1a2e:	55                   	push   %rbp
    1a2f:	06                   	(bad)  
    1a30:	00 00                	add    %al,(%rax)
    1a32:	08 01                	or     %al,(%rcx)
    1a34:	99                   	cltd   
    1a35:	00 00                	add    %al,(%rax)
    1a37:	00 0c 79             	add    %cl,(%rcx,%rdi,2)
    1a3a:	05 00 00 48 01       	add    $0x1480000,%eax
    1a3f:	00 00                	add    %al,(%rax)
    1a41:	cc                   	int3   
    1a42:	1c 40                	sbb    $0x40,%al
    1a44:	00 00                	add    %al,(%rax)
    1a46:	00 00                	add    %al,(%rax)
    1a48:	00 08                	add    %cl,(%rax)
    1a4a:	05 00 00 00 00       	add    $0x0,%eax
    1a4f:	00 00                	add    %al,(%rax)
    1a51:	e3 09                	jrcxz  1a5c <_init-0x3ff5a4>
    1a53:	00 00                	add    %al,(%rax)
    1a55:	02 7e 06             	add    0x6(%rsi),%bh
    1a58:	00 00                	add    %al,(%rax)
    1a5a:	02 d8                	add    %al,%bl
    1a5c:	17                   	(bad)  
    1a5d:	39 00                	cmp    %eax,(%rax)
    1a5f:	00 00                	add    %al,(%rax)
    1a61:	03 08                	add    (%rax),%ecx
    1a63:	07                   	(bad)  
    1a64:	5b                   	pop    %rbx
    1a65:	02 00                	add    (%rax),%al
    1a67:	00 03                	add    %al,(%rbx)
    1a69:	04 07                	add    $0x7,%al
    1a6b:	60                   	(bad)  
    1a6c:	02 00                	add    (%rax),%al
    1a6e:	00 04 08             	add    %al,(%rax,%rcx,1)
    1a71:	03 01                	add    (%rcx),%eax
    1a73:	08 21                	or     %ah,(%rcx)
    1a75:	02 00                	add    (%rax),%al
    1a77:	00 03                	add    %al,(%rbx)
    1a79:	02 07                	add    (%rdi),%al
    1a7b:	32 03                	xor    (%rbx),%al
    1a7d:	00 00                	add    %al,(%rax)
    1a7f:	03 01                	add    (%rcx),%eax
    1a81:	06                   	(bad)  
    1a82:	23 02                	and    (%rdx),%eax
    1a84:	00 00                	add    %al,(%rax)
    1a86:	03 02                	add    (%rdx),%eax
    1a88:	05 73 00 00 00       	add    $0x73,%eax
    1a8d:	05 04 05 69 6e       	add    $0x6e690504,%eax
    1a92:	74 00                	je     1a94 <_init-0x3ff56c>
    1a94:	03 08                	add    (%rax),%ecx
    1a96:	05 a5 01 00 00       	add    $0x1a5,%eax
    1a9b:	02 95 03 00 00 03    	add    0x3000003(%rbp),%dl
    1aa1:	96                   	xchg   %eax,%esi
    1aa2:	19 6c 00 00          	sbb    %ebp,0x0(%rax,%rax,1)
    1aa6:	00 02                	add    %al,(%rdx)
    1aa8:	62 03                	(bad)  
    1aaa:	00 00                	add    %al,(%rax)
    1aac:	03 97 1b 6c 00 00    	add    0x6c1b(%rdi),%edx
    1ab2:	00 06                	add    %al,(%rsi)
    1ab4:	08 91 00 00 00 03    	or     %dl,0x3000000(%rcx)
    1aba:	01 06                	add    %eax,(%rsi)
    1abc:	2a 02                	sub    (%rdx),%al
    1abe:	00 00                	add    %al,(%rax)
    1ac0:	07                   	(bad)  
    1ac1:	91                   	xchg   %eax,%ecx
    1ac2:	00 00                	add    %al,(%rax)
    1ac4:	00 08                	add    %cl,(%rax)
    1ac6:	10 02                	adc    %al,(%rdx)
    1ac8:	00 00                	add    %al,(%rax)
    1aca:	d8 04 31             	fadds  (%rcx,%rsi,1)
    1acd:	08 24 02             	or     %ah,(%rdx,%rax,1)
    1ad0:	00 00                	add    %al,(%rax)
    1ad2:	09 13                	or     %edx,(%rbx)
    1ad4:	04 00                	add    $0x0,%al
    1ad6:	00 04 33             	add    %al,(%rbx,%rsi,1)
    1ad9:	07                   	(bad)  
    1ada:	65 00 00             	add    %al,%gs:(%rax)
    1add:	00 00                	add    %al,(%rax)
    1adf:	09 b3 02 00 00 04    	or     %esi,0x4000002(%rbx)
    1ae5:	36 09 8b 00 00 00 08 	or     %ecx,%ss:0x8000000(%rbx)
    1aec:	09 8e 02 00 00 04    	or     %ecx,0x4000002(%rsi)
    1af2:	37                   	(bad)  
    1af3:	09 8b 00 00 00 10    	or     %ecx,0x10000000(%rbx)
    1af9:	09 22                	or     %esp,(%rdx)
    1afb:	00 00                	add    %al,(%rax)
    1afd:	00 04 38             	add    %al,(%rax,%rdi,1)
    1b00:	09 8b 00 00 00 18    	or     %ecx,0x18000000(%rbx)
    1b06:	09 9b 02 00 00 04    	or     %ebx,0x4000002(%rbx)
    1b0c:	39 09                	cmp    %ecx,(%rcx)
    1b0e:	8b 00                	mov    (%rax),%eax
    1b10:	00 00                	add    %al,(%rax)
    1b12:	20 09                	and    %cl,(%rcx)
    1b14:	d6                   	(bad)  
    1b15:	00 00                	add    %al,(%rax)
    1b17:	00 04 3a             	add    %al,(%rdx,%rdi,1)
    1b1a:	09 8b 00 00 00 28    	or     %ecx,0x28000000(%rbx)
    1b20:	09 5d 00             	or     %ebx,0x0(%rbp)
    1b23:	00 00                	add    %al,(%rax)
    1b25:	04 3b                	add    $0x3b,%al
    1b27:	09 8b 00 00 00 30    	or     %ecx,0x30000000(%rbx)
    1b2d:	09 f6                	or     %esi,%esi
    1b2f:	00 00                	add    %al,(%rax)
    1b31:	00 04 3c             	add    %al,(%rsp,%rdi,1)
    1b34:	09 8b 00 00 00 38    	or     %ecx,0x38000000(%rbx)
    1b3a:	09 d4                	or     %edx,%esp
    1b3c:	02 00                	add    (%rax),%al
    1b3e:	00 04 3d 09 8b 00 00 	add    %al,0x8b09(,%rdi,1)
    1b45:	00 40 09             	add    %al,0x9(%rax)
    1b48:	e4 03                	in     $0x3,%al
    1b4a:	00 00                	add    %al,(%rax)
    1b4c:	04 40                	add    $0x40,%al
    1b4e:	09 8b 00 00 00 48    	or     %ecx,0x48000000(%rbx)
    1b54:	09 9d 03 00 00 04    	or     %ebx,0x4000003(%rbp)
    1b5a:	41 09 8b 00 00 00 50 	or     %ecx,0x50000000(%r11)
    1b61:	09 50 00             	or     %edx,0x0(%rax)
    1b64:	00 00                	add    %al,(%rax)
    1b66:	04 42                	add    $0x42,%al
    1b68:	09 8b 00 00 00 58    	or     %ecx,0x58000000(%rbx)
    1b6e:	09 14 01             	or     %edx,(%rcx,%rax,1)
    1b71:	00 00                	add    %al,(%rax)
    1b73:	04 44                	add    $0x44,%al
    1b75:	16                   	(bad)  
    1b76:	3d 02 00 00 60       	cmp    $0x60000002,%eax
    1b7b:	09 75 03             	or     %esi,0x3(%rbp)
    1b7e:	00 00                	add    %al,(%rax)
    1b80:	04 46                	add    $0x46,%al
    1b82:	14 43                	adc    $0x43,%al
    1b84:	02 00                	add    (%rax),%al
    1b86:	00 68 09             	add    %ch,0x9(%rax)
    1b89:	04 04                	add    $0x4,%al
    1b8b:	00 00                	add    %al,(%rax)
    1b8d:	04 48                	add    $0x48,%al
    1b8f:	07                   	(bad)  
    1b90:	65 00 00             	add    %al,%gs:(%rax)
    1b93:	00 70 09             	add    %dh,0x9(%rax)
    1b96:	b3 03                	mov    $0x3,%bl
    1b98:	00 00                	add    %al,(%rax)
    1b9a:	04 49                	add    $0x49,%al
    1b9c:	07                   	(bad)  
    1b9d:	65 00 00             	add    %al,%gs:(%rax)
    1ba0:	00 74 09 07          	add    %dh,0x7(%rcx,%rcx,1)
    1ba4:	00 00                	add    %al,(%rax)
    1ba6:	00 04 4a             	add    %al,(%rdx,%rcx,2)
    1ba9:	0b 73 00             	or     0x0(%rbx),%esi
    1bac:	00 00                	add    %al,(%rax)
    1bae:	78 09                	js     1bb9 <_init-0x3ff447>
    1bb0:	de 01                	fiadds (%rcx)
    1bb2:	00 00                	add    %al,(%rax)
    1bb4:	04 4d                	add    $0x4d,%al
    1bb6:	12 50 00             	adc    0x0(%rax),%dl
    1bb9:	00 00                	add    %al,(%rax)
    1bbb:	80 09 01             	orb    $0x1,(%rcx)
    1bbe:	02 00                	add    (%rax),%al
    1bc0:	00 04 4e             	add    %al,(%rsi,%rcx,2)
    1bc3:	0f 57 00             	xorps  (%rax),%xmm0
    1bc6:	00 00                	add    %al,(%rax)
    1bc8:	82                   	(bad)  
    1bc9:	09 78 02             	or     %edi,0x2(%rax)
    1bcc:	00 00                	add    %al,(%rax)
    1bce:	04 4f                	add    $0x4f,%al
    1bd0:	08 49 02             	or     %cl,0x2(%rcx)
    1bd3:	00 00                	add    %al,(%rax)
    1bd5:	83 09 b9             	orl    $0xffffffb9,(%rcx)
    1bd8:	01 00                	add    %eax,(%rax)
    1bda:	00 04 51             	add    %al,(%rcx,%rdx,2)
    1bdd:	0f 59 02             	mulps  (%rdx),%xmm0
    1be0:	00 00                	add    %al,(%rax)
    1be2:	88 09                	mov    %cl,(%rcx)
    1be4:	0b 00                	or     (%rax),%eax
    1be6:	00 00                	add    %al,(%rax)
    1be8:	04 59                	add    $0x59,%al
    1bea:	0d 7f 00 00 00       	or     $0x7f,%eax
    1bef:	90                   	nop
    1bf0:	09 24 04             	or     %esp,(%rsp,%rax,1)
    1bf3:	00 00                	add    %al,(%rax)
    1bf5:	04 5b                	add    $0x5b,%al
    1bf7:	17                   	(bad)  
    1bf8:	64 02 00             	add    %fs:(%rax),%al
    1bfb:	00 98 09 7f 03 00    	add    %bl,0x37f09(%rax)
    1c01:	00 04 5c             	add    %al,(%rsp,%rbx,2)
    1c04:	19 6f 02             	sbb    %ebp,0x2(%rdi)
    1c07:	00 00                	add    %al,(%rax)
    1c09:	a0 09 01 03 00 00 04 	movabs 0x145d040000030109,%al
    1c10:	5d 14 
    1c12:	43 02 00             	rex.XB add (%r8),%al
    1c15:	00 a8 09 e9 00 00    	add    %ch,0xe909(%rax)
    1c1b:	00 04 5e             	add    %al,(%rsi,%rbx,2)
    1c1e:	09 47 00             	or     %eax,0x0(%rdi)
    1c21:	00 00                	add    %al,(%rax)
    1c23:	b0 09                	mov    $0x9,%al
    1c25:	15 03 00 00 04       	adc    $0x4000003,%eax
    1c2a:	5f                   	pop    %rdi
    1c2b:	0a 2d 00 00 00 b8    	or     -0x48000000(%rip),%ch        # ffffffffb8001c31 <_end+0xffffffffb7bfaaf9>
    1c31:	09 bb 03 00 00 04    	or     %edi,0x4000003(%rbx)
    1c37:	60                   	(bad)  
    1c38:	07                   	(bad)  
    1c39:	65 00 00             	add    %al,%gs:(%rax)
    1c3c:	00 c0                	add    %al,%al
    1c3e:	09 aa 02 00 00 04    	or     %ebp,0x4000002(%rdx)
    1c44:	62                   	(bad)  
    1c45:	08 75 02             	or     %dh,0x2(%rbp)
    1c48:	00 00                	add    %al,(%rax)
    1c4a:	c4                   	(bad)  
    1c4b:	00 02                	add    %al,(%rdx)
    1c4d:	14 02                	adc    $0x2,%al
    1c4f:	00 00                	add    %al,(%rax)
    1c51:	05 07 19 9d 00       	add    $0x9d1907,%eax
    1c56:	00 00                	add    %al,(%rax)
    1c58:	0a 7d 00             	or     0x0(%rbp),%bh
    1c5b:	00 00                	add    %al,(%rax)
    1c5d:	04 2b                	add    $0x2b,%al
    1c5f:	0e                   	(bad)  
    1c60:	0b 6d 02             	or     0x2(%rbp),%ebp
    1c63:	00 00                	add    %al,(%rax)
    1c65:	06                   	(bad)  
    1c66:	08 38                	or     %bh,(%rax)
    1c68:	02 00                	add    (%rax),%al
    1c6a:	00 06                	add    %al,(%rsi)
    1c6c:	08 9d 00 00 00 0c    	or     %bl,0xc000000(%rbp)
    1c72:	91                   	xchg   %eax,%ecx
    1c73:	00 00                	add    %al,(%rax)
    1c75:	00 59 02             	add    %bl,0x2(%rcx)
    1c78:	00 00                	add    %al,(%rax)
    1c7a:	0d 39 00 00 00       	or     $0x39,%eax
    1c7f:	00 00                	add    %al,(%rax)
    1c81:	06                   	(bad)  
    1c82:	08 30                	or     %dh,(%rax)
    1c84:	02 00                	add    (%rax),%al
    1c86:	00 0b                	add    %cl,(%rbx)
    1c88:	21 04 00             	and    %eax,(%rax,%rax,1)
    1c8b:	00 06                	add    %al,(%rsi)
    1c8d:	08 5f 02             	or     %bl,0x2(%rdi)
    1c90:	00 00                	add    %al,(%rax)
    1c92:	0b 7c 03 00          	or     0x0(%rbx,%rax,1),%edi
    1c96:	00 06                	add    %al,(%rsi)
    1c98:	08 6a 02             	or     %ch,0x2(%rdx)
    1c9b:	00 00                	add    %al,(%rax)
    1c9d:	0c 91                	or     $0x91,%al
    1c9f:	00 00                	add    %al,(%rax)
    1ca1:	00 85 02 00 00 0d    	add    %al,0xd000002(%rbp)
    1ca7:	39 00                	cmp    %eax,(%rax)
    1ca9:	00 00                	add    %al,(%rax)
    1cab:	13 00                	adc    (%rax),%eax
    1cad:	0e                   	(bad)  
    1cae:	ad                   	lods   %ds:(%rsi),%eax
    1caf:	03 00                	add    (%rax),%eax
    1cb1:	00 06                	add    %al,(%rsi)
    1cb3:	89 0e                	mov    %ecx,(%rsi)
    1cb5:	91                   	xchg   %eax,%ecx
    1cb6:	02 00                	add    (%rax),%al
    1cb8:	00 06                	add    %al,(%rsi)
    1cba:	08 24 02             	or     %ah,(%rdx,%rax,1)
    1cbd:	00 00                	add    %al,(%rax)
    1cbf:	0e                   	(bad)  
    1cc0:	1a 04 00             	sbb    (%rax,%rax,1),%al
    1cc3:	00 06                	add    %al,(%rsi)
    1cc5:	8a 0e                	mov    (%rsi),%cl
    1cc7:	91                   	xchg   %eax,%ecx
    1cc8:	02 00                	add    (%rax),%al
    1cca:	00 0e                	add    %cl,(%rsi)
    1ccc:	99                   	cltd   
    1ccd:	01 00                	add    %eax,(%rax)
    1ccf:	00 06                	add    %al,(%rsi)
    1cd1:	8b 0e                	mov    (%rsi),%ecx
    1cd3:	91                   	xchg   %eax,%ecx
    1cd4:	02 00                	add    (%rax),%al
    1cd6:	00 0e                	add    %cl,(%rsi)
    1cd8:	47 00 00             	rex.RXB add %r8b,(%r8)
    1cdb:	00 07                	add    %al,(%rdi)
    1cdd:	1a 0c 65 00 00 00 0c 	sbb    0xc000000(,%riz,2),%cl
    1ce4:	d1 02                	roll   (%rdx)
    1ce6:	00 00                	add    %al,(%rax)
    1ce8:	c6 02 00             	movb   $0x0,(%rdx)
    1ceb:	00 0f                	add    %cl,(%rdi)
    1ced:	00 07                	add    %al,(%rdi)
    1cef:	bb 02 00 00 06       	mov    $0x6000002,%ebx
    1cf4:	08 98 00 00 00 07    	or     %bl,0x7000000(%rax)
    1cfa:	cb                   	lret   
    1cfb:	02 00                	add    (%rax),%al
    1cfd:	00 0e                	add    %cl,(%rsi)
    1cff:	36 00 00             	add    %al,%ss:(%rax)
    1d02:	00 07                	add    %al,(%rdi)
    1d04:	1b 1a                	sbb    (%rdx),%ebx
    1d06:	c6 02 00             	movb   $0x0,(%rdx)
    1d09:	00 03                	add    %al,(%rbx)
    1d0b:	08 05 a0 01 00 00    	or     %al,0x1a0(%rip)        # 1eb1 <_init-0x3ff14f>
    1d11:	03 08                	add    (%rax),%ecx
    1d13:	07                   	(bad)  
    1d14:	56                   	push   %rsi
    1d15:	02 00                	add    (%rax),%al
    1d17:	00 0c 8b             	add    %cl,(%rbx,%rcx,4)
    1d1a:	00 00                	add    %al,(%rax)
    1d1c:	00 00                	add    %al,(%rax)
    1d1e:	03 00                	add    (%rax),%eax
    1d20:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 1d5f <_init-0x3ff2a1>
    1d26:	63 00                	movslq (%rax),%eax
    1d28:	10 3a                	adc    %bh,(%rdx)
    1d2a:	02 00                	add    (%rax),%al
    1d2c:	00 08                	add    %cl,(%rax)
    1d2e:	14 07                	adc    $0x7,%al
    1d30:	f0 02 00             	lock add (%rax),%al
    1d33:	00 09                	add    %cl,(%rcx)
    1d35:	03 60 61             	add    0x61(%rax),%esp
    1d38:	40 00 00             	add    %al,(%rax)
    1d3b:	00 00                	add    %al,(%rax)
    1d3d:	00 10                	add    %dl,(%rax)
    1d3f:	84 01                	test   %al,(%rcx)
    1d41:	00 00                	add    %al,(%rax)
    1d43:	08 1a                	or     %bl,(%rdx)
    1d45:	07                   	(bad)  
    1d46:	8b 00                	mov    (%rax),%eax
    1d48:	00 00                	add    %al,(%rax)
    1d4a:	09 03                	or     %eax,(%rbx)
    1d4c:	50                   	push   %rax
    1d4d:	61                   	(bad)  
    1d4e:	40 00 00             	add    %al,(%rax)
    1d51:	00 00                	add    %al,(%rax)
    1d53:	00 11                	add    %dl,(%rcx)
    1d55:	6c                   	insb   (%dx),%es:(%rdi)
    1d56:	61                   	(bad)  
    1d57:	62                   	(bad)  
    1d58:	00 08                	add    %cl,(%rax)
    1d5a:	1b 07                	sbb    (%rdi),%eax
    1d5c:	8b 00                	mov    (%rax),%eax
    1d5e:	00 00                	add    %al,(%rax)
    1d60:	09 03                	or     %eax,(%rbx)
    1d62:	48 61                	rex.W (bad) 
    1d64:	40 00 00             	add    %al,(%rax)
    1d67:	00 00                	add    %al,(%rax)
    1d69:	00 10                	add    %dl,(%rax)
    1d6b:	45 02 00             	add    (%r8),%r8b
    1d6e:	00 08                	add    %cl,(%rax)
    1d70:	21 05 65 00 00 00    	and    %eax,0x65(%rip)        # 1ddb <_init-0x3ff225>
    1d76:	09 03                	or     %eax,(%rbx)
    1d78:	30 61 40             	xor    %ah,0x40(%rcx)
    1d7b:	00 00                	add    %al,(%rax)
    1d7d:	00 00                	add    %al,(%rax)
    1d7f:	00 10                	add    %dl,(%rax)
    1d81:	6b 00 00             	imul   $0x0,(%rax),%eax
    1d84:	00 08                	add    %cl,(%rax)
    1d86:	22 07                	and    (%rdi),%al
    1d88:	8b 00                	mov    (%rax),%eax
    1d8a:	00 00                	add    %al,(%rax)
    1d8c:	09 03                	or     %eax,(%rbx)
    1d8e:	40 61                	rex (bad) 
    1d90:	40 00 00             	add    %al,(%rax)
    1d93:	00 00                	add    %al,(%rax)
    1d95:	00 10                	add    %dl,(%rax)
    1d97:	79 01                	jns    1d9a <_init-0x3ff266>
    1d99:	00 00                	add    %al,(%rax)
    1d9b:	09 3c 05 65 00 00 00 	or     %edi,0x65(,%rax,1)
    1da2:	09 03                	or     %eax,(%rbx)
    1da4:	0c 65                	or     $0x65,%al
    1da6:	40 00 00             	add    %al,(%rax)
    1da9:	00 00                	add    %al,(%rax)
    1dab:	00 10                	add    %dl,(%rax)
    1dad:	5b                   	pop    %rbx
    1dae:	03 00                	add    (%rax),%eax
    1db0:	00 09                	add    %cl,(%rcx)
    1db2:	3d 0a 40 00 00       	cmp    $0x400a,%eax
    1db7:	00 09                	add    %cl,(%rcx)
    1db9:	03 08                	add    (%rax),%ecx
    1dbb:	65 40 00 00          	add    %al,%gs:(%rax)
    1dbf:	00 00                	add    %al,(%rax)
    1dc1:	00 10                	add    %dl,(%rax)
    1dc3:	49 03 00             	add    (%r8),%rax
    1dc6:	00 09                	add    %cl,(%rcx)
    1dc8:	3e 0a 40 00          	or     %ds:0x0(%rax),%al
    1dcc:	00 00                	add    %al,(%rax)
    1dce:	09 03                	or     %eax,(%rbx)
    1dd0:	04 65                	add    $0x65,%al
    1dd2:	40 00 00             	add    %al,(%rax)
    1dd5:	00 00                	add    %al,(%rax)
    1dd7:	00 10                	add    %dl,(%rax)
    1dd9:	8b 01                	mov    (%rcx),%eax
    1ddb:	00 00                	add    %al,(%rax)
    1ddd:	09 3f                	or     %edi,(%rdi)
    1ddf:	05 65 00 00 00       	add    $0x65,%eax
    1de4:	09 03                	or     %eax,(%rbx)
    1de6:	00 65 40             	add    %ah,0x40(%rbp)
    1de9:	00 00                	add    %al,(%rax)
    1deb:	00 00                	add    %al,(%rax)
    1ded:	00 10                	add    %dl,(%rax)
    1def:	1c 03                	sbb    $0x3,%al
    1df1:	00 00                	add    %al,(%rax)
    1df3:	09 40 05             	or     %eax,0x5(%rax)
    1df6:	65 00 00             	add    %al,%gs:(%rax)
    1df9:	00 09                	add    %cl,(%rcx)
    1dfb:	03 fc                	add    %esp,%edi
    1dfd:	64 40 00 00          	add    %al,%fs:(%rax)
    1e01:	00 00                	add    %al,(%rax)
    1e03:	00 10                	add    %dl,(%rax)
    1e05:	92                   	xchg   %eax,%edx
    1e06:	01 00                	add    %eax,(%rax)
    1e08:	00 09                	add    %cl,(%rcx)
    1e0a:	41 05 65 00 00 00    	rex.B add $0x65,%eax
    1e10:	09 03                	or     %eax,(%rbx)
    1e12:	f8                   	clc    
    1e13:	64 40 00 00          	add    %al,%fs:(%rax)
    1e17:	00 00                	add    %al,(%rax)
    1e19:	00 10                	add    %dl,(%rax)
    1e1b:	03 01                	add    (%rcx),%eax
    1e1d:	00 00                	add    %al,(%rax)
    1e1f:	09 42 07             	or     %eax,0x7(%rdx)
    1e22:	91                   	xchg   %eax,%ecx
    1e23:	02 00                	add    (%rax),%al
    1e25:	00 09                	add    %cl,(%rcx)
    1e27:	03 f0                	add    %eax,%esi
    1e29:	64 40 00 00          	add    %al,%fs:(%rax)
    1e2d:	00 00                	add    %al,(%rax)
    1e2f:	00 10                	add    %dl,(%rax)
    1e31:	cb                   	lret   
    1e32:	00 00                	add    %al,(%rax)
    1e34:	00 09                	add    %cl,(%rcx)
    1e36:	43 08 2d 00 00 00 09 	rex.XB or %bpl,0x9000000(%rip)        # 9001e3d <_end+0x8bfad05>
    1e3d:	03 80 64 40 00 00    	add    0x4064(%rax),%eax
    1e43:	00 00                	add    %al,(%rax)
    1e45:	00 10                	add    %dl,(%rax)
    1e47:	d0 03                	rolb   (%rbx)
    1e49:	00 00                	add    %al,(%rax)
    1e4b:	09 44 06 91          	or     %eax,-0x6f(%rsi,%rax,1)
    1e4f:	00 00                	add    %al,(%rax)
    1e51:	00 09                	add    %cl,(%rcx)
    1e53:	03 28                	add    (%rax),%ebp
    1e55:	71 40                	jno    1e97 <_init-0x3ff169>
    1e57:	00 00                	add    %al,(%rax)
    1e59:	00 00                	add    %al,(%rax)
    1e5b:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    1e5e:	00 00                	add    %al,(%rax)
    1e60:	00 45 04             	add    %al,0x4(%rbp)
    1e63:	00 00                	add    %al,(%rax)
    1e65:	12 39                	adc    (%rcx),%bh
    1e67:	00 00                	add    %al,(%rax)
    1e69:	00 ff                	add    %bh,%bh
    1e6b:	1f                   	(bad)  
    1e6c:	00 13                	add    %dl,(%rbx)
    1e6e:	36 05 00 00 01 35    	ss add $0x35010000,%eax
    1e74:	0d 65 00 00 00       	or     $0x65,%eax
    1e79:	09 03                	or     %eax,(%rbx)
    1e7b:	24 71                	and    $0x71,%al
    1e7d:	40 00 00             	add    %al,(%rax)
    1e80:	00 00                	add    %al,(%rax)
    1e82:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    1e85:	00 00                	add    %al,(%rax)
    1e87:	00 6c 04 00          	add    %ch,0x0(%rsp,%rax,1)
    1e8b:	00 12                	add    %dl,(%rdx)
    1e8d:	39 00                	cmp    %eax,(%rax)
    1e8f:	00 00                	add    %al,(%rax)
    1e91:	00 0c 00             	add    %cl,(%rax,%rax,1)
    1e94:	13 44 05 00          	adc    0x0(%rbp,%rax,1),%eax
    1e98:	00 01                	add    %al,(%rcx)
    1e9a:	36 0d 5b 04 00 00    	ss or  $0x45b,%eax
    1ea0:	09 03                	or     %eax,(%rbx)
    1ea2:	20 65 40             	and    %ah,0x40(%rbp)
    1ea5:	00 00                	add    %al,(%rax)
    1ea7:	00 00                	add    %al,(%rax)
    1ea9:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    1eac:	00 00                	add    %al,(%rax)
    1eae:	00 92 04 00 00 0d    	add    %dl,0xd000004(%rdx)
    1eb4:	39 00                	cmp    %eax,(%rax)
    1eb6:	00 00                	add    %al,(%rax)
    1eb8:	0f 00 13             	lldt   (%rbx)
    1ebb:	93                   	xchg   %eax,%ebx
    1ebc:	05 00 00 01 8e       	add    $0x8e010000,%eax
    1ec1:	0d 82 04 00 00       	or     $0x482,%eax
    1ec6:	09 03                	or     %eax,(%rbx)
    1ec8:	50                   	push   %rax
    1ec9:	36 40 00 00          	add    %al,%ss:(%rax)
    1ecd:	00 00                	add    %al,(%rax)
    1ecf:	00 14 28             	add    %dl,(%rax,%rbp,1)
    1ed2:	05 00 00 01 38       	add    $0x38010000,%eax
    1ed7:	01 08                	add    %ecx,(%rax)
    1ed9:	2d 00 00 00 09       	sub    $0x9000000,%eax
    1ede:	03 e8                	add    %eax,%ebp
    1ee0:	64 40 00 00          	add    %al,%fs:(%rax)
    1ee4:	00 00                	add    %al,(%rax)
    1ee6:	00 14 f8             	add    %dl,(%rax,%rdi,8)
    1ee9:	04 00                	add    $0x0,%al
    1eeb:	00 01                	add    %al,(%rcx)
    1eed:	39 01                	cmp    %eax,(%rcx)
    1eef:	10 d6                	adc    %dl,%dh
    1ef1:	04 00                	add    $0x0,%al
    1ef3:	00 09                	add    %cl,(%rcx)
    1ef5:	03 30                	add    (%rax),%esi
    1ef7:	71 40                	jno    1f39 <_init-0x3ff0c7>
    1ef9:	00 00                	add    %al,(%rax)
    1efb:	00 00                	add    %al,(%rax)
    1efd:	00 06                	add    %al,(%rsi)
    1eff:	08 dc                	or     %bl,%ah
    1f01:	04 00                	add    $0x0,%al
    1f03:	00 15 14 0c 05 00    	add    %dl,0x50c14(%rip)        # 52b1d <_init-0x3ae4e3>
    1f09:	00 01                	add    %al,(%rcx)
    1f0b:	3a 01                	cmp    (%rcx),%al
    1f0d:	10 d6                	adc    %dl,%dh
    1f0f:	04 00                	add    $0x0,%al
    1f11:	00 09                	add    %cl,(%rcx)
    1f13:	03 e0                	add    %eax,%esp
    1f15:	64 40 00 00          	add    %al,%fs:(%rax)
    1f19:	00 00                	add    %al,(%rax)
    1f1b:	00 16                	add    %dl,(%rsi)
    1f1d:	e0 02                	loopne 1f21 <_init-0x3ff0df>
    1f1f:	00 00                	add    %al,(%rax)
    1f21:	01 3c 01             	add    %edi,(%rcx,%rax,1)
    1f24:	06                   	(bad)  
    1f25:	25 21 40 00 00       	and    $0x4021,%eax
    1f2a:	00 00                	add    %al,(%rax)
    1f2c:	00 af 00 00 00 00    	add    %ch,0x0(%rdi)
    1f32:	00 00                	add    %al,(%rax)
    1f34:	00 01                	add    %al,(%rcx)
    1f36:	9c                   	pushfq 
    1f37:	fc                   	cld    
    1f38:	05 00 00 17 0c       	add    $0xc170000,%eax
    1f3d:	00 00                	add    %al,(%rax)
    1f3f:	00 01                	add    %al,(%rcx)
    1f41:	3c 01                	cmp    $0x1,%al
    1f43:	1b 2d 00 00 00 1d    	sbb    0x1d000000(%rip),%ebp        # 1d001f49 <_end+0x1cbfae11>
    1f49:	08 00                	or     %al,(%rax)
    1f4b:	00 17                	add    %dl,(%rdi)
    1f4d:	08 00                	or     %al,(%rax)
    1f4f:	00 18                	add    %bl,(%rax)
    1f51:	d4                   	(bad)  
    1f52:	05 00 00 01 42       	add    $0x42010000,%eax
    1f57:	01 0b                	add    %ecx,(%rbx)
    1f59:	47 00 00             	rex.RXB add %r8b,(%r8)
    1f5c:	00 79 08             	add    %bh,0x8(%rcx)
    1f5f:	00 00                	add    %al,(%rax)
    1f61:	71 08                	jno    1f6b <_init-0x3ff095>
    1f63:	00 00                	add    %al,(%rax)
    1f65:	19 52 21             	sbb    %edx,0x21(%rdx)
    1f68:	40 00 00             	add    %al,(%rax)
    1f6b:	00 00                	add    %al,(%rax)
    1f6d:	00 ad 0d 00 00 75    	add    %ch,0x7500000d(%rbp)
    1f73:	05 00 00 1a 01       	add    $0x11a0000,%eax
    1f78:	55                   	push   %rbp
    1f79:	05 0c 00 60 58       	add    $0x5860000c,%eax
    1f7e:	55                   	push   %rbp
    1f7f:	1a 01                	sbb    (%rcx),%al
    1f81:	54                   	push   %rsp
    1f82:	03 40 40             	add    0x40(%rax),%eax
    1f85:	24 1a                	and    $0x1a,%al
    1f87:	01 51 01             	add    %edx,0x1(%rcx)
    1f8a:	37                   	(bad)  
    1f8b:	1a 01                	sbb    (%rcx),%al
    1f8d:	52                   	push   %rdx
    1f8e:	03 0a                	add    (%rdx),%ecx
    1f90:	32 01                	xor    (%rcx),%al
    1f92:	1a 01                	sbb    (%rcx),%al
    1f94:	58                   	pop    %rax
    1f95:	01 30                	add    %esi,(%rax)
    1f97:	1a 01                	sbb    (%rcx),%al
    1f99:	59                   	pop    %rcx
    1f9a:	01 30                	add    %esi,(%rax)
    1f9c:	00 1b                	add    %bl,(%rbx)
    1f9e:	87 21                	xchg   %esp,(%rcx)
    1fa0:	40 00 00             	add    %al,(%rax)
    1fa3:	00 00                	add    %al,(%rax)
    1fa5:	00 fc                	add    %bh,%ah
    1fa7:	05 00 00 19 9e       	add    $0x9e190000,%eax
    1fac:	21 40 00             	and    %eax,0x0(%rax)
    1faf:	00 00                	add    %al,(%rax)
    1fb1:	00 00                	add    %al,(%rax)
    1fb3:	b9 0d 00 00 a1       	mov    $0xa100000d,%ecx
    1fb8:	05 00 00 1a 01       	add    $0x11a0000,%eax
    1fbd:	55                   	push   %rbp
    1fbe:	02 73 00             	add    0x0(%rbx),%dh
    1fc1:	1a 01                	sbb    (%rcx),%al
    1fc3:	54                   	push   %rsp
    1fc4:	03 40 40             	add    0x40(%rax),%eax
    1fc7:	24 00                	and    $0x0,%al
    1fc9:	19 ad 21 40 00 00    	sbb    %ebp,0x4021(%rbp)
    1fcf:	00 00                	add    %al,(%rax)
    1fd1:	00 b9 0d 00 00 c0    	add    %bh,-0x3ffffff3(%rcx)
    1fd7:	05 00 00 1a 01       	add    $0x11a0000,%eax
    1fdc:	55                   	push   %rbp
    1fdd:	02 73 00             	add    0x0(%rbx),%dh
    1fe0:	1a 01                	sbb    (%rcx),%al
    1fe2:	54                   	push   %rsp
    1fe3:	03 40 40             	add    0x40(%rax),%eax
    1fe6:	24 00                	and    $0x0,%al
    1fe8:	19 ca                	sbb    %ecx,%edx
    1fea:	21 40 00             	and    %eax,0x0(%rax)
    1fed:	00 00                	add    %al,(%rax)
    1fef:	00 00                	add    %al,(%rax)
    1ff1:	c5 0d 00             	(bad)  
    1ff4:	00 e8                	add    %ch,%al
    1ff6:	05 00 00 1a 01       	add    $0x11a0000,%eax
    1ffb:	54                   	push   %rsp
    1ffc:	09 03                	or     %eax,(%rbx)
    1ffe:	28 36                	sub    %dh,(%rsi)
    2000:	40 00 00             	add    %al,(%rax)
    2003:	00 00                	add    %al,(%rax)
    2005:	00 1a                	add    %bl,(%rdx)
    2007:	01 51 05             	add    %edx,0x5(%rcx)
    200a:	0c 00                	or     $0x0,%al
    200c:	60                   	(bad)  
    200d:	58                   	pop    %rax
    200e:	55                   	push   %rbp
    200f:	00 1c d4             	add    %bl,(%rsp,%rdx,8)
    2012:	21 40 00             	and    %eax,0x0(%rax)
    2015:	00 00                	add    %al,(%rax)
    2017:	00 00                	add    %al,(%rax)
    2019:	d2 0d 00 00 1a 01    	rorb   %cl,0x11a0000(%rip)        # 11a201f <_end+0xd9aee7>
    201f:	55                   	push   %rbp
    2020:	01 31                	add    %esi,(%rcx)
    2022:	00 00                	add    %al,(%rax)
    2024:	16                   	(bad)  
    2025:	e7 02                	out    %eax,$0x2
    2027:	00 00                	add    %al,(%rax)
    2029:	01 1c 01             	add    %ebx,(%rcx,%rax,1)
    202c:	06                   	(bad)  
    202d:	9c                   	pushfq 
    202e:	20 40 00             	and    %al,0x0(%rax)
    2031:	00 00                	add    %al,(%rax)
    2033:	00 00                	add    %al,(%rax)
    2035:	89 00                	mov    %eax,(%rax)
    2037:	00 00                	add    %al,(%rax)
    2039:	00 00                	add    %al,(%rax)
    203b:	00 00                	add    %al,(%rax)
    203d:	01 9c e5 06 00 00 17 	add    %ebx,0x17000006(%rbp,%riz,8)
    2044:	0c 00                	or     $0x0,%al
    2046:	00 00                	add    %al,(%rax)
    2048:	01 1c 01             	add    %ebx,(%rcx,%rax,1)
    204b:	14 2d                	adc    $0x2d,%al
    204d:	00 00                	add    %al,(%rax)
    204f:	00 db                	add    %bl,%bl
    2051:	08 00                	or     %al,(%rax)
    2053:	00 d5                	add    %dl,%ch
    2055:	08 00                	or     %al,(%rax)
    2057:	00 18                	add    %bl,(%rax)
    2059:	54                   	push   %rsp
    205a:	05 00 00 01 1e       	add    $0x1e010000,%eax
    205f:	01 0b                	add    %ecx,(%rbx)
    2061:	47 00 00             	rex.RXB add %r8b,(%r8)
    2064:	00 2d 09 00 00 27    	add    %ch,0x27000009(%rip)        # 27002073 <_end+0x26bfaf3b>
    206a:	09 00                	or     %eax,(%rax)
    206c:	00 19                	add    %bl,(%rcx)
    206e:	c1 20 40             	shll   $0x40,(%rax)
    2071:	00 00                	add    %al,(%rax)
    2073:	00 00                	add    %al,(%rax)
    2075:	00 df                	add    %bl,%bh
    2077:	0d 00 00 6d 06       	or     $0x66d0000,%eax
    207c:	00 00                	add    %al,(%rax)
    207e:	1a 01                	sbb    (%rcx),%al
    2080:	55                   	push   %rbp
    2081:	05 77 0f 09 f0       	add    $0xf0090f77,%eax
    2086:	1a 1a                	sbb    (%rdx),%bl
    2088:	01 54 02 08          	add    %edx,0x8(%rdx,%rax,1)
    208c:	f4                   	hlt    
    208d:	1a 01                	sbb    (%rcx),%al
    208f:	51                   	push   %rcx
    2090:	03 f3                	add    %ebx,%esi
    2092:	01 55 00             	add    %edx,0x0(%rbp)
    2095:	1b e5                	sbb    %ebp,%esp
    2097:	20 40 00             	and    %al,0x0(%rax)
    209a:	00 00                	add    %al,(%rax)
    209c:	00 00                	add    %al,(%rax)
    209e:	eb 0d                	jmp    20ad <_init-0x3fef53>
    20a0:	00 00                	add    %al,(%rax)
    20a2:	19 fa                	sbb    %edi,%edx
    20a4:	20 40 00             	and    %al,0x0(%rax)
    20a7:	00 00                	add    %al,(%rax)
    20a9:	00 00                	add    %al,(%rax)
    20ab:	f7 0d 00 00 99 06 00 	testl  $0x11a0000,0x6990000(%rip)        # 69920b5 <_end+0x658af7d>
    20b2:	00 1a 01 
    20b5:	55                   	push   %rbp
    20b6:	09 03                	or     %eax,(%rbx)
    20b8:	d9 34 40             	fnstenv (%rax,%rax,2)
    20bb:	00 00                	add    %al,(%rax)
    20bd:	00 00                	add    %al,(%rax)
    20bf:	00 00                	add    %al,(%rax)
    20c1:	19 0d 21 40 00 00    	sbb    %ecx,0x4021(%rip)        # 60e8 <_init-0x3faf18>
    20c7:	00 00                	add    %al,(%rax)
    20c9:	00 02                	add    %al,(%rdx)
    20cb:	0e                   	(bad)  
    20cc:	00 00                	add    %al,(%rax)
    20ce:	b8 06 00 00 1a       	mov    $0x1a000006,%eax
    20d3:	01 55 09             	add    %edx,0x9(%rbp)
    20d6:	03 c1                	add    %ecx,%eax
    20d8:	34 40                	xor    $0x40,%al
    20da:	00 00                	add    %al,(%rax)
    20dc:	00 00                	add    %al,(%rax)
    20de:	00 00                	add    %al,(%rax)
    20e0:	19 1b                	sbb    %ebx,(%rbx)
    20e2:	21 40 00             	and    %eax,0x0(%rax)
    20e5:	00 00                	add    %al,(%rax)
    20e7:	00 00                	add    %al,(%rax)
    20e9:	f7 0d 00 00 d7 06 00 	testl  $0x11a0000,0x6d70000(%rip)        # 6d720f3 <_end+0x696afbb>
    20f0:	00 1a 01 
    20f3:	55                   	push   %rbp
    20f4:	09 03                	or     %eax,(%rbx)
    20f6:	ce                   	(bad)  
    20f7:	34 40                	xor    $0x40,%al
    20f9:	00 00                	add    %al,(%rax)
    20fb:	00 00                	add    %al,(%rax)
    20fd:	00 00                	add    %al,(%rax)
    20ff:	1b 25 21 40 00 00    	sbb    0x4021(%rip),%esp        # 6126 <_init-0x3faeda>
    2105:	00 00                	add    %al,(%rax)
    2107:	00 12                	add    %dl,(%rdx)
    2109:	0c 00                	or     $0x0,%al
    210b:	00 00                	add    %al,(%rax)
    210d:	16                   	(bad)  
    210e:	b7 05                	mov    $0x5,%bh
    2110:	00 00                	add    %al,(%rax)
    2112:	01 0d 01 06 4a 20    	add    %ecx,0x204a0601(%rip)        # 204a2719 <_end+0x2009b5e1>
    2118:	40 00 00             	add    %al,(%rax)
    211b:	00 00                	add    %al,(%rax)
    211d:	00 52 00             	add    %dl,0x0(%rdx)
    2120:	00 00                	add    %al,(%rax)
    2122:	00 00                	add    %al,(%rax)
    2124:	00 00                	add    %al,(%rax)
    2126:	01 9c 99 07 00 00 1d 	add    %ebx,0x1d000007(%rcx,%rbx,4)
    212d:	73 69                	jae    2198 <_init-0x3fee68>
    212f:	67 00 01             	add    %al,(%ecx)
    2132:	0d 01 19 65 00       	or     $0x651901,%eax
    2137:	00 00                	add    %al,(%rax)
    2139:	88 09                	mov    %cl,(%rcx)
    213b:	00 00                	add    %al,(%rax)
    213d:	80 09 00             	orb    $0x0,(%rcx)
    2140:	00 19                	add    %bl,(%rcx)
    2142:	63 20                	movslq (%rax),%esp
    2144:	40 00 00             	add    %al,(%rax)
    2147:	00 00                	add    %al,(%rax)
    2149:	00 f7                	add    %dh,%bh
    214b:	0d 00 00 38 07       	or     $0x7380000,%eax
    2150:	00 00                	add    %al,(%rax)
    2152:	1a 01                	sbb    (%rcx),%al
    2154:	55                   	push   %rbp
    2155:	09 03                	or     %eax,(%rbx)
    2157:	b9 34 40 00 00       	mov    $0x4034,%ecx
    215c:	00 00                	add    %al,(%rax)
    215e:	00 00                	add    %al,(%rax)
    2160:	1b 6d 20             	sbb    0x20(%rbp),%ebp
    2163:	40 00 00             	add    %al,(%rax)
    2166:	00 00                	add    %al,(%rax)
    2168:	00 12                	add    %dl,(%rdx)
    216a:	0c 00                	or     $0x0,%al
    216c:	00 19                	add    %bl,(%rcx)
    216e:	83 20 40             	andl   $0x40,(%rax)
    2171:	00 00                	add    %al,(%rax)
    2173:	00 00                	add    %al,(%rax)
    2175:	00 02                	add    %al,(%rdx)
    2177:	0e                   	(bad)  
    2178:	00 00                	add    %al,(%rax)
    217a:	69 07 00 00 1a 01    	imul   $0x11a0000,(%rdi),%eax
    2180:	55                   	push   %rbp
    2181:	09 03                	or     %eax,(%rbx)
    2183:	f0 35 40 00 00 00    	lock xor $0x40,%eax
    2189:	00 00                	add    %al,(%rax)
    218b:	1a 01                	sbb    (%rcx),%al
    218d:	54                   	push   %rsp
    218e:	01 35 00 19 92 20    	add    %esi,0x20921900(%rip)        # 20923a94 <_end+0x2051c95c>
    2194:	40 00 00             	add    %al,(%rax)
    2197:	00 00                	add    %al,(%rax)
    2199:	00 ff                	add    %bh,%bh
    219b:	09 00                	or     %eax,(%rax)
    219d:	00 85 07 00 00 1a    	add    %al,0x1a000007(%rbp)
    21a3:	01 55 01             	add    %edx,0x1(%rbp)
    21a6:	30 1a                	xor    %bl,(%rdx)
    21a8:	01 54 01 30          	add    %edx,0x30(%rcx,%rax,1)
    21ac:	00 1c 9c             	add    %bl,(%rsp,%rbx,4)
    21af:	20 40 00             	and    %al,0x0(%rax)
    21b2:	00 00                	add    %al,(%rax)
    21b4:	00 00                	add    %al,(%rax)
    21b6:	d2 0d 00 00 1a 01    	rorb   %cl,0x11a0000(%rip)        # 11a21bc <_end+0xd9b084>
    21bc:	55                   	push   %rbp
    21bd:	01 31                	add    %esi,(%rcx)
    21bf:	00 00                	add    %al,(%rax)
    21c1:	16                   	(bad)  
    21c2:	65 05 00 00 01 00    	gs add $0x10000,%eax
    21c8:	01 06                	add    %eax,(%rsi)
    21ca:	f6 1f                	negb   (%rdi)
    21cc:	40 00 00             	add    %al,(%rax)
    21cf:	00 00                	add    %al,(%rax)
    21d1:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 00                	add    %al,(%rax)
    21d9:	00 01                	add    %al,(%rcx)
    21db:	9c                   	pushfq 
    21dc:	67 08 00             	or     %al,(%eax)
    21df:	00 1d 73 69 67 00    	add    %bl,0x676973(%rip)        # 678b58 <_end+0x271a20>
    21e5:	01 00                	add    %eax,(%rax)
    21e7:	01 19                	add    %ebx,(%rcx)
    21e9:	65 00 00             	add    %al,%gs:(%rax)
    21ec:	00 f2                	add    %dh,%dl
    21ee:	09 00                	or     %eax,(%rax)
    21f0:	00 ea                	add    %ch,%dl
    21f2:	09 00                	or     %eax,(%rax)
    21f4:	00 19                	add    %bl,(%rcx)
    21f6:	0f 20 40             	mov    %cr0,%rax
    21f9:	00 00                	add    %al,(%rax)
    21fb:	00 00                	add    %al,(%rax)
    21fd:	00 f7                	add    %dh,%bh
    21ff:	0d 00 00 ec 07       	or     $0x7ec0000,%eax
    2204:	00 00                	add    %al,(%rax)
    2206:	1a 01                	sbb    (%rcx),%al
    2208:	55                   	push   %rbp
    2209:	09 03                	or     %eax,(%rbx)
    220b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    220c:	34 40                	xor    $0x40,%al
    220e:	00 00                	add    %al,(%rax)
    2210:	00 00                	add    %al,(%rax)
    2212:	00 00                	add    %al,(%rax)
    2214:	1b 19                	sbb    (%rcx),%ebx
    2216:	20 40 00             	and    %al,0x0(%rax)
    2219:	00 00                	add    %al,(%rax)
    221b:	00 00                	add    %al,(%rax)
    221d:	12 0c 00             	adc    (%rax,%rax,1),%cl
    2220:	00 19                	add    %bl,(%rcx)
    2222:	25 20 40 00 00       	and    $0x4020,%eax
    2227:	00 00                	add    %al,(%rax)
    2229:	00 f7                	add    %dh,%bh
    222b:	0d 00 00 18 08       	or     $0x8180000,%eax
    2230:	00 00                	add    %al,(%rax)
    2232:	1a 01                	sbb    (%rcx),%al
    2234:	55                   	push   %rbp
    2235:	09 03                	or     %eax,(%rbx)
    2237:	c0 35 40 00 00 00 00 	shlb   $0x0,0x40(%rip)        # 227e <_init-0x3fed82>
    223e:	00 00                	add    %al,(%rax)
    2240:	19 31                	sbb    %esi,(%rcx)
    2242:	20 40 00             	and    %al,0x0(%rax)
    2245:	00 00                	add    %al,(%rax)
    2247:	00 00                	add    %al,(%rax)
    2249:	f7 0d 00 00 37 08 00 	testl  $0x11a0000,0x8370000(%rip)        # 8372253 <_end+0x7f6b11b>
    2250:	00 1a 01 
    2253:	55                   	push   %rbp
    2254:	09 03                	or     %eax,(%rbx)
    2256:	7c 34                	jl     228c <_init-0x3fed74>
    2258:	40 00 00             	add    %al,(%rax)
    225b:	00 00                	add    %al,(%rax)
    225d:	00 00                	add    %al,(%rax)
    225f:	19 40 20             	sbb    %eax,0x20(%rax)
    2262:	40 00 00             	add    %al,(%rax)
    2265:	00 00                	add    %al,(%rax)
    2267:	00 ff                	add    %bh,%bh
    2269:	09 00                	or     %eax,(%rax)
    226b:	00 53 08             	add    %dl,0x8(%rbx)
    226e:	00 00                	add    %al,(%rax)
    2270:	1a 01                	sbb    (%rcx),%al
    2272:	55                   	push   %rbp
    2273:	01 30                	add    %esi,(%rax)
    2275:	1a 01                	sbb    (%rcx),%al
    2277:	54                   	push   %rsp
    2278:	01 30                	add    %esi,(%rax)
    227a:	00 1c 4a             	add    %bl,(%rdx,%rcx,2)
    227d:	20 40 00             	and    %al,0x0(%rax)
    2280:	00 00                	add    %al,(%rax)
    2282:	00 00                	add    %al,(%rax)
    2284:	d2 0d 00 00 1a 01    	rorb   %cl,0x11a0000(%rip)        # 11a228a <_end+0xd9b152>
    228a:	55                   	push   %rbp
    228b:	01 31                	add    %esi,(%rcx)
    228d:	00 00                	add    %al,(%rax)
    228f:	1e                   	(bad)  
    2290:	5a                   	pop    %rdx
    2291:	05 00 00 01 f3       	add    $0xf3010000,%eax
    2296:	06                   	(bad)  
    2297:	a2 1f 40 00 00 00 00 	movabs %al,0x540000000000401f
    229e:	00 54 
    22a0:	00 00                	add    %al,(%rax)
    22a2:	00 00                	add    %al,(%rax)
    22a4:	00 00                	add    %al,(%rax)
    22a6:	00 01                	add    %al,(%rcx)
    22a8:	9c                   	pushfq 
    22a9:	33 09                	xor    (%rcx),%ecx
    22ab:	00 00                	add    %al,(%rax)
    22ad:	1f                   	(bad)  
    22ae:	73 69                	jae    2319 <_init-0x3fece7>
    22b0:	67 00 01             	add    %al,(%ecx)
    22b3:	f3 15 65 00 00 00    	repz adc $0x65,%eax
    22b9:	5c                   	pop    %rsp
    22ba:	0a 00                	or     (%rax),%al
    22bc:	00 54 0a 00          	add    %dl,0x0(%rdx,%rcx,1)
    22c0:	00 19                	add    %bl,(%rcx)
    22c2:	bb 1f 40 00 00       	mov    $0x401f,%ebx
    22c7:	00 00                	add    %al,(%rax)
    22c9:	00 f7                	add    %dh,%bh
    22cb:	0d 00 00 b8 08       	or     $0x8b80000,%eax
    22d0:	00 00                	add    %al,(%rax)
    22d2:	1a 01                	sbb    (%rcx),%al
    22d4:	55                   	push   %rbp
    22d5:	09 03                	or     %eax,(%rbx)
    22d7:	92                   	xchg   %eax,%edx
    22d8:	34 40                	xor    $0x40,%al
    22da:	00 00                	add    %al,(%rax)
    22dc:	00 00                	add    %al,(%rax)
    22de:	00 00                	add    %al,(%rax)
    22e0:	1b c5                	sbb    %ebp,%eax
    22e2:	1f                   	(bad)  
    22e3:	40 00 00             	add    %al,(%rax)
    22e6:	00 00                	add    %al,(%rax)
    22e8:	00 12                	add    %dl,(%rdx)
    22ea:	0c 00                	or     $0x0,%al
    22ec:	00 19                	add    %bl,(%rcx)
    22ee:	d1 1f                	rcrl   (%rdi)
    22f0:	40 00 00             	add    %al,(%rax)
    22f3:	00 00                	add    %al,(%rax)
    22f5:	00 f7                	add    %dh,%bh
    22f7:	0d 00 00 e4 08       	or     $0x8e40000,%eax
    22fc:	00 00                	add    %al,(%rax)
    22fe:	1a 01                	sbb    (%rcx),%al
    2300:	55                   	push   %rbp
    2301:	09 03                	or     %eax,(%rbx)
    2303:	98                   	cwtl   
    2304:	35 40 00 00 00       	xor    $0x40,%eax
    2309:	00 00                	add    %al,(%rax)
    230b:	00 19                	add    %bl,(%rcx)
    230d:	dd 1f                	fstpl  (%rdi)
    230f:	40 00 00             	add    %al,(%rax)
    2312:	00 00                	add    %al,(%rax)
    2314:	00 f7                	add    %dh,%bh
    2316:	0d 00 00 03 09       	or     $0x9030000,%eax
    231b:	00 00                	add    %al,(%rax)
    231d:	1a 01                	sbb    (%rcx),%al
    231f:	55                   	push   %rbp
    2320:	09 03                	or     %eax,(%rbx)
    2322:	7c 34                	jl     2358 <_init-0x3feca8>
    2324:	40 00 00             	add    %al,(%rax)
    2327:	00 00                	add    %al,(%rax)
    2329:	00 00                	add    %al,(%rax)
    232b:	19 ec                	sbb    %ebp,%esp
    232d:	1f                   	(bad)  
    232e:	40 00 00             	add    %al,(%rax)
    2331:	00 00                	add    %al,(%rax)
    2333:	00 ff                	add    %bh,%bh
    2335:	09 00                	or     %eax,(%rax)
    2337:	00 1f                	add    %bl,(%rdi)
    2339:	09 00                	or     %eax,(%rax)
    233b:	00 1a                	add    %bl,(%rdx)
    233d:	01 55 01             	add    %edx,0x1(%rbp)
    2340:	30 1a                	xor    %bl,(%rdx)
    2342:	01 54 01 30          	add    %edx,0x30(%rcx,%rax,1)
    2346:	00 1c f6             	add    %bl,(%rsi,%rsi,8)
    2349:	1f                   	(bad)  
    234a:	40 00 00             	add    %al,(%rax)
    234d:	00 00                	add    %al,(%rax)
    234f:	00 d2                	add    %dl,%dl
    2351:	0d 00 00 1a 01       	or     $0x11a0000,%eax
    2356:	55                   	push   %rbp
    2357:	01 31                	add    %esi,(%rcx)
    2359:	00 00                	add    %al,(%rax)
    235b:	1e                   	(bad)  
    235c:	88 05 00 00 01 e6    	mov    %al,-0x19ff0000(%rip)        # ffffffffe6012362 <_end+0xffffffffe5c0b22a>
    2362:	06                   	(bad)  
    2363:	4e 1f                	rex.WRX (bad) 
    2365:	40 00 00             	add    %al,(%rax)
    2368:	00 00                	add    %al,(%rax)
    236a:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
    236e:	00 00                	add    %al,(%rax)
    2370:	00 00                	add    %al,(%rax)
    2372:	00 01                	add    %al,(%rcx)
    2374:	9c                   	pushfq 
    2375:	ff 09                	decl   (%rcx)
    2377:	00 00                	add    %al,(%rax)
    2379:	1f                   	(bad)  
    237a:	73 69                	jae    23e5 <_init-0x3fec1b>
    237c:	67 00 01             	add    %al,(%ecx)
    237f:	e6 15                	out    %al,$0x15
    2381:	65 00 00             	add    %al,%gs:(%rax)
    2384:	00 c6                	add    %al,%dh
    2386:	0a 00                	or     (%rax),%al
    2388:	00 be 0a 00 00 19    	add    %bh,0x1900000a(%rsi)
    238e:	67 1f                	addr32 (bad) 
    2390:	40 00 00             	add    %al,(%rax)
    2393:	00 00                	add    %al,(%rax)
    2395:	00 f7                	add    %dh,%bh
    2397:	0d 00 00 84 09       	or     $0x9840000,%eax
    239c:	00 00                	add    %al,(%rax)
    239e:	1a 01                	sbb    (%rcx),%al
    23a0:	55                   	push   %rbp
    23a1:	09 03                	or     %eax,(%rbx)
    23a3:	72 34                	jb     23d9 <_init-0x3fec27>
    23a5:	40 00 00             	add    %al,(%rax)
    23a8:	00 00                	add    %al,(%rax)
    23aa:	00 00                	add    %al,(%rax)
    23ac:	1b 71 1f             	sbb    0x1f(%rcx),%esi
    23af:	40 00 00             	add    %al,(%rax)
    23b2:	00 00                	add    %al,(%rax)
    23b4:	00 12                	add    %dl,(%rdx)
    23b6:	0c 00                	or     $0x0,%al
    23b8:	00 19                	add    %bl,(%rcx)
    23ba:	7d 1f                	jge    23db <_init-0x3fec25>
    23bc:	40 00 00             	add    %al,(%rax)
    23bf:	00 00                	add    %al,(%rax)
    23c1:	00 f7                	add    %dh,%bh
    23c3:	0d 00 00 b0 09       	or     $0x9b00000,%eax
    23c8:	00 00                	add    %al,(%rax)
    23ca:	1a 01                	sbb    (%rcx),%al
    23cc:	55                   	push   %rbp
    23cd:	09 03                	or     %eax,(%rbx)
    23cf:	78 35                	js     2406 <_init-0x3febfa>
    23d1:	40 00 00             	add    %al,(%rax)
    23d4:	00 00                	add    %al,(%rax)
    23d6:	00 00                	add    %al,(%rax)
    23d8:	19 89 1f 40 00 00    	sbb    %ecx,0x401f(%rcx)
    23de:	00 00                	add    %al,(%rax)
    23e0:	00 f7                	add    %dh,%bh
    23e2:	0d 00 00 cf 09       	or     $0x9cf0000,%eax
    23e7:	00 00                	add    %al,(%rax)
    23e9:	1a 01                	sbb    (%rcx),%al
    23eb:	55                   	push   %rbp
    23ec:	09 03                	or     %eax,(%rbx)
    23ee:	7c 34                	jl     2424 <_init-0x3febdc>
    23f0:	40 00 00             	add    %al,(%rax)
    23f3:	00 00                	add    %al,(%rax)
    23f5:	00 00                	add    %al,(%rax)
    23f7:	19 98 1f 40 00 00    	sbb    %ebx,0x401f(%rax)
    23fd:	00 00                	add    %al,(%rax)
    23ff:	00 ff                	add    %bh,%bh
    2401:	09 00                	or     %eax,(%rax)
    2403:	00 eb                	add    %ch,%bl
    2405:	09 00                	or     %eax,(%rax)
    2407:	00 1a                	add    %bl,(%rdx)
    2409:	01 55 01             	add    %edx,0x1(%rbp)
    240c:	30 1a                	xor    %bl,(%rdx)
    240e:	01 54 01 30          	add    %edx,0x30(%rcx,%rax,1)
    2412:	00 1c a2             	add    %bl,(%rdx,%riz,4)
    2415:	1f                   	(bad)  
    2416:	40 00 00             	add    %al,(%rax)
    2419:	00 00                	add    %al,(%rax)
    241b:	00 d2                	add    %dl,%dl
    241d:	0d 00 00 1a 01       	or     $0x11a0000,%eax
    2422:	55                   	push   %rbp
    2423:	01 31                	add    %esi,(%rcx)
    2425:	00 00                	add    %al,(%rax)
    2427:	1e                   	(bad)  
    2428:	c6 05 00 00 01 b3 06 	movb   $0x6,-0x4cff0000(%rip)        # ffffffffb301242f <_end+0xffffffffb2c0b2f7>
    242f:	c0 1d 40 00 00 00 00 	rcrb   $0x0,0x40(%rip)        # 2476 <_init-0x3feb8a>
    2436:	00 a8 00 00 00 00    	add    %ch,0x0(%rax)
    243c:	00 00                	add    %al,(%rax)
    243e:	00 01                	add    %al,(%rcx)
    2440:	9c                   	pushfq 
    2441:	e6 0a                	out    %al,$0xa
    2443:	00 00                	add    %al,(%rax)
    2445:	20 de                	and    %bl,%dh
    2447:	05 00 00 01 b3       	add    $0xb3010000,%eax
    244c:	18 65 00             	sbb    %ah,0x0(%rbp)
    244f:	00 00                	add    %al,(%rax)
    2451:	32 0b                	xor    (%rbx),%cl
    2453:	00 00                	add    %al,(%rax)
    2455:	28 0b                	sub    %cl,(%rbx)
    2457:	00 00                	add    %al,(%rax)
    2459:	20 22                	and    %ah,(%rdx)
    245b:	03 00                	add    (%rax),%eax
    245d:	00 01                	add    %al,(%rcx)
    245f:	b3 22                	mov    $0x22,%bl
    2461:	65 00 00             	add    %al,%gs:(%rax)
    2464:	00 b3 0b 00 00 a7    	add    %dh,-0x58fffff5(%rbx)
    246a:	0b 00                	or     (%rax),%eax
    246c:	00 13                	add    %dl,(%rbx)
    246e:	ac                   	lods   %ds:(%rsi),%al
    246f:	05 00 00 01 b5       	add    $0xb5010000,%eax
    2474:	0a 34 04             	or     (%rsp,%rax,1),%dh
    2477:	00 00                	add    %al,(%rax)
    2479:	04 91                	add    $0x91,%al
    247b:	f0 bf 7f 21 2f 02    	lock mov $0x22f217f,%edi
    2481:	00 00                	add    %al,(%rax)
    2483:	01 b6 0a 34 04 00    	add    %esi,0x4340a(%rsi)
    2489:	00 21                	add    %ah,(%rcx)
    248b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    248c:	05 00 00 01 b7       	add    $0xb7010000,%eax
    2491:	09 65 00             	or     %esp,0x0(%rbp)
    2494:	00 00                	add    %al,(%rax)
    2496:	19 2a                	sbb    %ebp,(%rdx)
    2498:	1e                   	(bad)  
    2499:	40 00 00             	add    %al,(%rax)
    249c:	00 00                	add    %al,(%rax)
    249e:	00 0f                	add    %cl,(%rdi)
    24a0:	0e                   	(bad)  
    24a1:	00 00                	add    %al,(%rax)
    24a3:	9b                   	fwait
    24a4:	0a 00                	or     (%rax),%al
    24a6:	00 1a                	add    %bl,(%rdx)
    24a8:	01 55 04             	add    %edx,0x4(%rbp)
    24ab:	91                   	xchg   %eax,%ecx
    24ac:	f0 bf 7f 1a 01 54    	lock mov $0x54011a7f,%edi
    24b2:	09 03                	or     %eax,(%rbx)
    24b4:	23 34 40             	and    (%rax,%rax,2),%esi
    24b7:	00 00                	add    %al,(%rax)
    24b9:	00 00                	add    %al,(%rax)
    24bb:	00 1a                	add    %bl,(%rdx)
    24bd:	01 52 02             	add    %edx,0x2(%rdx)
    24c0:	73 00                	jae    24c2 <_init-0x3feb3e>
    24c2:	00 19                	add    %bl,(%rcx)
    24c4:	32 1e                	xor    (%rsi),%bl
    24c6:	40 00 00             	add    %al,(%rax)
    24c9:	00 00                	add    %al,(%rax)
    24cb:	00 f7                	add    %dh,%bh
    24cd:	0d 00 00 b3 0a       	or     $0xab30000,%eax
    24d2:	00 00                	add    %al,(%rax)
    24d4:	1a 01                	sbb    (%rcx),%al
    24d6:	55                   	push   %rbp
    24d7:	02 73 00             	add    0x0(%rbx),%dh
    24da:	00 19                	add    %bl,(%rcx)
    24dc:	4c 1e                	rex.WR (bad) 
    24de:	40 00 00             	add    %al,(%rax)
    24e1:	00 00                	add    %al,(%rax)
    24e3:	00 02                	add    %al,(%rdx)
    24e5:	0e                   	(bad)  
    24e6:	00 00                	add    %al,(%rax)
    24e8:	d2 0a                	rorb   %cl,(%rdx)
    24ea:	00 00                	add    %al,(%rax)
    24ec:	1a 01                	sbb    (%rcx),%al
    24ee:	55                   	push   %rbp
    24ef:	09 03                	or     %eax,(%rbx)
    24f1:	e8 34 40 00 00       	callq  652a <_init-0x3faad6>
    24f6:	00 00                	add    %al,(%rax)
    24f8:	00 00                	add    %al,(%rax)
    24fa:	1c 56                	sbb    $0x56,%al
    24fc:	1e                   	(bad)  
    24fd:	40 00 00             	add    %al,(%rax)
    2500:	00 00                	add    %al,(%rax)
    2502:	00 d2                	add    %dl,%dl
    2504:	0d 00 00 1a 01       	or     $0x11a0000,%eax
    2509:	55                   	push   %rbp
    250a:	01 31                	add    %esi,(%rcx)
    250c:	00 00                	add    %al,(%rax)
    250e:	22 53 04             	and    0x4(%rbx),%dl
    2511:	00 00                	add    %al,(%rax)
    2513:	01 a2 07 8b 00 00    	add    %esp,0x8b07(%rdx)
    2519:	00 6e 1d             	add    %ch,0x1d(%rsi)
    251c:	40 00 00             	add    %al,(%rax)
    251f:	00 00                	add    %al,(%rax)
    2521:	00 52 00             	add    %dl,0x0(%rdx)
    2524:	00 00                	add    %al,(%rax)
    2526:	00 00                	add    %al,(%rax)
    2528:	00 00                	add    %al,(%rax)
    252a:	01 9c 69 0b 00 00 20 	add    %ebx,0x2000000b(%rcx,%rbp,2)
    2531:	74 05                	je     2538 <_init-0x3feac8>
    2533:	00 00                	add    %al,(%rax)
    2535:	01 a2 12 8b 00 00    	add    %esp,0x8b12(%rdx)
    253b:	00 42 0c             	add    %al,0xc(%rdx)
    253e:	00 00                	add    %al,(%rax)
    2540:	3c 0c                	cmp    $0xc,%al
    2542:	00 00                	add    %al,(%rax)
    2544:	23 63 00             	and    0x0(%rbx),%esp
    2547:	01 a4 09 65 00 00 00 	add    %esp,0x65(%rcx,%rcx,1)
    254e:	8f                   	(bad)  
    254f:	0c 00                	or     $0x0,%al
    2551:	00 8b 0c 00 00 23    	add    %cl,0x2300000c(%rbx)
    2557:	73 70                	jae    25c9 <_init-0x3fea37>
    2559:	00 01                	add    %al,(%rcx)
    255b:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    255c:	0b 8b 00 00 00 cf    	or     -0x31000000(%rbx),%ecx
    2562:	0c 00                	or     $0x0,%al
    2564:	00 c5                	add    %al,%ch
    2566:	0c 00                	or     $0x0,%al
    2568:	00 1b                	add    %bl,(%rbx)
    256a:	8e 1d 40 00 00 00    	mov    0x40(%rip),%ds        # 25b0 <_init-0x3fea50>
    2570:	00 00                	add    %al,(%rax)
    2572:	1c 0e                	sbb    $0xe,%al
    2574:	00 00                	add    %al,(%rax)
    2576:	1b a6 1d 40 00 00    	sbb    0x401d(%rsi),%esp
    257c:	00 00                	add    %al,(%rax)
    257e:	00 83 0b 00 00 1b    	add    %al,0x1b00000b(%rbx)
    2584:	b8 1d 40 00 00       	mov    $0x401d,%eax
    2589:	00 00                	add    %al,(%rax)
    258b:	00 69 0b             	add    %ch,0xb(%rcx)
    258e:	00 00                	add    %al,(%rax)
    2590:	00 24 02             	add    %ah,(%rdx,%rax,1)
    2593:	05 00 00 01 9d       	add    $0x9d010000,%eax
    2598:	0d 24 1d 40 00       	or     $0x401d24,%eax
    259d:	00 00                	add    %al,(%rax)
    259f:	00 00                	add    %al,(%rax)
    25a1:	17                   	(bad)  
    25a2:	00 00                	add    %al,(%rax)
    25a4:	00 00                	add    %al,(%rax)
    25a6:	00 00                	add    %al,(%rax)
    25a8:	00 01                	add    %al,(%rcx)
    25aa:	9c                   	pushfq 
    25ab:	25 1e 05 00 00       	and    $0x51e,%eax
    25b0:	01 93 0d cc 1c 40    	add    %edx,0x401ccc0d(%rbx)
    25b6:	00 00                	add    %al,(%rax)
    25b8:	00 00                	add    %al,(%rax)
    25ba:	00 58 00             	add    %bl,0x0(%rax)
    25bd:	00 00                	add    %al,(%rax)
    25bf:	00 00                	add    %al,(%rax)
    25c1:	00 00                	add    %al,(%rax)
    25c3:	01 9c b4 0b 00 00 1f 	add    %ebx,0x1f00000b(%rsp,%rsi,4)
    25ca:	63 00                	movslq (%rax),%eax
    25cc:	01 93 25 49 00 00    	add    %edx,0x4925(%rbx)
    25d2:	00 44 0d 00          	add    %al,0x0(%rbp,%rcx,1)
    25d6:	00 40 0d             	add    %al,0xd(%rax)
    25d9:	00 00                	add    %al,(%rax)
    25db:	00 1e                	add    %bl,(%rsi)
    25dd:	3c 01                	cmp    $0x1,%al
    25df:	00 00                	add    %al,(%rax)
    25e1:	01 7e 06             	add    %edi,0x6(%rsi)
    25e4:	26 1f                	es (bad) 
    25e6:	40 00 00             	add    %al,(%rax)
    25e9:	00 00                	add    %al,(%rax)
    25eb:	00 28                	add    %ch,(%rax)
    25ed:	00 00                	add    %al,(%rax)
    25ef:	00 00                	add    %al,(%rax)
    25f1:	00 00                	add    %al,(%rax)
    25f3:	00 01                	add    %al,(%rcx)
    25f5:	9c                   	pushfq 
    25f6:	12 0c 00             	adc    (%rax,%rax,1),%cl
    25f9:	00 20                	add    %ah,(%rax)
    25fb:	22 03                	and    (%rbx),%al
    25fd:	00 00                	add    %al,(%rax)
    25ff:	01 7e 0f             	add    %edi,0xf(%rsi)
    2602:	65 00 00             	add    %al,%gs:(%rax)
    2605:	00 87 0d 00 00 7d    	add    %al,0x7d00000d(%rdi)
    260b:	0d 00 00 19 3f       	or     $0x3f190000,%eax
    2610:	1f                   	(bad)  
    2611:	40 00 00             	add    %al,(%rax)
    2614:	00 00                	add    %al,(%rax)
    2616:	00 ff                	add    %bh,%bh
    2618:	09 00                	or     %eax,(%rax)
    261a:	00 04 0c             	add    %al,(%rsp,%rcx,1)
    261d:	00 00                	add    %al,(%rax)
    261f:	1a 01                	sbb    (%rcx),%al
    2621:	55                   	push   %rbp
    2622:	01 30                	add    %esi,(%rax)
    2624:	1a 01                	sbb    (%rcx),%al
    2626:	54                   	push   %rsp
    2627:	03 f3                	add    %ebx,%esi
    2629:	01 55 00             	add    %edx,0x0(%rbp)
    262c:	1b 4e 1f             	sbb    0x1f(%rsi),%ecx
    262f:	40 00 00             	add    %al,(%rax)
    2632:	00 00                	add    %al,(%rax)
    2634:	00 12                	add    %dl,(%rdx)
    2636:	0c 00                	or     $0x0,%al
    2638:	00 00                	add    %al,(%rax)
    263a:	26 36 01 00          	es add %eax,%ss:(%rax)
    263e:	00 01                	add    %al,(%rcx)
    2640:	79 06                	jns    2648 <_init-0x3fe9b8>
    2642:	3b 1d 40 00 00 00    	cmp    0x40(%rip),%ebx        # 2688 <_init-0x3fe978>
    2648:	00 00                	add    %al,(%rax)
    264a:	33 00                	xor    (%rax),%eax
    264c:	00 00                	add    %al,(%rax)
    264e:	00 00                	add    %al,(%rax)
    2650:	00 00                	add    %al,(%rax)
    2652:	01 9c 70 0c 00 00 19 	add    %ebx,0x1900000c(%rax,%rsi,2)
    2659:	64 1d 40 00 00 00    	fs sbb $0x40,%eax
    265f:	00 00                	add    %al,(%rax)
    2661:	02 0e                	add    (%rsi),%cl
    2663:	00 00                	add    %al,(%rax)
    2665:	5c                   	pop    %rsp
    2666:	0c 00                	or     $0x0,%al
    2668:	00 1a                	add    %bl,(%rdx)
    266a:	01 55 09             	add    %edx,0x9(%rbp)
    266d:	03 03                	add    (%rbx),%eax
    266f:	34 40                	xor    $0x40,%al
    2671:	00 00                	add    %al,(%rax)
    2673:	00 00                	add    %al,(%rax)
    2675:	00 1a                	add    %bl,(%rdx)
    2677:	01 52 09             	add    %edx,0x9(%rdx)
    267a:	03 20                	add    (%rax),%esp
    267c:	65 40 00 00          	add    %al,%gs:(%rax)
    2680:	00 00                	add    %al,(%rax)
    2682:	00 00                	add    %al,(%rax)
    2684:	1c 6e                	sbb    $0x6e,%al
    2686:	1d 40 00 00 00       	sbb    $0x40,%eax
    268b:	00 00                	add    %al,(%rax)
    268d:	d2 0d 00 00 1a 01    	rorb   %cl,0x11a0000(%rip)        # 11a2693 <_end+0xd9b55b>
    2693:	55                   	push   %rbp
    2694:	01 31                	add    %esi,(%rcx)
    2696:	00 00                	add    %al,(%rax)
    2698:	1e                   	(bad)  
    2699:	c3                   	retq   
    269a:	04 00                	add    $0x0,%al
    269c:	00 01                	add    %al,(%rcx)
    269e:	61                   	(bad)  
    269f:	06                   	(bad)  
    26a0:	68 1e 40 00 00       	pushq  $0x401e
    26a5:	00 00                	add    %al,(%rax)
    26a7:	00 be 00 00 00 00    	add    %bh,0x0(%rsi)
    26ad:	00 00                	add    %al,(%rax)
    26af:	00 01                	add    %al,(%rcx)
    26b1:	9c                   	pushfq 
    26b2:	ad                   	lods   %ds:(%rsi),%eax
    26b3:	0d 00 00 20 22       	or     $0x22200000,%eax
    26b8:	03 00                	add    (%rax),%eax
    26ba:	00 01                	add    %al,(%rcx)
    26bc:	61                   	(bad)  
    26bd:	13 65 00             	adc    0x0(%rbp),%esp
    26c0:	00 00                	add    %al,(%rax)
    26c2:	06                   	(bad)  
    26c3:	0e                   	(bad)  
    26c4:	00 00                	add    %al,(%rax)
    26c6:	fc                   	cld    
    26c7:	0d 00 00 19 a7       	or     $0xa7190000,%eax
    26cc:	1e                   	(bad)  
    26cd:	40 00 00             	add    %al,(%rax)
    26d0:	00 00                	add    %al,(%rax)
    26d2:	00 02                	add    %al,(%rdx)
    26d4:	0e                   	(bad)  
    26d5:	00 00                	add    %al,(%rax)
    26d7:	d4                   	(bad)  
    26d8:	0c 00                	or     $0x0,%al
    26da:	00 1a                	add    %bl,(%rdx)
    26dc:	01 55 09             	add    %edx,0x9(%rbp)
    26df:	03 5d 34             	add    0x34(%rbp),%ebx
    26e2:	40 00 00             	add    %al,(%rax)
    26e5:	00 00                	add    %al,(%rax)
    26e7:	00 1a                	add    %bl,(%rdx)
    26e9:	01 51 02             	add    %edx,0x2(%rcx)
    26ec:	73 00                	jae    26ee <_init-0x3fe912>
    26ee:	1a 01                	sbb    (%rcx),%al
    26f0:	52                   	push   %rdx
    26f1:	09 03                	or     %eax,(%rbx)
    26f3:	20 65 40             	and    %ah,0x40(%rbp)
    26f6:	00 00                	add    %al,(%rax)
    26f8:	00 00                	add    %al,(%rax)
    26fa:	00 00                	add    %al,(%rax)
    26fc:	19 b5 1e 40 00 00    	sbb    %esi,0x401e(%rbp)
    2702:	00 00                	add    %al,(%rax)
    2704:	00 f7                	add    %dh,%bh
    2706:	0d 00 00 f3 0c       	or     $0xcf30000,%eax
    270b:	00 00                	add    %al,(%rax)
    270d:	1a 01                	sbb    (%rcx),%al
    270f:	55                   	push   %rbp
    2710:	09 03                	or     %eax,(%rbx)
    2712:	3f                   	(bad)  
    2713:	34 40                	xor    $0x40,%al
    2715:	00 00                	add    %al,(%rax)
    2717:	00 00                	add    %al,(%rax)
    2719:	00 00                	add    %al,(%rax)
    271b:	1b bf 1e 40 00 00    	sbb    0x401e(%rdi),%edi
    2721:	00 00                	add    %al,(%rax)
    2723:	00 12                	add    %dl,(%rdx)
    2725:	0c 00                	or     $0x0,%al
    2727:	00 19                	add    %bl,(%rcx)
    2729:	d2 1e                	rcrb   %cl,(%rsi)
    272b:	40 00 00             	add    %al,(%rax)
    272e:	00 00                	add    %al,(%rax)
    2730:	00 02                	add    %al,(%rdx)
    2732:	0e                   	(bad)  
    2733:	00 00                	add    %al,(%rax)
    2735:	25 0d 00 00 1a       	and    $0x1a00000d,%eax
    273a:	01 55 09             	add    %edx,0x9(%rbp)
    273d:	03 18                	add    (%rax),%ebx
    273f:	35 40 00 00 00       	xor    $0x40,%eax
    2744:	00 00                	add    %al,(%rax)
    2746:	1a 01                	sbb    (%rcx),%al
    2748:	51                   	push   %rcx
    2749:	02 73 00             	add    0x0(%rbx),%dh
    274c:	00 1b                	add    %bl,(%rbx)
    274e:	dc 1e                	fcompl (%rsi)
    2750:	40 00 00             	add    %al,(%rax)
    2753:	00 00                	add    %al,(%rax)
    2755:	00 12                	add    %dl,(%rdx)
    2757:	0c 00                	or     $0x0,%al
    2759:	00 19                	add    %bl,(%rcx)
    275b:	f0 1e                	lock (bad) 
    275d:	40 00 00             	add    %al,(%rax)
    2760:	00 00                	add    %al,(%rax)
    2762:	00 f7                	add    %dh,%bh
    2764:	0d 00 00 51 0d       	or     $0xd510000,%eax
    2769:	00 00                	add    %al,(%rax)
    276b:	1a 01                	sbb    (%rcx),%al
    276d:	55                   	push   %rbp
    276e:	09 03                	or     %eax,(%rbx)
    2770:	3f                   	(bad)  
    2771:	34 40                	xor    $0x40,%al
    2773:	00 00                	add    %al,(%rax)
    2775:	00 00                	add    %al,(%rax)
    2777:	00 00                	add    %al,(%rax)
    2779:	19 fc                	sbb    %edi,%esp
    277b:	1e                   	(bad)  
    277c:	40 00 00             	add    %al,(%rax)
    277f:	00 00                	add    %al,(%rax)
    2781:	00 ff                	add    %bh,%bh
    2783:	09 00                	or     %eax,(%rax)
    2785:	00 6e 0d             	add    %ch,0xd(%rsi)
    2788:	00 00                	add    %al,(%rax)
    278a:	1a 01                	sbb    (%rcx),%al
    278c:	55                   	push   %rbp
    278d:	01 30                	add    %esi,(%rax)
    278f:	1a 01                	sbb    (%rcx),%al
    2791:	54                   	push   %rsp
    2792:	02 73 00             	add    0x0(%rbx),%dh
    2795:	00 19                	add    %bl,(%rcx)
    2797:	18 1f                	sbb    %bl,(%rdi)
    2799:	40 00 00             	add    %al,(%rax)
    279c:	00 00                	add    %al,(%rax)
    279e:	00 02                	add    %al,(%rdx)
    27a0:	0e                   	(bad)  
    27a1:	00 00                	add    %al,(%rax)
    27a3:	93                   	xchg   %eax,%ebx
    27a4:	0d 00 00 1a 01       	or     $0x11a0000,%eax
    27a9:	55                   	push   %rbp
    27aa:	09 03                	or     %eax,(%rbx)
    27ac:	40 35 40 00 00 00    	rex xor $0x40,%eax
    27b2:	00 00                	add    %al,(%rax)
    27b4:	1a 01                	sbb    (%rcx),%al
    27b6:	54                   	push   %rsp
    27b7:	02 73 00             	add    0x0(%rbx),%dh
    27ba:	00 1c 24             	add    %bl,(%rsp)
    27bd:	1f                   	(bad)  
    27be:	40 00 00             	add    %al,(%rax)
    27c1:	00 00                	add    %al,(%rax)
    27c3:	00 ff                	add    %bh,%bh
    27c5:	09 00                	or     %eax,(%rax)
    27c7:	00 1a                	add    %bl,(%rdx)
    27c9:	01 55 01             	add    %edx,0x1(%rbp)
    27cc:	31 1a                	xor    %ebx,(%rdx)
    27ce:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
    27d2:	00 00                	add    %al,(%rax)
    27d4:	00 27                	add    %ah,(%rdi)
    27d6:	83 05 00 00 83 05 00 	addl   $0x0,0x5830000(%rip)        # 58327dd <_end+0x542b6a5>
    27dd:	00 0a                	add    %cl,(%rdx)
    27df:	39 0e                	cmp    %ecx,(%rsi)
    27e1:	27                   	(bad)  
    27e2:	4d 05 00 00 4d 05    	rex.WRB add $0x54d0000,%rax
    27e8:	00 00                	add    %al,(%rax)
    27ea:	0a 4c 0c 28          	or     0x28(%rsp,%rcx,1),%cl
    27ee:	ea                   	(bad)  
    27ef:	01 00                	add    %eax,(%rax)
    27f1:	00 ea                	add    %ch,%dl
    27f3:	01 00                	add    %eax,(%rax)
    27f5:	00 06                	add    %al,(%rsi)
    27f7:	46 01 0c 28          	add    %r9d,(%rax,%r13,1)
    27fb:	fc                   	cld    
    27fc:	01 00                	add    %eax,(%rax)
    27fe:	00 fc                	add    %bh,%ah
    2800:	01 00                	add    %eax,(%rax)
    2802:	00 0b                	add    %cl,(%rbx)
    2804:	66 02 0d 27 9e 05 00 	data16 add 0x59e27(%rip),%cl        # 5c632 <_init-0x3a49ce>
    280b:	00 9e 05 00 00 0c    	add    %bl,0xc000005(%rsi)
    2811:	3c 0e                	cmp    $0xe,%al
    2813:	27                   	(bad)  
    2814:	a8 04                	test   $0x4,%al
    2816:	00 00                	add    %al,(%rax)
    2818:	a8 04                	test   $0x4,%al
    281a:	00 00                	add    %al,(%rax)
    281c:	09 50 06             	or     %edx,0x6(%rax)
    281f:	29 1d 00 00 00 13    	sub    %ebx,0x13000000(%rip)        # 13002825 <_end+0x12bfb6ed>
    2825:	00 00                	add    %al,(%rax)
    2827:	00 0d 00 28 eb 01    	add    %cl,0x1eb2800(%rip)        # 1eb502d <_end+0x1aadef5>
    282d:	00 00                	add    %al,(%rax)
    282f:	eb 01                	jmp    2832 <_init-0x3fe7ce>
    2831:	00 00                	add    %al,(%rax)
    2833:	06                   	(bad)  
    2834:	4c 01 0c 28          	add    %r9,(%rax,%rbp,1)
    2838:	ad                   	lods   %ds:(%rsi),%eax
    2839:	04 00                	add    $0x0,%al
    283b:	00 ad 04 00 00 06    	add    %ch,0x6000004(%rbp)
    2841:	4e 01 0c 28          	add    %r9,(%rax,%r13,1)
    2845:	3f                   	(bad)  
    2846:	05 00 00 3f 05       	add    $0x53f0000,%eax
    284b:	00 00                	add    %al,(%rax)
    284d:	06                   	(bad)  
    284e:	ec                   	in     (%dx),%al
    284f:	01 0c 00             	add    %ecx,(%rax,%rax,1)
    2852:	a0 12 00 00 04 00 ec 	movabs 0x8ec0004000012,%al
    2859:	08 00 
    285b:	00 08                	add    %cl,(%rax)
    285d:	01 99 00 00 00 0c    	add    %ebx,0xc000000(%rcx)
    2863:	92                   	xchg   %eax,%edx
    2864:	08 00                	or     %al,(%rax)
    2866:	00 48 01             	add    %cl,0x1(%rax)
    2869:	00 00                	add    %al,(%rax)
    286b:	d4                   	(bad)  
    286c:	21 40 00             	and    %eax,0x0(%rax)
    286f:	00 00                	add    %al,(%rax)
    2871:	00 00                	add    %al,(%rax)
    2873:	67 0c 00             	addr32 or $0x0,%al
    2876:	00 00                	add    %al,(%rax)
    2878:	00 00                	add    %al,(%rax)
    287a:	00 d4                	add    %dl,%ah
    287c:	0d 00 00 02 7e       	or     $0x7e020000,%eax
    2881:	06                   	(bad)  
    2882:	00 00                	add    %al,(%rax)
    2884:	03 d8                	add    %eax,%ebx
    2886:	17                   	(bad)  
    2887:	39 00                	cmp    %eax,(%rax)
    2889:	00 00                	add    %al,(%rax)
    288b:	03 08                	add    (%rax),%ecx
    288d:	07                   	(bad)  
    288e:	5b                   	pop    %rbx
    288f:	02 00                	add    (%rax),%al
    2891:	00 03                	add    %al,(%rbx)
    2893:	04 07                	add    $0x7,%al
    2895:	60                   	(bad)  
    2896:	02 00                	add    (%rax),%al
    2898:	00 04 08             	add    %al,(%rax,%rcx,1)
    289b:	03 01                	add    (%rcx),%eax
    289d:	08 21                	or     %ah,(%rcx)
    289f:	02 00                	add    (%rax),%al
    28a1:	00 03                	add    %al,(%rbx)
    28a3:	02 07                	add    (%rdi),%al
    28a5:	32 03                	xor    (%rbx),%al
    28a7:	00 00                	add    %al,(%rax)
    28a9:	03 01                	add    (%rcx),%eax
    28ab:	06                   	(bad)  
    28ac:	23 02                	and    (%rdx),%eax
    28ae:	00 00                	add    %al,(%rax)
    28b0:	02 02                	add    (%rdx),%al
    28b2:	06                   	(bad)  
    28b3:	00 00                	add    %al,(%rax)
    28b5:	04 25                	add    $0x25,%al
    28b7:	17                   	(bad)  
    28b8:	49 00 00             	rex.WB add %al,(%r8)
    28bb:	00 03                	add    %al,(%rbx)
    28bd:	02 05 73 00 00 00    	add    0x73(%rip),%al        # 2936 <_init-0x3fe6ca>
    28c3:	02 5d 08             	add    0x8(%rbp),%bl
    28c6:	00 00                	add    %al,(%rax)
    28c8:	04 27                	add    $0x27,%al
    28ca:	1c 50                	sbb    $0x50,%al
    28cc:	00 00                	add    %al,(%rax)
    28ce:	00 05 04 05 69 6e    	add    %al,0x6e690504(%rip)        # 6e692dd8 <_end+0x6e28bca0>
    28d4:	74 00                	je     28d6 <_init-0x3fe72a>
    28d6:	02 bb 06 00 00 04    	add    0x4000006(%rbx),%bh
    28dc:	29 16                	sub    %edx,(%rsi)
    28de:	40 00 00             	add    %al,(%rax)
    28e1:	00 03                	add    %al,(%rbx)
    28e3:	08 05 a5 01 00 00    	or     %al,0x1a5(%rip)        # 2a8e <_init-0x3fe572>
    28e9:	02 95 03 00 00 04    	add    0x4000003(%rbp),%dl
    28ef:	96                   	xchg   %eax,%esi
    28f0:	19 90 00 00 00 02    	sbb    %edx,0x2000000(%rax)
    28f6:	62 03                	(bad)  
    28f8:	00 00                	add    %al,(%rax)
    28fa:	04 97                	add    $0x97,%al
    28fc:	1b 90 00 00 00 02    	sbb    0x2000000(%rax),%edx
    2902:	7b 06                	jnp    290a <_init-0x3fe6f6>
    2904:	00 00                	add    %al,(%rax)
    2906:	04 bf                	add    $0xbf,%al
    2908:	1b 90 00 00 00 06    	sbb    0x6000000(%rax),%edx
    290e:	08 c1                	or     %al,%cl
    2910:	00 00                	add    %al,(%rax)
    2912:	00 03                	add    %al,(%rbx)
    2914:	01 06                	add    %eax,(%rsi)
    2916:	2a 02                	sub    (%rdx),%al
    2918:	00 00                	add    %al,(%rax)
    291a:	07                   	(bad)  
    291b:	c1 00 00             	roll   $0x0,(%rax)
    291e:	00 08                	add    %cl,(%rax)
    2920:	10 02                	adc    %al,(%rdx)
    2922:	00 00                	add    %al,(%rax)
    2924:	d8 05 31 08 54 02    	fadds  0x2540831(%rip)        # 254315b <_end+0x213c023>
    292a:	00 00                	add    %al,(%rax)
    292c:	09 13                	or     %edx,(%rbx)
    292e:	04 00                	add    $0x0,%al
    2930:	00 05 33 07 7d 00    	add    %al,0x7d0733(%rip)        # 7d3069 <_end+0x3cbf31>
    2936:	00 00                	add    %al,(%rax)
    2938:	00 09                	add    %cl,(%rcx)
    293a:	b3 02                	mov    $0x2,%bl
    293c:	00 00                	add    %al,(%rax)
    293e:	05 36 09 bb 00       	add    $0xbb0936,%eax
    2943:	00 00                	add    %al,(%rax)
    2945:	08 09                	or     %cl,(%rcx)
    2947:	8e 02                	mov    (%rdx),%es
    2949:	00 00                	add    %al,(%rax)
    294b:	05 37 09 bb 00       	add    $0xbb0937,%eax
    2950:	00 00                	add    %al,(%rax)
    2952:	10 09                	adc    %cl,(%rcx)
    2954:	22 00                	and    (%rax),%al
    2956:	00 00                	add    %al,(%rax)
    2958:	05 38 09 bb 00       	add    $0xbb0938,%eax
    295d:	00 00                	add    %al,(%rax)
    295f:	18 09                	sbb    %cl,(%rcx)
    2961:	9b                   	fwait
    2962:	02 00                	add    (%rax),%al
    2964:	00 05 39 09 bb 00    	add    %al,0xbb0939(%rip)        # bb32a3 <_end+0x7ac16b>
    296a:	00 00                	add    %al,(%rax)
    296c:	20 09                	and    %cl,(%rcx)
    296e:	d6                   	(bad)  
    296f:	00 00                	add    %al,(%rax)
    2971:	00 05 3a 09 bb 00    	add    %al,0xbb093a(%rip)        # bb32b1 <_end+0x7ac179>
    2977:	00 00                	add    %al,(%rax)
    2979:	28 09                	sub    %cl,(%rcx)
    297b:	5d                   	pop    %rbp
    297c:	00 00                	add    %al,(%rax)
    297e:	00 05 3b 09 bb 00    	add    %al,0xbb093b(%rip)        # bb32bf <_end+0x7ac187>
    2984:	00 00                	add    %al,(%rax)
    2986:	30 09                	xor    %cl,(%rcx)
    2988:	f6 00 00             	testb  $0x0,(%rax)
    298b:	00 05 3c 09 bb 00    	add    %al,0xbb093c(%rip)        # bb32cd <_end+0x7ac195>
    2991:	00 00                	add    %al,(%rax)
    2993:	38 09                	cmp    %cl,(%rcx)
    2995:	d4                   	(bad)  
    2996:	02 00                	add    (%rax),%al
    2998:	00 05 3d 09 bb 00    	add    %al,0xbb093d(%rip)        # bb32db <_end+0x7ac1a3>
    299e:	00 00                	add    %al,(%rax)
    29a0:	40 09 e4             	rex or %esp,%esp
    29a3:	03 00                	add    (%rax),%eax
    29a5:	00 05 40 09 bb 00    	add    %al,0xbb0940(%rip)        # bb32eb <_end+0x7ac1b3>
    29ab:	00 00                	add    %al,(%rax)
    29ad:	48 09 9d 03 00 00 05 	or     %rbx,0x5000003(%rbp)
    29b4:	41 09 bb 00 00 00 50 	or     %edi,0x50000000(%r11)
    29bb:	09 50 00             	or     %edx,0x0(%rax)
    29be:	00 00                	add    %al,(%rax)
    29c0:	05 42 09 bb 00       	add    $0xbb0942,%eax
    29c5:	00 00                	add    %al,(%rax)
    29c7:	58                   	pop    %rax
    29c8:	09 14 01             	or     %edx,(%rcx,%rax,1)
    29cb:	00 00                	add    %al,(%rax)
    29cd:	05 44 16 6d 02       	add    $0x26d1644,%eax
    29d2:	00 00                	add    %al,(%rax)
    29d4:	60                   	(bad)  
    29d5:	09 75 03             	or     %esi,0x3(%rbp)
    29d8:	00 00                	add    %al,(%rax)
    29da:	05 46 14 73 02       	add    $0x2731446,%eax
    29df:	00 00                	add    %al,(%rax)
    29e1:	68 09 04 04 00       	pushq  $0x40409
    29e6:	00 05 48 07 7d 00    	add    %al,0x7d0748(%rip)        # 7d3134 <_end+0x3cbffc>
    29ec:	00 00                	add    %al,(%rax)
    29ee:	70 09                	jo     29f9 <_init-0x3fe607>
    29f0:	b3 03                	mov    $0x3,%bl
    29f2:	00 00                	add    %al,(%rax)
    29f4:	05 49 07 7d 00       	add    $0x7d0749,%eax
    29f9:	00 00                	add    %al,(%rax)
    29fb:	74 09                	je     2a06 <_init-0x3fe5fa>
    29fd:	07                   	(bad)  
    29fe:	00 00                	add    %al,(%rax)
    2a00:	00 05 4a 0b 97 00    	add    %al,0x970b4a(%rip)        # 973550 <_end+0x56c418>
    2a06:	00 00                	add    %al,(%rax)
    2a08:	78 09                	js     2a13 <_init-0x3fe5ed>
    2a0a:	de 01                	fiadds (%rcx)
    2a0c:	00 00                	add    %al,(%rax)
    2a0e:	05 4d 12 50 00       	add    $0x50124d,%eax
    2a13:	00 00                	add    %al,(%rax)
    2a15:	80 09 01             	orb    $0x1,(%rcx)
    2a18:	02 00                	add    (%rax),%al
    2a1a:	00 05 4e 0f 57 00    	add    %al,0x570f4e(%rip)        # 57396e <_end+0x16c836>
    2a20:	00 00                	add    %al,(%rax)
    2a22:	82                   	(bad)  
    2a23:	09 78 02             	or     %edi,0x2(%rax)
    2a26:	00 00                	add    %al,(%rax)
    2a28:	05 4f 08 79 02       	add    $0x279084f,%eax
    2a2d:	00 00                	add    %al,(%rax)
    2a2f:	83 09 b9             	orl    $0xffffffb9,(%rcx)
    2a32:	01 00                	add    %eax,(%rax)
    2a34:	00 05 51 0f 89 02    	add    %al,0x2890f51(%rip)        # 289398b <_end+0x248c853>
    2a3a:	00 00                	add    %al,(%rax)
    2a3c:	88 09                	mov    %cl,(%rcx)
    2a3e:	0b 00                	or     (%rax),%eax
    2a40:	00 00                	add    %al,(%rax)
    2a42:	05 59 0d a3 00       	add    $0xa30d59,%eax
    2a47:	00 00                	add    %al,(%rax)
    2a49:	90                   	nop
    2a4a:	09 24 04             	or     %esp,(%rsp,%rax,1)
    2a4d:	00 00                	add    %al,(%rax)
    2a4f:	05 5b 17 94 02       	add    $0x294175b,%eax
    2a54:	00 00                	add    %al,(%rax)
    2a56:	98                   	cwtl   
    2a57:	09 7f 03             	or     %edi,0x3(%rdi)
    2a5a:	00 00                	add    %al,(%rax)
    2a5c:	05 5c 19 9f 02       	add    $0x29f195c,%eax
    2a61:	00 00                	add    %al,(%rax)
    2a63:	a0 09 01 03 00 00 05 	movabs 0x145d050000030109,%al
    2a6a:	5d 14 
    2a6c:	73 02                	jae    2a70 <_init-0x3fe590>
    2a6e:	00 00                	add    %al,(%rax)
    2a70:	a8 09                	test   $0x9,%al
    2a72:	e9 00 00 00 05       	jmpq   5002a77 <_end+0x4bfb93f>
    2a77:	5e                   	pop    %rsi
    2a78:	09 47 00             	or     %eax,0x0(%rdi)
    2a7b:	00 00                	add    %al,(%rax)
    2a7d:	b0 09                	mov    $0x9,%al
    2a7f:	15 03 00 00 05       	adc    $0x5000003,%eax
    2a84:	5f                   	pop    %rdi
    2a85:	0a 2d 00 00 00 b8    	or     -0x48000000(%rip),%ch        # ffffffffb8002a8b <_end+0xffffffffb7bfb953>
    2a8b:	09 bb 03 00 00 05    	or     %edi,0x5000003(%rbx)
    2a91:	60                   	(bad)  
    2a92:	07                   	(bad)  
    2a93:	7d 00                	jge    2a95 <_init-0x3fe56b>
    2a95:	00 00                	add    %al,(%rax)
    2a97:	c0 09 aa             	rorb   $0xaa,(%rcx)
    2a9a:	02 00                	add    (%rax),%al
    2a9c:	00 05 62 08 a5 02    	add    %al,0x2a50862(%rip)        # 2a53304 <_end+0x264c1cc>
    2aa2:	00 00                	add    %al,(%rax)
    2aa4:	c4                   	(bad)  
    2aa5:	00 02                	add    %al,(%rdx)
    2aa7:	14 02                	adc    $0x2,%al
    2aa9:	00 00                	add    %al,(%rax)
    2aab:	06                   	(bad)  
    2aac:	07                   	(bad)  
    2aad:	19 cd                	sbb    %ecx,%ebp
    2aaf:	00 00                	add    %al,(%rax)
    2ab1:	00 0a                	add    %cl,(%rdx)
    2ab3:	7d 00                	jge    2ab5 <_init-0x3fe54b>
    2ab5:	00 00                	add    %al,(%rax)
    2ab7:	05 2b 0e 0b 6d       	add    $0x6d0b0e2b,%eax
    2abc:	02 00                	add    (%rax),%al
    2abe:	00 06                	add    %al,(%rsi)
    2ac0:	08 68 02             	or     %ch,0x2(%rax)
    2ac3:	00 00                	add    %al,(%rax)
    2ac5:	06                   	(bad)  
    2ac6:	08 cd                	or     %cl,%ch
    2ac8:	00 00                	add    %al,(%rax)
    2aca:	00 0c c1             	add    %cl,(%rcx,%rax,8)
    2acd:	00 00                	add    %al,(%rax)
    2acf:	00 89 02 00 00 0d    	add    %cl,0xd000002(%rcx)
    2ad5:	39 00                	cmp    %eax,(%rax)
    2ad7:	00 00                	add    %al,(%rax)
    2ad9:	00 00                	add    %al,(%rax)
    2adb:	06                   	(bad)  
    2adc:	08 60 02             	or     %ah,0x2(%rax)
    2adf:	00 00                	add    %al,(%rax)
    2ae1:	0b 21                	or     (%rcx),%esp
    2ae3:	04 00                	add    $0x0,%al
    2ae5:	00 06                	add    %al,(%rsi)
    2ae7:	08 8f 02 00 00 0b    	or     %cl,0xb000002(%rdi)
    2aed:	7c 03                	jl     2af2 <_init-0x3fe50e>
    2aef:	00 00                	add    %al,(%rax)
    2af1:	06                   	(bad)  
    2af2:	08 9a 02 00 00 0c    	or     %bl,0xc000002(%rdx)
    2af8:	c1 00 00             	roll   $0x0,(%rax)
    2afb:	00 b5 02 00 00 0d    	add    %dh,0xd000002(%rbp)
    2b01:	39 00                	cmp    %eax,(%rax)
    2b03:	00 00                	add    %al,(%rax)
    2b05:	13 00                	adc    (%rax),%eax
    2b07:	02 7d 06             	add    0x6(%rbp),%bh
    2b0a:	00 00                	add    %al,(%rax)
    2b0c:	07                   	(bad)  
    2b0d:	4d 13 af 00 00 00 0e 	adc    0xe000000(%r15),%r13
    2b14:	ad                   	lods   %ds:(%rsi),%eax
    2b15:	03 00                	add    (%rax),%eax
    2b17:	00 07                	add    %al,(%rdi)
    2b19:	89 0e                	mov    %ecx,(%rsi)
    2b1b:	cd 02                	int    $0x2
    2b1d:	00 00                	add    %al,(%rax)
    2b1f:	06                   	(bad)  
    2b20:	08 54 02 00          	or     %dl,0x0(%rdx,%rax,1)
    2b24:	00 0e                	add    %cl,(%rsi)
    2b26:	1a 04 00             	sbb    (%rax,%rax,1),%al
    2b29:	00 07                	add    %al,(%rdi)
    2b2b:	8a 0e                	mov    (%rsi),%cl
    2b2d:	cd 02                	int    $0x2
    2b2f:	00 00                	add    %al,(%rax)
    2b31:	0e                   	(bad)  
    2b32:	99                   	cltd   
    2b33:	01 00                	add    %eax,(%rax)
    2b35:	00 07                	add    %al,(%rdi)
    2b37:	8b 0e                	mov    (%rsi),%ecx
    2b39:	cd 02                	int    $0x2
    2b3b:	00 00                	add    %al,(%rax)
    2b3d:	0e                   	(bad)  
    2b3e:	47 00 00             	rex.RXB add %r8b,(%r8)
    2b41:	00 08                	add    %cl,(%rax)
    2b43:	1a 0c 7d 00 00 00 0c 	sbb    0xc000000(,%rdi,2),%cl
    2b4a:	0d 03 00 00 02       	or     $0x2000003,%eax
    2b4f:	03 00                	add    (%rax),%eax
    2b51:	00 0f                	add    %cl,(%rdi)
    2b53:	00 07                	add    %al,(%rdi)
    2b55:	f7 02 00 00 06 08    	testl  $0x8060000,(%rdx)
    2b5b:	c8 00 00 00          	enterq $0x0,$0x0
    2b5f:	07                   	(bad)  
    2b60:	07                   	(bad)  
    2b61:	03 00                	add    (%rax),%eax
    2b63:	00 0e                	add    %cl,(%rsi)
    2b65:	36 00 00             	add    %al,%ss:(%rax)
    2b68:	00 08                	add    %cl,(%rax)
    2b6a:	1b 1a                	sbb    (%rdx),%ebx
    2b6c:	02 03                	add    (%rbx),%al
    2b6e:	00 00                	add    %al,(%rax)
    2b70:	03 08                	add    (%rax),%ecx
    2b72:	05 a0 01 00 00       	add    $0x1a0,%eax
    2b77:	03 08                	add    (%rax),%ecx
    2b79:	07                   	(bad)  
    2b7a:	56                   	push   %rsi
    2b7b:	02 00                	add    (%rax),%al
    2b7d:	00 0c c1             	add    %cl,(%rcx,%rax,8)
    2b80:	00 00                	add    %al,(%rax)
    2b82:	00 3c 03             	add    %bh,(%rbx,%rax,1)
    2b85:	00 00                	add    %al,(%rax)
    2b87:	0d 39 00 00 00       	or     $0x39,%eax
    2b8c:	07                   	(bad)  
    2b8d:	00 10                	add    %dl,(%rax)
    2b8f:	0a 01                	or     (%rcx),%al
    2b91:	00 00                	add    %al,(%rax)
    2b93:	09 1f                	or     %ebx,(%rdi)
    2b95:	02 0f                	add    (%rdi),%cl
    2b97:	49 03 00             	add    (%r8),%rax
    2b9a:	00 06                	add    %al,(%rsi)
    2b9c:	08 bb 00 00 00 0e    	or     %bh,0xe000000(%rbx)
    2ba2:	4f 02 00             	rex.WRXB add (%r8),%r8b
    2ba5:	00 0a                	add    %cl,(%rdx)
    2ba7:	24 0e                	and    $0xe,%al
    2ba9:	bb 00 00 00 0e       	mov    $0xe000000,%ebx
    2bae:	00 00                	add    %al,(%rax)
    2bb0:	00 00                	add    %al,(%rax)
    2bb2:	0a 32                	or     (%rdx),%dh
    2bb4:	0c 7d                	or     $0x7d,%al
    2bb6:	00 00                	add    %al,(%rax)
    2bb8:	00 0e                	add    %cl,(%rsi)
    2bba:	41 01 00             	add    %eax,(%r8)
    2bbd:	00 0a                	add    %cl,(%rdx)
    2bbf:	37                   	(bad)  
    2bc0:	0c 7d                	or     $0x7d,%al
    2bc2:	00 00                	add    %al,(%rax)
    2bc4:	00 0e                	add    %cl,(%rsi)
    2bc6:	fd                   	std    
    2bc7:	03 00                	add    (%rax),%eax
    2bc9:	00 0a                	add    %cl,(%rdx)
    2bcb:	3b 0c 7d 00 00 00 11 	cmp    0x11000000(,%rdi,2),%ecx
    2bd2:	f2 07                	repnz (bad) 
    2bd4:	00 00                	add    %al,(%rax)
    2bd6:	07                   	(bad)  
    2bd7:	04 40                	add    $0x40,%al
    2bd9:	00 00                	add    %al,(%rax)
    2bdb:	00 17                	add    %dl,(%rdi)
    2bdd:	18 06                	sbb    %al,(%rsi)
    2bdf:	cc                   	int3   
    2be0:	03 00                	add    (%rax),%eax
    2be2:	00 12                	add    %dl,(%rdx)
    2be4:	93                   	xchg   %eax,%ebx
    2be5:	06                   	(bad)  
    2be6:	00 00                	add    %al,(%rax)
    2be8:	01 12                	add    %edx,(%rdx)
    2bea:	dd 08                	fisttpll (%rax)
    2bec:	00 00                	add    %al,(%rax)
    2bee:	02 12                	add    (%rdx),%dl
    2bf0:	07                   	(bad)  
    2bf1:	09 00                	or     %eax,(%rax)
    2bf3:	00 03                	add    %al,(%rbx)
    2bf5:	12 d8                	adc    %al,%bl
    2bf7:	06                   	(bad)  
    2bf8:	00 00                	add    %al,(%rax)
    2bfa:	04 12                	add    $0x12,%al
    2bfc:	25 09 00 00 05       	and    $0x5000009,%eax
    2c01:	12 b5 07 00 00 06    	adc    0x6000007(%rbp),%dh
    2c07:	12 2a                	adc    (%rdx),%ch
    2c09:	08 00                	or     %al,(%rax)
    2c0b:	00 0a                	add    %cl,(%rdx)
    2c0d:	13 c7                	adc    %edi,%eax
    2c0f:	08 00                	or     %al,(%rax)
    2c11:	00 00                	add    %al,(%rax)
    2c13:	00 08                	add    %cl,(%rax)
    2c15:	00 14 1b             	add    %dl,(%rbx,%rbx,1)
    2c18:	06                   	(bad)  
    2c19:	00 00                	add    %al,(%rax)
    2c1b:	00 08                	add    %cl,(%rax)
    2c1d:	00 02                	add    %al,(%rdx)
    2c1f:	bb 08 00 00 0b       	mov    $0xb000008,%ebx
    2c24:	1c 1c                	sbb    $0x1c,%al
    2c26:	50                   	push   %rax
    2c27:	00 00                	add    %al,(%rax)
    2c29:	00 08                	add    %cl,(%rax)
    2c2b:	d4                   	(bad)  
    2c2c:	08 00                	or     %al,(%rax)
    2c2e:	00 10                	add    %dl,(%rax)
    2c30:	0c af                	or     $0xaf,%al
    2c32:	08 00                	or     %al,(%rax)
    2c34:	04 00                	add    $0x0,%al
    2c36:	00 09                	add    %cl,(%rcx)
    2c38:	c8 07 00 00          	enterq $0x7,$0x0
    2c3c:	0c b1                	or     $0xb1,%al
    2c3e:	05 cc 03 00 00       	add    $0x3cc,%eax
    2c43:	00 09                	add    %cl,(%rcx)
    2c45:	ff 08                	decl   (%rax)
    2c47:	00 00                	add    %al,(%rax)
    2c49:	0c b2                	or     $0xb2,%al
    2c4b:	0a 00                	or     (%rax),%al
    2c4d:	04 00                	add    $0x0,%al
    2c4f:	00 02                	add    %al,(%rdx)
    2c51:	00 0c c1             	add    %cl,(%rcx,%rax,8)
    2c54:	00 00                	add    %al,(%rax)
    2c56:	00 10                	add    %dl,(%rax)
    2c58:	04 00                	add    $0x0,%al
    2c5a:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 2c99 <_init-0x3fe367>
    2c60:	0d 00 02 04 06       	or     $0x6040200,%eax
    2c65:	00 00                	add    %al,(%rax)
    2c67:	0d 18 13 5e 00       	or     $0x5e1318,%eax
    2c6c:	00 00                	add    %al,(%rax)
    2c6e:	02 5f 08             	add    0x8(%rdi),%bl
    2c71:	00 00                	add    %al,(%rax)
    2c73:	0d 19 14 71 00       	or     $0x711419,%eax
    2c78:	00 00                	add    %al,(%rax)
    2c7a:	02 bd 06 00 00 0d    	add    0xd000006(%rbp),%bh
    2c80:	1a 14 84             	sbb    (%rsp,%rax,4),%dl
    2c83:	00 00                	add    %al,(%rax)
    2c85:	00 02                	add    %al,(%rdx)
    2c87:	36 06                	ss (bad) 
    2c89:	00 00                	add    %al,(%rax)
    2c8b:	0e                   	(bad)  
    2c8c:	1e                   	(bad)  
    2c8d:	12 28                	adc    (%rax),%ch
    2c8f:	04 00                	add    $0x0,%al
    2c91:	00 08                	add    %cl,(%rax)
    2c93:	2b 07                	sub    (%rdi),%eax
    2c95:	00 00                	add    %al,(%rax)
    2c97:	04 0e                	add    $0xe,%al
    2c99:	1f                   	(bad)  
    2c9a:	08 5b 04             	or     %bl,0x4(%rbx)
    2c9d:	00 00                	add    %al,(%rax)
    2c9f:	09 e1                	or     %esp,%ecx
    2ca1:	06                   	(bad)  
    2ca2:	00 00                	add    %al,(%rax)
    2ca4:	0e                   	(bad)  
    2ca5:	21 0f                	and    %ecx,(%rdi)
    2ca7:	34 04                	xor    $0x4,%al
    2ca9:	00 00                	add    %al,(%rax)
    2cab:	00 00                	add    %al,(%rax)
    2cad:	02 f8                	add    %al,%bh
    2caf:	05 00 00 0e 77       	add    $0x770e0000,%eax
    2cb4:	12 1c 04             	adc    (%rsp,%rax,1),%bl
    2cb7:	00 00                	add    %al,(%rax)
    2cb9:	15 10 0e d5 05       	adc    $0x5d50e10,%eax
    2cbe:	95                   	xchg   %eax,%ebp
    2cbf:	04 00                	add    $0x0,%al
    2cc1:	00 16                	add    %dl,(%rsi)
    2cc3:	76 08                	jbe    2ccd <_init-0x3fe333>
    2cc5:	00 00                	add    %al,(%rax)
    2cc7:	0e                   	(bad)  
    2cc8:	d7                   	xlat   %ds:(%rbx)
    2cc9:	0a 95 04 00 00 16    	or     0x16000004(%rbp),%dl
    2ccf:	53                   	push   %rbx
    2cd0:	06                   	(bad)  
    2cd1:	00 00                	add    %al,(%rax)
    2cd3:	0e                   	(bad)  
    2cd4:	d8 0b                	fmuls  (%rbx)
    2cd6:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    2cd7:	04 00                	add    $0x0,%al
    2cd9:	00 16                	add    %dl,(%rsi)
    2cdb:	5f                   	pop    %rdi
    2cdc:	06                   	(bad)  
    2cdd:	00 00                	add    %al,(%rax)
    2cdf:	0e                   	(bad)  
    2ce0:	d9 0b                	(bad)  (%rbx)
    2ce2:	b5 04                	mov    $0x4,%ch
    2ce4:	00 00                	add    %al,(%rax)
    2ce6:	00 0c 10             	add    %cl,(%rax,%rdx,1)
    2ce9:	04 00                	add    $0x0,%al
    2ceb:	00 a5 04 00 00 0d    	add    %ah,0xd000004(%rbp)
    2cf1:	39 00                	cmp    %eax,(%rax)
    2cf3:	00 00                	add    %al,(%rax)
    2cf5:	0f 00 0c 1c          	str    (%rsp,%rbx,1)
    2cf9:	04 00                	add    $0x0,%al
    2cfb:	00 b5 04 00 00 0d    	add    %dh,0xd000004(%rbp)
    2d01:	39 00                	cmp    %eax,(%rax)
    2d03:	00 00                	add    %al,(%rax)
    2d05:	07                   	(bad)  
    2d06:	00 0c 28             	add    %cl,(%rax,%rbp,1)
    2d09:	04 00                	add    $0x0,%al
    2d0b:	00 c5                	add    %al,%ch
    2d0d:	04 00                	add    $0x0,%al
    2d0f:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 2d4e <_init-0x3fe2b2>
    2d15:	03 00                	add    (%rax),%eax
    2d17:	08 3e                	or     %bh,(%rsi)
    2d19:	08 00                	or     %al,(%rax)
    2d1b:	00 10                	add    %dl,(%rax)
    2d1d:	0e                   	(bad)  
    2d1e:	d3 08                	rorl   %cl,(%rax)
    2d20:	e0 04                	loopne 2d26 <_init-0x3fe2da>
    2d22:	00 00                	add    %al,(%rax)
    2d24:	09 e3                	or     %esp,%ebx
    2d26:	05 00 00 0e da       	add    $0xda0e0000,%eax
    2d2b:	09 67 04             	or     %esp,0x4(%rdi)
    2d2e:	00 00                	add    %al,(%rax)
    2d30:	00 00                	add    %al,(%rax)
    2d32:	07                   	(bad)  
    2d33:	c5 04 00             	(bad)  
    2d36:	00 0e                	add    %cl,(%rsi)
    2d38:	99                   	cltd   
    2d39:	07                   	(bad)  
    2d3a:	00 00                	add    %al,(%rax)
    2d3c:	0e                   	(bad)  
    2d3d:	e3 1e                	jrcxz  2d5d <_init-0x3fe2a3>
    2d3f:	e0 04                	loopne 2d45 <_init-0x3fe2bb>
    2d41:	00 00                	add    %al,(%rax)
    2d43:	0e                   	(bad)  
    2d44:	9f                   	lahf   
    2d45:	06                   	(bad)  
    2d46:	00 00                	add    %al,(%rax)
    2d48:	0e                   	(bad)  
    2d49:	e4 1e                	in     $0x1e,%al
    2d4b:	e0 04                	loopne 2d51 <_init-0x3fe2af>
    2d4d:	00 00                	add    %al,(%rax)
    2d4f:	08 e8                	or     %ch,%al
    2d51:	08 00                	or     %al,(%rax)
    2d53:	00 10                	add    %dl,(%rax)
    2d55:	0e                   	(bad)  
    2d56:	ed                   	in     (%dx),%eax
    2d57:	08 3f                	or     %bh,(%rdi)
    2d59:	05 00 00 09 69       	add    $0x69090000,%eax
    2d5e:	07                   	(bad)  
    2d5f:	00 00                	add    %al,(%rax)
    2d61:	0e                   	(bad)  
    2d62:	ef                   	out    %eax,(%dx)
    2d63:	05 cc 03 00 00       	add    $0x3cc,%eax
    2d68:	00 09                	add    %cl,(%rcx)
    2d6a:	bf 07 00 00 0e       	mov    $0xe000007,%edi
    2d6f:	f0 0f 5b 04 00       	lock cvtdq2ps (%rax,%rax,1),%xmm0
    2d74:	00 02                	add    %al,(%rdx)
    2d76:	09 2a                	or     %ebp,(%rdx)
    2d78:	07                   	(bad)  
    2d79:	00 00                	add    %al,(%rax)
    2d7b:	0e                   	(bad)  
    2d7c:	f1                   	icebp  
    2d7d:	14 40                	adc    $0x40,%al
    2d7f:	04 00                	add    $0x0,%al
    2d81:	00 04 09             	add    %al,(%rcx,%rcx,1)
    2d84:	cf                   	iret   
    2d85:	06                   	(bad)  
    2d86:	00 00                	add    %al,(%rax)
    2d88:	0e                   	(bad)  
    2d89:	f4                   	hlt    
    2d8a:	13 3f                	adc    (%rdi),%edi
    2d8c:	05 00 00 08 00       	add    $0x80000,%eax
    2d91:	0c 49                	or     $0x49,%al
    2d93:	00 00                	add    %al,(%rax)
    2d95:	00 4f 05             	add    %cl,0x5(%rdi)
    2d98:	00 00                	add    %al,(%rax)
    2d9a:	0d 39 00 00 00       	or     $0x39,%eax
    2d9f:	07                   	(bad)  
    2da0:	00 08                	add    %cl,(%rax)
    2da2:	55                   	push   %rbp
    2da3:	08 00                	or     %al,(%rax)
    2da5:	00 20                	add    %ah,(%rax)
    2da7:	0f 62 08             	punpckldq (%rax),%mm1
    2daa:	9e                   	sahf   
    2dab:	05 00 00 09 13       	add    $0x13090000,%eax
    2db0:	07                   	(bad)  
    2db1:	00 00                	add    %al,(%rax)
    2db3:	0f 64 09             	pcmpgtb (%rcx),%mm1
    2db6:	bb 00 00 00 00       	mov    $0x0,%ebx
    2dbb:	09 8f 07 00 00 0f    	or     %ecx,0xf000007(%rdi)
    2dc1:	65 0a 49 03          	or     %gs:0x3(%rcx),%cl
    2dc5:	00 00                	add    %al,(%rax)
    2dc7:	08 09                	or     %cl,(%rcx)
    2dc9:	3a 07                	cmp    (%rdi),%al
    2dcb:	00 00                	add    %al,(%rax)
    2dcd:	0f 66 07             	pcmpgtd (%rdi),%mm0
    2dd0:	7d 00                	jge    2dd2 <_init-0x3fe22e>
    2dd2:	00 00                	add    %al,(%rax)
    2dd4:	10 09                	adc    %cl,(%rcx)
    2dd6:	dd 07                	fldl   (%rdi)
    2dd8:	00 00                	add    %al,(%rax)
    2dda:	0f 67 07             	packuswb (%rdi),%mm0
    2ddd:	7d 00                	jge    2ddf <_init-0x3fe221>
    2ddf:	00 00                	add    %al,(%rax)
    2de1:	14 09                	adc    $0x9,%al
    2de3:	e6 07                	out    %al,$0x7
    2de5:	00 00                	add    %al,(%rax)
    2de7:	0f 68 0a             	punpckhbw (%rdx),%mm1
    2dea:	49 03 00             	add    (%r8),%rax
    2ded:	00 18                	add    %bl,(%rax)
    2def:	00 02                	add    %al,(%rdx)
    2df1:	0c 06                	or     $0x6,%al
    2df3:	00 00                	add    %al,(%rax)
    2df5:	10 48 10             	adc    %cl,0x10(%rax)
    2df8:	aa                   	stos   %al,%es:(%rdi)
    2df9:	05 00 00 06 08       	add    $0x8060000,%eax
    2dfe:	b0 05                	mov    $0x5,%al
    2e00:	00 00                	add    %al,(%rax)
    2e02:	17                   	(bad)  
    2e03:	bb 05 00 00 18       	mov    $0x18000005,%ebx
    2e08:	7d 00                	jge    2e0a <_init-0x3fe1f6>
    2e0a:	00 00                	add    %al,(%rax)
    2e0c:	00 0c 0d 03 00 00 cb 	add    %cl,-0x34fffffd(,%rcx,1)
    2e13:	05 00 00 0d 39       	add    $0x390d0000,%eax
    2e18:	00 00                	add    %al,(%rax)
    2e1a:	00 40 00             	add    %al,0x0(%rax)
    2e1d:	07                   	(bad)  
    2e1e:	bb 05 00 00 10       	mov    $0x10000005,%ebx
    2e23:	c0 02 00             	rolb   $0x0,(%rdx)
    2e26:	00 10                	add    %dl,(%rax)
    2e28:	1e                   	(bad)  
    2e29:	01 1a                	add    %ebx,(%rdx)
    2e2b:	cb                   	lret   
    2e2c:	05 00 00 10 c1       	add    $0xc1100000,%eax
    2e31:	02 00                	add    (%rax),%al
    2e33:	00 10                	add    %dl,(%rax)
    2e35:	1f                   	(bad)  
    2e36:	01 1a                	add    %ebx,(%rdx)
    2e38:	cb                   	lret   
    2e39:	05 00 00 19 10       	add    $0x10190000,%eax
    2e3e:	20 11                	and    %dl,(%rcx)
    2e40:	17                   	(bad)  
    2e41:	09 29                	or     %ebp,(%rcx)
    2e43:	06                   	(bad)  
    2e44:	00 00                	add    %al,(%rax)
    2e46:	09 2f                	or     %ebp,(%rdi)
    2e48:	06                   	(bad)  
    2e49:	00 00                	add    %al,(%rax)
    2e4b:	11 18                	adc    %ebx,(%rax)
    2e4d:	09 7d 00             	or     %edi,0x0(%rbp)
    2e50:	00 00                	add    %al,(%rax)
    2e52:	00 09                	add    %cl,(%rcx)
    2e54:	7c 07                	jl     2e5d <_init-0x3fe1a3>
    2e56:	00 00                	add    %al,(%rax)
    2e58:	11 19                	adc    %ebx,(%rcx)
    2e5a:	09 7d 00             	or     %edi,0x0(%rbp)
    2e5d:	00 00                	add    %al,(%rax)
    2e5f:	04 09                	add    $0x9,%al
    2e61:	84 07                	test   %al,(%rdi)
    2e63:	00 00                	add    %al,(%rax)
    2e65:	11 1a                	adc    %ebx,(%rdx)
    2e67:	0b bb 00 00 00 08    	or     0x8000000(%rbx),%edi
    2e6d:	09 a5 07 00 00 11    	or     %esp,0x11000007(%rbp)
    2e73:	1b 0a                	sbb    (%rdx),%ecx
    2e75:	29 06                	sub    %eax,(%rsi)
    2e77:	00 00                	add    %al,(%rax)
    2e79:	10 00                	adc    %al,(%rax)
    2e7b:	0c c1                	or     $0xc1,%al
    2e7d:	00 00                	add    %al,(%rax)
    2e7f:	00 3a                	add    %bh,(%rdx)
    2e81:	06                   	(bad)  
    2e82:	00 00                	add    %al,(%rax)
    2e84:	1a 39                	sbb    (%rcx),%bh
    2e86:	00 00                	add    %al,(%rax)
    2e88:	00 ff                	add    %bh,%bh
    2e8a:	1f                   	(bad)  
    2e8b:	00 02                	add    %al,(%rdx)
    2e8d:	5d                   	pop    %rbp
    2e8e:	07                   	(bad)  
    2e8f:	00 00                	add    %al,(%rax)
    2e91:	11 1c 03             	adc    %ebx,(%rbx,%rax,1)
    2e94:	ea                   	(bad)  
    2e95:	05 00 00 1b 53       	add    $0x531b0000,%eax
    2e9a:	41 00 01             	add    %al,(%r9)
    2e9d:	2c 19                	sub    $0x19,%al
    2e9f:	d8 03                	fadds  (%rbx)
    2ea1:	00 00                	add    %al,(%rax)
    2ea3:	1c 16                	sbb    $0x16,%al
    2ea5:	08 00                	or     %al,(%rax)
    2ea7:	00 01                	add    %al,(%rcx)
    2ea9:	ab                   	stos   %eax,%es:(%rdi)
    2eaa:	01 05 7d 00 00 00    	add    %eax,0x7d(%rip)        # 2f2d <_init-0x3fe0d3>
    2eb0:	cd 2d                	int    $0x2d
    2eb2:	40 00 00             	add    %al,(%rax)
    2eb5:	00 00                	add    %al,(%rax)
    2eb7:	00 6e 00             	add    %ch,0x0(%rsi)
    2eba:	00 00                	add    %al,(%rax)
    2ebc:	00 00                	add    %al,(%rax)
    2ebe:	00 00                	add    %al,(%rax)
    2ec0:	01 9c 6c 07 00 00 1d 	add    %ebx,0x1d000007(%rsp,%rbp,2)
    2ec7:	40 06                	rex (bad) 
    2ec9:	00 00                	add    %al,(%rax)
    2ecb:	01 ab 01 17 bb 00    	add    %ebp,0xbb1701(%rbx)
    2ed1:	00 00                	add    %al,(%rax)
    2ed3:	86 0e                	xchg   %cl,(%rsi)
    2ed5:	00 00                	add    %al,(%rax)
    2ed7:	78 0e                	js     2ee7 <_init-0x3fe119>
    2ed9:	00 00                	add    %al,(%rax)
    2edb:	1d 84 01 00 00       	sbb    $0x184,%eax
    2ee0:	01 ab 01 26 bb 00    	add    %ebp,0xbb2601(%rbx)
    2ee6:	00 00                	add    %al,(%rax)
    2ee8:	32 0f                	xor    (%rdi),%cl
    2eea:	00 00                	add    %al,(%rax)
    2eec:	24 0f                	and    $0xf,%al
    2eee:	00 00                	add    %al,(%rax)
    2ef0:	1e                   	(bad)  
    2ef1:	6c                   	insb   (%dx),%es:(%rdi)
    2ef2:	61                   	(bad)  
    2ef3:	62                   	(bad)  
    2ef4:	00 01                	add    %al,(%rcx)
    2ef6:	ab                   	stos   %eax,%es:(%rdi)
    2ef7:	01 34 bb             	add    %esi,(%rbx,%rdi,4)
    2efa:	00 00                	add    %al,(%rax)
    2efc:	00 de                	add    %bl,%dh
    2efe:	0f 00 00             	sldt   (%rax)
    2f01:	d0 0f                	rorb   (%rdi)
    2f03:	00 00                	add    %al,(%rax)
    2f05:	1d b4 08 00 00       	sbb    $0x8b4,%eax
    2f0a:	01 ab 01 3f bb 00    	add    %ebp,0xbb3f01(%rbx)
    2f10:	00 00                	add    %al,(%rax)
    2f12:	8a 10                	mov    (%rax),%dl
    2f14:	00 00                	add    %al,(%rax)
    2f16:	7c 10                	jl     2f28 <_init-0x3fe0d8>
    2f18:	00 00                	add    %al,(%rax)
    2f1a:	1d f4 08 00 00       	sbb    $0x8f4,%eax
    2f1f:	01 ab 01 4b 7d 00    	add    %ebp,0x7d4b01(%rbx)
    2f25:	00 00                	add    %al,(%rax)
    2f27:	34 11                	xor    $0x11,%al
    2f29:	00 00                	add    %al,(%rax)
    2f2b:	28 11                	sub    %dl,(%rcx)
    2f2d:	00 00                	add    %al,(%rax)
    2f2f:	1d 2f 02 00 00       	sbb    $0x22f,%eax
    2f34:	01 ab 01 5d bb 00    	add    %ebp,0xbb5d01(%rbx)
    2f3a:	00 00                	add    %al,(%rax)
    2f3c:	c7                   	(bad)  
    2f3d:	11 00                	adc    %eax,(%rax)
    2f3f:	00 bf 11 00 00 1f    	add    %bh,0x1f000011(%rdi)
    2f45:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    2f46:	05 00 00 01 ad       	add    $0xad010000,%eax
    2f4b:	01 09                	add    %ecx,(%rcx)
    2f4d:	7d 00                	jge    2f4f <_init-0x3fe0b1>
    2f4f:	00 00                	add    %al,(%rax)
    2f51:	28 12                	sub    %dl,(%rdx)
    2f53:	00 00                	add    %al,(%rax)
    2f55:	26 12 00             	adc    %es:(%rax),%al
    2f58:	00 20                	add    %ah,(%rax)
    2f5a:	02 2e                	add    (%rsi),%ch
    2f5c:	40 00 00             	add    %al,(%rax)
    2f5f:	00 00                	add    %al,(%rax)
    2f61:	00 d0                	add    %dl,%al
    2f63:	11 00                	adc    %eax,(%rax)
    2f65:	00 2d 07 00 00 21    	add    %ch,0x21000007(%rip)        # 21002f72 <_end+0x20bfbe3a>
    2f6b:	01 55 09             	add    %edx,0x9(%rbp)
    2f6e:	03 34 37             	add    (%rdi,%rsi,1),%esi
    2f71:	40 00 00             	add    %al,(%rax)
    2f74:	00 00                	add    %al,(%rax)
    2f76:	00 21                	add    %ah,(%rcx)
    2f78:	01 54 03 f3          	add    %edx,-0xd(%rbx,%rax,1)
    2f7c:	01 52 00             	add    %edx,0x0(%rdx)
    2f7f:	22 35 2e 40 00 00    	and    0x402e(%rip),%dh        # 6fb3 <_init-0x3fa04d>
    2f85:	00 00                	add    %al,(%rax)
    2f87:	00 8b 09 00 00 21    	add    %cl,0x21000009(%rbx)
    2f8d:	01 55 09             	add    %edx,0x9(%rbp)
    2f90:	03 1c 37             	add    (%rdi,%rsi,1),%ebx
    2f93:	40 00 00             	add    %al,(%rax)
    2f96:	00 00                	add    %al,(%rax)
    2f98:	00 21                	add    %ah,(%rcx)
    2f9a:	01 54 03 0a          	add    %edx,0xa(%rbx,%rax,1)
    2f9e:	9a                   	(bad)  
    2f9f:	3c 21                	cmp    $0x21,%al
    2fa1:	01 51 03             	add    %edx,0x3(%rcx)
    2fa4:	f3 01 54 21 01       	repz add %edx,0x1(%rcx,%riz,1)
    2fa9:	52                   	push   %rdx
    2faa:	03 f3                	add    %ebx,%esi
    2fac:	01 55 21             	add    %edx,0x21(%rbp)
    2faf:	01 58 03             	add    %ebx,0x3(%rax)
    2fb2:	f3 01 51 21          	repz add %edx,0x21(%rcx)
    2fb6:	01 59 03             	add    %ebx,0x3(%rcx)
    2fb9:	f3 01 52 00          	repz add %edx,0x0(%rdx)
    2fbd:	00 1c ee             	add    %bl,(%rsi,%rbp,8)
    2fc0:	02 00                	add    (%rax),%al
    2fc2:	00 01                	add    %al,(%rcx)
    2fc4:	75 01                	jne    2fc7 <_init-0x3fe039>
    2fc6:	05 7d 00 00 00       	add    $0x7d,%eax
    2fcb:	d0 2b                	shrb   (%rbx)
    2fcd:	40 00 00             	add    %al,(%rax)
    2fd0:	00 00                	add    %al,(%rax)
    2fd2:	00 fd                	add    %bh,%ch
    2fd4:	01 00                	add    %eax,(%rax)
    2fd6:	00 00                	add    %al,(%rax)
    2fd8:	00 00                	add    %al,(%rax)
    2fda:	00 01                	add    %al,(%rcx)
    2fdc:	9c                   	pushfq 
    2fdd:	18 09                	sbb    %cl,(%rcx)
    2fdf:	00 00                	add    %al,(%rax)
    2fe1:	1d 2f 02 00 00       	sbb    $0x22f,%eax
    2fe6:	01 75 01             	add    %esi,0x1(%rbp)
    2fe9:	17                   	(bad)  
    2fea:	bb 00 00 00 53       	mov    $0x53000000,%ebx
    2fef:	12 00                	adc    (%rax),%al
    2ff1:	00 4b 12             	add    %cl,0x12(%rbx)
    2ff4:	00 00                	add    %al,(%rax)
    2ff6:	1f                   	(bad)  
    2ff7:	10 09                	adc    %cl,(%rcx)
    2ff9:	00 00                	add    %al,(%rax)
    2ffb:	01 77 01             	add    %esi,0x1(%rdi)
    2ffe:	09 7d 00             	or     %edi,0x0(%rbp)
    3001:	00 00                	add    %al,(%rax)
    3003:	ba 12 00 00 b2       	mov    $0xb2000012,%edx
    3008:	12 00                	adc    (%rax),%al
    300a:	00 23                	add    %ah,(%rbx)
    300c:	68 70 00 01 78       	pushq  $0x78010070
    3011:	01 15 18 09 00 00    	add    %edx,0x918(%rip)        # 392f <_init-0x3fd6d1>
    3017:	1a 13                	sbb    (%rbx),%dl
    3019:	00 00                	add    %al,(%rax)
    301b:	16                   	(bad)  
    301c:	13 00                	adc    (%rax),%eax
    301e:	00 24 a5 08 00 00 01 	add    %ah,0x1000008(,%riz,4)
    3025:	79 01                	jns    3028 <_init-0x3fdfd8>
    3027:	18 fd                	sbb    %bh,%ch
    3029:	04 00                	add    $0x0,%al
    302b:	00 02                	add    %al,(%rdx)
    302d:	91                   	xchg   %eax,%ecx
    302e:	50                   	push   %rax
    302f:	24 85                	and    $0x85,%al
    3031:	02 00                	add    (%rax),%al
    3033:	00 01                	add    %al,(%rcx)
    3035:	7b 01                	jnp    3038 <_init-0x3fdfc8>
    3037:	0b bb 00 00 00 0a    	or     0xa000000(%rbx),%edi
    303d:	03 1c 37             	add    (%rdi,%rsi,1),%ebx
    3040:	40 00 00             	add    %al,(%rax)
    3043:	00 00                	add    %al,(%rax)
    3045:	00 9f 25 c3 07 00    	add    %bl,0x7c325(%rdi)
    304b:	00 01                	add    %al,(%rcx)
    304d:	7c 01                	jl     3050 <_init-0x3fdfb0>
    304f:	09 7d 00             	or     %edi,0x0(%rbp)
    3052:	00 00                	add    %al,(%rax)
    3054:	9a                   	(bad)  
    3055:	3c 20                	cmp    $0x20,%al
    3057:	ea                   	(bad)  
    3058:	2b 40 00             	sub    0x0(%rax),%eax
    305b:	00 00                	add    %al,(%rax)
    305d:	00 00                	add    %al,(%rax)
    305f:	dd 11                	fstl   (%rcx)
    3061:	00 00                	add    %al,(%rax)
    3063:	20 08                	and    %cl,(%rax)
    3065:	00 00                	add    %al,(%rax)
    3067:	21 01                	and    %eax,(%rcx)
    3069:	55                   	push   %rbp
    306a:	01 3d 21 01 54 01    	add    %edi,0x1540121(%rip)        # 1543191 <_end+0x113c059>
    3070:	31 00                	xor    %eax,(%rax)
    3072:	20 f9                	and    %bh,%cl
    3074:	2b 40 00             	sub    0x0(%rax),%eax
    3077:	00 00                	add    %al,(%rax)
    3079:	00 00                	add    %al,(%rax)
    307b:	dd 11                	fstl   (%rcx)
    307d:	00 00                	add    %al,(%rax)
    307f:	3c 08                	cmp    $0x8,%al
    3081:	00 00                	add    %al,(%rax)
    3083:	21 01                	and    %eax,(%rcx)
    3085:	55                   	push   %rbp
    3086:	01 4d 21             	add    %ecx,0x21(%rbp)
    3089:	01 54 01 31          	add    %edx,0x31(%rcx,%rax,1)
    308d:	00 20                	add    %ah,(%rax)
    308f:	08 2c 40             	or     %ch,(%rax,%rax,2)
    3092:	00 00                	add    %al,(%rax)
    3094:	00 00                	add    %al,(%rax)
    3096:	00 dd                	add    %bl,%ch
    3098:	11 00                	adc    %eax,(%rax)
    309a:	00 58 08             	add    %bl,0x8(%rax)
    309d:	00 00                	add    %al,(%rax)
    309f:	21 01                	and    %eax,(%rcx)
    30a1:	55                   	push   %rbp
    30a2:	01 4d 21             	add    %ecx,0x21(%rbp)
    30a5:	01 54 01 31          	add    %edx,0x31(%rcx,%rax,1)
    30a9:	00 20                	add    %ah,(%rax)
    30ab:	1c 2c                	sbb    $0x2c,%al
    30ad:	40 00 00             	add    %al,(%rax)
    30b0:	00 00                	add    %al,(%rax)
    30b2:	00 e9                	add    %ch,%cl
    30b4:	11 00                	adc    %eax,(%rax)
    30b6:	00 79 08             	add    %bh,0x8(%rcx)
    30b9:	00 00                	add    %al,(%rax)
    30bb:	21 01                	and    %eax,(%rcx)
    30bd:	55                   	push   %rbp
    30be:	01 32                	add    %esi,(%rdx)
    30c0:	21 01                	and    %eax,(%rcx)
    30c2:	54                   	push   %rsp
    30c3:	01 31                	add    %esi,(%rcx)
    30c5:	21 01                	and    %eax,(%rcx)
    30c7:	51                   	push   %rcx
    30c8:	01 30                	add    %esi,(%rax)
    30ca:	00 20                	add    %ah,(%rax)
    30cc:	32 2c 40             	xor    (%rax,%rax,2),%ch
    30cf:	00 00                	add    %al,(%rax)
    30d1:	00 00                	add    %al,(%rax)
    30d3:	00 f5                	add    %dh,%ch
    30d5:	11 00                	adc    %eax,(%rax)
    30d7:	00 98 08 00 00 21    	add    %bl,0x21000008(%rax)
    30dd:	01 55 09             	add    %edx,0x9(%rbp)
    30e0:	03 1c 37             	add    (%rdi,%rsi,1),%ebx
    30e3:	40 00 00             	add    %al,(%rax)
    30e6:	00 00                	add    %al,(%rax)
    30e8:	00 00                	add    %al,(%rax)
    30ea:	20 6e 2c             	and    %ch,0x2c(%rsi)
    30ed:	40 00 00             	add    %al,(%rax)
    30f0:	00 00                	add    %al,(%rax)
    30f2:	00 01                	add    %al,(%rcx)
    30f4:	12 00                	adc    (%rax),%al
    30f6:	00 b0 08 00 00 21    	add    %dh,0x21000008(%rax)
    30fc:	01 55 02             	add    %edx,0x2(%rbp)
    30ff:	76 04                	jbe    3105 <_init-0x3fdefb>
    3101:	00 20                	add    %ah,(%rax)
    3103:	84 2c 40             	test   %ch,(%rax,%rax,2)
    3106:	00 00                	add    %al,(%rax)
    3108:	00 00                	add    %al,(%rax)
    310a:	00 0c 12             	add    %cl,(%rdx,%rdx,1)
    310d:	00 00                	add    %al,(%rax)
    310f:	d3 08                	rorl   %cl,(%rax)
    3111:	00 00                	add    %al,(%rax)
    3113:	21 01                	and    %eax,(%rcx)
    3115:	55                   	push   %rbp
    3116:	02 73 00             	add    0x0(%rbx),%dh
    3119:	21 01                	and    %eax,(%rcx)
    311b:	54                   	push   %rsp
    311c:	02 76 00             	add    0x0(%rsi),%dh
    311f:	21 01                	and    %eax,(%rcx)
    3121:	51                   	push   %rcx
    3122:	01 40 00             	add    %eax,0x0(%rax)
    3125:	20 93 2c 40 00 00    	and    %dl,0x402c(%rbx)
    312b:	00 00                	add    %al,(%rax)
    312d:	00 18                	add    %bl,(%rax)
    312f:	12 00                	adc    (%rax),%al
    3131:	00 eb                	add    %ch,%bl
    3133:	08 00                	or     %al,(%rax)
    3135:	00 21                	add    %ah,(%rcx)
    3137:	01 55 02             	add    %edx,0x2(%rbp)
    313a:	73 00                	jae    313c <_init-0x3fdec4>
    313c:	00 20                	add    %ah,(%rax)
    313e:	69 2d 40 00 00 00 00 	imul   $0x12180000,0x40(%rip),%ebp        # 3188 <_init-0x3fde78>
    3145:	00 18 12 
    3148:	00 00                	add    %al,(%rax)
    314a:	03 09                	add    (%rcx),%ecx
    314c:	00 00                	add    %al,(%rax)
    314e:	21 01                	and    %eax,(%rcx)
    3150:	55                   	push   %rbp
    3151:	02 73 00             	add    0x0(%rbx),%dh
    3154:	00 22                	add    %ah,(%rdx)
    3156:	c3                   	retq   
    3157:	2d 40 00 00 00       	sub    $0x40,%eax
    315c:	00 00                	add    %al,(%rax)
    315e:	18 12                	sbb    %dl,(%rdx)
    3160:	00 00                	add    %al,(%rax)
    3162:	21 01                	and    %eax,(%rcx)
    3164:	55                   	push   %rbp
    3165:	02 73 00             	add    0x0(%rbx),%dh
    3168:	00 00                	add    %al,(%rax)
    316a:	06                   	(bad)  
    316b:	08 4f 05             	or     %cl,0x5(%rdi)
    316e:	00 00                	add    %al,(%rax)
    3170:	26 09 08             	or     %ecx,%es:(%rax)
    3173:	00 00                	add    %al,(%rax)
    3175:	01 67 01             	add    %esp,0x1(%rdi)
    3178:	06                   	(bad)  
    3179:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
    317a:	2b 40 00             	sub    0x0(%rax),%eax
    317d:	00 00                	add    %al,(%rax)
    317f:	00 00                	add    %al,(%rax)
    3181:	2b 00                	sub    (%rax),%eax
    3183:	00 00                	add    %al,(%rax)
    3185:	00 00                	add    %al,(%rax)
    3187:	00 00                	add    %al,(%rax)
    3189:	01 9c 8b 09 00 00 1d 	add    %ebx,0x1d000009(%rbx,%rcx,4)
    3190:	0e                   	(bad)  
    3191:	08 00                	or     %al,(%rax)
    3193:	00 01                	add    %al,(%rcx)
    3195:	67 01 17             	add    %edx,(%edi)
    3198:	7d 00                	jge    319a <_init-0x3fde66>
    319a:	00 00                	add    %al,(%rax)
    319c:	58                   	pop    %rax
    319d:	13 00                	adc    (%rax),%eax
    319f:	00 50 13             	add    %dl,0x13(%rax)
    31a2:	00 00                	add    %al,(%rax)
    31a4:	20 bf 2b 40 00 00    	and    %bh,0x402b(%rdi)
    31aa:	00 00                	add    %al,(%rax)
    31ac:	00 dd                	add    %bl,%ch
    31ae:	11 00                	adc    %eax,(%rax)
    31b0:	00 76 09             	add    %dh,0x9(%rsi)
    31b3:	00 00                	add    %al,(%rax)
    31b5:	21 01                	and    %eax,(%rcx)
    31b7:	55                   	push   %rbp
    31b8:	01 3e                	add    %edi,(%rsi)
    31ba:	21 01                	and    %eax,(%rcx)
    31bc:	54                   	push   %rsp
    31bd:	09 03                	or     %eax,(%rbx)
    31bf:	e6 21                	out    %al,$0x21
    31c1:	40 00 00             	add    %al,(%rax)
    31c4:	00 00                	add    %al,(%rax)
    31c6:	00 00                	add    %al,(%rax)
    31c8:	22 c6                	and    %dh,%al
    31ca:	2b 40 00             	sub    0x0(%rax),%eax
    31cd:	00 00                	add    %al,(%rax)
    31cf:	00 00                	add    %al,(%rax)
    31d1:	25 12 00 00 21       	and    $0x21000012,%eax
    31d6:	01 55 02             	add    %edx,0x2(%rbp)
    31d9:	73 00                	jae    31db <_init-0x3fde25>
    31db:	00 00                	add    %al,(%rax)
    31dd:	27                   	(bad)  
    31de:	22 08                	and    (%rax),%cl
    31e0:	00 00                	add    %al,(%rax)
    31e2:	01 b7 05 7d 00 00    	add    %esi,0x7d05(%rdi)
    31e8:	00 53 24             	add    %dl,0x24(%rbx)
    31eb:	40 00 00             	add    %al,(%rax)
    31ee:	00 00                	add    %al,(%rax)
    31f0:	00 52 07             	add    %dl,0x7(%rdx)
    31f3:	00 00                	add    %al,(%rax)
    31f5:	00 00                	add    %al,(%rax)
    31f7:	00 00                	add    %al,(%rax)
    31f9:	01 9c 32 0e 00 00 28 	add    %ebx,0x2800000e(%rdx,%rsi,1)
    3200:	85 02                	test   %eax,(%rdx)
    3202:	00 00                	add    %al,(%rax)
    3204:	01 b7 13 bb 00 00    	add    %esi,0xbb13(%rdi)
    320a:	00 bc 13 00 00 b4 13 	add    %bh,0x13b40000(%rbx,%rdx,1)
    3211:	00 00                	add    %al,(%rax)
    3213:	28 c3                	sub    %al,%bl
    3215:	07                   	(bad)  
    3216:	00 00                	add    %al,(%rax)
    3218:	01 b8 0a 7d 00 00    	add    %edi,0x7d0a(%rax)
    321e:	00 1f                	add    %bl,(%rdi)
    3220:	14 00                	adc    $0x0,%al
    3222:	00 1b                	add    %bl,(%rbx)
    3224:	14 00                	adc    $0x0,%al
    3226:	00 28                	add    %ch,(%rax)
    3228:	84 01                	test   %al,(%rcx)
    322a:	00 00                	add    %al,(%rax)
    322c:	01 b9 0c bb 00 00    	add    %edi,0xbb0c(%rcx)
    3232:	00 5e 14             	add    %bl,0x14(%rsi)
    3235:	00 00                	add    %al,(%rax)
    3237:	58                   	pop    %rax
    3238:	14 00                	adc    $0x0,%al
    323a:	00 28                	add    %ch,(%rax)
    323c:	40 06                	rex (bad) 
    323e:	00 00                	add    %al,(%rax)
    3240:	01 ba 0c bb 00 00    	add    %edi,0xbb0c(%rdx)
    3246:	00 ad 14 00 00 a7    	add    %ch,-0x58ffffec(%rbp)
    324c:	14 00                	adc    $0x0,%al
    324e:	00 29                	add    %ch,(%rcx)
    3250:	6c                   	insb   (%dx),%es:(%rdi)
    3251:	61                   	(bad)  
    3252:	62                   	(bad)  
    3253:	00 01                	add    %al,(%rcx)
    3255:	bb 0c bb 00 00       	mov    $0xbb0c,%ebx
    325a:	00 02                	add    %al,(%rdx)
    325c:	15 00 00 fc 14       	adc    $0x14fc0000,%eax
    3261:	00 00                	add    %al,(%rax)
    3263:	28 b4 08 00 00 01 bc 	sub    %dh,-0x43ff0000(%rax,%rcx,1)
    326a:	0c bb                	or     $0xbb,%al
    326c:	00 00                	add    %al,(%rax)
    326e:	00 57 15             	add    %dl,0x15(%rdi)
    3271:	00 00                	add    %al,(%rax)
    3273:	51                   	push   %rcx
    3274:	15 00 00 28 2f       	adc    $0x2f280000,%eax
    3279:	02 00                	add    (%rax),%al
    327b:	00 01                	add    %al,(%rcx)
    327d:	bd 0c bb 00 00       	mov    $0xbb0c,%ebp
    3282:	00 a6 15 00 00 a0    	add    %ah,-0x5fffffeb(%rsi)
    3288:	15 00 00 2a 10       	adc    $0x102a0000,%eax
    328d:	09 00                	or     %eax,(%rax)
    328f:	00 01                	add    %al,(%rcx)
    3291:	bf 09 7d 00 00       	mov    $0x7d09,%edi
    3296:	00 fa                	add    %bh,%dl
    3298:	15 00 00 f2 15       	adc    $0x15f20000,%eax
    329d:	00 00                	add    %al,(%rax)
    329f:	2b 68 70             	sub    0x70(%rax),%ebp
    32a2:	00 01                	add    %al,(%rcx)
    32a4:	c0 15 18 09 00 00 5a 	rclb   $0x5a,0x918(%rip)        # 3bc3 <_init-0x3fd43d>
    32ab:	16                   	(bad)  
    32ac:	00 00                	add    %al,(%rax)
    32ae:	56                   	push   %rsi
    32af:	16                   	(bad)  
    32b0:	00 00                	add    %al,(%rax)
    32b2:	2c a5                	sub    $0xa5,%al
    32b4:	08 00                	or     %al,(%rax)
    32b6:	00 01                	add    %al,(%rcx)
    32b8:	c1 18 fd             	rcrl   $0xfd,(%rax)
    32bb:	04 00                	add    $0x0,%al
    32bd:	00 03                	add    %al,(%rbx)
    32bf:	91                   	xchg   %eax,%ecx
    32c0:	b0 7f                	mov    $0x7f,%al
    32c2:	2a 19                	sub    (%rcx),%bl
    32c4:	09 00                	or     %eax,(%rax)
    32c6:	00 01                	add    %al,(%rcx)
    32c8:	c3                   	retq   
    32c9:	0c 2d                	or     $0x2d,%al
    32cb:	00 00                	add    %al,(%rax)
    32cd:	00 94 16 00 00 90 16 	add    %dl,0x16900000(%rsi,%rdx,1)
    32d4:	00 00                	add    %al,(%rax)
    32d6:	2a c6                	sub    %dh,%al
    32d8:	06                   	(bad)  
    32d9:	00 00                	add    %al,(%rax)
    32db:	01 c4                	add    %eax,%esp
    32dd:	0c 2d                	or     $0x2d,%al
    32df:	00 00                	add    %al,(%rax)
    32e1:	00 d4                	add    %dl,%ah
    32e3:	16                   	(bad)  
    32e4:	00 00                	add    %al,(%rax)
    32e6:	ce                   	(bad)  
    32e7:	16                   	(bad)  
    32e8:	00 00                	add    %al,(%rax)
    32ea:	2d 72 69 6f 00       	sub    $0x6f6972,%eax
    32ef:	01 c5                	add    %eax,%ebp
    32f1:	0b 3a                	or     (%rdx),%edi
    32f3:	06                   	(bad)  
    32f4:	00 00                	add    %al,(%rax)
    32f6:	04 91                	add    $0x91,%al
    32f8:	a0 bf 7f 2d 62 75 66 	movabs 0x1006675622d7fbf,%al
    32ff:	00 01 
    3301:	cb                   	lret   
    3302:	0a 29                	or     (%rcx),%ch
    3304:	06                   	(bad)  
    3305:	00 00                	add    %al,(%rax)
    3307:	04 91                	add    $0x91,%al
    3309:	a0 ff 7e 2c b0 08 00 	movabs 0x1000008b02c7eff,%al
    3310:	00 01 
    3312:	cc                   	int3   
    3313:	0a 29                	or     (%rcx),%ch
    3315:	06                   	(bad)  
    3316:	00 00                	add    %al,(%rax)
    3318:	04 91                	add    $0x91,%al
    331a:	a0 bf 7e 2c 74 07 00 	movabs 0x1000007742c7ebf,%al
    3321:	00 01 
    3323:	ce                   	(bad)  
    3324:	0a 29                	or     (%rcx),%ch
    3326:	06                   	(bad)  
    3327:	00 00                	add    %al,(%rax)
    3329:	04 91                	add    $0x91,%al
    332b:	a0 ff 7d 2c ad 07 00 	movabs 0x1000007ad2c7dff,%al
    3332:	00 01 
    3334:	cf                   	iret   
    3335:	09 7d 00             	or     %edi,0x0(%rbp)
    3338:	00 00                	add    %al,(%rax)
    333a:	04 91                	add    $0x91,%al
    333c:	9c                   	pushfq 
    333d:	ff                   	(bad)  
    333e:	7d 2c                	jge    336c <_init-0x3fdc94>
    3340:	9e                   	sahf   
    3341:	08 00                	or     %al,(%rax)
    3343:	00 01                	add    %al,(%rcx)
    3345:	d0 0a                	rorb   (%rdx)
    3347:	29 06                	sub    %eax,(%rsi)
    3349:	00 00                	add    %al,(%rax)
    334b:	04 91                	add    $0x91,%al
    334d:	90                   	nop
    334e:	bf 7d 2e b2 11       	mov    $0x11b22e7d,%edi
    3353:	00 00                	add    %al,(%rax)
    3355:	08 25 40 00 00 00    	or     %ah,0x40(%rip)        # 339b <_init-0x3fdc65>
    335b:	00 00                	add    %al,(%rax)
    335d:	01 08                	add    %ecx,(%rax)
    335f:	25 40 00 00 00       	and    $0x40,%eax
    3364:	00 00                	add    %al,(%rax)
    3366:	09 00                	or     %eax,(%rax)
    3368:	00 00                	add    %al,(%rax)
    336a:	00 00                	add    %al,(%rax)
    336c:	00 00                	add    %al,(%rax)
    336e:	01 ec                	add    %ebp,%esp
    3370:	1b 31                	sbb    (%rcx),%esi
    3372:	0b 00                	or     (%rax),%eax
    3374:	00 2f                	add    %ch,(%rdi)
    3376:	c3                   	retq   
    3377:	11 00                	adc    %eax,(%rax)
    3379:	00 2b                	add    %ch,(%rbx)
    337b:	17                   	(bad)  
    337c:	00 00                	add    %al,(%rax)
    337e:	29 17                	sub    %edx,(%rdi)
    3380:	00 00                	add    %al,(%rax)
    3382:	00 20                	add    %ah,(%rax)
    3384:	a2 24 40 00 00 00 00 	movabs %al,0xe900000000004024
    338b:	00 e9 
    338d:	11 00                	adc    %eax,(%rax)
    338f:	00 52 0b             	add    %dl,0xb(%rdx)
    3392:	00 00                	add    %al,(%rax)
    3394:	21 01                	and    %eax,(%rcx)
    3396:	55                   	push   %rbp
    3397:	01 32                	add    %esi,(%rdx)
    3399:	21 01                	and    %eax,(%rcx)
    339b:	54                   	push   %rsp
    339c:	01 31                	add    %esi,(%rcx)
    339e:	21 01                	and    %eax,(%rcx)
    33a0:	51                   	push   %rcx
    33a1:	01 30                	add    %esi,(%rax)
    33a3:	00 20                	add    %ah,(%rax)
    33a5:	b4 24                	mov    $0x24,%ah
    33a7:	40 00 00             	add    %al,(%rax)
    33aa:	00 00                	add    %al,(%rax)
    33ac:	00 f5                	add    %dh,%ch
    33ae:	11 00                	adc    %eax,(%rax)
    33b0:	00 6a 0b             	add    %ch,0xb(%rdx)
    33b3:	00 00                	add    %al,(%rax)
    33b5:	21 01                	and    %eax,(%rcx)
    33b7:	55                   	push   %rbp
    33b8:	02 7d 00             	add    0x0(%rbp),%bh
    33bb:	00 20                	add    %ah,(%rax)
    33bd:	08 25 40 00 00 00    	or     %ah,0x40(%rip)        # 3403 <_init-0x3fdbfd>
    33c3:	00 00                	add    %al,(%rax)
    33c5:	01 12                	add    %edx,(%rdx)
    33c7:	00 00                	add    %al,(%rax)
    33c9:	83 0b 00             	orl    $0x0,(%rbx)
    33cc:	00 21                	add    %ah,(%rcx)
    33ce:	01 55 03             	add    %edx,0x3(%rbp)
    33d1:	91                   	xchg   %eax,%ecx
    33d2:	b4 7f                	mov    $0x7f,%ah
    33d4:	00 20                	add    %ah,(%rax)
    33d6:	28 25 40 00 00 00    	sub    %ah,0x40(%rip)        # 341c <_init-0x3fdbe4>
    33dc:	00 00                	add    %al,(%rax)
    33de:	0c 12                	or     $0x12,%al
    33e0:	00 00                	add    %al,(%rax)
    33e2:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    33e3:	0b 00                	or     (%rax),%eax
    33e5:	00 21                	add    %ah,(%rcx)
    33e7:	01 55 02             	add    %edx,0x2(%rbp)
    33ea:	73 00                	jae    33ec <_init-0x3fdc14>
    33ec:	21 01                	and    %eax,(%rcx)
    33ee:	54                   	push   %rsp
    33ef:	02 7c 00 21          	add    0x21(%rax,%rax,1),%bh
    33f3:	01 51 01             	add    %edx,0x1(%rcx)
    33f6:	40 00 20             	add    %spl,(%rax)
    33f9:	b8 25 40 00 00       	mov    $0x4025,%eax
    33fe:	00 00                	add    %al,(%rax)
    3400:	00 32                	add    %dh,(%rdx)
    3402:	0e                   	(bad)  
    3403:	00 00                	add    %al,(%rax)
    3405:	c6                   	(bad)  
    3406:	0b 00                	or     (%rax),%eax
    3408:	00 21                	add    %ah,(%rcx)
    340a:	01 55 02             	add    %edx,0x2(%rbp)
    340d:	7e 00                	jle    340f <_init-0x3fdbf1>
    340f:	21 01                	and    %eax,(%rcx)
    3411:	54                   	push   %rsp
    3412:	04 91                	add    $0x91,%al
    3414:	a0 bf 7e 00 20 ef 25 	movabs 0x4025ef20007ebf,%al
    341b:	40 00 
    341d:	00 00                	add    %al,(%rax)
    341f:	00 00                	add    %al,(%rax)
    3421:	32 12                	xor    (%rdx),%dl
    3423:	00 00                	add    %al,(%rax)
    3425:	08 0c 00             	or     %cl,(%rax,%rax,1)
    3428:	00 21                	add    %ah,(%rcx)
    342a:	01 55 02             	add    %edx,0x2(%rbp)
    342d:	7c 00                	jl     342f <_init-0x3fdbd1>
    342f:	21 01                	and    %eax,(%rcx)
    3431:	54                   	push   %rsp
    3432:	09 03                	or     %eax,(%rbx)
    3434:	88 36                	mov    %dh,(%rsi)
    3436:	40 00 00             	add    %al,(%rax)
    3439:	00 00                	add    %al,(%rax)
    343b:	00 21                	add    %ah,(%rcx)
    343d:	01 51 05             	add    %edx,0x5(%rcx)
    3440:	91                   	xchg   %eax,%ecx
    3441:	f8                   	clc    
    3442:	be 7d 06 21 01       	mov    $0x121067d,%esi
    3447:	52                   	push   %rdx
    3448:	02 7f 00             	add    0x0(%rdi),%bh
    344b:	21 01                	and    %eax,(%rcx)
    344d:	58                   	pop    %rax
    344e:	04 91                	add    $0x91,%al
    3450:	a0 bf 7e 21 01 59 02 	movabs 0x7d025901217ebf,%al
    3457:	7d 00 
    3459:	00 20                	add    %ah,(%rax)
    345b:	14 26                	adc    $0x26,%al
    345d:	40 00 00             	add    %al,(%rax)
    3460:	00 00                	add    %al,(%rax)
    3462:	00 c7                	add    %al,%bh
    3464:	0e                   	(bad)  
    3465:	00 00                	add    %al,(%rax)
    3467:	26 0c 00             	es or  $0x0,%al
    346a:	00 21                	add    %ah,(%rcx)
    346c:	01 55 02             	add    %edx,0x2(%rbp)
    346f:	73 00                	jae    3471 <_init-0x3fdb8f>
    3471:	21 01                	and    %eax,(%rcx)
    3473:	54                   	push   %rsp
    3474:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
    3478:	20 2f                	and    %ch,(%rdi)
    347a:	26 40 00 00          	add    %al,%es:(%rax)
    347e:	00 00                	add    %al,(%rax)
    3480:	00 0f                	add    %cl,(%rdi)
    3482:	11 00                	adc    %eax,(%rax)
    3484:	00 44 0c 00          	add    %al,0x0(%rsp,%rcx,1)
    3488:	00 21                	add    %ah,(%rcx)
    348a:	01 55 02             	add    %edx,0x2(%rbp)
    348d:	7c 00                	jl     348f <_init-0x3fdb71>
    348f:	21 01                	and    %eax,(%rcx)
    3491:	54                   	push   %rsp
    3492:	02 73 00             	add    0x0(%rbx),%dh
    3495:	00 20                	add    %ah,(%rax)
    3497:	44                   	rex.R
    3498:	26 40 00 00          	add    %al,%es:(%rax)
    349c:	00 00                	add    %al,(%rax)
    349e:	00 90 0f 00 00 6b    	add    %dl,0x6b00000f(%rax)
    34a4:	0c 00                	or     $0x0,%al
    34a6:	00 21                	add    %ah,(%rcx)
    34a8:	01 55 02             	add    %edx,0x2(%rbp)
    34ab:	7c 00                	jl     34ad <_init-0x3fdb53>
    34ad:	21 01                	and    %eax,(%rcx)
    34af:	54                   	push   %rsp
    34b0:	04 91                	add    $0x91,%al
    34b2:	a0 ff 7e 21 01 51 03 	movabs 0xa035101217eff,%al
    34b9:	0a 00 
    34bb:	20 00                	and    %al,(%rax)
    34bd:	20 7b 26             	and    %bh,0x26(%rbx)
    34c0:	40 00 00             	add    %al,(%rax)
    34c3:	00 00                	add    %al,(%rax)
    34c5:	00 3f                	add    %bh,(%rdi)
    34c7:	12 00                	adc    (%rax),%al
    34c9:	00 aa 0c 00 00 21    	add    %ch,0x2100000c(%rdx)
    34cf:	01 55 04             	add    %edx,0x4(%rbp)
    34d2:	91                   	xchg   %eax,%ecx
    34d3:	a0 ff 7e 21 01 54 09 	movabs 0xff03095401217eff,%al
    34da:	03 ff 
    34dc:	36 40 00 00          	add    %al,%ss:(%rax)
    34e0:	00 00                	add    %al,(%rax)
    34e2:	00 21                	add    %ah,(%rcx)
    34e4:	01 51 04             	add    %edx,0x4(%rcx)
    34e7:	91                   	xchg   %eax,%ecx
    34e8:	a0 ff 7d 21 01 52 04 	movabs 0x9c91045201217dff,%al
    34ef:	91 9c 
    34f1:	ff                   	(bad)  
    34f2:	7d 21                	jge    3515 <_init-0x3fdaeb>
    34f4:	01 58 04             	add    %ebx,0x4(%rax)
    34f7:	91                   	xchg   %eax,%ecx
    34f8:	90                   	nop
    34f9:	bf 7d 00 20 b8       	mov    $0xb820007d,%edi
    34fe:	26 40 00 00          	add    %al,%es:(%rax)
    3502:	00 00                	add    %al,(%rax)
    3504:	00 90 0f 00 00 d1    	add    %dl,-0x2efffff1(%rax)
    350a:	0c 00                	or     $0x0,%al
    350c:	00 21                	add    %ah,(%rcx)
    350e:	01 55 02             	add    %edx,0x2(%rbp)
    3511:	7c 00                	jl     3513 <_init-0x3fdaed>
    3513:	21 01                	and    %eax,(%rcx)
    3515:	54                   	push   %rsp
    3516:	04 91                	add    $0x91,%al
    3518:	a0 ff 7e 21 01 51 03 	movabs 0xa035101217eff,%al
    351f:	0a 00 
    3521:	20 00                	and    %al,(%rax)
    3523:	20 2d 27 40 00 00    	and    %ch,0x4027(%rip)        # 7550 <_init-0x3f9ab0>
    3529:	00 00                	add    %al,(%rax)
    352b:	00 18                	add    %bl,(%rax)
    352d:	12 00                	adc    (%rax),%al
    352f:	00 e9                	add    %ch,%cl
    3531:	0c 00                	or     $0x0,%al
    3533:	00 21                	add    %ah,(%rcx)
    3535:	01 55 02             	add    %edx,0x2(%rbp)
    3538:	73 00                	jae    353a <_init-0x3fdac6>
    353a:	00 20                	add    %ah,(%rax)
    353c:	ee                   	out    %al,(%dx)
    353d:	27                   	(bad)  
    353e:	40 00 00             	add    %al,(%rax)
    3541:	00 00                	add    %al,(%rax)
    3543:	00 18                	add    %bl,(%rax)
    3545:	12 00                	adc    (%rax),%al
    3547:	00 01                	add    %al,(%rcx)
    3549:	0d 00 00 21 01       	or     $0x1210000,%eax
    354e:	55                   	push   %rbp
    354f:	02 73 00             	add    0x0(%rbx),%dh
    3552:	00 20                	add    %ah,(%rax)
    3554:	48 28 40 00          	rex.W sub %al,0x0(%rax)
    3558:	00 00                	add    %al,(%rax)
    355a:	00 00                	add    %al,(%rax)
    355c:	18 12                	sbb    %dl,(%rdx)
    355e:	00 00                	add    %al,(%rax)
    3560:	19 0d 00 00 21 01    	sbb    %ecx,0x1210000(%rip)        # 1213566 <_end+0xe0c42e>
    3566:	55                   	push   %rbp
    3567:	02 73 00             	add    0x0(%rbx),%dh
    356a:	00 20                	add    %ah,(%rax)
    356c:	bb 28 40 00 00       	mov    $0x4028,%ebx
    3571:	00 00                	add    %al,(%rax)
    3573:	00 18                	add    %bl,(%rax)
    3575:	12 00                	adc    (%rax),%al
    3577:	00 31                	add    %dh,(%rcx)
    3579:	0d 00 00 21 01       	or     $0x1210000,%eax
    357e:	55                   	push   %rbp
    357f:	02 73 00             	add    0x0(%rbx),%dh
    3582:	00 20                	add    %ah,(%rax)
    3584:	46 29 40 00          	rex.RX sub %r8d,0x0(%rax)
    3588:	00 00                	add    %al,(%rax)
    358a:	00 00                	add    %al,(%rax)
    358c:	18 12                	sbb    %dl,(%rdx)
    358e:	00 00                	add    %al,(%rax)
    3590:	49 0d 00 00 21 01    	rex.WB or $0x1210000,%rax
    3596:	55                   	push   %rbp
    3597:	02 73 00             	add    0x0(%rbx),%dh
    359a:	00 20                	add    %ah,(%rax)
    359c:	b5 29                	mov    $0x29,%ch
    359e:	40 00 00             	add    %al,(%rax)
    35a1:	00 00                	add    %al,(%rax)
    35a3:	00 18                	add    %bl,(%rax)
    35a5:	12 00                	adc    (%rax),%al
    35a7:	00 61 0d             	add    %ah,0xd(%rcx)
    35aa:	00 00                	add    %al,(%rax)
    35ac:	21 01                	and    %eax,(%rcx)
    35ae:	55                   	push   %rbp
    35af:	02 73 00             	add    0x0(%rbx),%dh
    35b2:	00 20                	add    %ah,(%rax)
    35b4:	33 2a                	xor    (%rdx),%ebp
    35b6:	40 00 00             	add    %al,(%rax)
    35b9:	00 00                	add    %al,(%rax)
    35bb:	00 18                	add    %bl,(%rax)
    35bd:	12 00                	adc    (%rax),%al
    35bf:	00 79 0d             	add    %bh,0xd(%rcx)
    35c2:	00 00                	add    %al,(%rax)
    35c4:	21 01                	and    %eax,(%rcx)
    35c6:	55                   	push   %rbp
    35c7:	02 73 00             	add    0x0(%rbx),%dh
    35ca:	00 20                	add    %ah,(%rax)
    35cc:	57                   	push   %rdi
    35cd:	2a 40 00             	sub    0x0(%rax),%al
    35d0:	00 00                	add    %al,(%rax)
    35d2:	00 00                	add    %al,(%rax)
    35d4:	90                   	nop
    35d5:	0f 00 00             	sldt   (%rax)
    35d8:	a0 0d 00 00 21 01 55 	movabs 0x7c0255012100000d,%al
    35df:	02 7c 
    35e1:	00 21                	add    %ah,(%rcx)
    35e3:	01 54 04 91          	add    %edx,-0x6f(%rsp,%rax,1)
    35e7:	a0 ff 7e 21 01 51 03 	movabs 0xa035101217eff,%al
    35ee:	0a 00 
    35f0:	20 00                	and    %al,(%rax)
    35f2:	20 83 2a 40 00 00    	and    %al,0x402a(%rbx)
    35f8:	00 00                	add    %al,(%rax)
    35fa:	00 4c 12 00          	add    %cl,0x0(%rdx,%rdx,1)
    35fe:	00 c0                	add    %al,%al
    3600:	0d 00 00 21 01       	or     $0x1210000,%eax
    3605:	55                   	push   %rbp
    3606:	02 76 00             	add    0x0(%rsi),%dh
    3609:	21 01                	and    %eax,(%rcx)
    360b:	54                   	push   %rsp
    360c:	04 91                	add    $0x91,%al
    360e:	a0 ff 7e 00 20 8a 2a 	movabs 0x402a8a20007eff,%al
    3615:	40 00 
    3617:	00 00                	add    %al,(%rax)
    3619:	00 00                	add    %al,(%rax)
    361b:	18 12                	sbb    %dl,(%rdx)
    361d:	00 00                	add    %al,(%rax)
    361f:	d8 0d 00 00 21 01    	fmuls  0x1210000(%rip)        # 1213625 <_end+0xe0c4ed>
    3625:	55                   	push   %rbp
    3626:	02 73 00             	add    0x0(%rbx),%dh
    3629:	00 20                	add    %ah,(%rax)
    362b:	71 2b                	jno    3658 <_init-0x3fd9a8>
    362d:	40 00 00             	add    %al,(%rax)
    3630:	00 00                	add    %al,(%rax)
    3632:	00 18                	add    %bl,(%rax)
    3634:	12 00                	adc    (%rax),%al
    3636:	00 f0                	add    %dh,%al
    3638:	0d 00 00 21 01       	or     $0x1210000,%eax
    363d:	55                   	push   %rbp
    363e:	02 73 00             	add    0x0(%rbx),%dh
    3641:	00 20                	add    %ah,(%rax)
    3643:	94                   	xchg   %eax,%esp
    3644:	2b 40 00             	sub    0x0(%rax),%eax
    3647:	00 00                	add    %al,(%rax)
    3649:	00 00                	add    %al,(%rax)
    364b:	32 12                	xor    (%rdx),%dl
    364d:	00 00                	add    %al,(%rax)
    364f:	1d 0e 00 00 21       	sbb    $0x2100000e,%eax
    3654:	01 55 02             	add    %edx,0x2(%rbp)
    3657:	76 00                	jbe    3659 <_init-0x3fd9a7>
    3659:	21 01                	and    %eax,(%rcx)
    365b:	54                   	push   %rsp
    365c:	09 03                	or     %eax,(%rbx)
    365e:	c8 36 40 00          	enterq $0x4036,$0x0
    3662:	00 00                	add    %al,(%rax)
    3664:	00 00                	add    %al,(%rax)
    3666:	21 01                	and    %eax,(%rcx)
    3668:	52                   	push   %rdx
    3669:	04 91                	add    $0x91,%al
    366b:	90                   	nop
    366c:	bf 7d 00 22 9b       	mov    $0x9b22007d,%edi
    3671:	2b 40 00             	sub    0x0(%rax),%eax
    3674:	00 00                	add    %al,(%rax)
    3676:	00 00                	add    %al,(%rax)
    3678:	18 12                	sbb    %dl,(%rdx)
    367a:	00 00                	add    %al,(%rax)
    367c:	21 01                	and    %eax,(%rcx)
    367e:	55                   	push   %rbp
    367f:	02 73 00             	add    0x0(%rbx),%dh
    3682:	00 00                	add    %al,(%rax)
    3684:	30 e8                	xor    %ch,%al
    3686:	06                   	(bad)  
    3687:	00 00                	add    %al,(%rax)
    3689:	01 8c 0c 7d 00 00 00 	add    %ecx,0x7d(%rsp,%rcx,1)
    3690:	11 22                	adc    %esp,(%rdx)
    3692:	40 00 00             	add    %al,(%rax)
    3695:	00 00                	add    %al,(%rax)
    3697:	00 df                	add    %bl,%bh
    3699:	00 00                	add    %al,(%rax)
    369b:	00 00                	add    %al,(%rax)
    369d:	00 00                	add    %al,(%rax)
    369f:	00 01                	add    %al,(%rcx)
    36a1:	9c                   	pushfq 
    36a2:	c1 0e 00             	rorl   $0x0,(%rsi)
    36a5:	00 29                	add    %ch,(%rcx)
    36a7:	73 72                	jae    371b <_init-0x3fd8e5>
    36a9:	63 00                	movslq (%rax),%eax
    36ab:	01 8c 25 c1 0e 00 00 	add    %ecx,0xec1(%rbp,%riz,1)
    36b2:	55                   	push   %rbp
    36b3:	17                   	(bad)  
    36b4:	00 00                	add    %al,(%rax)
    36b6:	51                   	push   %rcx
    36b7:	17                   	(bad)  
    36b8:	00 00                	add    %al,(%rax)
    36ba:	29 64 73 74          	sub    %esp,0x74(%rbx,%rsi,2)
    36be:	00 01                	add    %al,(%rcx)
    36c0:	8c 39                	mov    %?,(%rcx)
    36c2:	c1 0e 00             	rorl   $0x0,(%rsi)
    36c5:	00 9f 17 00 00 8b    	add    %bl,-0x74ffffe9(%rdi)
    36cb:	17                   	(bad)  
    36cc:	00 00                	add    %al,(%rax)
    36ce:	2b 6c 65 6e          	sub    0x6e(%rbp,%riz,2),%ebp
    36d2:	00 01                	add    %al,(%rcx)
    36d4:	8e 09                	mov    (%rcx),%cs
    36d6:	7d 00                	jge    36d8 <_init-0x3fd928>
    36d8:	00 00                	add    %al,(%rax)
    36da:	7f 18                	jg     36f4 <_init-0x3fd90c>
    36dc:	00 00                	add    %al,(%rax)
    36de:	77 18                	ja     36f8 <_init-0x3fd908>
    36e0:	00 00                	add    %al,(%rax)
    36e2:	2d 62 75 66 00       	sub    $0x667562,%eax
    36e7:	01 8f 0a 2c 03 00    	add    %ecx,0x32c0a(%rdi)
    36ed:	00 02                	add    %al,(%rdx)
    36ef:	91                   	xchg   %eax,%ecx
    36f0:	58                   	pop    %rax
    36f1:	22 b4 22 40 00 00 00 	and    0x40(%rdx,%riz,1),%dh
    36f8:	00 00                	add    %al,(%rax)
    36fa:	32 12                	xor    (%rdx),%dl
    36fc:	00 00                	add    %al,(%rax)
    36fe:	21 01                	and    %eax,(%rcx)
    3700:	55                   	push   %rbp
    3701:	02 91 58 21 01 54    	add    0x54012158(%rcx),%dl
    3707:	09 03                	or     %eax,(%rbx)
    3709:	f8                   	clc    
    370a:	36 40 00 00          	add    %al,%ss:(%rax)
    370e:	00 00                	add    %al,(%rax)
    3710:	00 00                	add    %al,(%rax)
    3712:	00 06                	add    %al,(%rsi)
    3714:	08 49 00             	or     %cl,0x0(%rcx)
    3717:	00 00                	add    %al,(%rax)
    3719:	30 b0 06 00 00 01    	xor    %dh,0x1000006(%rax)
    371f:	75 10                	jne    3731 <_init-0x3fd8cf>
    3721:	b5 02                	mov    $0x2,%ch
    3723:	00 00                	add    %al,(%rax)
    3725:	f0 22 40 00          	lock and 0x0(%rax),%al
    3729:	00 00                	add    %al,(%rax)
    372b:	00 00                	add    %al,(%rax)
    372d:	5e                   	pop    %rsi
    372e:	00 00                	add    %al,(%rax)
    3730:	00 00                	add    %al,(%rax)
    3732:	00 00                	add    %al,(%rax)
    3734:	00 01                	add    %al,(%rcx)
    3736:	9c                   	pushfq 
    3737:	90                   	nop
    3738:	0f 00 00             	sldt   (%rax)
    373b:	29 66 64             	sub    %esp,0x64(%rsi)
    373e:	00 01                	add    %al,(%rcx)
    3740:	75 1f                	jne    3761 <_init-0x3fd89f>
    3742:	7d 00                	jge    3744 <_init-0x3fd8bc>
    3744:	00 00                	add    %al,(%rax)
    3746:	e5 18                	in     $0x18,%eax
    3748:	00 00                	add    %al,(%rax)
    374a:	dd 18                	fstpl  (%rax)
    374c:	00 00                	add    %al,(%rax)
    374e:	28 47 06             	sub    %al,0x6(%rdi)
    3751:	00 00                	add    %al,(%rax)
    3753:	01 75 29             	add    %esi,0x29(%rbp)
    3756:	47 00 00             	rex.RXB add %r8b,(%r8)
    3759:	00 48 19             	add    %cl,0x19(%rax)
    375c:	00 00                	add    %al,(%rax)
    375e:	44 19 00             	sbb    %r8d,(%rax)
    3761:	00 29                	add    %ch,(%rcx)
    3763:	6e                   	outsb  %ds:(%rsi),(%dx)
    3764:	00 01                	add    %al,(%rcx)
    3766:	75 38                	jne    37a0 <_init-0x3fd860>
    3768:	2d 00 00 00 89       	sub    $0x89000000,%eax
    376d:	19 00                	sbb    %eax,(%rax)
    376f:	00 81 19 00 00 2a    	add    %al,0x2a000019(%rcx)
    3775:	29 06                	sub    %eax,(%rsi)
    3777:	00 00                	add    %al,(%rax)
    3779:	01 77 0c             	add    %esi,0xc(%rdi)
    377c:	2d 00 00 00 ee       	sub    $0xee000000,%eax
    3781:	19 00                	sbb    %eax,(%rax)
    3783:	00 e8                	add    %ch,%al
    3785:	19 00                	sbb    %eax,(%rax)
    3787:	00 2a                	add    %ch,(%rdx)
    3789:	00 08                	add    %cl,(%rax)
    378b:	00 00                	add    %al,(%rax)
    378d:	01 78 0d             	add    %edi,0xd(%rax)
    3790:	b5 02                	mov    $0x2,%ch
    3792:	00 00                	add    %al,(%rax)
    3794:	3b 1a                	cmp    (%rdx),%ebx
    3796:	00 00                	add    %al,(%rax)
    3798:	37                   	(bad)  
    3799:	1a 00                	sbb    (%rax),%al
    379b:	00 2a                	add    %ch,(%rdx)
    379d:	4e 06                	rex.WRX (bad) 
    379f:	00 00                	add    %al,(%rax)
    37a1:	01 79 0b             	add    %edi,0xb(%rcx)
    37a4:	bb 00 00 00 77       	mov    $0x77000000,%ebx
    37a9:	1a 00                	sbb    (%rax),%al
    37ab:	00 71 1a             	add    %dh,0x1a(%rcx)
    37ae:	00 00                	add    %al,(%rax)
    37b0:	20 21                	and    %ah,(%rcx)
    37b2:	23 40 00             	and    0x0(%rax),%eax
    37b5:	00 00                	add    %al,(%rax)
    37b7:	00 00                	add    %al,(%rax)
    37b9:	58                   	pop    %rax
    37ba:	12 00                	adc    (%rax),%al
    37bc:	00 82 0f 00 00 21    	add    %al,0x2100000f(%rdx)
    37c2:	01 55 02             	add    %edx,0x2(%rbp)
    37c5:	7c 00                	jl     37c7 <_init-0x3fd839>
    37c7:	21 01                	and    %eax,(%rcx)
    37c9:	54                   	push   %rsp
    37ca:	02 76 00             	add    0x0(%rsi),%dh
    37cd:	21 01                	and    %eax,(%rcx)
    37cf:	51                   	push   %rcx
    37d0:	02 73 00             	add    0x0(%rbx),%dh
    37d3:	00 31                	add    %dh,(%rcx)
    37d5:	2b 23                	sub    (%rbx),%esp
    37d7:	40 00 00             	add    %al,(%rax)
    37da:	00 00                	add    %al,(%rax)
    37dc:	00 65 12             	add    %ah,0x12(%rbp)
    37df:	00 00                	add    %al,(%rax)
    37e1:	00 30                	add    %dh,(%rax)
    37e3:	68 08 00 00 01       	pushq  $0x1000008
    37e8:	5b                   	pop    %rbx
    37e9:	10 b5 02 00 00 d7    	adc    %dh,-0x28fffffe(%rbp)
    37ef:	23 40 00             	and    0x0(%rax),%eax
    37f2:	00 00                	add    %al,(%rax)
    37f4:	00 00                	add    %al,(%rax)
    37f6:	7c 00                	jl     37f8 <_init-0x3fd808>
    37f8:	00 00                	add    %al,(%rax)
    37fa:	00 00                	add    %al,(%rax)
    37fc:	00 00                	add    %al,(%rax)
    37fe:	01 9c 53 10 00 00 29 	add    %ebx,0x29000010(%rbx,%rdx,2)
    3805:	72 70                	jb     3877 <_init-0x3fd789>
    3807:	00 01                	add    %al,(%rcx)
    3809:	5b                   	pop    %rbx
    380a:	25 53 10 00 00       	and    $0x1053,%eax
    380f:	c8 1a 00 00          	enterq $0x1a,$0x0
    3813:	c0 1a 00             	rcrb   $0x0,(%rdx)
    3816:	00 28                	add    %ch,(%rax)
    3818:	47 06                	rex.RXB (bad) 
    381a:	00 00                	add    %al,(%rax)
    381c:	01 5b 2f             	add    %ebx,0x2f(%rbx)
    381f:	47 00 00             	rex.RXB add %r8b,(%r8)
    3822:	00 2b                	add    %ch,(%rbx)
    3824:	1b 00                	sbb    (%rax),%eax
    3826:	00 27                	add    %ah,(%rdi)
    3828:	1b 00                	sbb    (%rax),%eax
    382a:	00 28                	add    %ch,(%rax)
    382c:	33 07                	xor    (%rdi),%eax
    382e:	00 00                	add    %al,(%rax)
    3830:	01 5b 3e             	add    %ebx,0x3e(%rbx)
    3833:	2d 00 00 00 6c       	sub    $0x6c000000,%eax
    3838:	1b 00                	sbb    (%rax),%eax
    383a:	00 64 1b 00          	add    %ah,0x0(%rbx,%rbx,1)
    383e:	00 2b                	add    %ch,(%rbx)
    3840:	72 63                	jb     38a5 <_init-0x3fd75b>
    3842:	00 01                	add    %al,(%rcx)
    3844:	5d                   	pop    %rbp
    3845:	09 7d 00             	or     %edi,0x0(%rbp)
    3848:	00 00                	add    %al,(%rax)
    384a:	d1 1b                	rcrl   (%rbx)
    384c:	00 00                	add    %al,(%rax)
    384e:	cb                   	lret   
    384f:	1b 00                	sbb    (%rax),%eax
    3851:	00 2b                	add    %ch,(%rbx)
    3853:	6e                   	outsb  %ds:(%rsi),(%dx)
    3854:	00 01                	add    %al,(%rcx)
    3856:	5e                   	pop    %rsi
    3857:	0a 2d 00 00 00 20    	or     0x20000000(%rip),%ch        # 2000385d <_end+0x1fbfc725>
    385d:	1c 00                	sbb    $0x0,%al
    385f:	00 1a                	add    %bl,(%rdx)
    3861:	1c 00                	sbb    $0x0,%al
    3863:	00 2d 63 00 01 5f    	add    %ch,0x5f010063(%rip)        # 5f0138cc <_end+0x5ec0c794>
    3869:	0a c1                	or     %cl,%al
    386b:	00 00                	add    %al,(%rax)
    386d:	00 02                	add    %al,(%rdx)
    386f:	91                   	xchg   %eax,%ecx
    3870:	4f 2a 4e 06          	rex.WRXB sub 0x6(%r14),%r9b
    3874:	00 00                	add    %al,(%rax)
    3876:	01 5f 0e             	add    %ebx,0xe(%rdi)
    3879:	bb 00 00 00 78       	mov    $0x78000000,%ebx
    387e:	1c 00                	sbb    $0x0,%al
    3880:	00 6a 1c             	add    %ch,0x1c(%rdx)
    3883:	00 00                	add    %al,(%rax)
    3885:	22 06                	and    (%rsi),%al
    3887:	24 40                	and    $0x40,%al
    3889:	00 00                	add    %al,(%rax)
    388b:	00 00                	add    %al,(%rax)
    388d:	00 59 10             	add    %bl,0x10(%rcx)
    3890:	00 00                	add    %al,(%rax)
    3892:	21 01                	and    %eax,(%rcx)
    3894:	55                   	push   %rbp
    3895:	02 7d 00             	add    0x0(%rbp),%bh
    3898:	21 01                	and    %eax,(%rcx)
    389a:	54                   	push   %rsp
    389b:	02 91 4f 21 01 51    	add    0x5101214f(%rcx),%dl
    38a1:	01 31                	add    %esi,(%rcx)
    38a3:	00 00                	add    %al,(%rax)
    38a5:	06                   	(bad)  
    38a6:	08 3a                	or     %bh,(%rdx)
    38a8:	06                   	(bad)  
    38a9:	00 00                	add    %al,(%rax)
    38ab:	30 04 07             	xor    %al,(%rdi,%rax,1)
    38ae:	00 00                	add    %al,(%rax)
    38b0:	01 3d 10 b5 02 00    	add    %edi,0x2b510(%rip)        # 2edc6 <_init-0x3d223a>
    38b6:	00 4e 23             	add    %cl,0x23(%rsi)
    38b9:	40 00 00             	add    %al,(%rax)
    38bc:	00 00                	add    %al,(%rax)
    38be:	00 89 00 00 00 00    	add    %cl,0x0(%rcx)
    38c4:	00 00                	add    %al,(%rax)
    38c6:	00 01                	add    %al,(%rcx)
    38c8:	9c                   	pushfq 
    38c9:	0f 11 00             	movups %xmm0,(%rax)
    38cc:	00 29                	add    %ch,(%rcx)
    38ce:	72 70                	jb     3940 <_init-0x3fd6c0>
    38d0:	00 01                	add    %al,(%rcx)
    38d2:	3d 20 53 10 00       	cmp    $0x105320,%eax
    38d7:	00 15 1d 00 00 0d    	add    %dl,0xd00001d(%rip)        # d0038fa <_end+0xcbfc7c2>
    38dd:	1d 00 00 28 47       	sbb    $0x47280000,%eax
    38e2:	06                   	(bad)  
    38e3:	00 00                	add    %al,(%rax)
    38e5:	01 3d 2a bb 00 00    	add    %edi,0xbb2a(%rip)        # f415 <_init-0x3f1beb>
    38eb:	00 7c 1d 00          	add    %bh,0x0(%rbp,%rbx,1)
    38ef:	00 74 1d 00          	add    %dh,0x0(%rbp,%rbx,1)
    38f3:	00 29                	add    %ch,(%rcx)
    38f5:	6e                   	outsb  %ds:(%rsi),(%dx)
    38f6:	00 01                	add    %al,(%rcx)
    38f8:	3d 39 2d 00 00       	cmp    $0x2d39,%eax
    38fd:	00 e3                	add    %ah,%bl
    38ff:	1d 00 00 db 1d       	sbb    $0x1ddb0000,%eax
    3904:	00 00                	add    %al,(%rax)
    3906:	2b 63 6e             	sub    0x6e(%rbx),%esp
    3909:	74 00                	je     390b <_init-0x3fd6f5>
    390b:	01 3f                	add    %edi,(%rdi)
    390d:	09 7d 00             	or     %edi,0x0(%rbp)
    3910:	00 00                	add    %al,(%rax)
    3912:	46 1e                	rex.RX (bad) 
    3914:	00 00                	add    %al,(%rax)
    3916:	42 1e                	rex.X (bad) 
    3918:	00 00                	add    %al,(%rax)
    391a:	31 68 23             	xor    %ebp,0x23(%rax)
    391d:	40 00 00             	add    %al,(%rax)
    3920:	00 00                	add    %al,(%rax)
    3922:	00 65 12             	add    %ah,0x12(%rbp)
    3925:	00 00                	add    %al,(%rax)
    3927:	20 87 23 40 00 00    	and    %al,0x4023(%rdi)
    392d:	00 00                	add    %al,(%rax)
    392f:	00 71 12             	add    %dh,0x12(%rcx)
    3932:	00 00                	add    %al,(%rax)
    3934:	f4                   	hlt    
    3935:	10 00                	adc    %al,(%rax)
    3937:	00 21                	add    %ah,(%rcx)
    3939:	01 54 02 76          	add    %edx,0x76(%rdx,%rax,1)
    393d:	00 21                	add    %ah,(%rcx)
    393f:	01 51 03             	add    %edx,0x3(%rcx)
    3942:	0a 00                	or     (%rax),%al
    3944:	20 00                	and    %al,(%rax)
    3946:	22 b2 23 40 00 00    	and    0x4023(%rdx),%dh
    394c:	00 00                	add    %al,(%rax)
    394e:	00 7e 12             	add    %bh,0x12(%rsi)
    3951:	00 00                	add    %al,(%rax)
    3953:	21 01                	and    %eax,(%rcx)
    3955:	55                   	push   %rbp
    3956:	02 7d 00             	add    0x0(%rbp),%bh
    3959:	21 01                	and    %eax,(%rcx)
    395b:	51                   	push   %rcx
    395c:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
    3960:	00 32                	add    %dh,(%rdx)
    3962:	85 06                	test   %eax,(%rsi)
    3964:	00 00                	add    %al,(%rax)
    3966:	01 2d 0d d4 21 40    	add    %ebp,0x4021d40d(%rip)        # 40220d79 <_end+0x3fe19c41>
    396c:	00 00                	add    %al,(%rax)
    396e:	00 00                	add    %al,(%rax)
    3970:	00 12                	add    %dl,(%rdx)
    3972:	00 00                	add    %al,(%rax)
    3974:	00 00                	add    %al,(%rax)
    3976:	00 00                	add    %al,(%rax)
    3978:	00 01                	add    %al,(%rcx)
    397a:	9c                   	pushfq 
    397b:	48 11 00             	adc    %rax,(%rax)
    397e:	00 33                	add    %dh,(%rbx)
    3980:	72 70                	jb     39f2 <_init-0x3fd60e>
    3982:	00 01                	add    %al,(%rcx)
    3984:	2d 22 53 10 00       	sub    $0x105322,%eax
    3989:	00 01                	add    %al,(%rcx)
    398b:	55                   	push   %rbp
    398c:	33 66 64             	xor    0x64(%rsi),%esp
    398f:	00 01                	add    %al,(%rcx)
    3991:	2d 2a 7d 00 00       	sub    $0x7d2a,%eax
    3996:	00 01                	add    %al,(%rcx)
    3998:	54                   	push   %rsp
    3999:	00 34 1a             	add    %dh,(%rdx,%rbx,1)
    399c:	07                   	(bad)  
    399d:	00 00                	add    %al,(%rax)
    399f:	01 23                	add    %esp,(%rbx)
    39a1:	06                   	(bad)  
    39a2:	e6 21                	out    %al,$0x21
    39a4:	40 00 00             	add    %al,(%rax)
    39a7:	00 00                	add    %al,(%rax)
    39a9:	00 2b                	add    %ch,(%rbx)
    39ab:	00 00                	add    %al,(%rax)
    39ad:	00 00                	add    %al,(%rax)
    39af:	00 00                	add    %al,(%rax)
    39b1:	00 01                	add    %al,(%rcx)
    39b3:	9c                   	pushfq 
    39b4:	b2 11                	mov    $0x11,%dl
    39b6:	00 00                	add    %al,(%rax)
    39b8:	29 73 69             	sub    %esi,0x69(%rbx)
    39bb:	67 00 01             	add    %al,(%ecx)
    39be:	23 1a                	and    (%rdx),%ebx
    39c0:	7d 00                	jge    39c2 <_init-0x3fd63e>
    39c2:	00 00                	add    %al,(%rax)
    39c4:	80 1e 00             	sbbb   $0x0,(%rsi)
    39c7:	00 7c 1e 00          	add    %bh,0x0(%rsi,%rbx,1)
    39cb:	00 20                	add    %ah,(%rax)
    39cd:	07                   	(bad)  
    39ce:	22 40 00             	and    0x0(%rax),%al
    39d1:	00 00                	add    %al,(%rax)
    39d3:	00 00                	add    %al,(%rax)
    39d5:	89 12                	mov    %edx,(%rdx)
    39d7:	00 00                	add    %al,(%rax)
    39d9:	9e                   	sahf   
    39da:	11 00                	adc    %eax,(%rax)
    39dc:	00 21                	add    %ah,(%rcx)
    39de:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
    39e2:	60                   	(bad)  
    39e3:	36 40 00 00          	add    %al,%ss:(%rax)
    39e7:	00 00                	add    %al,(%rax)
    39e9:	00 21                	add    %ah,(%rcx)
    39eb:	01 51 01             	add    %edx,0x1(%rcx)
    39ee:	30 00                	xor    %al,(%rax)
    39f0:	22 11                	and    (%rcx),%dl
    39f2:	22 40 00             	and    0x0(%rax),%al
    39f5:	00 00                	add    %al,(%rax)
    39f7:	00 00                	add    %al,(%rax)
    39f9:	96                   	xchg   %eax,%esi
    39fa:	12 00                	adc    (%rax),%al
    39fc:	00 21                	add    %ah,(%rcx)
    39fe:	01 55 01             	add    %edx,0x1(%rbp)
    3a01:	31 00                	xor    %eax,(%rax)
    3a03:	00 35 d2 07 00 00    	add    %dh,0x7d2(%rip)        # 41db <_init-0x3fce25>
    3a09:	02 22                	add    (%rdx),%ah
    3a0b:	01 71 00             	add    %esi,0x0(%rcx)
    3a0e:	00 00                	add    %al,(%rax)
    3a10:	03 d0                	add    %eax,%edx
    3a12:	11 00                	adc    %eax,(%rax)
    3a14:	00 36                	add    %dh,(%rsi)
    3a16:	0d 07 00 00 02       	or     $0x2000007,%eax
    3a1b:	22 18                	and    (%rax),%bl
    3a1d:	71 00                	jno    3a1f <_init-0x3fd5e1>
    3a1f:	00 00                	add    %al,(%rax)
    3a21:	00 37                	add    %dh,(%rdi)
    3a23:	eb 01                	jmp    3a26 <_init-0x3fd5da>
    3a25:	00 00                	add    %al,(%rax)
    3a27:	eb 01                	jmp    3a2a <_init-0x3fd5d6>
    3a29:	00 00                	add    %al,(%rax)
    3a2b:	07                   	(bad)  
    3a2c:	4c 01 0c 38          	add    %r9,(%rax,%rdi,1)
    3a30:	fa                   	cli    
    3a31:	02 00                	add    (%rax),%al
    3a33:	00 fa                	add    %bh,%dl
    3a35:	02 00                	add    (%rax),%al
    3a37:	00 10                	add    %dl,(%rax)
    3a39:	58                   	pop    %rax
    3a3a:	17                   	(bad)  
    3a3b:	38 eb                	cmp    %ch,%bl
    3a3d:	05 00 00 eb 05       	add    $0x5eb0000,%eax
    3a42:	00 00                	add    %al,(%rax)
    3a44:	12 66 0c             	adc    0xc(%rsi),%ah
    3a47:	38 47 08             	cmp    %al,0x8(%rdi)
    3a4a:	00 00                	add    %al,(%rax)
    3a4c:	47 08 00             	rex.RXB or %r8b,(%r8)
    3a4f:	00 0f                	add    %cl,(%rdi)
    3a51:	8e 18                	mov    (%rax),%ds
    3a53:	39 fc                	cmp    %edi,%esp
    3a55:	06                   	(bad)  
    3a56:	00 00                	add    %al,(%rax)
    3a58:	f2 06                	repnz (bad) 
    3a5a:	00 00                	add    %al,(%rax)
    3a5c:	15 00 38 36 08       	adc    $0x8363800,%eax
    3a61:	00 00                	add    %al,(%rax)
    3a63:	36 08 00             	or     %al,%ss:(%rax)
    3a66:	00 12                	add    %dl,(%rdx)
    3a68:	7e 0c                	jle    3a76 <_init-0x3fd58a>
    3a6a:	37                   	(bad)  
    3a6b:	f2 05 00 00 f2 05    	repnz add $0x5f20000,%eax
    3a71:	00 00                	add    %al,(%rax)
    3a73:	09 61 01             	or     %esp,0x1(%rcx)
    3a76:	0c 37                	or     $0x37,%al
    3a78:	0f 03 00             	lsl    (%rax),%eax
    3a7b:	00 0f                	add    %cl,(%rdi)
    3a7d:	03 00                	add    (%rax),%eax
    3a7f:	00 09                	add    %cl,(%rcx)
    3a81:	b0 01                	mov    $0x1,%al
    3a83:	15 37 ad 04 00       	adc    $0x4ad37,%eax
    3a88:	00 ad 04 00 00 07    	add    %ch,0x7000004(%rbp)
    3a8e:	4e 01 0c 37          	add    %r9,(%rdi,%r14,1)
    3a92:	6b 06 00             	imul   $0x0,(%rsi),%eax
    3a95:	00 74 06 00          	add    %dh,0x0(%rsi,%rax,1)
    3a99:	00 07                	add    %al,(%rdi)
    3a9b:	9e                   	sahf   
    3a9c:	01 0c 38             	add    %ecx,(%rax,%rdi,1)
    3a9f:	45 07                	rex.RB (bad) 
    3aa1:	00 00                	add    %al,(%rax)
    3aa3:	45 07                	rex.RB (bad) 
    3aa5:	00 00                	add    %al,(%rax)
    3aa7:	13 79 0e             	adc    0xe(%rcx),%edi
    3aaa:	37                   	(bad)  
    3aab:	63 07                	movslq (%rdi),%eax
    3aad:	00 00                	add    %al,(%rax)
    3aaf:	63 07                	movslq (%rdi),%eax
    3ab1:	00 00                	add    %al,(%rax)
    3ab3:	09 6e 01             	or     %ebp,0x1(%rsi)
    3ab6:	10 38                	adc    %bh,(%rax)
    3ab8:	81 08 00 00 81 08    	orl    $0x8810000,(%rax)
    3abe:	00 00                	add    %al,(%rax)
    3ac0:	14 25                	adc    $0x25,%al
    3ac2:	0d 37 08 07 00       	or     $0x70837,%eax
    3ac7:	00 08                	add    %cl,(%rax)
    3ac9:	07                   	(bad)  
    3aca:	00 00                	add    %al,(%rax)
    3acc:	09 68 01             	or     %ebp,0x1(%rax)
    3acf:	10 39                	adc    %bh,(%rcx)
    3ad1:	56                   	push   %rsi
    3ad2:	07                   	(bad)  
    3ad3:	00 00                	add    %al,(%rax)
    3ad5:	4c 07                	rex.WR (bad) 
    3ad7:	00 00                	add    %al,(%rax)
    3ad9:	15 00 37 ea 01       	adc    $0x1ea3700,%eax
    3ade:	00 00                	add    %al,(%rax)
    3ae0:	ea                   	(bad)  
    3ae1:	01 00                	add    %eax,(%rax)
    3ae3:	00 07                	add    %al,(%rdi)
    3ae5:	46 01 0c 37          	add    %r9d,(%rdi,%r14,1)
    3ae9:	fc                   	cld    
    3aea:	01 00                	add    %eax,(%rax)
    3aec:	00 fc                	add    %bh,%ah
    3aee:	01 00                	add    %eax,(%rax)
    3af0:	00 16                	add    %dl,(%rsi)
    3af2:	66 02 0d 00 58 01 00 	data16 add 0x15800(%rip),%cl        # 192f9 <_init-0x3e7d07>
    3af9:	00 04 00             	add    %al,(%rax,%rax,1)
    3afc:	83 0c 00 00          	orl    $0x0,(%rax,%rax,1)
    3b00:	08 01                	or     %al,(%rcx)
    3b02:	99                   	cltd   
    3b03:	00 00                	add    %al,(%rax)
    3b05:	00 0c 6c             	add    %cl,(%rsp,%rbp,2)
    3b08:	09 00                	or     %eax,(%rax)
    3b0a:	00 3a                	add    %bh,(%rdx)
    3b0c:	09 00                	or     %eax,(%rax)
    3b0e:	00 3b                	add    %bh,(%rbx)
    3b10:	2e 40 00 00          	add    %al,%cs:(%rax)
    3b14:	00 00                	add    %al,(%rax)
    3b16:	00 4f 00             	add    %cl,0x0(%rdi)
    3b19:	00 00                	add    %al,(%rax)
    3b1b:	00 00                	add    %al,(%rax)
    3b1d:	00 00                	add    %al,(%rax)
    3b1f:	1d 15 00 00 02       	sbb    $0x2000015,%eax
    3b24:	08 07                	or     %al,(%rdi)
    3b26:	5b                   	pop    %rbx
    3b27:	02 00                	add    (%rax),%al
    3b29:	00 03                	add    %al,(%rbx)
    3b2b:	04 05                	add    $0x5,%al
    3b2d:	69 6e 74 00 02 04 07 	imul   $0x7040200,0x74(%rsi),%ebp
    3b34:	60                   	(bad)  
    3b35:	02 00                	add    (%rax),%al
    3b37:	00 02                	add    %al,(%rdx)
    3b39:	08 05 a5 01 00 00    	or     %al,0x1a5(%rip)        # 3ce4 <_init-0x3fd31c>
    3b3f:	02 08                	add    (%rax),%cl
    3b41:	05 a0 01 00 00       	add    $0x1a0,%eax
    3b46:	02 01                	add    (%rcx),%al
    3b48:	08 21                	or     %ah,(%rcx)
    3b4a:	02 00                	add    (%rax),%al
    3b4c:	00 02                	add    %al,(%rdx)
    3b4e:	02 07                	add    (%rdi),%al
    3b50:	32 03                	xor    (%rbx),%al
    3b52:	00 00                	add    %al,(%rax)
    3b54:	02 01                	add    (%rcx),%al
    3b56:	06                   	(bad)  
    3b57:	23 02                	and    (%rdx),%eax
    3b59:	00 00                	add    %al,(%rax)
    3b5b:	02 02                	add    (%rdx),%al
    3b5d:	05 73 00 00 00       	add    $0x73,%eax
    3b62:	02 01                	add    (%rcx),%al
    3b64:	06                   	(bad)  
    3b65:	2a 02                	sub    (%rdx),%al
    3b67:	00 00                	add    %al,(%rax)
    3b69:	02 08                	add    (%rax),%cl
    3b6b:	07                   	(bad)  
    3b6c:	56                   	push   %rsi
    3b6d:	02 00                	add    (%rax),%al
    3b6f:	00 04 58             	add    %al,(%rax,%rbx,2)
    3b72:	03 00                	add    (%rax),%eax
    3b74:	00 01                	add    %al,(%rcx)
    3b76:	24 0a                	and    $0xa,%al
    3b78:	3b 00                	cmp    (%rax),%eax
    3b7a:	00 00                	add    %al,(%rax)
    3b7c:	6b 2e 40             	imul   $0x40,(%rsi),%ebp
    3b7f:	00 00                	add    %al,(%rax)
    3b81:	00 00                	add    %al,(%rax)
    3b83:	00 1f                	add    %bl,(%rdi)
    3b85:	00 00                	add    %al,(%rax)
    3b87:	00 00                	add    %al,(%rax)
    3b89:	00 00                	add    %al,(%rax)
    3b8b:	00 01                	add    %al,(%rcx)
    3b8d:	9c                   	pushfq 
    3b8e:	00 01                	add    %al,(%rcx)
    3b90:	00 00                	add    %al,(%rax)
    3b92:	05 69 64 00 01       	add    $0x1006469,%eax
    3b97:	24 18                	and    $0x18,%al
    3b99:	34 00                	xor    $0x0,%al
    3b9b:	00 00                	add    %al,(%rax)
    3b9d:	bf 1e 00 00 b9       	mov    $0xb900001e,%edi
    3ba2:	1e                   	(bad)  
    3ba3:	00 00                	add    %al,(%rax)
    3ba5:	06                   	(bad)  
    3ba6:	76 61                	jbe    3c09 <_init-0x3fd3f7>
    3ba8:	6c                   	insb   (%dx),%es:(%rdi)
    3ba9:	00 01                	add    %al,(%rcx)
    3bab:	26 0e                	es (bad) 
    3bad:	3b 00                	cmp    (%rax),%eax
    3baf:	00 00                	add    %al,(%rax)
    3bb1:	13 1f                	adc    (%rdi),%ebx
    3bb3:	00 00                	add    %al,(%rax)
    3bb5:	0d 1f 00 00 07       	or     $0x700001f,%eax
    3bba:	74 2e                	je     3bea <_init-0x3fd416>
    3bbc:	40 00 00             	add    %al,(%rax)
    3bbf:	00 00                	add    %al,(%rax)
    3bc1:	00 41 01             	add    %al,0x1(%rcx)
    3bc4:	00 00                	add    %al,(%rax)
    3bc6:	de 00                	fiadds (%rax)
    3bc8:	00 00                	add    %al,(%rax)
    3bca:	08 01                	or     %al,(%rcx)
    3bcc:	55                   	push   %rbp
    3bcd:	05 f3 01 55 23       	add    $0x235501f3,%eax
    3bd2:	01 00                	add    %eax,(%rax)
    3bd4:	09 79 2e             	or     %edi,0x2e(%rcx)
    3bd7:	40 00 00             	add    %al,(%rax)
    3bda:	00 00                	add    %al,(%rax)
    3bdc:	00 4e 01             	add    %cl,0x1(%rsi)
    3bdf:	00 00                	add    %al,(%rax)
    3be1:	0a 82 2e 40 00 00    	or     0x402e(%rdx),%al
    3be7:	00 00                	add    %al,(%rax)
    3be9:	00 00                	add    %al,(%rax)
    3beb:	01 00                	add    %eax,(%rax)
    3bed:	00 08                	add    %cl,(%rax)
    3bef:	01 55 02             	add    %edx,0x2(%rbp)
    3bf2:	73 00                	jae    3bf4 <_init-0x3fd40c>
    3bf4:	00 00                	add    %al,(%rax)
    3bf6:	04 34                	add    $0x34,%al
    3bf8:	09 00                	or     %eax,(%rax)
    3bfa:	00 01                	add    %al,(%rcx)
    3bfc:	19 05 34 00 00 00    	sbb    %eax,0x34(%rip)        # 3c36 <_init-0x3fd3ca>
    3c02:	3b 2e                	cmp    (%rsi),%ebp
    3c04:	40 00 00             	add    %al,(%rax)
    3c07:	00 00                	add    %al,(%rax)
    3c09:	00 30                	add    %dh,(%rax)
    3c0b:	00 00                	add    %al,(%rax)
    3c0d:	00 00                	add    %al,(%rax)
    3c0f:	00 00                	add    %al,(%rax)
    3c11:	00 01                	add    %al,(%rcx)
    3c13:	9c                   	pushfq 
    3c14:	41 01 00             	add    %eax,(%r8)
    3c17:	00 0b                	add    %cl,(%rbx)
    3c19:	63 00                	movslq (%rax),%eax
    3c1b:	01 19                	add    %ebx,(%rcx)
    3c1d:	14 3b                	adc    $0x3b,%al
    3c1f:	00 00                	add    %al,(%rax)
    3c21:	00 01                	add    %al,(%rcx)
    3c23:	55                   	push   %rbp
    3c24:	06                   	(bad)  
    3c25:	69 00 01 1b 09 34    	imul   $0x34091b01,(%rax),%eax
    3c2b:	00 00                	add    %al,(%rax)
    3c2d:	00 60 1f             	add    %ah,0x1f(%rax)
    3c30:	00 00                	add    %al,(%rax)
    3c32:	5c                   	pop    %rsp
    3c33:	1f                   	(bad)  
    3c34:	00 00                	add    %al,(%rax)
    3c36:	00 0c 91             	add    %cl,(%rcx,%rdx,4)
    3c39:	00 00                	add    %al,(%rax)
    3c3b:	00 91 00 00 00 02    	add    %dl,0x2000000(%rcx)
    3c41:	94                   	xchg   %eax,%esp
    3c42:	01 0d 0c d0 01 00    	add    %ecx,0x1d00c(%rip)        # 20c54 <_init-0x3e03ac>
    3c48:	00 d0                	add    %dl,%al
    3c4a:	01 00                	add    %eax,(%rax)
    3c4c:	00 02                	add    %al,(%rdx)
    3c4e:	91                   	xchg   %eax,%ecx
    3c4f:	01 11                	add    %edx,(%rcx)
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2caa1de>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 16                	add    (%rsi),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	39 0b                	cmp    %ecx,(%rbx)
  1e:	49 13 00             	adc    (%r8),%rax
  21:	00 03                	add    %al,(%rbx)
  23:	24 00                	and    $0x0,%al
  25:	0b 0b                	or     (%rbx),%ecx
  27:	3e 0b 03             	or     %ds:(%rbx),%eax
  2a:	0e                   	(bad)  
  2b:	00 00                	add    %al,(%rax)
  2d:	04 0f                	add    $0xf,%al
  2f:	00 0b                	add    %cl,(%rbx)
  31:	0b 00                	or     (%rax),%eax
  33:	00 05 24 00 0b 0b    	add    %al,0xb0b0024(%rip)        # b0b005d <_end+0xaca8f25>
  39:	3e 0b 03             	or     %ds:(%rbx),%eax
  3c:	08 00                	or     %al,(%rax)
  3e:	00 06                	add    %al,(%rsi)
  40:	0f 00 0b             	str    (%rbx)
  43:	0b 49 13             	or     0x13(%rcx),%ecx
  46:	00 00                	add    %al,(%rax)
  48:	07                   	(bad)  
  49:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
  4d:	00 00                	add    %al,(%rax)
  4f:	08 13                	or     %dl,(%rbx)
  51:	01 03                	add    %eax,(%rbx)
  53:	0e                   	(bad)  
  54:	0b 0b                	or     (%rbx),%ecx
  56:	3a 0b                	cmp    (%rbx),%cl
  58:	3b 0b                	cmp    (%rbx),%ecx
  5a:	39 0b                	cmp    %ecx,(%rbx)
  5c:	01 13                	add    %edx,(%rbx)
  5e:	00 00                	add    %al,(%rax)
  60:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0366 <_end+0x39cd922e>
  66:	0b 3b                	or     (%rbx),%edi
  68:	0b 39                	or     (%rcx),%edi
  6a:	0b 49 13             	or     0x13(%rcx),%ecx
  6d:	38 0b                	cmp    %cl,(%rbx)
  6f:	00 00                	add    %al,(%rax)
  71:	0a 16                	or     (%rsi),%dl
  73:	00 03                	add    %al,(%rbx)
  75:	0e                   	(bad)  
  76:	3a 0b                	cmp    (%rbx),%cl
  78:	3b 0b                	cmp    (%rbx),%ecx
  7a:	39 0b                	cmp    %ecx,(%rbx)
  7c:	00 00                	add    %al,(%rax)
  7e:	0b 13                	or     (%rbx),%edx
  80:	00 03                	add    %al,(%rbx)
  82:	0e                   	(bad)  
  83:	3c 19                	cmp    $0x19,%al
  85:	00 00                	add    %al,(%rax)
  87:	0c 01                	or     $0x1,%al
  89:	01 49 13             	add    %ecx,0x13(%rcx)
  8c:	01 13                	add    %edx,(%rbx)
  8e:	00 00                	add    %al,(%rax)
  90:	0d 21 00 49 13       	or     $0x13490021,%eax
  95:	2f                   	(bad)  
  96:	0b 00                	or     (%rax),%eax
  98:	00 0e                	add    %cl,(%rsi)
  9a:	34 00                	xor    $0x0,%al
  9c:	03 0e                	add    (%rsi),%ecx
  9e:	3a 0b                	cmp    (%rbx),%cl
  a0:	3b 0b                	cmp    (%rbx),%ecx
  a2:	39 0b                	cmp    %ecx,(%rbx)
  a4:	49 13 3f             	adc    (%r15),%rdi
  a7:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  aa:	00 00                	add    %al,(%rax)
  ac:	0f 21 00             	mov    %db0,%rax
  af:	00 00                	add    %al,(%rax)
  b1:	10 34 00             	adc    %dh,(%rax,%rax,1)
  b4:	03 0e                	add    (%rsi),%ecx
  b6:	3a 0b                	cmp    (%rbx),%cl
  b8:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 13490bf7 <_end+0x13089abf>
  be:	3f                   	(bad)  
  bf:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  c2:	00 00                	add    %al,(%rax)
  c4:	11 34 00             	adc    %esi,(%rax,%rax,1)
  c7:	03 0e                	add    (%rsi),%ecx
  c9:	3a 0b                	cmp    (%rbx),%cl
  cb:	3b 0b                	cmp    (%rbx),%ecx
  cd:	39 0b                	cmp    %ecx,(%rbx)
  cf:	49 13 3f             	adc    (%r15),%rdi
  d2:	19 02                	sbb    %eax,(%rdx)
  d4:	18 00                	sbb    %al,(%rax)
  d6:	00 12                	add    %dl,(%rdx)
  d8:	21 00                	and    %eax,(%rax)
  da:	49 13 2f             	adc    (%r15),%rbp
  dd:	05 00 00 13 34       	add    $0x34130000,%eax
  e2:	00 03                	add    %al,(%rbx)
  e4:	08 3a                	or     %bh,(%rdx)
  e6:	0b 3b                	or     (%rbx),%edi
  e8:	0b 39                	or     (%rcx),%edi
  ea:	0b 49 13             	or     0x13(%rcx),%ecx
  ed:	3f                   	(bad)  
  ee:	19 02                	sbb    %eax,(%rdx)
  f0:	18 00                	sbb    %al,(%rax)
  f2:	00 14 2e             	add    %dl,(%rsi,%rbp,1)
  f5:	01 3f                	add    %edi,(%rdi)
  f7:	19 03                	sbb    %eax,(%rbx)
  f9:	0e                   	(bad)  
  fa:	3a 0b                	cmp    (%rbx),%cl
  fc:	3b 0b                	cmp    (%rbx),%ecx
  fe:	39 0b                	cmp    %ecx,(%rbx)
 100:	27                   	(bad)  
 101:	19 49 13             	sbb    %ecx,0x13(%rcx)
 104:	11 01                	adc    %eax,(%rcx)
 106:	12 07                	adc    (%rdi),%al
 108:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 10f:	00 00                	add    %al,(%rax)
 111:	15 05 00 03 0e       	adc    $0xe030005,%eax
 116:	3a 0b                	cmp    (%rbx),%cl
 118:	3b 0b                	cmp    (%rbx),%ecx
 11a:	39 0b                	cmp    %ecx,(%rbx)
 11c:	49 13 02             	adc    (%r10),%rax
 11f:	17                   	(bad)  
 120:	b7 42                	mov    $0x42,%bh
 122:	17                   	(bad)  
 123:	00 00                	add    %al,(%rax)
 125:	16                   	(bad)  
 126:	34 00                	xor    $0x0,%al
 128:	03 08                	add    (%rax),%ecx
 12a:	3a 0b                	cmp    (%rbx),%cl
 12c:	3b 0b                	cmp    (%rbx),%ecx
 12e:	39 0b                	cmp    %ecx,(%rbx)
 130:	49 13 02             	adc    (%r10),%rax
 133:	17                   	(bad)  
 134:	b7 42                	mov    $0x42,%bh
 136:	17                   	(bad)  
 137:	00 00                	add    %al,(%rax)
 139:	17                   	(bad)  
 13a:	34 00                	xor    $0x0,%al
 13c:	03 0e                	add    (%rsi),%ecx
 13e:	3a 0b                	cmp    (%rbx),%cl
 140:	3b 0b                	cmp    (%rbx),%ecx
 142:	39 0b                	cmp    %ecx,(%rbx)
 144:	49 13 1c 0b          	adc    (%r11,%rcx,1),%rbx
 148:	00 00                	add    %al,(%rax)
 14a:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 14d:	03 0e                	add    (%rsi),%ecx
 14f:	3a 0b                	cmp    (%rbx),%cl
 151:	3b 0b                	cmp    (%rbx),%ecx
 153:	39 0b                	cmp    %ecx,(%rbx)
 155:	49 13 02             	adc    (%r10),%rax
 158:	17                   	(bad)  
 159:	b7 42                	mov    $0x42,%bh
 15b:	17                   	(bad)  
 15c:	00 00                	add    %al,(%rax)
 15e:	19 1d 01 31 13 52    	sbb    %ebx,0x52133101(%rip)        # 52133265 <_end+0x51d2c12d>
 164:	01 b8 42 0b 11 01    	add    %edi,0x1110b42(%rax)
 16a:	12 07                	adc    (%rdi),%al
 16c:	58                   	pop    %rax
 16d:	0b 59 0b             	or     0xb(%rcx),%ebx
 170:	57                   	push   %rdi
 171:	0b 01                	or     (%rcx),%eax
 173:	13 00                	adc    (%rax),%eax
 175:	00 1a                	add    %bl,(%rdx)
 177:	05 00 31 13 00       	add    $0x133100,%eax
 17c:	00 1b                	add    %bl,(%rbx)
 17e:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 184:	31 13                	xor    %edx,(%rbx)
 186:	00 00                	add    %al,(%rax)
 188:	1c 8a                	sbb    $0x8a,%al
 18a:	82                   	(bad)  
 18b:	01 00                	add    %eax,(%rax)
 18d:	02 18                	add    (%rax),%bl
 18f:	91                   	xchg   %eax,%ecx
 190:	42 18 00             	rex.X sbb %al,(%rax)
 193:	00 1d 89 82 01 01    	add    %bl,0x1018289(%rip)        # 1018422 <_end+0xc112ea>
 199:	11 01                	adc    %eax,(%rcx)
 19b:	31 13                	xor    %edx,(%rbx)
 19d:	01 13                	add    %edx,(%rbx)
 19f:	00 00                	add    %al,(%rax)
 1a1:	1e                   	(bad)  
 1a2:	89 82 01 00 11 01    	mov    %eax,0x1110001(%rdx)
 1a8:	31 13                	xor    %edx,(%rbx)
 1aa:	00 00                	add    %al,(%rax)
 1ac:	1f                   	(bad)  
 1ad:	2e 01 03             	add    %eax,%cs:(%rbx)
 1b0:	0e                   	(bad)  
 1b1:	3a 0b                	cmp    (%rbx),%cl
 1b3:	3b 0b                	cmp    (%rbx),%ecx
 1b5:	39 0b                	cmp    %ecx,(%rbx)
 1b7:	27                   	(bad)  
 1b8:	19 11                	sbb    %edx,(%rcx)
 1ba:	01 12                	add    %edx,(%rdx)
 1bc:	07                   	(bad)  
 1bd:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 1c4:	00 00                	add    %al,(%rax)
 1c6:	20 0b                	and    %cl,(%rbx)
 1c8:	01 11                	add    %edx,(%rcx)
 1ca:	01 12                	add    %edx,(%rdx)
 1cc:	07                   	(bad)  
 1cd:	01 13                	add    %edx,(%rbx)
 1cf:	00 00                	add    %al,(%rax)
 1d1:	21 34 00             	and    %esi,(%rax,%rax,1)
 1d4:	03 0e                	add    (%rsi),%ecx
 1d6:	3a 0b                	cmp    (%rbx),%cl
 1d8:	3b 0b                	cmp    (%rbx),%ecx
 1da:	39 0b                	cmp    %ecx,(%rbx)
 1dc:	49 13 02             	adc    (%r10),%rax
 1df:	18 00                	sbb    %al,(%rax)
 1e1:	00 22                	add    %ah,(%rdx)
 1e3:	2e 01 3f             	add    %edi,%cs:(%rdi)
 1e6:	19 03                	sbb    %eax,(%rbx)
 1e8:	0e                   	(bad)  
 1e9:	3a 0b                	cmp    (%rbx),%cl
 1eb:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19270d2a <_end+0x18e69bf2>
 1f1:	49 13 20             	adc    (%r8),%rsp
 1f4:	0b 01                	or     (%rcx),%eax
 1f6:	13 00                	adc    (%rax),%eax
 1f8:	00 23                	add    %ah,(%rbx)
 1fa:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 1ff:	0b 3b                	or     (%rbx),%edi
 201:	05 39 0b 49 13       	add    $0x13490b39,%eax
 206:	00 00                	add    %al,(%rax)
 208:	24 2e                	and    $0x2e,%al
 20a:	00 3f                	add    %bh,(%rdi)
 20c:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 20f:	6e                   	outsb  %ds:(%rsi),(%dx)
 210:	0e                   	(bad)  
 211:	03 0e                	add    (%rsi),%ecx
 213:	3a 0b                	cmp    (%rbx),%cl
 215:	3b 0b                	cmp    (%rbx),%ecx
 217:	39 0b                	cmp    %ecx,(%rbx)
 219:	00 00                	add    %al,(%rax)
 21b:	25 2e 00 3f 19       	and    $0x193f002e,%eax
 220:	3c 19                	cmp    $0x19,%al
 222:	6e                   	outsb  %ds:(%rsi),(%dx)
 223:	0e                   	(bad)  
 224:	03 0e                	add    (%rsi),%ecx
 226:	3a 0b                	cmp    (%rbx),%cl
 228:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # d67 <_init-0x400299>
 22e:	26 2e 00 3f          	es add %bh,%cs:(%rdi)
 232:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 235:	6e                   	outsb  %ds:(%rsi),(%dx)
 236:	0e                   	(bad)  
 237:	03 0e                	add    (%rsi),%ecx
 239:	3a 0b                	cmp    (%rbx),%cl
 23b:	3b 0b                	cmp    (%rbx),%ecx
 23d:	00 00                	add    %al,(%rax)
 23f:	00 01                	add    %al,(%rcx)
 241:	11 01                	adc    %eax,(%rcx)
 243:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 248:	0e                   	(bad)  
 249:	1b 0e                	sbb    (%rsi),%ecx
 24b:	11 01                	adc    %eax,(%rcx)
 24d:	12 07                	adc    (%rdi),%al
 24f:	10 17                	adc    %dl,(%rdi)
 251:	00 00                	add    %al,(%rax)
 253:	02 2e                	add    (%rsi),%ch
 255:	01 3f                	add    %edi,(%rdi)
 257:	19 03                	sbb    %eax,(%rbx)
 259:	0e                   	(bad)  
 25a:	3a 0b                	cmp    (%rbx),%cl
 25c:	3b 0b                	cmp    (%rbx),%ecx
 25e:	39 0b                	cmp    %ecx,(%rbx)
 260:	27                   	(bad)  
 261:	19 49 13             	sbb    %ecx,0x13(%rcx)
 264:	11 01                	adc    %eax,(%rcx)
 266:	12 07                	adc    (%rdi),%al
 268:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 26f:	00 00                	add    %al,(%rax)
 271:	03 05 00 03 08 3a    	add    0x3a080300(%rip),%eax        # 3a080577 <_end+0x39c7943f>
 277:	0b 3b                	or     (%rbx),%edi
 279:	0b 39                	or     (%rcx),%edi
 27b:	0b 49 13             	or     0x13(%rcx),%ecx
 27e:	02 18                	add    (%rax),%bl
 280:	00 00                	add    %al,(%rax)
 282:	04 34                	add    $0x34,%al
 284:	00 03                	add    %al,(%rbx)
 286:	08 3a                	or     %bh,(%rdx)
 288:	0b 3b                	or     (%rbx),%edi
 28a:	0b 39                	or     (%rcx),%edi
 28c:	0b 49 13             	or     0x13(%rcx),%ecx
 28f:	02 18                	add    (%rax),%bl
 291:	00 00                	add    %al,(%rax)
 293:	05 34 00 03 0e       	add    $0xe030034,%eax
 298:	3a 0b                	cmp    (%rbx),%cl
 29a:	3b 0b                	cmp    (%rbx),%ecx
 29c:	39 0b                	cmp    %ecx,(%rbx)
 29e:	49 13 02             	adc    (%r10),%rax
 2a1:	17                   	(bad)  
 2a2:	b7 42                	mov    $0x42,%bh
 2a4:	17                   	(bad)  
 2a5:	00 00                	add    %al,(%rax)
 2a7:	06                   	(bad)  
 2a8:	34 00                	xor    $0x0,%al
 2aa:	03 08                	add    (%rax),%ecx
 2ac:	3a 0b                	cmp    (%rbx),%cl
 2ae:	3b 0b                	cmp    (%rbx),%ecx
 2b0:	39 0b                	cmp    %ecx,(%rbx)
 2b2:	49 13 02             	adc    (%r10),%rax
 2b5:	17                   	(bad)  
 2b6:	b7 42                	mov    $0x42,%bh
 2b8:	17                   	(bad)  
 2b9:	00 00                	add    %al,(%rax)
 2bb:	07                   	(bad)  
 2bc:	24 00                	and    $0x0,%al
 2be:	0b 0b                	or     (%rbx),%ecx
 2c0:	3e 0b 03             	or     %ds:(%rbx),%eax
 2c3:	0e                   	(bad)  
 2c4:	00 00                	add    %al,(%rax)
 2c6:	08 35 00 49 13 00    	or     %dh,0x134900(%rip)        # 134bcc <_init-0x2cc434>
 2cc:	00 09                	add    %cl,(%rcx)
 2ce:	01 01                	add    %eax,(%rcx)
 2d0:	49 13 01             	adc    (%r9),%rax
 2d3:	13 00                	adc    (%rax),%eax
 2d5:	00 0a                	add    %cl,(%rdx)
 2d7:	21 00                	and    %eax,(%rax)
 2d9:	49 13 2f             	adc    (%r15),%rbp
 2dc:	0b 00                	or     (%rax),%eax
 2de:	00 00                	add    %al,(%rax)
 2e0:	01 11                	add    %edx,(%rcx)
 2e2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b15f6 <_end+0x2caa4be>
 2e8:	0e                   	(bad)  
 2e9:	1b 0e                	sbb    (%rsi),%ecx
 2eb:	11 01                	adc    %eax,(%rcx)
 2ed:	12 07                	adc    (%rdi),%al
 2ef:	10 17                	adc    %dl,(%rdi)
 2f1:	00 00                	add    %al,(%rax)
 2f3:	02 16                	add    (%rsi),%dl
 2f5:	00 03                	add    %al,(%rbx)
 2f7:	0e                   	(bad)  
 2f8:	3a 0b                	cmp    (%rbx),%cl
 2fa:	3b 0b                	cmp    (%rbx),%ecx
 2fc:	39 0b                	cmp    %ecx,(%rbx)
 2fe:	49 13 00             	adc    (%r8),%rax
 301:	00 03                	add    %al,(%rbx)
 303:	24 00                	and    $0x0,%al
 305:	0b 0b                	or     (%rbx),%ecx
 307:	3e 0b 03             	or     %ds:(%rbx),%eax
 30a:	0e                   	(bad)  
 30b:	00 00                	add    %al,(%rax)
 30d:	04 0f                	add    $0xf,%al
 30f:	00 0b                	add    %cl,(%rbx)
 311:	0b 00                	or     (%rax),%eax
 313:	00 05 24 00 0b 0b    	add    %al,0xb0b0024(%rip)        # b0b033d <_end+0xaca9205>
 319:	3e 0b 03             	or     %ds:(%rbx),%eax
 31c:	08 00                	or     %al,(%rax)
 31e:	00 06                	add    %al,(%rsi)
 320:	0f 00 0b             	str    (%rbx)
 323:	0b 49 13             	or     0x13(%rcx),%ecx
 326:	00 00                	add    %al,(%rax)
 328:	07                   	(bad)  
 329:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
 32d:	00 00                	add    %al,(%rax)
 32f:	08 13                	or     %dl,(%rbx)
 331:	01 03                	add    %eax,(%rbx)
 333:	0e                   	(bad)  
 334:	0b 0b                	or     (%rbx),%ecx
 336:	3a 0b                	cmp    (%rbx),%cl
 338:	3b 0b                	cmp    (%rbx),%ecx
 33a:	39 0b                	cmp    %ecx,(%rbx)
 33c:	01 13                	add    %edx,(%rbx)
 33e:	00 00                	add    %al,(%rax)
 340:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0646 <_end+0x39cd950e>
 346:	0b 3b                	or     (%rbx),%edi
 348:	0b 39                	or     (%rcx),%edi
 34a:	0b 49 13             	or     0x13(%rcx),%ecx
 34d:	38 0b                	cmp    %cl,(%rbx)
 34f:	00 00                	add    %al,(%rax)
 351:	0a 16                	or     (%rsi),%dl
 353:	00 03                	add    %al,(%rbx)
 355:	0e                   	(bad)  
 356:	3a 0b                	cmp    (%rbx),%cl
 358:	3b 0b                	cmp    (%rbx),%ecx
 35a:	39 0b                	cmp    %ecx,(%rbx)
 35c:	00 00                	add    %al,(%rax)
 35e:	0b 13                	or     (%rbx),%edx
 360:	00 03                	add    %al,(%rbx)
 362:	0e                   	(bad)  
 363:	3c 19                	cmp    $0x19,%al
 365:	00 00                	add    %al,(%rax)
 367:	0c 01                	or     $0x1,%al
 369:	01 49 13             	add    %ecx,0x13(%rcx)
 36c:	01 13                	add    %edx,(%rbx)
 36e:	00 00                	add    %al,(%rax)
 370:	0d 21 00 49 13       	or     $0x13490021,%eax
 375:	2f                   	(bad)  
 376:	0b 00                	or     (%rax),%eax
 378:	00 0e                	add    %cl,(%rsi)
 37a:	34 00                	xor    $0x0,%al
 37c:	03 0e                	add    (%rsi),%ecx
 37e:	3a 0b                	cmp    (%rbx),%cl
 380:	3b 0b                	cmp    (%rbx),%ecx
 382:	39 0b                	cmp    %ecx,(%rbx)
 384:	49 13 3f             	adc    (%r15),%rdi
 387:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 38a:	00 00                	add    %al,(%rax)
 38c:	0f 21 00             	mov    %db0,%rax
 38f:	00 00                	add    %al,(%rax)
 391:	10 34 00             	adc    %dh,(%rax,%rax,1)
 394:	03 0e                	add    (%rsi),%ecx
 396:	3a 0b                	cmp    (%rbx),%cl
 398:	3b 0b                	cmp    (%rbx),%ecx
 39a:	39 0b                	cmp    %ecx,(%rbx)
 39c:	49 13 3f             	adc    (%r15),%rdi
 39f:	19 02                	sbb    %eax,(%rdx)
 3a1:	18 00                	sbb    %al,(%rax)
 3a3:	00 11                	add    %dl,(%rcx)
 3a5:	34 00                	xor    $0x0,%al
 3a7:	03 08                	add    (%rax),%ecx
 3a9:	3a 0b                	cmp    (%rbx),%cl
 3ab:	3b 0b                	cmp    (%rbx),%ecx
 3ad:	39 0b                	cmp    %ecx,(%rbx)
 3af:	49 13 3f             	adc    (%r15),%rdi
 3b2:	19 02                	sbb    %eax,(%rdx)
 3b4:	18 00                	sbb    %al,(%rax)
 3b6:	00 12                	add    %dl,(%rdx)
 3b8:	2e 01 3f             	add    %edi,%cs:(%rdi)
 3bb:	19 03                	sbb    %eax,(%rbx)
 3bd:	0e                   	(bad)  
 3be:	3a 0b                	cmp    (%rbx),%cl
 3c0:	3b 0b                	cmp    (%rbx),%ecx
 3c2:	39 0b                	cmp    %ecx,(%rbx)
 3c4:	49 13 11             	adc    (%r9),%rdx
 3c7:	01 12                	add    %edx,(%rdx)
 3c9:	07                   	(bad)  
 3ca:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 3d1:	00 00                	add    %al,(%rax)
 3d3:	13 34 00             	adc    (%rax,%rax,1),%esi
 3d6:	03 08                	add    (%rax),%ecx
 3d8:	3a 0b                	cmp    (%rbx),%cl
 3da:	3b 0b                	cmp    (%rbx),%ecx
 3dc:	39 0b                	cmp    %ecx,(%rbx)
 3de:	49 13 02             	adc    (%r10),%rax
 3e1:	18 00                	sbb    %al,(%rax)
 3e3:	00 14 89             	add    %dl,(%rcx,%rcx,4)
 3e6:	82                   	(bad)  
 3e7:	01 01                	add    %eax,(%rcx)
 3e9:	11 01                	adc    %eax,(%rcx)
 3eb:	31 13                	xor    %edx,(%rbx)
 3ed:	00 00                	add    %al,(%rax)
 3ef:	15 8a 82 01 00       	adc    $0x1828a,%eax
 3f4:	02 18                	add    (%rax),%bl
 3f6:	91                   	xchg   %eax,%ecx
 3f7:	42 18 00             	rex.X sbb %al,(%rax)
 3fa:	00 16                	add    %dl,(%rsi)
 3fc:	2e 00 3f             	add    %bh,%cs:(%rdi)
 3ff:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 402:	6e                   	outsb  %ds:(%rsi),(%dx)
 403:	0e                   	(bad)  
 404:	03 0e                	add    (%rsi),%ecx
 406:	3a 0b                	cmp    (%rbx),%cl
 408:	3b 0b                	cmp    (%rbx),%ecx
 40a:	39 0b                	cmp    %ecx,(%rbx)
 40c:	00 00                	add    %al,(%rax)
 40e:	00 01                	add    %al,(%rcx)
 410:	11 01                	adc    %eax,(%rcx)
 412:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 417:	0e                   	(bad)  
 418:	1b 0e                	sbb    (%rsi),%ecx
 41a:	10 17                	adc    %dl,(%rdi)
 41c:	00 00                	add    %al,(%rax)
 41e:	02 01                	add    (%rcx),%al
 420:	01 49 13             	add    %ecx,0x13(%rcx)
 423:	01 13                	add    %edx,(%rbx)
 425:	00 00                	add    %al,(%rax)
 427:	03 21                	add    (%rcx),%esp
 429:	00 49 13             	add    %cl,0x13(%rcx)
 42c:	2f                   	(bad)  
 42d:	0b 00                	or     (%rax),%eax
 42f:	00 04 24             	add    %al,(%rsp)
 432:	00 0b                	add    %cl,(%rbx)
 434:	0b 3e                	or     (%rsi),%edi
 436:	0b 03                	or     (%rbx),%eax
 438:	0e                   	(bad)  
 439:	00 00                	add    %al,(%rax)
 43b:	05 0f 00 0b 0b       	add    $0xb0b000f,%eax
 440:	49 13 00             	adc    (%r8),%rax
 443:	00 06                	add    %al,(%rsi)
 445:	34 00                	xor    $0x0,%al
 447:	03 0e                	add    (%rsi),%ecx
 449:	3a 0b                	cmp    (%rbx),%cl
 44b:	3b 0b                	cmp    (%rbx),%ecx
 44d:	39 0b                	cmp    %ecx,(%rbx)
 44f:	49 13 3f             	adc    (%r15),%rdi
 452:	19 02                	sbb    %eax,(%rdx)
 454:	18 00                	sbb    %al,(%rax)
 456:	00 07                	add    %al,(%rdi)
 458:	34 00                	xor    $0x0,%al
 45a:	03 08                	add    (%rax),%ecx
 45c:	3a 0b                	cmp    (%rbx),%cl
 45e:	3b 0b                	cmp    (%rbx),%ecx
 460:	39 0b                	cmp    %ecx,(%rbx)
 462:	49 13 3f             	adc    (%r15),%rdi
 465:	19 02                	sbb    %eax,(%rdx)
 467:	18 00                	sbb    %al,(%rax)
 469:	00 08                	add    %cl,(%rax)
 46b:	24 00                	and    $0x0,%al
 46d:	0b 0b                	or     (%rbx),%ecx
 46f:	3e 0b 03             	or     %ds:(%rbx),%eax
 472:	08 00                	or     %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	01 11                	add    %edx,(%rcx)
 478:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b178c <_end+0x2caa654>
 47e:	0e                   	(bad)  
 47f:	1b 0e                	sbb    (%rsi),%ecx
 481:	11 01                	adc    %eax,(%rcx)
 483:	12 07                	adc    (%rdi),%al
 485:	10 17                	adc    %dl,(%rdi)
 487:	00 00                	add    %al,(%rax)
 489:	02 16                	add    (%rsi),%dl
 48b:	00 03                	add    %al,(%rbx)
 48d:	0e                   	(bad)  
 48e:	3a 0b                	cmp    (%rbx),%cl
 490:	3b 0b                	cmp    (%rbx),%ecx
 492:	39 0b                	cmp    %ecx,(%rbx)
 494:	49 13 00             	adc    (%r8),%rax
 497:	00 03                	add    %al,(%rbx)
 499:	24 00                	and    $0x0,%al
 49b:	0b 0b                	or     (%rbx),%ecx
 49d:	3e 0b 03             	or     %ds:(%rbx),%eax
 4a0:	0e                   	(bad)  
 4a1:	00 00                	add    %al,(%rax)
 4a3:	04 0f                	add    $0xf,%al
 4a5:	00 0b                	add    %cl,(%rbx)
 4a7:	0b 00                	or     (%rax),%eax
 4a9:	00 05 24 00 0b 0b    	add    %al,0xb0b0024(%rip)        # b0b04d3 <_end+0xaca939b>
 4af:	3e 0b 03             	or     %ds:(%rbx),%eax
 4b2:	08 00                	or     %al,(%rax)
 4b4:	00 06                	add    %al,(%rsi)
 4b6:	0f 00 0b             	str    (%rbx)
 4b9:	0b 49 13             	or     0x13(%rcx),%ecx
 4bc:	00 00                	add    %al,(%rax)
 4be:	07                   	(bad)  
 4bf:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
 4c3:	00 00                	add    %al,(%rax)
 4c5:	08 13                	or     %dl,(%rbx)
 4c7:	01 03                	add    %eax,(%rbx)
 4c9:	0e                   	(bad)  
 4ca:	0b 0b                	or     (%rbx),%ecx
 4cc:	3a 0b                	cmp    (%rbx),%cl
 4ce:	3b 0b                	cmp    (%rbx),%ecx
 4d0:	39 0b                	cmp    %ecx,(%rbx)
 4d2:	01 13                	add    %edx,(%rbx)
 4d4:	00 00                	add    %al,(%rax)
 4d6:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e07dc <_end+0x39cd96a4>
 4dc:	0b 3b                	or     (%rbx),%edi
 4de:	0b 39                	or     (%rcx),%edi
 4e0:	0b 49 13             	or     0x13(%rcx),%ecx
 4e3:	38 0b                	cmp    %cl,(%rbx)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	0a 16                	or     (%rsi),%dl
 4e9:	00 03                	add    %al,(%rbx)
 4eb:	0e                   	(bad)  
 4ec:	3a 0b                	cmp    (%rbx),%cl
 4ee:	3b 0b                	cmp    (%rbx),%ecx
 4f0:	39 0b                	cmp    %ecx,(%rbx)
 4f2:	00 00                	add    %al,(%rax)
 4f4:	0b 13                	or     (%rbx),%edx
 4f6:	00 03                	add    %al,(%rbx)
 4f8:	0e                   	(bad)  
 4f9:	3c 19                	cmp    $0x19,%al
 4fb:	00 00                	add    %al,(%rax)
 4fd:	0c 01                	or     $0x1,%al
 4ff:	01 49 13             	add    %ecx,0x13(%rcx)
 502:	01 13                	add    %edx,(%rbx)
 504:	00 00                	add    %al,(%rax)
 506:	0d 21 00 49 13       	or     $0x13490021,%eax
 50b:	2f                   	(bad)  
 50c:	0b 00                	or     (%rax),%eax
 50e:	00 0e                	add    %cl,(%rsi)
 510:	34 00                	xor    $0x0,%al
 512:	03 0e                	add    (%rsi),%ecx
 514:	3a 0b                	cmp    (%rbx),%cl
 516:	3b 0b                	cmp    (%rbx),%ecx
 518:	39 0b                	cmp    %ecx,(%rbx)
 51a:	49 13 3f             	adc    (%r15),%rdi
 51d:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 520:	00 00                	add    %al,(%rax)
 522:	0f 21 00             	mov    %db0,%rax
 525:	00 00                	add    %al,(%rax)
 527:	10 34 00             	adc    %dh,(%rax,%rax,1)
 52a:	03 0e                	add    (%rsi),%ecx
 52c:	3a 0b                	cmp    (%rbx),%cl
 52e:	3b 0b                	cmp    (%rbx),%ecx
 530:	39 0b                	cmp    %ecx,(%rbx)
 532:	49 13 3f             	adc    (%r15),%rdi
 535:	19 02                	sbb    %eax,(%rdx)
 537:	18 00                	sbb    %al,(%rax)
 539:	00 11                	add    %dl,(%rcx)
 53b:	34 00                	xor    $0x0,%al
 53d:	03 08                	add    (%rax),%ecx
 53f:	3a 0b                	cmp    (%rbx),%cl
 541:	3b 0b                	cmp    (%rbx),%ecx
 543:	39 0b                	cmp    %ecx,(%rbx)
 545:	49 13 3f             	adc    (%r15),%rdi
 548:	19 02                	sbb    %eax,(%rdx)
 54a:	18 00                	sbb    %al,(%rax)
 54c:	00 12                	add    %dl,(%rdx)
 54e:	2e 01 3f             	add    %edi,%cs:(%rdi)
 551:	19 03                	sbb    %eax,(%rbx)
 553:	0e                   	(bad)  
 554:	3a 0b                	cmp    (%rbx),%cl
 556:	3b 0b                	cmp    (%rbx),%ecx
 558:	39 0b                	cmp    %ecx,(%rbx)
 55a:	11 01                	adc    %eax,(%rcx)
 55c:	12 07                	adc    (%rdi),%al
 55e:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 565:	00 00                	add    %al,(%rax)
 567:	13 34 00             	adc    (%rax,%rax,1),%esi
 56a:	03 08                	add    (%rax),%ecx
 56c:	3a 0b                	cmp    (%rbx),%cl
 56e:	3b 0b                	cmp    (%rbx),%ecx
 570:	39 0b                	cmp    %ecx,(%rbx)
 572:	49 13 02             	adc    (%r10),%rax
 575:	17                   	(bad)  
 576:	b7 42                	mov    $0x42,%bh
 578:	17                   	(bad)  
 579:	00 00                	add    %al,(%rax)
 57b:	14 89                	adc    $0x89,%al
 57d:	82                   	(bad)  
 57e:	01 00                	add    %eax,(%rax)
 580:	11 01                	adc    %eax,(%rcx)
 582:	31 13                	xor    %edx,(%rbx)
 584:	00 00                	add    %al,(%rax)
 586:	15 89 82 01 01       	adc    $0x1018289,%eax
 58b:	11 01                	adc    %eax,(%rcx)
 58d:	31 13                	xor    %edx,(%rbx)
 58f:	00 00                	add    %al,(%rax)
 591:	16                   	(bad)  
 592:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 598:	91                   	xchg   %eax,%ecx
 599:	42 18 00             	rex.X sbb %al,(%rax)
 59c:	00 17                	add    %dl,(%rdi)
 59e:	2e 01 3f             	add    %edi,%cs:(%rdi)
 5a1:	19 03                	sbb    %eax,(%rbx)
 5a3:	0e                   	(bad)  
 5a4:	3a 0b                	cmp    (%rbx),%cl
 5a6:	3b 0b                	cmp    (%rbx),%ecx
 5a8:	39 0b                	cmp    %ecx,(%rbx)
 5aa:	27                   	(bad)  
 5ab:	19 11                	sbb    %edx,(%rcx)
 5ad:	01 12                	add    %edx,(%rdx)
 5af:	07                   	(bad)  
 5b0:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 5b7:	00 00                	add    %al,(%rax)
 5b9:	18 05 00 03 0e 3a    	sbb    %al,0x3a0e0300(%rip)        # 3a0e08bf <_end+0x39cd9787>
 5bf:	0b 3b                	or     (%rbx),%edi
 5c1:	0b 39                	or     (%rcx),%edi
 5c3:	0b 49 13             	or     0x13(%rcx),%ecx
 5c6:	02 17                	add    (%rdi),%dl
 5c8:	b7 42                	mov    $0x42,%bh
 5ca:	17                   	(bad)  
 5cb:	00 00                	add    %al,(%rax)
 5cd:	19 89 82 01 01 11    	sbb    %ecx,0x11010182(%rcx)
 5d3:	01 31                	add    %esi,(%rcx)
 5d5:	13 01                	adc    (%rcx),%eax
 5d7:	13 00                	adc    (%rax),%eax
 5d9:	00 1a                	add    %bl,(%rdx)
 5db:	2e 01 3f             	add    %edi,%cs:(%rdi)
 5de:	19 03                	sbb    %eax,(%rbx)
 5e0:	0e                   	(bad)  
 5e1:	3a 0b                	cmp    (%rbx),%cl
 5e3:	3b 0b                	cmp    (%rbx),%ecx
 5e5:	39 0b                	cmp    %ecx,(%rbx)
 5e7:	27                   	(bad)  
 5e8:	19 49 13             	sbb    %ecx,0x13(%rcx)
 5eb:	11 01                	adc    %eax,(%rcx)
 5ed:	12 07                	adc    (%rdi),%al
 5ef:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	1b 05 00 03 08 3a    	sbb    0x3a080300(%rip),%eax        # 3a0808fe <_end+0x39c797c6>
 5fe:	0b 3b                	or     (%rbx),%edi
 600:	0b 39                	or     (%rcx),%edi
 602:	0b 49 13             	or     0x13(%rcx),%ecx
 605:	02 17                	add    (%rdi),%dl
 607:	b7 42                	mov    $0x42,%bh
 609:	17                   	(bad)  
 60a:	00 00                	add    %al,(%rax)
 60c:	1c 34                	sbb    $0x34,%al
 60e:	00 03                	add    %al,(%rbx)
 610:	0e                   	(bad)  
 611:	3a 0b                	cmp    (%rbx),%cl
 613:	3b 0b                	cmp    (%rbx),%ecx
 615:	39 0b                	cmp    %ecx,(%rbx)
 617:	49 13 02             	adc    (%r10),%rax
 61a:	18 00                	sbb    %al,(%rax)
 61c:	00 1d 2e 00 3f 19    	add    %bl,0x193f002e(%rip)        # 193f0650 <_end+0x18fe9518>
 622:	3c 19                	cmp    $0x19,%al
 624:	6e                   	outsb  %ds:(%rsi),(%dx)
 625:	0e                   	(bad)  
 626:	03 0e                	add    (%rsi),%ecx
 628:	3a 0b                	cmp    (%rbx),%cl
 62a:	3b 0b                	cmp    (%rbx),%ecx
 62c:	39 0b                	cmp    %ecx,(%rbx)
 62e:	00 00                	add    %al,(%rax)
 630:	1e                   	(bad)  
 631:	2e 00 3f             	add    %bh,%cs:(%rdi)
 634:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 637:	6e                   	outsb  %ds:(%rsi),(%dx)
 638:	0e                   	(bad)  
 639:	03 0e                	add    (%rsi),%ecx
 63b:	3a 0b                	cmp    (%rbx),%cl
 63d:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # 117c <_init-0x3ffe84>
 643:	1f                   	(bad)  
 644:	2e 00 3f             	add    %bh,%cs:(%rdi)
 647:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 64a:	6e                   	outsb  %ds:(%rsi),(%dx)
 64b:	0e                   	(bad)  
 64c:	03 0e                	add    (%rsi),%ecx
 64e:	3a 0b                	cmp    (%rbx),%cl
 650:	3b 0b                	cmp    (%rbx),%ecx
 652:	00 00                	add    %al,(%rax)
 654:	00 01                	add    %al,(%rcx)
 656:	11 01                	adc    %eax,(%rcx)
 658:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 65d:	0e                   	(bad)  
 65e:	1b 0e                	sbb    (%rsi),%ecx
 660:	11 01                	adc    %eax,(%rcx)
 662:	12 07                	adc    (%rdi),%al
 664:	10 17                	adc    %dl,(%rdi)
 666:	00 00                	add    %al,(%rax)
 668:	02 16                	add    (%rsi),%dl
 66a:	00 03                	add    %al,(%rbx)
 66c:	0e                   	(bad)  
 66d:	3a 0b                	cmp    (%rbx),%cl
 66f:	3b 0b                	cmp    (%rbx),%ecx
 671:	39 0b                	cmp    %ecx,(%rbx)
 673:	49 13 00             	adc    (%r8),%rax
 676:	00 03                	add    %al,(%rbx)
 678:	24 00                	and    $0x0,%al
 67a:	0b 0b                	or     (%rbx),%ecx
 67c:	3e 0b 03             	or     %ds:(%rbx),%eax
 67f:	0e                   	(bad)  
 680:	00 00                	add    %al,(%rax)
 682:	04 0f                	add    $0xf,%al
 684:	00 0b                	add    %cl,(%rbx)
 686:	0b 00                	or     (%rax),%eax
 688:	00 05 24 00 0b 0b    	add    %al,0xb0b0024(%rip)        # b0b06b2 <_end+0xaca957a>
 68e:	3e 0b 03             	or     %ds:(%rbx),%eax
 691:	08 00                	or     %al,(%rax)
 693:	00 06                	add    %al,(%rsi)
 695:	0f 00 0b             	str    (%rbx)
 698:	0b 49 13             	or     0x13(%rcx),%ecx
 69b:	00 00                	add    %al,(%rax)
 69d:	07                   	(bad)  
 69e:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
 6a2:	00 00                	add    %al,(%rax)
 6a4:	08 13                	or     %dl,(%rbx)
 6a6:	01 03                	add    %eax,(%rbx)
 6a8:	0e                   	(bad)  
 6a9:	0b 0b                	or     (%rbx),%ecx
 6ab:	3a 0b                	cmp    (%rbx),%cl
 6ad:	3b 0b                	cmp    (%rbx),%ecx
 6af:	39 0b                	cmp    %ecx,(%rbx)
 6b1:	01 13                	add    %edx,(%rbx)
 6b3:	00 00                	add    %al,(%rax)
 6b5:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e09bb <_end+0x39cd9883>
 6bb:	0b 3b                	or     (%rbx),%edi
 6bd:	0b 39                	or     (%rcx),%edi
 6bf:	0b 49 13             	or     0x13(%rcx),%ecx
 6c2:	38 0b                	cmp    %cl,(%rbx)
 6c4:	00 00                	add    %al,(%rax)
 6c6:	0a 16                	or     (%rsi),%dl
 6c8:	00 03                	add    %al,(%rbx)
 6ca:	0e                   	(bad)  
 6cb:	3a 0b                	cmp    (%rbx),%cl
 6cd:	3b 0b                	cmp    (%rbx),%ecx
 6cf:	39 0b                	cmp    %ecx,(%rbx)
 6d1:	00 00                	add    %al,(%rax)
 6d3:	0b 13                	or     (%rbx),%edx
 6d5:	00 03                	add    %al,(%rbx)
 6d7:	0e                   	(bad)  
 6d8:	3c 19                	cmp    $0x19,%al
 6da:	00 00                	add    %al,(%rax)
 6dc:	0c 01                	or     $0x1,%al
 6de:	01 49 13             	add    %ecx,0x13(%rcx)
 6e1:	01 13                	add    %edx,(%rbx)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	0d 21 00 49 13       	or     $0x13490021,%eax
 6ea:	2f                   	(bad)  
 6eb:	0b 00                	or     (%rax),%eax
 6ed:	00 0e                	add    %cl,(%rsi)
 6ef:	34 00                	xor    $0x0,%al
 6f1:	03 0e                	add    (%rsi),%ecx
 6f3:	3a 0b                	cmp    (%rbx),%cl
 6f5:	3b 0b                	cmp    (%rbx),%ecx
 6f7:	39 0b                	cmp    %ecx,(%rbx)
 6f9:	49 13 3f             	adc    (%r15),%rdi
 6fc:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 6ff:	00 00                	add    %al,(%rax)
 701:	0f 21 00             	mov    %db0,%rax
 704:	00 00                	add    %al,(%rax)
 706:	10 34 00             	adc    %dh,(%rax,%rax,1)
 709:	03 0e                	add    (%rsi),%ecx
 70b:	3a 0b                	cmp    (%rbx),%cl
 70d:	3b 0b                	cmp    (%rbx),%ecx
 70f:	39 0b                	cmp    %ecx,(%rbx)
 711:	49 13 3f             	adc    (%r15),%rdi
 714:	19 02                	sbb    %eax,(%rdx)
 716:	18 00                	sbb    %al,(%rax)
 718:	00 11                	add    %dl,(%rcx)
 71a:	34 00                	xor    $0x0,%al
 71c:	03 08                	add    (%rax),%ecx
 71e:	3a 0b                	cmp    (%rbx),%cl
 720:	3b 0b                	cmp    (%rbx),%ecx
 722:	39 0b                	cmp    %ecx,(%rbx)
 724:	49 13 3f             	adc    (%r15),%rdi
 727:	19 02                	sbb    %eax,(%rdx)
 729:	18 00                	sbb    %al,(%rax)
 72b:	00 12                	add    %dl,(%rdx)
 72d:	21 00                	and    %eax,(%rax)
 72f:	49 13 2f             	adc    (%r15),%rbp
 732:	05 00 00 13 34       	add    $0x34130000,%eax
 737:	00 03                	add    %al,(%rbx)
 739:	0e                   	(bad)  
 73a:	3a 0b                	cmp    (%rbx),%cl
 73c:	3b 0b                	cmp    (%rbx),%ecx
 73e:	39 0b                	cmp    %ecx,(%rbx)
 740:	49 13 02             	adc    (%r10),%rax
 743:	18 00                	sbb    %al,(%rax)
 745:	00 14 34             	add    %dl,(%rsp,%rsi,1)
 748:	00 03                	add    %al,(%rbx)
 74a:	0e                   	(bad)  
 74b:	3a 0b                	cmp    (%rbx),%cl
 74d:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 1349128c <_end+0x1308a154>
 753:	3f                   	(bad)  
 754:	19 02                	sbb    %eax,(%rdx)
 756:	18 00                	sbb    %al,(%rax)
 758:	00 15 35 00 00 00    	add    %dl,0x35(%rip)        # 793 <_init-0x40086d>
 75e:	16                   	(bad)  
 75f:	2e 01 3f             	add    %edi,%cs:(%rdi)
 762:	19 03                	sbb    %eax,(%rbx)
 764:	0e                   	(bad)  
 765:	3a 0b                	cmp    (%rbx),%cl
 767:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 192712a6 <_end+0x18e6a16e>
 76d:	11 01                	adc    %eax,(%rcx)
 76f:	12 07                	adc    (%rdi),%al
 771:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 778:	00 00                	add    %al,(%rax)
 77a:	17                   	(bad)  
 77b:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 780:	0b 3b                	or     (%rbx),%edi
 782:	05 39 0b 49 13       	add    $0x13490b39,%eax
 787:	02 17                	add    (%rdi),%dl
 789:	b7 42                	mov    $0x42,%bh
 78b:	17                   	(bad)  
 78c:	00 00                	add    %al,(%rax)
 78e:	18 34 00             	sbb    %dh,(%rax,%rax,1)
 791:	03 0e                	add    (%rsi),%ecx
 793:	3a 0b                	cmp    (%rbx),%cl
 795:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 134912d4 <_end+0x1308a19c>
 79b:	02 17                	add    (%rdi),%dl
 79d:	b7 42                	mov    $0x42,%bh
 79f:	17                   	(bad)  
 7a0:	00 00                	add    %al,(%rax)
 7a2:	19 89 82 01 01 11    	sbb    %ecx,0x11010182(%rcx)
 7a8:	01 31                	add    %esi,(%rcx)
 7aa:	13 01                	adc    (%rcx),%eax
 7ac:	13 00                	adc    (%rax),%eax
 7ae:	00 1a                	add    %bl,(%rdx)
 7b0:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 7b6:	91                   	xchg   %eax,%ecx
 7b7:	42 18 00             	rex.X sbb %al,(%rax)
 7ba:	00 1b                	add    %bl,(%rbx)
 7bc:	89 82 01 00 11 01    	mov    %eax,0x1110001(%rdx)
 7c2:	31 13                	xor    %edx,(%rbx)
 7c4:	00 00                	add    %al,(%rax)
 7c6:	1c 89                	sbb    $0x89,%al
 7c8:	82                   	(bad)  
 7c9:	01 01                	add    %eax,(%rcx)
 7cb:	11 01                	adc    %eax,(%rcx)
 7cd:	31 13                	xor    %edx,(%rbx)
 7cf:	00 00                	add    %al,(%rax)
 7d1:	1d 05 00 03 08       	sbb    $0x8030005,%eax
 7d6:	3a 0b                	cmp    (%rbx),%cl
 7d8:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 13491317 <_end+0x1308a1df>
 7de:	02 17                	add    (%rdi),%dl
 7e0:	b7 42                	mov    $0x42,%bh
 7e2:	17                   	(bad)  
 7e3:	00 00                	add    %al,(%rax)
 7e5:	1e                   	(bad)  
 7e6:	2e 01 3f             	add    %edi,%cs:(%rdi)
 7e9:	19 03                	sbb    %eax,(%rbx)
 7eb:	0e                   	(bad)  
 7ec:	3a 0b                	cmp    (%rbx),%cl
 7ee:	3b 0b                	cmp    (%rbx),%ecx
 7f0:	39 0b                	cmp    %ecx,(%rbx)
 7f2:	27                   	(bad)  
 7f3:	19 11                	sbb    %edx,(%rcx)
 7f5:	01 12                	add    %edx,(%rdx)
 7f7:	07                   	(bad)  
 7f8:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 7ff:	00 00                	add    %al,(%rax)
 801:	1f                   	(bad)  
 802:	05 00 03 08 3a       	add    $0x3a080300,%eax
 807:	0b 3b                	or     (%rbx),%edi
 809:	0b 39                	or     (%rcx),%edi
 80b:	0b 49 13             	or     0x13(%rcx),%ecx
 80e:	02 17                	add    (%rdi),%dl
 810:	b7 42                	mov    $0x42,%bh
 812:	17                   	(bad)  
 813:	00 00                	add    %al,(%rax)
 815:	20 05 00 03 0e 3a    	and    %al,0x3a0e0300(%rip)        # 3a0e0b1b <_end+0x39cd99e3>
 81b:	0b 3b                	or     (%rbx),%edi
 81d:	0b 39                	or     (%rcx),%edi
 81f:	0b 49 13             	or     0x13(%rcx),%ecx
 822:	02 17                	add    (%rdi),%dl
 824:	b7 42                	mov    $0x42,%bh
 826:	17                   	(bad)  
 827:	00 00                	add    %al,(%rax)
 829:	21 34 00             	and    %esi,(%rax,%rax,1)
 82c:	03 0e                	add    (%rsi),%ecx
 82e:	3a 0b                	cmp    (%rbx),%cl
 830:	3b 0b                	cmp    (%rbx),%ecx
 832:	39 0b                	cmp    %ecx,(%rbx)
 834:	49 13 00             	adc    (%r8),%rax
 837:	00 22                	add    %ah,(%rdx)
 839:	2e 01 3f             	add    %edi,%cs:(%rdi)
 83c:	19 03                	sbb    %eax,(%rbx)
 83e:	0e                   	(bad)  
 83f:	3a 0b                	cmp    (%rbx),%cl
 841:	3b 0b                	cmp    (%rbx),%ecx
 843:	39 0b                	cmp    %ecx,(%rbx)
 845:	27                   	(bad)  
 846:	19 49 13             	sbb    %ecx,0x13(%rcx)
 849:	11 01                	adc    %eax,(%rcx)
 84b:	12 07                	adc    (%rdi),%al
 84d:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 854:	00 00                	add    %al,(%rax)
 856:	23 34 00             	and    (%rax,%rax,1),%esi
 859:	03 08                	add    (%rax),%ecx
 85b:	3a 0b                	cmp    (%rbx),%cl
 85d:	3b 0b                	cmp    (%rbx),%ecx
 85f:	39 0b                	cmp    %ecx,(%rbx)
 861:	49 13 02             	adc    (%r10),%rax
 864:	17                   	(bad)  
 865:	b7 42                	mov    $0x42,%bh
 867:	17                   	(bad)  
 868:	00 00                	add    %al,(%rax)
 86a:	24 2e                	and    $0x2e,%al
 86c:	00 03                	add    %al,(%rbx)
 86e:	0e                   	(bad)  
 86f:	3a 0b                	cmp    (%rbx),%cl
 871:	3b 0b                	cmp    (%rbx),%ecx
 873:	39 0b                	cmp    %ecx,(%rbx)
 875:	11 01                	adc    %eax,(%rcx)
 877:	12 07                	adc    (%rdi),%al
 879:	40 18 97 42 19 00 00 	sbb    %dl,0x1942(%rdi)
 880:	25 2e 01 03 0e       	and    $0xe03012e,%eax
 885:	3a 0b                	cmp    (%rbx),%cl
 887:	3b 0b                	cmp    (%rbx),%ecx
 889:	39 0b                	cmp    %ecx,(%rbx)
 88b:	27                   	(bad)  
 88c:	19 11                	sbb    %edx,(%rcx)
 88e:	01 12                	add    %edx,(%rdx)
 890:	07                   	(bad)  
 891:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 898:	00 00                	add    %al,(%rax)
 89a:	26 2e 01 3f          	es add %edi,%cs:(%rdi)
 89e:	19 03                	sbb    %eax,(%rbx)
 8a0:	0e                   	(bad)  
 8a1:	3a 0b                	cmp    (%rbx),%cl
 8a3:	3b 0b                	cmp    (%rbx),%ecx
 8a5:	39 0b                	cmp    %ecx,(%rbx)
 8a7:	11 01                	adc    %eax,(%rcx)
 8a9:	12 07                	adc    (%rdi),%al
 8ab:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 8b2:	00 00                	add    %al,(%rax)
 8b4:	27                   	(bad)  
 8b5:	2e 00 3f             	add    %bh,%cs:(%rdi)
 8b8:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 8bb:	6e                   	outsb  %ds:(%rsi),(%dx)
 8bc:	0e                   	(bad)  
 8bd:	03 0e                	add    (%rsi),%ecx
 8bf:	3a 0b                	cmp    (%rbx),%cl
 8c1:	3b 0b                	cmp    (%rbx),%ecx
 8c3:	39 0b                	cmp    %ecx,(%rbx)
 8c5:	00 00                	add    %al,(%rax)
 8c7:	28 2e                	sub    %ch,(%rsi)
 8c9:	00 3f                	add    %bh,(%rdi)
 8cb:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 8ce:	6e                   	outsb  %ds:(%rsi),(%dx)
 8cf:	0e                   	(bad)  
 8d0:	03 0e                	add    (%rsi),%ecx
 8d2:	3a 0b                	cmp    (%rbx),%cl
 8d4:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # 1413 <_init-0x3ffbed>
 8da:	29 2e                	sub    %ebp,(%rsi)
 8dc:	00 3f                	add    %bh,(%rdi)
 8de:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 8e1:	6e                   	outsb  %ds:(%rsi),(%dx)
 8e2:	0e                   	(bad)  
 8e3:	03 0e                	add    (%rsi),%ecx
 8e5:	3a 0b                	cmp    (%rbx),%cl
 8e7:	3b 0b                	cmp    (%rbx),%ecx
 8e9:	00 00                	add    %al,(%rax)
 8eb:	00 01                	add    %al,(%rcx)
 8ed:	11 01                	adc    %eax,(%rcx)
 8ef:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 8f4:	0e                   	(bad)  
 8f5:	1b 0e                	sbb    (%rsi),%ecx
 8f7:	11 01                	adc    %eax,(%rcx)
 8f9:	12 07                	adc    (%rdi),%al
 8fb:	10 17                	adc    %dl,(%rdi)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	02 16                	add    (%rsi),%dl
 901:	00 03                	add    %al,(%rbx)
 903:	0e                   	(bad)  
 904:	3a 0b                	cmp    (%rbx),%cl
 906:	3b 0b                	cmp    (%rbx),%ecx
 908:	39 0b                	cmp    %ecx,(%rbx)
 90a:	49 13 00             	adc    (%r8),%rax
 90d:	00 03                	add    %al,(%rbx)
 90f:	24 00                	and    $0x0,%al
 911:	0b 0b                	or     (%rbx),%ecx
 913:	3e 0b 03             	or     %ds:(%rbx),%eax
 916:	0e                   	(bad)  
 917:	00 00                	add    %al,(%rax)
 919:	04 0f                	add    $0xf,%al
 91b:	00 0b                	add    %cl,(%rbx)
 91d:	0b 00                	or     (%rax),%eax
 91f:	00 05 24 00 0b 0b    	add    %al,0xb0b0024(%rip)        # b0b0949 <_end+0xaca9811>
 925:	3e 0b 03             	or     %ds:(%rbx),%eax
 928:	08 00                	or     %al,(%rax)
 92a:	00 06                	add    %al,(%rsi)
 92c:	0f 00 0b             	str    (%rbx)
 92f:	0b 49 13             	or     0x13(%rcx),%ecx
 932:	00 00                	add    %al,(%rax)
 934:	07                   	(bad)  
 935:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
 939:	00 00                	add    %al,(%rax)
 93b:	08 13                	or     %dl,(%rbx)
 93d:	01 03                	add    %eax,(%rbx)
 93f:	0e                   	(bad)  
 940:	0b 0b                	or     (%rbx),%ecx
 942:	3a 0b                	cmp    (%rbx),%cl
 944:	3b 0b                	cmp    (%rbx),%ecx
 946:	39 0b                	cmp    %ecx,(%rbx)
 948:	01 13                	add    %edx,(%rbx)
 94a:	00 00                	add    %al,(%rax)
 94c:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0c52 <_end+0x39cd9b1a>
 952:	0b 3b                	or     (%rbx),%edi
 954:	0b 39                	or     (%rcx),%edi
 956:	0b 49 13             	or     0x13(%rcx),%ecx
 959:	38 0b                	cmp    %cl,(%rbx)
 95b:	00 00                	add    %al,(%rax)
 95d:	0a 16                	or     (%rsi),%dl
 95f:	00 03                	add    %al,(%rbx)
 961:	0e                   	(bad)  
 962:	3a 0b                	cmp    (%rbx),%cl
 964:	3b 0b                	cmp    (%rbx),%ecx
 966:	39 0b                	cmp    %ecx,(%rbx)
 968:	00 00                	add    %al,(%rax)
 96a:	0b 13                	or     (%rbx),%edx
 96c:	00 03                	add    %al,(%rbx)
 96e:	0e                   	(bad)  
 96f:	3c 19                	cmp    $0x19,%al
 971:	00 00                	add    %al,(%rax)
 973:	0c 01                	or     $0x1,%al
 975:	01 49 13             	add    %ecx,0x13(%rcx)
 978:	01 13                	add    %edx,(%rbx)
 97a:	00 00                	add    %al,(%rax)
 97c:	0d 21 00 49 13       	or     $0x13490021,%eax
 981:	2f                   	(bad)  
 982:	0b 00                	or     (%rax),%eax
 984:	00 0e                	add    %cl,(%rsi)
 986:	34 00                	xor    $0x0,%al
 988:	03 0e                	add    (%rsi),%ecx
 98a:	3a 0b                	cmp    (%rbx),%cl
 98c:	3b 0b                	cmp    (%rbx),%ecx
 98e:	39 0b                	cmp    %ecx,(%rbx)
 990:	49 13 3f             	adc    (%r15),%rdi
 993:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 996:	00 00                	add    %al,(%rax)
 998:	0f 21 00             	mov    %db0,%rax
 99b:	00 00                	add    %al,(%rax)
 99d:	10 34 00             	adc    %dh,(%rax,%rax,1)
 9a0:	03 0e                	add    (%rsi),%ecx
 9a2:	3a 0b                	cmp    (%rbx),%cl
 9a4:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 134914e3 <_end+0x1308a3ab>
 9aa:	3f                   	(bad)  
 9ab:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 9ae:	00 00                	add    %al,(%rax)
 9b0:	11 04 01             	adc    %eax,(%rcx,%rax,1)
 9b3:	03 0e                	add    (%rsi),%ecx
 9b5:	3e 0b 0b             	or     %ds:(%rbx),%ecx
 9b8:	0b 49 13             	or     0x13(%rcx),%ecx
 9bb:	3a 0b                	cmp    (%rbx),%cl
 9bd:	3b 0b                	cmp    (%rbx),%ecx
 9bf:	39 0b                	cmp    %ecx,(%rbx)
 9c1:	01 13                	add    %edx,(%rbx)
 9c3:	00 00                	add    %al,(%rax)
 9c5:	12 28                	adc    (%rax),%ch
 9c7:	00 03                	add    %al,(%rbx)
 9c9:	0e                   	(bad)  
 9ca:	1c 0b                	sbb    $0xb,%al
 9cc:	00 00                	add    %al,(%rax)
 9ce:	13 28                	adc    (%rax),%ebp
 9d0:	00 03                	add    %al,(%rbx)
 9d2:	0e                   	(bad)  
 9d3:	1c 06                	sbb    $0x6,%al
 9d5:	00 00                	add    %al,(%rax)
 9d7:	14 28                	adc    $0x28,%al
 9d9:	00 03                	add    %al,(%rbx)
 9db:	0e                   	(bad)  
 9dc:	1c 05                	sbb    $0x5,%al
 9de:	00 00                	add    %al,(%rax)
 9e0:	15 17 01 0b 0b       	adc    $0xb0b0117,%eax
 9e5:	3a 0b                	cmp    (%rbx),%cl
 9e7:	3b 0b                	cmp    (%rbx),%ecx
 9e9:	39 0b                	cmp    %ecx,(%rbx)
 9eb:	01 13                	add    %edx,(%rbx)
 9ed:	00 00                	add    %al,(%rax)
 9ef:	16                   	(bad)  
 9f0:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 9f5:	0b 3b                	or     (%rbx),%edi
 9f7:	0b 39                	or     (%rcx),%edi
 9f9:	0b 49 13             	or     0x13(%rcx),%ecx
 9fc:	00 00                	add    %al,(%rax)
 9fe:	17                   	(bad)  
 9ff:	15 01 27 19 01       	adc    $0x1192701,%eax
 a04:	13 00                	adc    (%rax),%eax
 a06:	00 18                	add    %bl,(%rax)
 a08:	05 00 49 13 00       	add    $0x134900,%eax
 a0d:	00 19                	add    %bl,(%rcx)
 a0f:	13 01                	adc    (%rcx),%eax
 a11:	0b 05 3a 0b 3b 0b    	or     0xb3b0b3a(%rip),%eax        # b3b1551 <_end+0xafaa419>
 a17:	39 0b                	cmp    %ecx,(%rbx)
 a19:	01 13                	add    %edx,(%rbx)
 a1b:	00 00                	add    %al,(%rax)
 a1d:	1a 21                	sbb    (%rcx),%ah
 a1f:	00 49 13             	add    %cl,0x13(%rcx)
 a22:	2f                   	(bad)  
 a23:	05 00 00 1b 16       	add    $0x161b0000,%eax
 a28:	00 03                	add    %al,(%rbx)
 a2a:	08 3a                	or     %bh,(%rdx)
 a2c:	0b 3b                	or     (%rbx),%edi
 a2e:	0b 39                	or     (%rcx),%edi
 a30:	0b 49 13             	or     0x13(%rcx),%ecx
 a33:	00 00                	add    %al,(%rax)
 a35:	1c 2e                	sbb    $0x2e,%al
 a37:	01 3f                	add    %edi,(%rdi)
 a39:	19 03                	sbb    %eax,(%rbx)
 a3b:	0e                   	(bad)  
 a3c:	3a 0b                	cmp    (%rbx),%cl
 a3e:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 1927157d <_end+0x18e6a445>
 a44:	49 13 11             	adc    (%r9),%rdx
 a47:	01 12                	add    %edx,(%rdx)
 a49:	07                   	(bad)  
 a4a:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 a51:	00 00                	add    %al,(%rax)
 a53:	1d 05 00 03 0e       	sbb    $0xe030005,%eax
 a58:	3a 0b                	cmp    (%rbx),%cl
 a5a:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 13491599 <_end+0x1308a461>
 a60:	02 17                	add    (%rdi),%dl
 a62:	b7 42                	mov    $0x42,%bh
 a64:	17                   	(bad)  
 a65:	00 00                	add    %al,(%rax)
 a67:	1e                   	(bad)  
 a68:	05 00 03 08 3a       	add    $0x3a080300,%eax
 a6d:	0b 3b                	or     (%rbx),%edi
 a6f:	05 39 0b 49 13       	add    $0x13490b39,%eax
 a74:	02 17                	add    (%rdi),%dl
 a76:	b7 42                	mov    $0x42,%bh
 a78:	17                   	(bad)  
 a79:	00 00                	add    %al,(%rax)
 a7b:	1f                   	(bad)  
 a7c:	34 00                	xor    $0x0,%al
 a7e:	03 0e                	add    (%rsi),%ecx
 a80:	3a 0b                	cmp    (%rbx),%cl
 a82:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 134915c1 <_end+0x1308a489>
 a88:	02 17                	add    (%rdi),%dl
 a8a:	b7 42                	mov    $0x42,%bh
 a8c:	17                   	(bad)  
 a8d:	00 00                	add    %al,(%rax)
 a8f:	20 89 82 01 01 11    	and    %cl,0x11010182(%rcx)
 a95:	01 31                	add    %esi,(%rcx)
 a97:	13 01                	adc    (%rcx),%eax
 a99:	13 00                	adc    (%rax),%eax
 a9b:	00 21                	add    %ah,(%rcx)
 a9d:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 aa3:	91                   	xchg   %eax,%ecx
 aa4:	42 18 00             	rex.X sbb %al,(%rax)
 aa7:	00 22                	add    %ah,(%rdx)
 aa9:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 aaf:	31 13                	xor    %edx,(%rbx)
 ab1:	00 00                	add    %al,(%rax)
 ab3:	23 34 00             	and    (%rax,%rax,1),%esi
 ab6:	03 08                	add    (%rax),%ecx
 ab8:	3a 0b                	cmp    (%rbx),%cl
 aba:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 134915f9 <_end+0x1308a4c1>
 ac0:	02 17                	add    (%rdi),%dl
 ac2:	b7 42                	mov    $0x42,%bh
 ac4:	17                   	(bad)  
 ac5:	00 00                	add    %al,(%rax)
 ac7:	24 34                	and    $0x34,%al
 ac9:	00 03                	add    %al,(%rbx)
 acb:	0e                   	(bad)  
 acc:	3a 0b                	cmp    (%rbx),%cl
 ace:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 1349160d <_end+0x1308a4d5>
 ad4:	02 18                	add    (%rax),%bl
 ad6:	00 00                	add    %al,(%rax)
 ad8:	25 34 00 03 0e       	and    $0xe030034,%eax
 add:	3a 0b                	cmp    (%rbx),%cl
 adf:	3b 05 39 0b 49 13    	cmp    0x13490b39(%rip),%eax        # 1349161e <_end+0x1308a4e6>
 ae5:	1c 05                	sbb    $0x5,%al
 ae7:	00 00                	add    %al,(%rax)
 ae9:	26 2e 01 3f          	es add %edi,%cs:(%rdi)
 aed:	19 03                	sbb    %eax,(%rbx)
 aef:	0e                   	(bad)  
 af0:	3a 0b                	cmp    (%rbx),%cl
 af2:	3b 05 39 0b 27 19    	cmp    0x19270b39(%rip),%eax        # 19271631 <_end+0x18e6a4f9>
 af8:	11 01                	adc    %eax,(%rcx)
 afa:	12 07                	adc    (%rdi),%al
 afc:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 b03:	00 00                	add    %al,(%rax)
 b05:	27                   	(bad)  
 b06:	2e 01 3f             	add    %edi,%cs:(%rdi)
 b09:	19 03                	sbb    %eax,(%rbx)
 b0b:	0e                   	(bad)  
 b0c:	3a 0b                	cmp    (%rbx),%cl
 b0e:	3b 0b                	cmp    (%rbx),%ecx
 b10:	39 0b                	cmp    %ecx,(%rbx)
 b12:	27                   	(bad)  
 b13:	19 49 13             	sbb    %ecx,0x13(%rcx)
 b16:	11 01                	adc    %eax,(%rcx)
 b18:	12 07                	adc    (%rdi),%al
 b1a:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 b21:	00 00                	add    %al,(%rax)
 b23:	28 05 00 03 0e 3a    	sub    %al,0x3a0e0300(%rip)        # 3a0e0e29 <_end+0x39cd9cf1>
 b29:	0b 3b                	or     (%rbx),%edi
 b2b:	0b 39                	or     (%rcx),%edi
 b2d:	0b 49 13             	or     0x13(%rcx),%ecx
 b30:	02 17                	add    (%rdi),%dl
 b32:	b7 42                	mov    $0x42,%bh
 b34:	17                   	(bad)  
 b35:	00 00                	add    %al,(%rax)
 b37:	29 05 00 03 08 3a    	sub    %eax,0x3a080300(%rip)        # 3a080e3d <_end+0x39c79d05>
 b3d:	0b 3b                	or     (%rbx),%edi
 b3f:	0b 39                	or     (%rcx),%edi
 b41:	0b 49 13             	or     0x13(%rcx),%ecx
 b44:	02 17                	add    (%rdi),%dl
 b46:	b7 42                	mov    $0x42,%bh
 b48:	17                   	(bad)  
 b49:	00 00                	add    %al,(%rax)
 b4b:	2a 34 00             	sub    (%rax,%rax,1),%dh
 b4e:	03 0e                	add    (%rsi),%ecx
 b50:	3a 0b                	cmp    (%rbx),%cl
 b52:	3b 0b                	cmp    (%rbx),%ecx
 b54:	39 0b                	cmp    %ecx,(%rbx)
 b56:	49 13 02             	adc    (%r10),%rax
 b59:	17                   	(bad)  
 b5a:	b7 42                	mov    $0x42,%bh
 b5c:	17                   	(bad)  
 b5d:	00 00                	add    %al,(%rax)
 b5f:	2b 34 00             	sub    (%rax,%rax,1),%esi
 b62:	03 08                	add    (%rax),%ecx
 b64:	3a 0b                	cmp    (%rbx),%cl
 b66:	3b 0b                	cmp    (%rbx),%ecx
 b68:	39 0b                	cmp    %ecx,(%rbx)
 b6a:	49 13 02             	adc    (%r10),%rax
 b6d:	17                   	(bad)  
 b6e:	b7 42                	mov    $0x42,%bh
 b70:	17                   	(bad)  
 b71:	00 00                	add    %al,(%rax)
 b73:	2c 34                	sub    $0x34,%al
 b75:	00 03                	add    %al,(%rbx)
 b77:	0e                   	(bad)  
 b78:	3a 0b                	cmp    (%rbx),%cl
 b7a:	3b 0b                	cmp    (%rbx),%ecx
 b7c:	39 0b                	cmp    %ecx,(%rbx)
 b7e:	49 13 02             	adc    (%r10),%rax
 b81:	18 00                	sbb    %al,(%rax)
 b83:	00 2d 34 00 03 08    	add    %ch,0x8030034(%rip)        # 8030bbd <_end+0x7c29a85>
 b89:	3a 0b                	cmp    (%rbx),%cl
 b8b:	3b 0b                	cmp    (%rbx),%ecx
 b8d:	39 0b                	cmp    %ecx,(%rbx)
 b8f:	49 13 02             	adc    (%r10),%rax
 b92:	18 00                	sbb    %al,(%rax)
 b94:	00 2e                	add    %ch,(%rsi)
 b96:	1d 01 31 13 52       	sbb    $0x52133101,%eax
 b9b:	01 b8 42 0b 11 01    	add    %edi,0x1110b42(%rax)
 ba1:	12 07                	adc    (%rdi),%al
 ba3:	58                   	pop    %rax
 ba4:	0b 59 0b             	or     0xb(%rcx),%ebx
 ba7:	57                   	push   %rdi
 ba8:	0b 01                	or     (%rcx),%eax
 baa:	13 00                	adc    (%rax),%eax
 bac:	00 2f                	add    %ch,(%rdi)
 bae:	05 00 31 13 02       	add    $0x2133100,%eax
 bb3:	17                   	(bad)  
 bb4:	b7 42                	mov    $0x42,%bh
 bb6:	17                   	(bad)  
 bb7:	00 00                	add    %al,(%rax)
 bb9:	30 2e                	xor    %ch,(%rsi)
 bbb:	01 03                	add    %eax,(%rbx)
 bbd:	0e                   	(bad)  
 bbe:	3a 0b                	cmp    (%rbx),%cl
 bc0:	3b 0b                	cmp    (%rbx),%ecx
 bc2:	39 0b                	cmp    %ecx,(%rbx)
 bc4:	27                   	(bad)  
 bc5:	19 49 13             	sbb    %ecx,0x13(%rcx)
 bc8:	11 01                	adc    %eax,(%rcx)
 bca:	12 07                	adc    (%rdi),%al
 bcc:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 bd3:	00 00                	add    %al,(%rax)
 bd5:	31 89 82 01 00 11    	xor    %ecx,0x11000182(%rcx)
 bdb:	01 31                	add    %esi,(%rcx)
 bdd:	13 00                	adc    (%rax),%eax
 bdf:	00 32                	add    %dh,(%rdx)
 be1:	2e 01 03             	add    %eax,%cs:(%rbx)
 be4:	0e                   	(bad)  
 be5:	3a 0b                	cmp    (%rbx),%cl
 be7:	3b 0b                	cmp    (%rbx),%ecx
 be9:	39 0b                	cmp    %ecx,(%rbx)
 beb:	27                   	(bad)  
 bec:	19 11                	sbb    %edx,(%rcx)
 bee:	01 12                	add    %edx,(%rdx)
 bf0:	07                   	(bad)  
 bf1:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 bf8:	00 00                	add    %al,(%rax)
 bfa:	33 05 00 03 08 3a    	xor    0x3a080300(%rip),%eax        # 3a080f00 <_end+0x39c79dc8>
 c00:	0b 3b                	or     (%rbx),%edi
 c02:	0b 39                	or     (%rcx),%edi
 c04:	0b 49 13             	or     0x13(%rcx),%ecx
 c07:	02 18                	add    (%rax),%bl
 c09:	00 00                	add    %al,(%rax)
 c0b:	34 2e                	xor    $0x2e,%al
 c0d:	01 3f                	add    %edi,(%rdi)
 c0f:	19 03                	sbb    %eax,(%rbx)
 c11:	0e                   	(bad)  
 c12:	3a 0b                	cmp    (%rbx),%cl
 c14:	3b 0b                	cmp    (%rbx),%ecx
 c16:	39 0b                	cmp    %ecx,(%rbx)
 c18:	27                   	(bad)  
 c19:	19 11                	sbb    %edx,(%rcx)
 c1b:	01 12                	add    %edx,(%rdx)
 c1d:	07                   	(bad)  
 c1e:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 c25:	00 00                	add    %al,(%rax)
 c27:	35 2e 01 03 0e       	xor    $0xe03012e,%eax
 c2c:	3a 0b                	cmp    (%rbx),%cl
 c2e:	3b 0b                	cmp    (%rbx),%ecx
 c30:	39 0b                	cmp    %ecx,(%rbx)
 c32:	27                   	(bad)  
 c33:	19 49 13             	sbb    %ecx,0x13(%rcx)
 c36:	20 0b                	and    %cl,(%rbx)
 c38:	01 13                	add    %edx,(%rbx)
 c3a:	00 00                	add    %al,(%rax)
 c3c:	36 05 00 03 0e 3a    	ss add $0x3a0e0300,%eax
 c42:	0b 3b                	or     (%rbx),%edi
 c44:	0b 39                	or     (%rcx),%edi
 c46:	0b 49 13             	or     0x13(%rcx),%ecx
 c49:	00 00                	add    %al,(%rax)
 c4b:	37                   	(bad)  
 c4c:	2e 00 3f             	add    %bh,%cs:(%rdi)
 c4f:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 c52:	6e                   	outsb  %ds:(%rsi),(%dx)
 c53:	0e                   	(bad)  
 c54:	03 0e                	add    (%rsi),%ecx
 c56:	3a 0b                	cmp    (%rbx),%cl
 c58:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # 1797 <_init-0x3ff869>
 c5e:	38 2e                	cmp    %ch,(%rsi)
 c60:	00 3f                	add    %bh,(%rdi)
 c62:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 c65:	6e                   	outsb  %ds:(%rsi),(%dx)
 c66:	0e                   	(bad)  
 c67:	03 0e                	add    (%rsi),%ecx
 c69:	3a 0b                	cmp    (%rbx),%cl
 c6b:	3b 0b                	cmp    (%rbx),%ecx
 c6d:	39 0b                	cmp    %ecx,(%rbx)
 c6f:	00 00                	add    %al,(%rax)
 c71:	39 2e                	cmp    %ebp,(%rsi)
 c73:	00 3f                	add    %bh,(%rdi)
 c75:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 c78:	6e                   	outsb  %ds:(%rsi),(%dx)
 c79:	0e                   	(bad)  
 c7a:	03 0e                	add    (%rsi),%ecx
 c7c:	3a 0b                	cmp    (%rbx),%cl
 c7e:	3b 0b                	cmp    (%rbx),%ecx
 c80:	00 00                	add    %al,(%rax)
 c82:	00 01                	add    %al,(%rcx)
 c84:	11 01                	adc    %eax,(%rcx)
 c86:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 c8b:	0e                   	(bad)  
 c8c:	1b 0e                	sbb    (%rsi),%ecx
 c8e:	11 01                	adc    %eax,(%rcx)
 c90:	12 07                	adc    (%rdi),%al
 c92:	10 17                	adc    %dl,(%rdi)
 c94:	00 00                	add    %al,(%rax)
 c96:	02 24 00             	add    (%rax,%rax,1),%ah
 c99:	0b 0b                	or     (%rbx),%ecx
 c9b:	3e 0b 03             	or     %ds:(%rbx),%eax
 c9e:	0e                   	(bad)  
 c9f:	00 00                	add    %al,(%rax)
 ca1:	03 24 00             	add    (%rax,%rax,1),%esp
 ca4:	0b 0b                	or     (%rbx),%ecx
 ca6:	3e 0b 03             	or     %ds:(%rbx),%eax
 ca9:	08 00                	or     %al,(%rax)
 cab:	00 04 2e             	add    %al,(%rsi,%rbp,1)
 cae:	01 3f                	add    %edi,(%rdi)
 cb0:	19 03                	sbb    %eax,(%rbx)
 cb2:	0e                   	(bad)  
 cb3:	3a 0b                	cmp    (%rbx),%cl
 cb5:	3b 0b                	cmp    (%rbx),%ecx
 cb7:	39 0b                	cmp    %ecx,(%rbx)
 cb9:	27                   	(bad)  
 cba:	19 49 13             	sbb    %ecx,0x13(%rcx)
 cbd:	11 01                	adc    %eax,(%rcx)
 cbf:	12 07                	adc    (%rdi),%al
 cc1:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
 cc8:	00 00                	add    %al,(%rax)
 cca:	05 05 00 03 08       	add    $0x8030005,%eax
 ccf:	3a 0b                	cmp    (%rbx),%cl
 cd1:	3b 0b                	cmp    (%rbx),%ecx
 cd3:	39 0b                	cmp    %ecx,(%rbx)
 cd5:	49 13 02             	adc    (%r10),%rax
 cd8:	17                   	(bad)  
 cd9:	b7 42                	mov    $0x42,%bh
 cdb:	17                   	(bad)  
 cdc:	00 00                	add    %al,(%rax)
 cde:	06                   	(bad)  
 cdf:	34 00                	xor    $0x0,%al
 ce1:	03 08                	add    (%rax),%ecx
 ce3:	3a 0b                	cmp    (%rbx),%cl
 ce5:	3b 0b                	cmp    (%rbx),%ecx
 ce7:	39 0b                	cmp    %ecx,(%rbx)
 ce9:	49 13 02             	adc    (%r10),%rax
 cec:	17                   	(bad)  
 ced:	b7 42                	mov    $0x42,%bh
 cef:	17                   	(bad)  
 cf0:	00 00                	add    %al,(%rax)
 cf2:	07                   	(bad)  
 cf3:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 cf9:	31 13                	xor    %edx,(%rbx)
 cfb:	01 13                	add    %edx,(%rbx)
 cfd:	00 00                	add    %al,(%rax)
 cff:	08 8a 82 01 00 02    	or     %cl,0x2000182(%rdx)
 d05:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 d0b:	09 89 82 01 00 11    	or     %ecx,0x11000182(%rcx)
 d11:	01 31                	add    %esi,(%rcx)
 d13:	13 00                	adc    (%rax),%eax
 d15:	00 0a                	add    %cl,(%rdx)
 d17:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 d1d:	31 13                	xor    %edx,(%rbx)
 d1f:	00 00                	add    %al,(%rax)
 d21:	0b 05 00 03 08 3a    	or     0x3a080300(%rip),%eax        # 3a081027 <_end+0x39c79eef>
 d27:	0b 3b                	or     (%rbx),%edi
 d29:	0b 39                	or     (%rcx),%edi
 d2b:	0b 49 13             	or     0x13(%rcx),%ecx
 d2e:	02 18                	add    (%rax),%bl
 d30:	00 00                	add    %al,(%rax)
 d32:	0c 2e                	or     $0x2e,%al
 d34:	00 3f                	add    %bh,(%rdi)
 d36:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 d39:	6e                   	outsb  %ds:(%rsi),(%dx)
 d3a:	0e                   	(bad)  
 d3b:	03 0e                	add    (%rsi),%ecx
 d3d:	3a 0b                	cmp    (%rbx),%cl
 d3f:	3b 05 39 0b 00 00    	cmp    0xb39(%rip),%eax        # 187e <_init-0x3ff782>
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
       0:	8a 03                	mov    (%rbx),%al
       2:	00 00                	add    %al,(%rax)
       4:	02 00                	add    (%rax),%al
       6:	86 01                	xchg   %al,(%rcx)
       8:	00 00                	add    %al,(%rax)
       a:	01 01                	add    %eax,(%rcx)
       c:	fb                   	sti    
       d:	0e                   	(bad)  
       e:	0d 00 01 01 01       	or     $0x1010100,%eax
      13:	01 00                	add    %eax,(%rax)
      15:	00 00                	add    %al,(%rax)
      17:	01 00                	add    %eax,(%rax)
      19:	00 01                	add    %al,(%rcx)
      1b:	2f                   	(bad)  
      1c:	75 73                	jne    91 <_init-0x400f6f>
      1e:	72 2f                	jb     4f <_init-0x400fb1>
      20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
      27:	00 2f                	add    %ch,(%rdi)
      29:	75 73                	jne    9e <_init-0x400f62>
      2b:	72 2f                	jb     5c <_init-0x400fa4>
      2d:	6c                   	insb   (%dx),%es:(%rdi)
      2e:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
      35:	78 38                	js     6f <_init-0x400f91>
      37:	36 5f                	ss pop %rdi
      39:	36 34 2d             	ss xor $0x2d,%al
      3c:	6c                   	insb   (%dx),%es:(%rdi)
      3d:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
      44:	75 2f                	jne    75 <_init-0x400f8b>
      46:	38 2f                	cmp    %ch,(%rdi)
      48:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
      4f:	00 2f                	add    %ch,(%rdi)
      51:	75 73                	jne    c6 <_init-0x400f3a>
      53:	72 2f                	jb     84 <_init-0x400f7c>
      55:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
      5c:	2f                   	(bad)  
      5d:	78 38                	js     97 <_init-0x400f69>
      5f:	36 5f                	ss pop %rdi
      61:	36 34 2d             	ss xor $0x2d,%al
      64:	6c                   	insb   (%dx),%es:(%rdi)
      65:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
      6c:	75 2f                	jne    9d <_init-0x400f63>
      6e:	62                   	(bad)  
      6f:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
      76:	72 
      77:	2f                   	(bad)  
      78:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
      7f:	2f                   	(bad)  
      80:	78 38                	js     ba <_init-0x400f46>
      82:	36 5f                	ss pop %rdi
      84:	36 34 2d             	ss xor $0x2d,%al
      87:	6c                   	insb   (%dx),%es:(%rdi)
      88:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
      8f:	75 2f                	jne    c0 <_init-0x400f40>
      91:	62                   	(bad)  
      92:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
      99:	65 
      9a:	73 00                	jae    9c <_init-0x400f64>
      9c:	2e 2e 2f             	cs cs (bad) 
      9f:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
      a2:	6d                   	insl   (%dx),%es:(%rdi)
      a3:	6f                   	outsl  %ds:(%rsi),(%dx)
      a4:	6e                   	outsb  %ds:(%rsi),(%dx)
      a5:	00 00                	add    %al,(%rax)
      a7:	6d                   	insl   (%dx),%es:(%rdi)
      a8:	61                   	(bad)  
      a9:	69 6e 2e 63 00 00 00 	imul   $0x63,0x2e(%rsi),%ebp
      b0:	00 73 74             	add    %dh,0x74(%rbx)
      b3:	64 6c                	fs insb (%dx),%es:(%rdi)
      b5:	69 62 2e 68 00 01 00 	imul   $0x10068,0x2e(%rdx),%esp
      bc:	00 73 74             	add    %dh,0x74(%rbx)
      bf:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
      c6:	02 
      c7:	00 00                	add    %al,(%rax)
      c9:	74 79                	je     144 <_init-0x400ebc>
      cb:	70 65                	jo     132 <_init-0x400ece>
      cd:	73 2e                	jae    fd <_init-0x400f03>
      cf:	68 00 03 00 00       	pushq  $0x300
      d4:	73 74                	jae    14a <_init-0x400eb6>
      d6:	72 75                	jb     14d <_init-0x400eb3>
      d8:	63 74 5f 46          	movslq 0x46(%rdi,%rbx,2),%esi
      dc:	49                   	rex.WB
      dd:	4c                   	rex.WR
      de:	45                   	rex.RB
      df:	2e 68 00 04 00 00    	cs pushq $0x400
      e5:	46                   	rex.RX
      e6:	49                   	rex.WB
      e7:	4c                   	rex.WR
      e8:	45                   	rex.RB
      e9:	2e 68 00 04 00 00    	cs pushq $0x400
      ef:	73 74                	jae    165 <_init-0x400e9b>
      f1:	64 69 6f 2e 68 00 01 	imul   $0x10068,%fs:0x2e(%rdi),%ebp
      f8:	00 
      f9:	00 73 79             	add    %dh,0x79(%rbx)
      fc:	73 5f                	jae    15d <_init-0x400ea3>
      fe:	65 72 72             	gs jb  173 <_init-0x400e8d>
     101:	6c                   	insb   (%dx),%es:(%rdi)
     102:	69 73 74 2e 68 00 03 	imul   $0x300682e,0x74(%rbx),%esi
     109:	00 00                	add    %al,(%rax)
     10b:	73 69                	jae    176 <_init-0x400e8a>
     10d:	67 6e                	outsb  %ds:(%esi),(%dx)
     10f:	61                   	(bad)  
     110:	6c                   	insb   (%dx),%es:(%rdi)
     111:	2e 68 00 01 00 00    	cs pushq $0x100
     117:	75 6e                	jne    187 <_init-0x400e79>
     119:	69 73 74 64 2e 68 00 	imul   $0x682e64,0x74(%rbx),%esi
     120:	01 00                	add    %eax,(%rax)
     122:	00 67 65             	add    %ah,0x65(%rdi)
     125:	74 6f                	je     196 <_init-0x400e6a>
     127:	70 74                	jo     19d <_init-0x400e63>
     129:	5f                   	pop    %rdi
     12a:	63 6f 72             	movslq 0x72(%rdi),%ebp
     12d:	65 2e 68 00 03 00 00 	gs cs pushq $0x300
     134:	74 69                	je     19f <_init-0x400e61>
     136:	6d                   	insl   (%dx),%es:(%rdi)
     137:	65 2e 68 00 01 00 00 	gs cs pushq $0x100
     13e:	74 61                	je     1a1 <_init-0x400e5f>
     140:	72 67                	jb     1a9 <_init-0x400e57>
     142:	65 74 2e             	gs je  173 <_init-0x400e8d>
     145:	68 00 00 00 00       	pushq  $0x0
     14a:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
     14d:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
     153:	00 00                	add    %al,(%rax)
     155:	00 73 74             	add    %dh,0x74(%rbx)
     158:	72 69                	jb     1c3 <_init-0x400e3d>
     15a:	6e                   	outsb  %ds:(%rsi),(%dx)
     15b:	67 73 2e             	addr32 jae 18c <_init-0x400e74>
     15e:	68 00 01 00 00       	pushq  $0x100
     163:	64 72 69             	fs jb  1cf <_init-0x400e31>
     166:	76 65                	jbe    1cd <_init-0x400e33>
     168:	72 6c                	jb     1d6 <_init-0x400e2a>
     16a:	69 62 2e 68 00 00 00 	imul   $0x68,0x2e(%rdx),%esp
     171:	00 67 65             	add    %ah,0x65(%rdi)
     174:	6e                   	outsb  %ds:(%rsi),(%dx)
     175:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
     178:	6b 69 65 2e          	imul   $0x2e,0x65(%rcx),%ebp
     17c:	68 00 05 00 00       	pushq  $0x500
     181:	3c 62                	cmp    $0x62,%al
     183:	75 69                	jne    1ee <_init-0x400e12>
     185:	6c                   	insb   (%dx),%es:(%rdi)
     186:	74 2d                	je     1b5 <_init-0x400e4b>
     188:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
     18f:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 2090196 <_end+0x1c8905e>
     195:	12 13                	adc    (%rbx),%dl
     197:	40 00 00             	add    %al,(%rax)
     19a:	00 00                	add    %al,(%rax)
     19c:	00 03                	add    %al,(%rbx)
     19e:	c9                   	leaveq 
     19f:	00 01                	add    %al,(%rcx)
     1a1:	06                   	(bad)  
     1a2:	01 05 05 06 75 05    	add    %eax,0x5750605(%rip)        # 57507ad <_end+0x5349675>
     1a8:	08 06                	or     %al,(%rsi)
     1aa:	01 05 02 06 91 06    	add    %eax,0x6910602(%rip)        # 69107b2 <_end+0x650967a>
     1b0:	74 06                	je     1b8 <_init-0x400e48>
     1b2:	9f                   	lahf   
     1b3:	bb bb bb 05 05       	mov    $0x505bbbb,%ebx
     1b8:	c1 05 02 99 08 13 bb 	roll   $0xbb,0x13089902(%rip)        # 13089ac1 <_end+0x12c82989>
     1bf:	bb 05 40 03 45       	mov    $0x45034005,%ebx
     1c4:	d6                   	(bad)  
     1c5:	06                   	(bad)  
     1c6:	01 05 05 06 ad 05    	add    %eax,0x5ad0605(%rip)        # 5ad07d1 <_end+0x56c9699>
     1cc:	11 06                	adc    %eax,(%rsi)
     1ce:	01 05 05 06 68 05    	add    %eax,0x5680605(%rip)        # 56807d9 <_end+0x52796a1>
     1d4:	0e                   	(bad)  
     1d5:	06                   	(bad)  
     1d6:	01 66 05             	add    %esp,0x5(%rsi)
     1d9:	0c 58                	or     $0x58,%al
     1db:	05 05 06 67 05       	add    $0x5670605,%eax
     1e0:	0f 06                	clts   
     1e2:	01 05 0d 74 05 05    	add    %eax,0x505740d(%rip)        # 50575f5 <_end+0x4c504bd>
     1e8:	06                   	(bad)  
     1e9:	67 05 16 06 01 05    	addr32 add $0x5010616,%eax
     1ef:	05 90 06 59 05       	add    $0x5590690,%eax
     1f4:	1c 06                	sbb    $0x6,%al
     1f6:	01 05 13 58 05 05    	add    %eax,0x5055813(%rip)        # 5055a0f <_end+0x4c4e8d7>
     1fc:	06                   	(bad)  
     1fd:	91                   	xchg   %eax,%ecx
     1fe:	13 05 08 06 01 05    	adc    0x5010608(%rip),%eax        # 501080c <_end+0x4c096d4>
     204:	0e                   	(bad)  
     205:	49 05 05 06 5d 05    	rex.WB add $0x55d0605,%rax
     20b:	22 06                	and    (%rsi),%al
     20d:	01 05 27 2e 05 18    	add    %eax,0x18052e27(%rip)        # 1805303a <_end+0x17c4bf02>
     213:	3c 05                	cmp    $0x5,%al
     215:	10 74 05 05          	adc    %dh,0x5(%rbp,%rax,1)
     219:	06                   	(bad)  
     21a:	91                   	xchg   %eax,%ecx
     21b:	05 13 06 01 05       	add    $0x5010613,%eax
     220:	05 06 75 05 08       	add    $0x8057506,%eax
     225:	06                   	(bad)  
     226:	01 05 10 00 02 04    	add    %eax,0x4020010(%rip)        # 402023c <_end+0x3c19104>
     22c:	01 90 05 01 03 1c    	add    %edx,0x1c030105(%rax)
     232:	90                   	nop
     233:	05 02 06 03 5f       	add    $0x5f030602,%eax
     238:	9e                   	sahf   
     239:	05 15 06 01 05       	add    $0x5010615,%eax
     23e:	02 9e 06 75 05 07    	add    0x7057506(%rsi),%bl
     244:	06                   	(bad)  
     245:	01 58 05             	add    %ebx,0x5(%rax)
     248:	02 06                	add    (%rsi),%al
     24a:	33 13                	xor    (%rbx),%edx
     24c:	13 13                	adc    (%rbx),%edx
     24e:	14 05                	adc    $0x5,%al
     250:	06                   	(bad)  
     251:	06                   	(bad)  
     252:	01 05 05 e4 05 09    	add    %eax,0x905e405(%rip)        # 905e65d <_end+0x8c57525>
     258:	4f 05 18 00 02 04    	rex.WRXB add $0x4020018,%rax
     25e:	01 2e                	add    %ebp,(%rsi)
     260:	05 02 00 02 04       	add    $0x4020002,%eax
     265:	01 d6                	add    %edx,%esi
     267:	05 06 06 59 05       	add    $0x5590606,%eax
     26c:	0a 06                	or     (%rsi),%al
     26e:	01 05 09 82 05 1e    	add    %eax,0x1e058209(%rip)        # 1e05847d <_end+0x1dc51345>
     274:	00 02                	add    %al,(%rdx)
     276:	04 02                	add    $0x2,%al
     278:	49 00 02             	rex.WB add %al,(%r10)
     27b:	04 02                	add    $0x2,%al
     27d:	3c 05                	cmp    $0x5,%al
     27f:	06                   	(bad)  
     280:	06                   	(bad)  
     281:	2a bb 05 0e 06 a3    	sub    -0x5cf9f1fb(%rbx),%bh
     287:	05 02 06 5c 05       	add    $0x55c0602,%eax
     28c:	05 06 01 05 02       	add    $0x2050106,%eax
     291:	06                   	(bad)  
     292:	50                   	push   %rax
     293:	05 06 06 01 05       	add    $0x5010606,%eax
     298:	05 c8 05 06 06       	add    $0x60605c8,%eax
     29d:	83 08 83             	orl    $0xffffff83,(%rax)
     2a0:	03 79 9e             	add    -0x62(%rcx),%edi
     2a3:	08 3d 05 01 03 26    	or     %bh,0x26030105(%rip)        # 260303ae <_end+0x25c29276>
     2a9:	9e                   	sahf   
     2aa:	06                   	(bad)  
     2ab:	01 05 05 06 c9 13    	add    %eax,0x13c90605(%rip)        # 13c908b6 <_end+0x1388977e>
     2b1:	13 13                	adc    (%rbx),%edx
     2b3:	13 15 06 74 58 06    	adc    0x6587406(%rip),%edx        # 65876bf <_end+0x6180587>
     2b9:	59                   	pop    %rcx
     2ba:	08 13                	or     %dl,(%rbx)
     2bc:	08 13                	or     %dl,(%rbx)
     2be:	05 08 06 01 05       	add    $0x5010608,%eax
     2c3:	0b 03                	or     (%rbx),%eax
     2c5:	78 90                	js     257 <_init-0x400da9>
     2c7:	05 05 06 03 0f       	add    $0xf030605,%eax
     2cc:	74 05                	je     2d3 <_init-0x400d2d>
     2ce:	0c 06                	or     $0x6,%al
     2d0:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d708db <_end+0x59697a3>
     2d6:	0e                   	(bad)  
     2d7:	06                   	(bad)  
     2d8:	03 72 01             	add    0x1(%rdx),%esi
     2db:	65 05 0b 03 0f 66    	gs add $0x660f030b,%eax
     2e1:	05 02 06 03 79       	add    $0x79030602,%eax
     2e6:	58                   	pop    %rax
     2e7:	08 13                	or     %dl,(%rbx)
     2e9:	9f                   	lahf   
     2ea:	05 0c 06 01 05       	add    $0x501060c,%eax
     2ef:	06                   	(bad)  
     2f0:	06                   	(bad)  
     2f1:	98                   	cwtl   
     2f2:	85 05 0f 06 01 74    	test   %eax,0x7401060f(%rip)        # 74010907 <_end+0x73c097cf>
     2f8:	05 0d ba 05 06       	add    $0x605ba0d,%eax
     2fd:	06                   	(bad)  
     2fe:	75 05                	jne    305 <_init-0x400cfb>
     300:	09 06                	or     %eax,(%rsi)
     302:	01 05 03 06 59 08    	add    %eax,0x8590603(%rip)        # 859090b <_end+0x81897d3>
     308:	91                   	xchg   %eax,%ecx
     309:	05 0a 06 01 05       	add    $0x501060a,%eax
     30e:	06                   	(bad)  
     30f:	06                   	(bad)  
     310:	a2 05 14 06 01 9e 05 	movabs %al,0xba12059e01061405
     317:	12 ba 
     319:	05 06 06 3d 05       	add    $0x53d0606,%eax
     31e:	11 06                	adc    %eax,(%rsi)
     320:	03 72 01             	add    0x1(%rdx),%esi
     323:	05 0b c8 05 02       	add    $0x205c80b,%eax
     328:	06                   	(bad)  
     329:	4b 06                	rex.WXB (bad) 
     32b:	66 05 06 06          	add    $0x606,%ax
     32f:	03 0f                	add    (%rdi),%ecx
     331:	08 66 04             	or     %ah,0x4(%rsi)
     334:	02 05 01 03 e5 01    	add    0x1e50301(%rip),%al        # 1e5063b <_end+0x1a49503>
     33a:	01 05 03 14 05 10    	add    %eax,0x10051403(%rip)        # 10051743 <_end+0xfc4a60b>
     340:	06                   	(bad)  
     341:	01 9e ba 04 01 03    	add    %ebx,0x30104ba(%rsi)
     347:	99                   	cltd   
     348:	7e 01                	jle    34b <_init-0x400cb5>
     34a:	05 06 06 3d 30       	add    $0x303d0606,%eax
     34f:	05 0d 06 01 05       	add    $0x501060d,%eax
     354:	06                   	(bad)  
     355:	06                   	(bad)  
     356:	9f                   	lahf   
     357:	30 08                	xor    %cl,(%rax)
     359:	13 05 05 86 c9 05    	adc    0x5c98605(%rip),%eax        # 5c98964 <_end+0x589182c>
     35f:	08 06                	or     %al,(%rsi)
     361:	01 05 14 00 02 04    	add    %eax,0x4020014(%rip)        # 402037b <_end+0x3c19243>
     367:	01 90 05 05 06 96    	add    %edx,-0x69f9fafb(%rax)
     36d:	08 68 05             	or     %ch,0x5(%rax)
     370:	02 13                	add    (%rbx),%dl
     372:	05 05 bd 05 0c       	add    $0xc05bd05,%eax
     377:	06                   	(bad)  
     378:	01 05 01 59 20 20    	add    %eax,0x20205901(%rip)        # 20205c7f <_end+0x1fdfeb47>
     37e:	2e 2e 2e 05 02 06 03 	cs cs cs add $0x74030602,%eax
     385:	74 
     386:	20 08                	and    %cl,(%rax)
     388:	3d 02 0c 00 01       	cmp    $0x1000c02,%eax
     38d:	01 13                	add    %edx,(%rbx)
     38f:	03 00                	add    (%rax),%eax
     391:	00 02                	add    %al,(%rdx)
     393:	00 2a                	add    %ch,(%rdx)
     395:	00 00                	add    %al,(%rax)
     397:	00 01                	add    %al,(%rcx)
     399:	01 fb                	add    %edi,%ebx
     39b:	0e                   	(bad)  
     39c:	0d 00 01 01 01       	or     $0x1010100,%eax
     3a1:	01 00                	add    %eax,(%rax)
     3a3:	00 00                	add    %al,(%rax)
     3a5:	01 00                	add    %eax,(%rax)
     3a7:	00 01                	add    %al,(%rcx)
     3a9:	00 73 63             	add    %dh,0x63(%rbx)
     3ac:	72 61                	jb     40f <_init-0x400bf1>
     3ae:	6d                   	insl   (%dx),%es:(%rdi)
     3af:	62                   	(bad)  
     3b0:	6c                   	insb   (%dx),%es:(%rdi)
     3b1:	65 2d 34 33 35 37    	gs sub $0x37353334,%eax
     3b7:	39 33                	cmp    %esi,(%rbx)
     3b9:	31 30                	xor    %esi,(%rax)
     3bb:	2e 63 00             	movslq %cs:(%rax),%eax
     3be:	00 00                	add    %al,(%rax)
     3c0:	00 00                	add    %al,(%rax)
     3c2:	05 01 00 09 02       	add    $0x2090001,%eax
     3c7:	cb                   	lret   
     3c8:	16                   	(bad)  
     3c9:	40 00 00             	add    %al,(%rax)
     3cc:	00 00                	add    %al,(%rax)
     3ce:	00 13                	add    %dl,(%rbx)
     3d0:	05 05 13 13 13       	add    $0x13131305,%eax
     3d5:	13 05 0e 06 01 05    	adc    0x501060e(%rip),%eax        # 50109e9 <_end+0x4c098b1>
     3db:	05 00 02 04 01       	add    $0x1040200,%eax
     3e0:	58                   	pop    %rax
     3e1:	05 09 00 02 04       	add    $0x4020009,%eax
     3e6:	03 06                	add    (%rsi),%eax
     3e8:	59                   	pop    %rcx
     3e9:	05 1c 00 02 04       	add    $0x402001c,%eax
     3ee:	03 06                	add    (%rsi),%eax
     3f0:	01 05 16 00 02 04    	add    %eax,0x4020016(%rip)        # 402040c <_end+0x3c192d4>
     3f6:	03 66 05             	add    0x5(%rsi),%esp
     3f9:	10 00                	adc    %al,(%rax)
     3fb:	02 04 03             	add    (%rbx,%rax,1),%al
     3fe:	2e 05 20 00 02 04    	cs add $0x4020020,%eax
     404:	03 65 00             	add    0x0(%rbp),%esp
     407:	02 04 03             	add    (%rbx,%rax,1),%al
     40a:	3c 05                	cmp    $0x5,%al
     40c:	05 06 30 05 0a       	add    $0xa053006,%eax
     411:	06                   	(bad)  
     412:	01 4a 05             	add    %ecx,0x5(%rdx)
     415:	05 06 9f 05 0a       	add    $0xa059f06,%eax
     41a:	06                   	(bad)  
     41b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a26 <_end+0x59698ee>
     421:	0a 06                	or     (%rsi),%al
     423:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a2e <_end+0x59698f6>
     429:	0a 06                	or     (%rsi),%al
     42b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a36 <_end+0x59698fe>
     431:	0a 06                	or     (%rsi),%al
     433:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a3e <_end+0x5969906>
     439:	0a 06                	or     (%rsi),%al
     43b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a46 <_end+0x596990e>
     441:	0a 06                	or     (%rsi),%al
     443:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a4e <_end+0x5969916>
     449:	0a 06                	or     (%rsi),%al
     44b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a56 <_end+0x596991e>
     451:	0a 06                	or     (%rsi),%al
     453:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a5e <_end+0x5969926>
     459:	0a 06                	or     (%rsi),%al
     45b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a66 <_end+0x596992e>
     461:	0a 06                	or     (%rsi),%al
     463:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a6e <_end+0x5969936>
     469:	0a 06                	or     (%rsi),%al
     46b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a76 <_end+0x596993e>
     471:	0a 06                	or     (%rsi),%al
     473:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a7e <_end+0x5969946>
     479:	0a 06                	or     (%rsi),%al
     47b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a86 <_end+0x596994e>
     481:	0a 06                	or     (%rsi),%al
     483:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a8e <_end+0x5969956>
     489:	0a 06                	or     (%rsi),%al
     48b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a96 <_end+0x596995e>
     491:	0a 06                	or     (%rsi),%al
     493:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70a9e <_end+0x5969966>
     499:	0a 06                	or     (%rsi),%al
     49b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70aa6 <_end+0x596996e>
     4a1:	0a 06                	or     (%rsi),%al
     4a3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70aae <_end+0x5969976>
     4a9:	0a 06                	or     (%rsi),%al
     4ab:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ab6 <_end+0x596997e>
     4b1:	0a 06                	or     (%rsi),%al
     4b3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70abe <_end+0x5969986>
     4b9:	0a 06                	or     (%rsi),%al
     4bb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ac6 <_end+0x596998e>
     4c1:	0a 06                	or     (%rsi),%al
     4c3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ace <_end+0x5969996>
     4c9:	0a 06                	or     (%rsi),%al
     4cb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ad6 <_end+0x596999e>
     4d1:	0a 06                	or     (%rsi),%al
     4d3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ade <_end+0x59699a6>
     4d9:	0a 06                	or     (%rsi),%al
     4db:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ae6 <_end+0x59699ae>
     4e1:	0a 06                	or     (%rsi),%al
     4e3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70aee <_end+0x59699b6>
     4e9:	0a 06                	or     (%rsi),%al
     4eb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70af6 <_end+0x59699be>
     4f1:	0a 06                	or     (%rsi),%al
     4f3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70afe <_end+0x59699c6>
     4f9:	0a 06                	or     (%rsi),%al
     4fb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b06 <_end+0x59699ce>
     501:	0a 06                	or     (%rsi),%al
     503:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b0e <_end+0x59699d6>
     509:	0a 06                	or     (%rsi),%al
     50b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b16 <_end+0x59699de>
     511:	0a 06                	or     (%rsi),%al
     513:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b1e <_end+0x59699e6>
     519:	0a 06                	or     (%rsi),%al
     51b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b26 <_end+0x59699ee>
     521:	0a 06                	or     (%rsi),%al
     523:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b2e <_end+0x59699f6>
     529:	0a 06                	or     (%rsi),%al
     52b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b36 <_end+0x59699fe>
     531:	0a 06                	or     (%rsi),%al
     533:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b3e <_end+0x5969a06>
     539:	0a 06                	or     (%rsi),%al
     53b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b46 <_end+0x5969a0e>
     541:	0a 06                	or     (%rsi),%al
     543:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b4e <_end+0x5969a16>
     549:	0a 06                	or     (%rsi),%al
     54b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b56 <_end+0x5969a1e>
     551:	0a 06                	or     (%rsi),%al
     553:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b5e <_end+0x5969a26>
     559:	0a 06                	or     (%rsi),%al
     55b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b66 <_end+0x5969a2e>
     561:	0a 06                	or     (%rsi),%al
     563:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b6e <_end+0x5969a36>
     569:	0a 06                	or     (%rsi),%al
     56b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b76 <_end+0x5969a3e>
     571:	0a 06                	or     (%rsi),%al
     573:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b7e <_end+0x5969a46>
     579:	0a 06                	or     (%rsi),%al
     57b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b86 <_end+0x5969a4e>
     581:	0a 06                	or     (%rsi),%al
     583:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b8e <_end+0x5969a56>
     589:	0a 06                	or     (%rsi),%al
     58b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b96 <_end+0x5969a5e>
     591:	0a 06                	or     (%rsi),%al
     593:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70b9e <_end+0x5969a66>
     599:	0a 06                	or     (%rsi),%al
     59b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70ba6 <_end+0x5969a6e>
     5a1:	0a 06                	or     (%rsi),%al
     5a3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bae <_end+0x5969a76>
     5a9:	0a 06                	or     (%rsi),%al
     5ab:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bb6 <_end+0x5969a7e>
     5b1:	0a 06                	or     (%rsi),%al
     5b3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bbe <_end+0x5969a86>
     5b9:	0a 06                	or     (%rsi),%al
     5bb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bc6 <_end+0x5969a8e>
     5c1:	0a 06                	or     (%rsi),%al
     5c3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bce <_end+0x5969a96>
     5c9:	0a 06                	or     (%rsi),%al
     5cb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bd6 <_end+0x5969a9e>
     5d1:	0a 06                	or     (%rsi),%al
     5d3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bde <_end+0x5969aa6>
     5d9:	0a 06                	or     (%rsi),%al
     5db:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70be6 <_end+0x5969aae>
     5e1:	0a 06                	or     (%rsi),%al
     5e3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bee <_end+0x5969ab6>
     5e9:	0a 06                	or     (%rsi),%al
     5eb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bf6 <_end+0x5969abe>
     5f1:	0a 06                	or     (%rsi),%al
     5f3:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70bfe <_end+0x5969ac6>
     5f9:	0a 06                	or     (%rsi),%al
     5fb:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c06 <_end+0x5969ace>
     601:	0a 06                	or     (%rsi),%al
     603:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c0e <_end+0x5969ad6>
     609:	0a 06                	or     (%rsi),%al
     60b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c16 <_end+0x5969ade>
     611:	0a 06                	or     (%rsi),%al
     613:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c1e <_end+0x5969ae6>
     619:	0a 06                	or     (%rsi),%al
     61b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c26 <_end+0x5969aee>
     621:	0a 06                	or     (%rsi),%al
     623:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c2e <_end+0x5969af6>
     629:	0a 06                	or     (%rsi),%al
     62b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c36 <_end+0x5969afe>
     631:	0a 06                	or     (%rsi),%al
     633:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c3e <_end+0x5969b06>
     639:	0a 06                	or     (%rsi),%al
     63b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c46 <_end+0x5969b0e>
     641:	0a 06                	or     (%rsi),%al
     643:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c4e <_end+0x5969b16>
     649:	0a 06                	or     (%rsi),%al
     64b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c56 <_end+0x5969b1e>
     651:	0a 06                	or     (%rsi),%al
     653:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c5e <_end+0x5969b26>
     659:	0a 06                	or     (%rsi),%al
     65b:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c66 <_end+0x5969b2e>
     661:	0a 06                	or     (%rsi),%al
     663:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d70c6e <_end+0x5969b36>
     669:	0e                   	(bad)  
     66a:	06                   	(bad)  
     66b:	01 03                	add    %eax,(%rbx)
     66d:	b1 7f                	mov    $0x7f,%cl
     66f:	58                   	pop    %rax
     670:	05 05 00 02 04       	add    $0x4020005,%eax
     675:	01 03                	add    %eax,(%rbx)
     677:	cf                   	iret   
     678:	00 58 05             	add    %bl,0x5(%rax)
     67b:	09 00                	or     %eax,(%rax)
     67d:	02 04 03             	add    (%rbx,%rax,1),%al
     680:	06                   	(bad)  
     681:	59                   	pop    %rcx
     682:	05 12 00 02 04       	add    $0x4020012,%eax
     687:	03 06                	add    (%rsi),%eax
     689:	01 05 0e 00 02 04    	add    %eax,0x402000e(%rip)        # 402069d <_end+0x3c19565>
     68f:	03 66 05             	add    0x5(%rsi),%esp
     692:	20 00                	and    %al,(%rax)
     694:	02 04 03             	add    (%rbx,%rax,1),%al
     697:	2d 00 02 04 03       	sub    $0x3040200,%eax
     69c:	3c 05                	cmp    $0x5,%al
     69e:	01 31                	add    %esi,(%rcx)
     6a0:	02 01                	add    (%rcx),%al
     6a2:	00 01                	add    %al,(%rcx)
     6a4:	01 27                	add    %esp,(%rdi)
     6a6:	01 00                	add    %eax,(%rax)
     6a8:	00 02                	add    %al,(%rdx)
     6aa:	00 03                	add    %al,(%rbx)
     6ac:	01 00                	add    %eax,(%rax)
     6ae:	00 01                	add    %al,(%rcx)
     6b0:	01 fb                	add    %edi,%ebx
     6b2:	0e                   	(bad)  
     6b3:	0d 00 01 01 01       	or     $0x1010100,%eax
     6b8:	01 00                	add    %eax,(%rax)
     6ba:	00 00                	add    %al,(%rax)
     6bc:	01 00                	add    %eax,(%rax)
     6be:	00 01                	add    %al,(%rcx)
     6c0:	2f                   	(bad)  
     6c1:	75 73                	jne    736 <_init-0x4008ca>
     6c3:	72 2f                	jb     6f4 <_init-0x40090c>
     6c5:	6c                   	insb   (%dx),%es:(%rdi)
     6c6:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
     6cd:	78 38                	js     707 <_init-0x4008f9>
     6cf:	36 5f                	ss pop %rdi
     6d1:	36 34 2d             	ss xor $0x2d,%al
     6d4:	6c                   	insb   (%dx),%es:(%rdi)
     6d5:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     6dc:	75 2f                	jne    70d <_init-0x4008f3>
     6de:	38 2f                	cmp    %ch,(%rdi)
     6e0:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     6e7:	00 2f                	add    %ch,(%rdi)
     6e9:	75 73                	jne    75e <_init-0x4008a2>
     6eb:	72 2f                	jb     71c <_init-0x4008e4>
     6ed:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     6f4:	2f                   	(bad)  
     6f5:	78 38                	js     72f <_init-0x4008d1>
     6f7:	36 5f                	ss pop %rdi
     6f9:	36 34 2d             	ss xor $0x2d,%al
     6fc:	6c                   	insb   (%dx),%es:(%rdi)
     6fd:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     704:	75 2f                	jne    735 <_init-0x4008cb>
     706:	62                   	(bad)  
     707:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
     70e:	72 
     70f:	2f                   	(bad)  
     710:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     717:	2f                   	(bad)  
     718:	78 38                	js     752 <_init-0x4008ae>
     71a:	36 5f                	ss pop %rdi
     71c:	36 34 2d             	ss xor $0x2d,%al
     71f:	6c                   	insb   (%dx),%es:(%rdi)
     720:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     727:	75 2f                	jne    758 <_init-0x4008a8>
     729:	62                   	(bad)  
     72a:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
     731:	65 
     732:	73 00                	jae    734 <_init-0x4008cc>
     734:	2f                   	(bad)  
     735:	75 73                	jne    7aa <_init-0x400856>
     737:	72 2f                	jb     768 <_init-0x400898>
     739:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     740:	00 00                	add    %al,(%rax)
     742:	62                   	(bad)  
     743:	75 66                	jne    7ab <_init-0x400855>
     745:	2e 63 00             	movslq %cs:(%rax),%eax
     748:	00 00                	add    %al,(%rax)
     74a:	00 73 74             	add    %dh,0x74(%rbx)
     74d:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
     754:	01 
     755:	00 00                	add    %al,(%rax)
     757:	74 79                	je     7d2 <_init-0x40082e>
     759:	70 65                	jo     7c0 <_init-0x400840>
     75b:	73 2e                	jae    78b <_init-0x400875>
     75d:	68 00 02 00 00       	pushq  $0x200
     762:	73 74                	jae    7d8 <_init-0x400828>
     764:	72 75                	jb     7db <_init-0x400825>
     766:	63 74 5f 46          	movslq 0x46(%rdi,%rbx,2),%esi
     76a:	49                   	rex.WB
     76b:	4c                   	rex.WR
     76c:	45                   	rex.RB
     76d:	2e 68 00 03 00 00    	cs pushq $0x300
     773:	46                   	rex.RX
     774:	49                   	rex.WB
     775:	4c                   	rex.WR
     776:	45                   	rex.RB
     777:	2e 68 00 03 00 00    	cs pushq $0x300
     77d:	73 74                	jae    7f3 <_init-0x40080d>
     77f:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
     786:	00 
     787:	00 73 79             	add    %dh,0x79(%rbx)
     78a:	73 5f                	jae    7eb <_init-0x400815>
     78c:	65 72 72             	gs jb  801 <_init-0x4007ff>
     78f:	6c                   	insb   (%dx),%es:(%rdi)
     790:	69 73 74 2e 68 00 02 	imul   $0x200682e,0x74(%rbx),%esi
     797:	00 00                	add    %al,(%rax)
     799:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
     79c:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
     7a2:	00 00                	add    %al,(%rax)
     7a4:	00 74 61 72          	add    %dh,0x72(%rcx,%riz,2)
     7a8:	67 65 74 2e          	addr32 gs je 7da <_init-0x400826>
     7ac:	68 00 00 00 00       	pushq  $0x0
     7b1:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 20907b8 <_end+0x1c89680>
     7b7:	1f                   	(bad)  
     7b8:	1b 40 00             	sbb    0x0(%rax),%eax
     7bb:	00 00                	add    %al,(%rax)
     7bd:	00 00                	add    %al,(%rax)
     7bf:	03 0b                	add    (%rbx),%ecx
     7c1:	01 05 05 4b 13 83    	add    %eax,-0x7cecb4fb(%rip)        # ffffffff831352cc <_end+0xffffffff82d2e194>
     7c7:	05 01 06 13 02       	add    $0x2130601,%eax
     7cc:	0a 00                	or     (%rax),%al
     7ce:	01 01                	add    %eax,(%rcx)
     7d0:	25 00 00 00 02       	and    $0x2000000,%eax
     7d5:	00 1f                	add    %bl,(%rdi)
     7d7:	00 00                	add    %al,(%rax)
     7d9:	00 01                	add    %al,(%rcx)
     7db:	01 fb                	add    %edi,%ebx
     7dd:	0e                   	(bad)  
     7de:	0d 00 01 01 01       	or     $0x1010100,%eax
     7e3:	01 00                	add    %eax,(%rax)
     7e5:	00 00                	add    %al,(%rax)
     7e7:	01 00                	add    %eax,(%rax)
     7e9:	00 01                	add    %al,(%rcx)
     7eb:	00 63 6f             	add    %ah,0x6f(%rbx)
     7ee:	6e                   	outsb  %ds:(%rsi),(%dx)
     7ef:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
     7f5:	00 00                	add    %al,(%rax)
     7f7:	00 00                	add    %al,(%rax)
     7f9:	e6 01                	out    %al,$0x1
     7fb:	00 00                	add    %al,(%rax)
     7fd:	02 00                	add    (%rax),%al
     7ff:	2d 01 00 00 01       	sub    $0x1000001,%eax
     804:	01 fb                	add    %edi,%ebx
     806:	0e                   	(bad)  
     807:	0d 00 01 01 01       	or     $0x1010100,%eax
     80c:	01 00                	add    %eax,(%rax)
     80e:	00 00                	add    %al,(%rax)
     810:	01 00                	add    %eax,(%rax)
     812:	00 01                	add    %al,(%rcx)
     814:	2f                   	(bad)  
     815:	75 73                	jne    88a <_init-0x400776>
     817:	72 2f                	jb     848 <_init-0x4007b8>
     819:	6c                   	insb   (%dx),%es:(%rdi)
     81a:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
     821:	78 38                	js     85b <_init-0x4007a5>
     823:	36 5f                	ss pop %rdi
     825:	36 34 2d             	ss xor $0x2d,%al
     828:	6c                   	insb   (%dx),%es:(%rdi)
     829:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     830:	75 2f                	jne    861 <_init-0x40079f>
     832:	38 2f                	cmp    %ch,(%rdi)
     834:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     83b:	00 2f                	add    %ch,(%rdi)
     83d:	75 73                	jne    8b2 <_init-0x40074e>
     83f:	72 2f                	jb     870 <_init-0x400790>
     841:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     848:	2f                   	(bad)  
     849:	78 38                	js     883 <_init-0x40077d>
     84b:	36 5f                	ss pop %rdi
     84d:	36 34 2d             	ss xor $0x2d,%al
     850:	6c                   	insb   (%dx),%es:(%rdi)
     851:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     858:	75 2f                	jne    889 <_init-0x400777>
     85a:	62                   	(bad)  
     85b:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
     862:	72 
     863:	2f                   	(bad)  
     864:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     86b:	2f                   	(bad)  
     86c:	78 38                	js     8a6 <_init-0x40075a>
     86e:	36 5f                	ss pop %rdi
     870:	36 34 2d             	ss xor $0x2d,%al
     873:	6c                   	insb   (%dx),%es:(%rdi)
     874:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     87b:	75 2f                	jne    8ac <_init-0x400754>
     87d:	62                   	(bad)  
     87e:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
     885:	65 
     886:	73 00                	jae    888 <_init-0x400778>
     888:	2f                   	(bad)  
     889:	75 73                	jne    8fe <_init-0x400702>
     88b:	72 2f                	jb     8bc <_init-0x400744>
     88d:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     894:	00 00                	add    %al,(%rax)
     896:	76 69                	jbe    901 <_init-0x4006ff>
     898:	73 69                	jae    903 <_init-0x4006fd>
     89a:	62                   	(bad)  
     89b:	6c                   	insb   (%dx),%es:(%rdi)
     89c:	65 2e 63 00          	gs movslq %cs:(%rax),%eax
     8a0:	00 00                	add    %al,(%rax)
     8a2:	00 73 74             	add    %dh,0x74(%rbx)
     8a5:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
     8ac:	01 
     8ad:	00 00                	add    %al,(%rax)
     8af:	74 79                	je     92a <_init-0x4006d6>
     8b1:	70 65                	jo     918 <_init-0x4006e8>
     8b3:	73 2e                	jae    8e3 <_init-0x40071d>
     8b5:	68 00 02 00 00       	pushq  $0x200
     8ba:	73 74                	jae    930 <_init-0x4006d0>
     8bc:	72 75                	jb     933 <_init-0x4006cd>
     8be:	63 74 5f 46          	movslq 0x46(%rdi,%rbx,2),%esi
     8c2:	49                   	rex.WB
     8c3:	4c                   	rex.WR
     8c4:	45                   	rex.RB
     8c5:	2e 68 00 03 00 00    	cs pushq $0x300
     8cb:	46                   	rex.RX
     8cc:	49                   	rex.WB
     8cd:	4c                   	rex.WR
     8ce:	45                   	rex.RB
     8cf:	2e 68 00 03 00 00    	cs pushq $0x300
     8d5:	73 74                	jae    94b <_init-0x4006b5>
     8d7:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
     8de:	00 
     8df:	00 73 79             	add    %dh,0x79(%rbx)
     8e2:	73 5f                	jae    943 <_init-0x4006bd>
     8e4:	65 72 72             	gs jb  959 <_init-0x4006a7>
     8e7:	6c                   	insb   (%dx),%es:(%rdi)
     8e8:	69 73 74 2e 68 00 02 	imul   $0x200682e,0x74(%rbx),%esi
     8ef:	00 00                	add    %al,(%rax)
     8f1:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
     8f4:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
     8fa:	00 00                	add    %al,(%rax)
     8fc:	00 74 61 72          	add    %dh,0x72(%rcx,%riz,2)
     900:	67 65 74 2e          	addr32 gs je 932 <_init-0x4006ce>
     904:	68 00 00 00 00       	pushq  $0x0
     909:	73 74                	jae    97f <_init-0x400681>
     90b:	64 6c                	fs insb (%dx),%es:(%rdi)
     90d:	69 62 2e 68 00 04 00 	imul   $0x40068,0x2e(%rdx),%esp
     914:	00 73 74             	add    %dh,0x74(%rbx)
     917:	72 69                	jb     982 <_init-0x40067e>
     919:	6e                   	outsb  %ds:(%rsi),(%dx)
     91a:	67 2e 68 00 04 00 00 	addr32 cs pushq $0x400
     921:	3c 62                	cmp    $0x62,%al
     923:	75 69                	jne    98e <_init-0x400672>
     925:	6c                   	insb   (%dx),%es:(%rdi)
     926:	74 2d                	je     955 <_init-0x4006ab>
     928:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
     92f:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 2090936 <_end+0x1c897fe>
     935:	35 1b 40 00 00       	xor    $0x401b,%eax
     93a:	00 00                	add    %al,(%rax)
     93c:	00 03                	add    %al,(%rbx)
     93e:	18 01                	sbb    %al,(%rcx)
     940:	05 05 4b 05 0c       	add    $0xc054b05,%eax
     945:	06                   	(bad)  
     946:	01 05 05 06 9f bb    	add    %eax,-0x4460f9fb(%rip)        # ffffffffbb9f0f51 <_end+0xffffffffbb5e9e19>
     94c:	9f                   	lahf   
     94d:	05 01 03 0b 9e       	add    $0x9e0b0301,%eax
     952:	06                   	(bad)  
     953:	01 05 05 06 67 05    	add    %eax,0x5670605(%rip)        # 5670f5e <_end+0x5269e26>
     959:	0c 06                	or     $0x6,%al
     95b:	01 05 05 06 9f 05    	add    %eax,0x59f0605(%rip)        # 59f0f66 <_end+0x55e9e2e>
     961:	08 06                	or     %al,(%rsi)
     963:	01 05 02 06 86 06    	add    %eax,0x6860602(%rip)        # 6860f6b <_end+0x6459e33>
     969:	74 06                	je     971 <_init-0x40068f>
     96b:	9f                   	lahf   
     96c:	05 05 a0 05 02       	add    $0x205a005,%eax
     971:	03 7a 9e             	add    -0x62(%rdx),%edi
     974:	08 13                	or     %dl,(%rbx)
     976:	05 01 03 12 ba       	add    $0xba120301,%eax
     97b:	06                   	(bad)  
     97c:	01 05 05 06 c9 14    	add    %eax,0x14c90605(%rip)        # 14c90f87 <_end+0x14889e4f>
     982:	05 16 06 01 58       	add    $0x58010616,%eax
     987:	05 1f 3c 05 0b       	add    $0xb053c1f,%eax
     98c:	02 31                	add    (%rcx),%dh
     98e:	12 05 05 06 4b 08    	adc    0x84b0605(%rip),%al        # 84b0f99 <_end+0x80a9e61>
     994:	59                   	pop    %rcx
     995:	05 0c 06 01 05       	add    $0x501060c,%eax
     99a:	20 f2                	and    %dh,%dl
     99c:	05 01 83 58 20       	add    $0x20588301,%eax
     9a1:	2e 06                	cs (bad) 
     9a3:	23 06                	and    (%rsi),%eax
     9a5:	01 05 05 06 4b 05    	add    %eax,0x54b0605(%rip)        # 54b0fb0 <_end+0x50a9e78>
     9ab:	0c 06                	or     $0x6,%al
     9ad:	01 05 05 06 9f 05    	add    %eax,0x59f0605(%rip)        # 59f0fb8 <_end+0x55e9e80>
     9b3:	09 06                	or     %eax,(%rsi)
     9b5:	01 90 05 08 58 05    	add    %edx,0x5580805(%rax)
     9bb:	02 06                	add    (%rsi),%al
     9bd:	4b 08 3d 05 05 a3 05 	rex.WXB or %dil,0x5a30505(%rip)        # 5a30ec9 <_end+0x5629d91>
     9c4:	02 9b 08 3d 05 01    	add    0x1053d08(%rbx),%bl
     9ca:	03 0c ba             	add    (%rdx,%rdi,4),%ecx
     9cd:	05 05 4b 13 05       	add    $0x5134b05,%eax
     9d2:	0b 06                	or     (%rsi),%eax
     9d4:	01 05 05 06 9f 06    	add    %eax,0x69f0605(%rip)        # 69f0fdf <_end+0x65e9ea7>
     9da:	d6                   	(bad)  
     9db:	05 01 59 02 05       	add    $0x5025901,%eax
     9e0:	00 01                	add    %al,(%rcx)
     9e2:	01 ed                	add    %ebp,%ebp
     9e4:	03 00                	add    (%rax),%eax
     9e6:	00 02                	add    %al,(%rdx)
     9e8:	00 59 01             	add    %bl,0x1(%rcx)
     9eb:	00 00                	add    %al,(%rax)
     9ed:	01 01                	add    %eax,(%rcx)
     9ef:	fb                   	sti    
     9f0:	0e                   	(bad)  
     9f1:	0d 00 01 01 01       	or     $0x1010100,%eax
     9f6:	01 00                	add    %eax,(%rax)
     9f8:	00 00                	add    %al,(%rax)
     9fa:	01 00                	add    %eax,(%rax)
     9fc:	00 01                	add    %al,(%rcx)
     9fe:	2f                   	(bad)  
     9ff:	75 73                	jne    a74 <_init-0x40058c>
     a01:	72 2f                	jb     a32 <_init-0x4005ce>
     a03:	6c                   	insb   (%dx),%es:(%rdi)
     a04:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
     a0b:	78 38                	js     a45 <_init-0x4005bb>
     a0d:	36 5f                	ss pop %rdi
     a0f:	36 34 2d             	ss xor $0x2d,%al
     a12:	6c                   	insb   (%dx),%es:(%rdi)
     a13:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     a1a:	75 2f                	jne    a4b <_init-0x4005b5>
     a1c:	38 2f                	cmp    %ch,(%rdi)
     a1e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     a25:	00 2f                	add    %ch,(%rdi)
     a27:	75 73                	jne    a9c <_init-0x400564>
     a29:	72 2f                	jb     a5a <_init-0x4005a6>
     a2b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     a32:	2f                   	(bad)  
     a33:	78 38                	js     a6d <_init-0x400593>
     a35:	36 5f                	ss pop %rdi
     a37:	36 34 2d             	ss xor $0x2d,%al
     a3a:	6c                   	insb   (%dx),%es:(%rdi)
     a3b:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     a42:	75 2f                	jne    a73 <_init-0x40058d>
     a44:	62                   	(bad)  
     a45:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
     a4c:	72 
     a4d:	2f                   	(bad)  
     a4e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     a55:	2f                   	(bad)  
     a56:	78 38                	js     a90 <_init-0x400570>
     a58:	36 5f                	ss pop %rdi
     a5a:	36 34 2d             	ss xor $0x2d,%al
     a5d:	6c                   	insb   (%dx),%es:(%rdi)
     a5e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     a65:	75 2f                	jne    a96 <_init-0x40056a>
     a67:	62                   	(bad)  
     a68:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
     a6f:	65 
     a70:	73 00                	jae    a72 <_init-0x40058e>
     a72:	2f                   	(bad)  
     a73:	75 73                	jne    ae8 <_init-0x400518>
     a75:	72 2f                	jb     aa6 <_init-0x40055a>
     a77:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     a7e:	00 2f                	add    %ch,(%rdi)
     a80:	75 73                	jne    af5 <_init-0x40050b>
     a82:	72 2f                	jb     ab3 <_init-0x40054d>
     a84:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     a8b:	2f                   	(bad)  
     a8c:	78 38                	js     ac6 <_init-0x40053a>
     a8e:	36 5f                	ss pop %rdi
     a90:	36 34 2d             	ss xor $0x2d,%al
     a93:	6c                   	insb   (%dx),%es:(%rdi)
     a94:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     a9b:	75 2f                	jne    acc <_init-0x400534>
     a9d:	73 79                	jae    b18 <_init-0x4004e8>
     a9f:	73 00                	jae    aa1 <_init-0x40055f>
     aa1:	00 73 75             	add    %dh,0x75(%rbx)
     aa4:	70 70                	jo     b16 <_init-0x4004ea>
     aa6:	6f                   	outsl  %ds:(%rsi),(%dx)
     aa7:	72 74                	jb     b1d <_init-0x4004e3>
     aa9:	2e 63 00             	movslq %cs:(%rax),%eax
     aac:	00 00                	add    %al,(%rax)
     aae:	00 73 74             	add    %dh,0x74(%rbx)
     ab1:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
     ab8:	01 
     ab9:	00 00                	add    %al,(%rax)
     abb:	74 79                	je     b36 <_init-0x4004ca>
     abd:	70 65                	jo     b24 <_init-0x4004dc>
     abf:	73 2e                	jae    aef <_init-0x400511>
     ac1:	68 00 02 00 00       	pushq  $0x200
     ac6:	73 74                	jae    b3c <_init-0x4004c4>
     ac8:	72 75                	jb     b3f <_init-0x4004c1>
     aca:	63 74 5f 46          	movslq 0x46(%rdi,%rbx,2),%esi
     ace:	49                   	rex.WB
     acf:	4c                   	rex.WR
     ad0:	45                   	rex.RB
     ad1:	2e 68 00 03 00 00    	cs pushq $0x300
     ad7:	46                   	rex.RX
     ad8:	49                   	rex.WB
     ad9:	4c                   	rex.WR
     ada:	45                   	rex.RB
     adb:	2e 68 00 03 00 00    	cs pushq $0x300
     ae1:	73 74                	jae    b57 <_init-0x4004a9>
     ae3:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
     aea:	00 
     aeb:	00 73 79             	add    %dh,0x79(%rbx)
     aee:	73 5f                	jae    b4f <_init-0x4004b1>
     af0:	65 72 72             	gs jb  b65 <_init-0x40049b>
     af3:	6c                   	insb   (%dx),%es:(%rdi)
     af4:	69 73 74 2e 68 00 02 	imul   $0x200682e,0x74(%rbx),%esi
     afb:	00 00                	add    %al,(%rax)
     afd:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
     b00:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
     b06:	00 00                	add    %al,(%rax)
     b08:	00 74 61 72          	add    %dh,0x72(%rcx,%riz,2)
     b0c:	67 65 74 2e          	addr32 gs je b3e <_init-0x4004c2>
     b10:	68 00 00 00 00       	pushq  $0x0
     b15:	6d                   	insl   (%dx),%es:(%rdi)
     b16:	6d                   	insl   (%dx),%es:(%rdi)
     b17:	61                   	(bad)  
     b18:	6e                   	outsb  %ds:(%rsi),(%dx)
     b19:	2e 68 00 05 00 00    	cs pushq $0x500
     b1f:	73 74                	jae    b95 <_init-0x40046b>
     b21:	64 6c                	fs insb (%dx),%es:(%rdi)
     b23:	69 62 2e 68 00 04 00 	imul   $0x40068,0x2e(%rdx),%esp
     b2a:	00 73 74             	add    %dh,0x74(%rbx)
     b2d:	72 69                	jb     b98 <_init-0x400468>
     b2f:	6e                   	outsb  %ds:(%rsi),(%dx)
     b30:	67 2e 68 00 04 00 00 	addr32 cs pushq $0x400
     b37:	3c 62                	cmp    $0x62,%al
     b39:	75 69                	jne    ba4 <_init-0x40045c>
     b3b:	6c                   	insb   (%dx),%es:(%rdi)
     b3c:	74 2d                	je     b6b <_init-0x400495>
     b3e:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
     b45:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 2090b4c <_end+0x1c89a14>
     b4b:	cc                   	int3   
     b4c:	1c 40                	sbb    $0x40,%al
     b4e:	00 00                	add    %al,(%rax)
     b50:	00 00                	add    %al,(%rax)
     b52:	00 03                	add    %al,(%rbx)
     b54:	93                   	xchg   %eax,%ebx
     b55:	01 01                	add    %eax,(%rcx)
     b57:	05 05 13 05 12       	add    $0x12051305,%eax
     b5c:	06                   	(bad)  
     b5d:	01 05 08 66 05 02    	add    %eax,0x2056608(%rip)        # 205716b <_end+0x1c50033>
     b63:	06                   	(bad)  
     b64:	75 05                	jne    b6b <_init-0x400495>
     b66:	2a 06                	sub    (%rsi),%al
     b68:	01 05 0c 58 05 23    	add    %eax,0x2305580c(%rip)        # 2305637a <_end+0x22c4f242>
     b6e:	3c 05                	cmp    $0x5,%al
     b70:	17                   	(bad)  
     b71:	e4 05                	in     $0x5,%al
     b73:	02 06                	add    (%rsi),%al
     b75:	d7                   	xlat   %ds:(%rbx)
     b76:	05 15 06 01 05       	add    $0x5010615,%eax
     b7b:	25 3c 3c 05 19       	and    $0x19053c3c,%eax
     b80:	58                   	pop    %rax
     b81:	05 02 06 75 05       	add    $0x5750602,%eax
     b86:	15 06 01 05 19       	adc    $0x19050106,%eax
     b8b:	3c 05                	cmp    $0x5,%al
     b8d:	02 06                	add    (%rsi),%al
     b8f:	75 05                	jne    b96 <_init-0x40046a>
     b91:	0a 06                	or     (%rsi),%al
     b93:	01 05 01 92 06 23    	add    %eax,0x23069201(%rip)        # 23069d9a <_end+0x22c62c62>
     b99:	05 05 13 05 0f       	add    $0xf051305,%eax
     b9e:	06                   	(bad)  
     b9f:	01 05 1a 90 05 01    	add    %eax,0x105901a(%rip)        # 1059bbf <_end+0xc52a87>
     ba5:	c9                   	leaveq 
     ba6:	05 13 06 03 59       	add    $0x59030613,%eax
     bab:	20 05 05 4b 02 25    	and    %al,0x25024b05(%rip)        # 250256b6 <_end+0x24c1e57e>
     bb1:	13 05 01 03 28 9e    	adc    -0x61d7fcff(%rip),%eax        # ffffffff9e280eb8 <_end+0xffffffff9de79d80>
     bb7:	06                   	(bad)  
     bb8:	01 05 05 06 75 13    	add    %eax,0x13750605(%rip)        # 137511c3 <_end+0x1334a08b>
     bbe:	14 05                	adc    $0x5,%al
     bc0:	0e                   	(bad)  
     bc1:	06                   	(bad)  
     bc2:	01 05 05 06 a0 05    	add    %eax,0x5a00605(%rip)        # 5a011cd <_end+0x55fa095>
     bc8:	0b 06                	or     (%rsi),%eax
     bca:	0e                   	(bad)  
     bcb:	05 11 40 05 0b       	add    $0xb054011,%eax
     bd0:	ba 05 26 00 02       	mov    $0x2002605,%edx
     bd5:	04 01                	add    $0x1,%al
     bd7:	58                   	pop    %rax
     bd8:	05 02 06 59 05       	add    $0x5590602,%eax
     bdd:	05 06 01 05 08       	add    $0x8050106,%eax
     be2:	4a 05 02 06 2f 05    	rex.WX add $0x52f0602,%rax
     be8:	05 06 81 06 5c       	add    $0x5c068106,%eax
     bed:	05 0b 06 01 05       	add    $0x501060b,%eax
     bf2:	05 06 3d 06 58       	add    $0x58063d06,%eax
     bf7:	06                   	(bad)  
     bf8:	59                   	pop    %rcx
     bf9:	05 01 06 13 4a       	add    $0x4a130601,%eax
     bfe:	3c 05                	cmp    $0x5,%al
     c00:	29 06                	sub    %eax,(%rsi)
     c02:	22 05 05 14 13 13    	and    0x13131405(%rip),%al        # 1313200d <_end+0x12d2aed5>
     c08:	14 05                	adc    $0x5,%al
     c0a:	08 06                	or     %al,(%rsi)
     c0c:	01 05 29 03 7a c8    	add    %eax,-0x3785fcd7(%rip)        # ffffffffc87a0f3b <_end+0xffffffffc8399e03>
     c12:	05 05 06 03 09       	add    $0x9030605,%eax
     c17:	82                   	(bad)  
     c18:	05 08 06 01 05       	add    $0x5010608,%eax
     c1d:	05 06 bf 00 02       	add    $0x200bf06,%eax
     c22:	04 01                	add    $0x1,%al
     c24:	06                   	(bad)  
     c25:	08 12                	or     %dl,(%rdx)
     c27:	00 02                	add    %al,(%rdx)
     c29:	04 04                	add    $0x4,%al
     c2b:	74 4a                	je     c77 <_init-0x400389>
     c2d:	00 02                	add    %al,(%rdx)
     c2f:	04 08                	add    $0x8,%al
     c31:	74 00                	je     c33 <_init-0x4003cd>
     c33:	02 04 08             	add    (%rax,%rcx,1),%al
     c36:	3c 00                	cmp    $0x0,%al
     c38:	02 04 08             	add    (%rax,%rcx,1),%al
     c3b:	08 82 05 02 00 02    	or     %al,0x2000205(%rdx)
     c41:	04 08                	add    $0x8,%al
     c43:	06                   	(bad)  
     c44:	03 1d 9e 05 01 00    	add    0x1059e(%rip),%ebx        # 111e8 <_init-0x3efe18>
     c4a:	02 04 08             	add    (%rax,%rcx,1),%al
     c4d:	06                   	(bad)  
     c4e:	84 05 02 06 03 5d    	test   %al,0x5d030602(%rip)        # 5d031256 <_end+0x5cc2a11e>
     c54:	90                   	nop
     c55:	06                   	(bad)  
     c56:	74 06                	je     c5e <_init-0x4003a2>
     c58:	9f                   	lahf   
     c59:	05 05 06 a1 82       	add    $0x82a10605,%eax
     c5e:	90                   	nop
     c5f:	05 01 06 03 a1       	add    $0xa1030601,%eax
     c64:	7f 20                	jg     c86 <_init-0x40037a>
     c66:	06                   	(bad)  
     c67:	01 05 05 06 3d 05    	add    %eax,0x53d0605(%rip)        # 53d1272 <_end+0x4fca13a>
     c6d:	08 06                	or     %al,(%rsi)
     c6f:	01 05 02 06 91 05    	add    %eax,0x5910602(%rip)        # 5911277 <_end+0x550a13f>
     c75:	05 06 01 05 09       	add    $0x9050106,%eax
     c7a:	06                   	(bad)  
     c7b:	85 05 19 06 01 05    	test   %eax,0x5010619(%rip)        # 501129a <_end+0x4c0a162>
     c81:	0c 66                	or     $0x66,%al
     c83:	05 06 06 4e 06       	add    $0x64e0606,%eax
     c88:	08 66 05             	or     %ah,0x5(%rsi)
     c8b:	01 03                	add    %eax,(%rbx)
     c8d:	0b 9e 20 05 06 06    	or     0x6060520(%rsi),%ebx
     c93:	03 6f 20             	add    0x20(%rdi),%ebp
     c96:	bb a0 08 2f 05       	mov    $0x52f08a0,%ebx
     c9b:	02 a3 05 05 06 01    	add    0x1060505(%rbx),%ah
     ca1:	05 06 06 83 bb       	add    $0xbb830606,%eax
     ca6:	d8 08                	fmuls  (%rax)
     ca8:	91                   	xchg   %eax,%ecx
     ca9:	05 01 06 bd 06       	add    $0x6bd0601,%eax
     cae:	03 09                	add    (%rcx),%ecx
     cb0:	2e 06                	cs (bad) 
     cb2:	01 05 05 06 4b 05    	add    %eax,0x54b0605(%rip)        # 54b12bd <_end+0x50aa185>
     cb8:	08 06                	or     %al,(%rsi)
     cba:	01 05 02 06 93 06    	add    %eax,0x6930602(%rip)        # 69312c2 <_end+0x652a18a>
     cc0:	74 05                	je     cc7 <_init-0x400339>
     cc2:	01 5a 05             	add    %ebx,0x5(%rdx)
     cc5:	02 06                	add    (%rsi),%al
     cc7:	54                   	push   %rsp
     cc8:	06                   	(bad)  
     cc9:	9e                   	sahf   
     cca:	05 01 06 00 09       	add    $0x9000601,%eax
     ccf:	02 4e 1f             	add    0x1f(%rsi),%cl
     cd2:	40 00 00             	add    %al,(%rax)
     cd5:	00 00                	add    %al,(%rax)
     cd7:	00 03                	add    %al,(%rbx)
     cd9:	e6 00                	out    %al,$0x0
     cdb:	01 06                	add    %eax,(%rsi)
     cdd:	01 05 05 06 4b 05    	add    %eax,0x54b0605(%rip)        # 54b12e8 <_end+0x50aa1b0>
     ce3:	08 06                	or     %al,(%rsi)
     ce5:	01 05 02 06 91 06    	add    %eax,0x6910602(%rip)        # 69112ed <_end+0x650a1b5>
     ceb:	74 06                	je     cf3 <_init-0x40030d>
     ced:	59                   	pop    %rcx
     cee:	a0 06 74 06 59 bb 05 	movabs 0xe60505bb59067406,%al
     cf5:	05 e6 
     cf7:	05 01 a2 06 01       	add    $0x106a201,%eax
     cfc:	05 05 06 4b 05       	add    $0x54b0605,%eax
     d01:	08 06                	or     %al,(%rsi)
     d03:	01 05 02 06 91 06    	add    %eax,0x6910602(%rip)        # 691130b <_end+0x650a1d3>
     d09:	74 06                	je     d11 <_init-0x4002ef>
     d0b:	59                   	pop    %rcx
     d0c:	a0 06 74 06 59 bb 05 	movabs 0xe60505bb59067406,%al
     d13:	05 e6 
     d15:	05 01 a2 06 01       	add    $0x106a201,%eax
     d1a:	05 05 06 4b 05       	add    $0x54b0605,%eax
     d1f:	08 06                	or     %al,(%rsi)
     d21:	01 05 02 06 91 06    	add    %eax,0x6910602(%rip)        # 6911329 <_end+0x650a1f1>
     d27:	74 06                	je     d2f <_init-0x4002d1>
     d29:	59                   	pop    %rcx
     d2a:	a0 06 74 06 59 bb 05 	movabs 0xe60505bb59067406,%al
     d31:	05 e6 
     d33:	05 01 a2 06 01       	add    $0x106a201,%eax
     d38:	05 05 06 4b 05       	add    $0x54b0605,%eax
     d3d:	08 06                	or     %al,(%rsi)
     d3f:	01 05 02 06 91 06    	add    %eax,0x6910602(%rip)        # 6911347 <_end+0x650a20f>
     d45:	74 06                	je     d4d <_init-0x4002b3>
     d47:	59                   	pop    %rcx
     d48:	a0 06 ba 06 9f 05 05 	movabs 0x5e605059f06ba06,%al
     d4f:	e6 05 
     d51:	01 a5 06 01 05 05    	add    %esp,0x5050106(%rbp)
     d57:	06                   	(bad)  
     d58:	75 05                	jne    d5f <_init-0x4002a1>
     d5a:	13 06                	adc    (%rsi),%eax
     d5c:	01 f2                	add    %esi,%edx
     d5e:	05 05 06 4d a1       	add    $0xa14d0605,%eax
     d63:	05 08 06 01 05       	add    $0x5010608,%eax
     d68:	05 06 f4 05 0c       	add    $0xc05f406,%eax
     d6d:	06                   	(bad)  
     d6e:	01 05 05 06 9f 9f    	add    %eax,-0x6060f9fb(%rip)        # ffffffff9f9f1379 <_end+0xffffffff9f5ea241>
     d74:	05 08 06 01 05       	add    $0x5010608,%eax
     d79:	02 06                	add    (%rsi),%al
     d7b:	94                   	xchg   %eax,%esp
     d7c:	05 01 06 bc 20       	add    $0x20bc0601,%eax
     d81:	05 02 06 03 77       	add    $0x77030602,%eax
     d86:	20 08                	and    %cl,(%rax)
     d88:	32 bb 05 01 03 13    	xor    0x13030105(%rbx),%bh
     d8e:	9e                   	sahf   
     d8f:	06                   	(bad)  
     d90:	01 05 05 06 22 05    	add    %eax,0x5220605(%rip)        # 522139b <_end+0x4e1a263>
     d96:	13 06                	adc    (%rsi),%eax
     d98:	01 05 05 06 77 05    	add    %eax,0x5770605(%rip)        # 57713a3 <_end+0x536a26b>
     d9e:	17                   	(bad)  
     d9f:	06                   	(bad)  
     da0:	01 08                	add    %ecx,(%rax)
     da2:	e4 58                	in     $0x58,%al
     da4:	05 05 06 3f 05       	add    $0x53f0605,%eax
     da9:	08 06                	or     %al,(%rsi)
     dab:	01 05 05 06 88 05    	add    %eax,0x5880605(%rip)        # 58813b6 <_end+0x547a27e>
     db1:	28 06                	sub    %al,(%rsi)
     db3:	01 05 0f 74 05 05    	add    %eax,0x505740f(%rip)        # 50581c8 <_end+0x4c51090>
     db9:	06                   	(bad)  
     dba:	75 06                	jne    dc2 <_init-0x40023e>
     dbc:	90                   	nop
     dbd:	06                   	(bad)  
     dbe:	7c bd                	jl     d7d <_init-0x400283>
     dc0:	a2 05 01 06 cb 20 05 	movabs %al,0x6020520cb060105
     dc7:	02 06 
     dc9:	03 68 20             	add    0x20(%rax),%ebp
     dcc:	c9                   	leaveq 
     dcd:	08 bb 02 0a 00 01    	or     %bh,0x1000a02(%rbx)
     dd3:	01 45 07             	add    %eax,0x7(%rbp)
     dd6:	00 00                	add    %al,(%rax)
     dd8:	02 00                	add    (%rax),%al
     dda:	fb                   	sti    
     ddb:	01 00                	add    %eax,(%rax)
     ddd:	00 01                	add    %al,(%rcx)
     ddf:	01 fb                	add    %edi,%ebx
     de1:	0e                   	(bad)  
     de2:	0d 00 01 01 01       	or     $0x1010100,%eax
     de7:	01 00                	add    %eax,(%rax)
     de9:	00 00                	add    %al,(%rax)
     deb:	01 00                	add    %eax,(%rax)
     ded:	00 01                	add    %al,(%rcx)
     def:	2f                   	(bad)  
     df0:	75 73                	jne    e65 <_init-0x40019b>
     df2:	72 2f                	jb     e23 <_init-0x4001dd>
     df4:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     dfb:	2f                   	(bad)  
     dfc:	78 38                	js     e36 <_init-0x4001ca>
     dfe:	36 5f                	ss pop %rdi
     e00:	36 34 2d             	ss xor $0x2d,%al
     e03:	6c                   	insb   (%dx),%es:(%rdi)
     e04:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     e0b:	75 2f                	jne    e3c <_init-0x4001c4>
     e0d:	62                   	(bad)  
     e0e:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
     e15:	72 
     e16:	2f                   	(bad)  
     e17:	6c                   	insb   (%dx),%es:(%rdi)
     e18:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
     e1f:	78 38                	js     e59 <_init-0x4001a7>
     e21:	36 5f                	ss pop %rdi
     e23:	36 34 2d             	ss xor $0x2d,%al
     e26:	6c                   	insb   (%dx),%es:(%rdi)
     e27:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     e2e:	75 2f                	jne    e5f <_init-0x4001a1>
     e30:	38 2f                	cmp    %ch,(%rdi)
     e32:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     e39:	00 2f                	add    %ch,(%rdi)
     e3b:	75 73                	jne    eb0 <_init-0x400150>
     e3d:	72 2f                	jb     e6e <_init-0x400192>
     e3f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     e46:	2f                   	(bad)  
     e47:	78 38                	js     e81 <_init-0x40017f>
     e49:	36 5f                	ss pop %rdi
     e4b:	36 34 2d             	ss xor $0x2d,%al
     e4e:	6c                   	insb   (%dx),%es:(%rdi)
     e4f:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     e56:	75 2f                	jne    e87 <_init-0x400179>
     e58:	62                   	(bad)  
     e59:	69 74 73 2f 74 79 70 	imul   $0x65707974,0x2f(%rbx,%rsi,2),%esi
     e60:	65 
     e61:	73 00                	jae    e63 <_init-0x40019d>
     e63:	2f                   	(bad)  
     e64:	75 73                	jne    ed9 <_init-0x400127>
     e66:	72 2f                	jb     e97 <_init-0x400169>
     e68:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     e6f:	00 2f                	add    %ch,(%rdi)
     e71:	75 73                	jne    ee6 <_init-0x40011a>
     e73:	72 2f                	jb     ea4 <_init-0x40015c>
     e75:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     e7c:	2f                   	(bad)  
     e7d:	6e                   	outsb  %ds:(%rsi),(%dx)
     e7e:	65 74 69             	gs je  eea <_init-0x400116>
     e81:	6e                   	outsb  %ds:(%rsi),(%dx)
     e82:	65 74 00             	gs je  e85 <_init-0x40017b>
     e85:	2f                   	(bad)  
     e86:	75 73                	jne    efb <_init-0x400105>
     e88:	72 2f                	jb     eb9 <_init-0x400147>
     e8a:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
     e91:	2f                   	(bad)  
     e92:	78 38                	js     ecc <_init-0x400134>
     e94:	36 5f                	ss pop %rdi
     e96:	36 34 2d             	ss xor $0x2d,%al
     e99:	6c                   	insb   (%dx),%es:(%rdi)
     e9a:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
     ea1:	75 2f                	jne    ed2 <_init-0x40012e>
     ea3:	73 79                	jae    f1e <_init-0x4000e2>
     ea5:	73 00                	jae    ea7 <_init-0x400159>
     ea7:	00 64 72 69          	add    %ah,0x69(%rdx,%rsi,2)
     eab:	76 65                	jbe    f12 <_init-0x4000ee>
     ead:	72 6c                	jb     f1b <_init-0x4000e5>
     eaf:	69 62 2e 63 00 00 00 	imul   $0x63,0x2e(%rdx),%esp
     eb6:	00 62 79             	add    %ah,0x79(%rdx)
     eb9:	74 65                	je     f20 <_init-0x4000e0>
     ebb:	73 77                	jae    f34 <_init-0x4000cc>
     ebd:	61                   	(bad)  
     ebe:	70 2e                	jo     eee <_init-0x400112>
     ec0:	68 00 01 00 00       	pushq  $0x100
     ec5:	73 74                	jae    f3b <_init-0x4000c5>
     ec7:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
     ece:	02 
     ecf:	00 00                	add    %al,(%rax)
     ed1:	74 79                	je     f4c <_init-0x4000b4>
     ed3:	70 65                	jo     f3a <_init-0x4000c6>
     ed5:	73 2e                	jae    f05 <_init-0x4000fb>
     ed7:	68 00 01 00 00       	pushq  $0x100
     edc:	73 74                	jae    f52 <_init-0x4000ae>
     ede:	72 75                	jb     f55 <_init-0x4000ab>
     ee0:	63 74 5f 46          	movslq 0x46(%rdi,%rbx,2),%esi
     ee4:	49                   	rex.WB
     ee5:	4c                   	rex.WR
     ee6:	45                   	rex.RB
     ee7:	2e 68 00 03 00 00    	cs pushq $0x300
     eed:	46                   	rex.RX
     eee:	49                   	rex.WB
     eef:	4c                   	rex.WR
     ef0:	45                   	rex.RB
     ef1:	2e 68 00 03 00 00    	cs pushq $0x300
     ef7:	73 74                	jae    f6d <_init-0x400093>
     ef9:	64 69 6f 2e 68 00 04 	imul   $0x40068,%fs:0x2e(%rdi),%ebp
     f00:	00 
     f01:	00 73 79             	add    %dh,0x79(%rbx)
     f04:	73 5f                	jae    f65 <_init-0x40009b>
     f06:	65 72 72             	gs jb  f7b <_init-0x400085>
     f09:	6c                   	insb   (%dx),%es:(%rdi)
     f0a:	69 73 74 2e 68 00 01 	imul   $0x100682e,0x74(%rbx),%esi
     f11:	00 00                	add    %al,(%rax)
     f13:	75 6e                	jne    f83 <_init-0x40007d>
     f15:	69 73 74 64 2e 68 00 	imul   $0x682e64,0x74(%rbx),%esi
     f1c:	04 00                	add    $0x0,%al
     f1e:	00 67 65             	add    %ah,0x65(%rdi)
     f21:	74 6f                	je     f92 <_init-0x40006e>
     f23:	70 74                	jo     f99 <_init-0x400067>
     f25:	5f                   	pop    %rdi
     f26:	63 6f 72             	movslq 0x72(%rdi),%ebp
     f29:	65 2e 68 00 01 00 00 	gs cs pushq $0x100
     f30:	73 6f                	jae    fa1 <_init-0x40005f>
     f32:	63 6b 61             	movslq 0x61(%rbx),%ebp
     f35:	64 64 72 2e          	fs fs jb f67 <_init-0x400099>
     f39:	68 00 01 00 00       	pushq  $0x100
     f3e:	73 6f                	jae    faf <_init-0x400051>
     f40:	63 6b 65             	movslq 0x65(%rbx),%ebp
     f43:	74 2e                	je     f73 <_init-0x40008d>
     f45:	68 00 01 00 00       	pushq  $0x100
     f4a:	73 74                	jae    fc0 <_init-0x400040>
     f4c:	64 69 6e 74 2d 75 69 	imul   $0x6e69752d,%fs:0x74(%rsi),%ebp
     f53:	6e 
     f54:	74 6e                	je     fc4 <_init-0x40003c>
     f56:	2e 68 00 01 00 00    	cs pushq $0x100
     f5c:	69 6e 2e 68 00 05 00 	imul   $0x50068,0x2e(%rsi),%ebp
     f63:	00 6e 65             	add    %ch,0x65(%rsi)
     f66:	74 64                	je     fcc <_init-0x400034>
     f68:	62                   	(bad)  
     f69:	2e 68 00 04 00 00    	cs pushq $0x400
     f6f:	73 69                	jae    fda <_init-0x400026>
     f71:	67 6e                	outsb  %ds:(%esi),(%dx)
     f73:	61                   	(bad)  
     f74:	6c                   	insb   (%dx),%es:(%rdi)
     f75:	2e 68 00 04 00 00    	cs pushq $0x400
     f7b:	64 72 69             	fs jb  fe7 <_init-0x400019>
     f7e:	76 65                	jbe    fe5 <_init-0x40001b>
     f80:	72 6c                	jb     fee <_init-0x400012>
     f82:	69 62 2e 68 00 00 00 	imul   $0x68,0x2e(%rdx),%esp
     f89:	00 73 6f             	add    %dh,0x6f(%rbx)
     f8c:	63 6b 65             	movslq 0x65(%rbx),%ebp
     f8f:	74 2e                	je     fbf <_init-0x400041>
     f91:	68 00 06 00 00       	pushq  $0x600
     f96:	73 74                	jae    100c <_init-0x3ffff4>
     f98:	72 69                	jb     1003 <_init-0x3ffffd>
     f9a:	6e                   	outsb  %ds:(%rsi),(%dx)
     f9b:	67 2e 68 00 04 00 00 	addr32 cs pushq $0x400
     fa2:	65 72 72             	gs jb  1017 <_init-0x3fffe9>
     fa5:	6e                   	outsb  %ds:(%rsi),(%dx)
     fa6:	6f                   	outsl  %ds:(%rsi),(%dx)
     fa7:	2e 68 00 04 00 00    	cs pushq $0x400
     fad:	3c 62                	cmp    $0x62,%al
     faf:	75 69                	jne    101a <_init-0x3fffe6>
     fb1:	6c                   	insb   (%dx),%es:(%rdi)
     fb2:	74 2d                	je     fe1 <_init-0x40001f>
     fb4:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
     fbb:	73 74                	jae    1031 <_init-0x3fffcf>
     fbd:	64 6c                	fs insb (%dx),%es:(%rdi)
     fbf:	69 62 2e 68 00 04 00 	imul   $0x40068,0x2e(%rdx),%esp
     fc6:	00 73 6f             	add    %dh,0x6f(%rbx)
     fc9:	63 6b 65             	movslq 0x65(%rbx),%ebp
     fcc:	74 5f                	je     102d <_init-0x3fffd3>
     fce:	74 79                	je     1049 <_init-0x3fffb7>
     fd0:	70 65                	jo     1037 <_init-0x3fffc9>
     fd2:	2e 68 00 01 00 00    	cs pushq $0x100
     fd8:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 2090fdf <_end+0x1c89ea7>
     fde:	d4                   	(bad)  
     fdf:	21 40 00             	and    %eax,0x0(%rax)
     fe2:	00 00                	add    %al,(%rax)
     fe4:	00 00                	add    %al,(%rax)
     fe6:	03 2d 01 05 05 13    	add    0x13050501(%rip),%ebp        # 130514ed <_end+0x12c4a3b5>
     fec:	05 10 06 01 05       	add    $0x5010610,%eax
     ff1:	05 06 2f 05 11       	add    $0x11052f06,%eax
     ff6:	06                   	(bad)  
     ff7:	01 05 05 06 75 05    	add    %eax,0x5750605(%rip)        # 5751602 <_end+0x534a4ca>
     ffd:	16                   	(bad)  
     ffe:	06                   	(bad)  
     fff:	01 05 14 4a 05 01    	add    %eax,0x1054a14(%rip)        # 1055a19 <_end+0xc4e8e1>
    1005:	4b 05 1f 06 03 71    	rex.WXB add $0x7103061f,%rax
    100b:	20 06                	and    %al,(%rsi)
    100d:	01 05 05 06 4b 06    	add    %eax,0x64b0605(%rip)        # 64b1618 <_end+0x60aa4e0>
    1013:	08 2e                	or     %ch,(%rsi)
    1015:	05 03 06 9f 05       	add    $0x59f0603,%eax
    101a:	05 13 05 01 03       	add    $0x3010513,%eax
    101f:	e7 00                	out    %eax,$0x0
    1021:	9e                   	sahf   
    1022:	06                   	(bad)  
    1023:	01 05 05 06 d7 05    	add    %eax,0x5d70605(%rip)        # 5d7162e <_end+0x596a4f6>
    1029:	0f 06                	clts   
    102b:	01 d6                	add    %edx,%esi
    102d:	3c 05                	cmp    $0x5,%al
    102f:	09 3c 05 05 06 3d 14 	or     %edi,0x143d0605(,%rax,1)
    1036:	05 06 34 05 0d       	add    $0xd053406,%eax
    103b:	06                   	(bad)  
    103c:	01 05 0a 3c 05 17    	add    %eax,0x17053c0a(%rip)        # 17054c4c <_end+0x16c4db14>
    1042:	03 7a 4a             	add    0x4a(%rdx),%edi
    1045:	05 10 4a 00 02       	add    $0x2004a10,%eax
    104a:	04 01                	add    $0x1,%al
    104c:	3c 05                	cmp    $0x5,%al
    104e:	05 00 02 04 01       	add    $0x1040200,%eax
    1053:	4a 05 02 06 83 05    	rex.WX add $0x5830602,%rax
    1059:	07                   	(bad)  
    105a:	06                   	(bad)  
    105b:	01 05 14 3c 05 05    	add    %eax,0x5053c14(%rip)        # 5054c75 <_end+0x4c4db3d>
    1061:	ba 05 25 00 02       	mov    $0x2002505,%edx
    1066:	04 01                	add    $0x1,%al
    1068:	4a 05 13 59 05 15    	rex.WX add $0x15055913,%rax
    106e:	00 02                	add    %al,(%rdx)
    1070:	04 01                	add    $0x1,%al
    1072:	59                   	pop    %rcx
    1073:	05 24 00 02 04       	add    $0x4020024,%eax
    1078:	01 3b                	add    %edi,(%rbx)
    107a:	05 15 4c 05 27       	add    $0x27054c15,%eax
    107f:	3b 05 15 4c 05 27    	cmp    0x27054c15(%rip),%eax        # 27055c9a <_end+0x26c4eb62>
    1085:	3b 05 07 06 4e 05    	cmp    0x54e0607(%rip),%eax        # 54e1692 <_end+0x50da55a>
    108b:	0a 06                	or     (%rsi),%al
    108d:	01 05 07 06 03 0b    	add    %eax,0xb030607(%rip)        # b03169a <_end+0xac2a562>
    1093:	58                   	pop    %rax
    1094:	05 29 06 01 05       	add    $0x5010629,%eax
    1099:	0a d6                	or     %dh,%dl
    109b:	05 06 06 4c 08       	add    $0x84c0606,%eax
    10a0:	83 05 12 06 01 05 0d 	addl   $0xd,0x5010612(%rip)        # 50116b9 <_end+0x4c0a581>
    10a7:	58                   	pop    %rax
    10a8:	05 06 06 3d 05       	add    $0x53d0606,%eax
    10ad:	12 06                	adc    (%rsi),%al
    10af:	01 05 0d 58 05 06    	add    %eax,0x605580d(%rip)        # 60568c2 <_end+0x5c4f78a>
    10b5:	06                   	(bad)  
    10b6:	3d 05 12 06 01       	cmp    $0x1061205,%eax
    10bb:	05 0d 58 05 0a       	add    $0xa05580d,%eax
    10c0:	3c 4a                	cmp    $0x4a,%al
    10c2:	05 06 06 03 71       	add    $0x71030606,%eax
    10c7:	58                   	pop    %rax
    10c8:	05 0d 06 01 05       	add    $0x501060d,%eax
    10cd:	0a 4a 4a             	or     0x4a(%rdx),%cl
    10d0:	05 0d 03 12 58       	add    $0x5812030d,%eax
    10d5:	05 01 5d 58 20       	add    $0x20585d01,%eax
    10da:	2e 06                	cs (bad) 
    10dc:	03 45 20             	add    0x20(%rbp),%eax
    10df:	06                   	(bad)  
    10e0:	01 05 05 06 08 2f    	add    %eax,0x2f080605(%rip)        # 2f0816eb <_end+0x2ec7a5b3>
    10e6:	13 13                	adc    (%rbx),%edx
    10e8:	14 05                	adc    $0x5,%al
    10ea:	0c 06                	or     $0x6,%al
    10ec:	0e                   	(bad)  
    10ed:	05 0b 40 05 02       	add    $0x205400b,%eax
    10f2:	06                   	(bad)  
    10f3:	35 05 08 06 01       	xor    $0x1060805,%eax
    10f8:	05 02 06 3d 05       	add    $0x53d0602,%eax
    10fd:	07                   	(bad)  
    10fe:	06                   	(bad)  
    10ff:	01 05 0b 03 78 3c    	add    %eax,0x3c78030b(%rip)        # 3c781410 <_end+0x3c37a2d8>
    1105:	05 02 06 59 05       	add    $0x5590602,%eax
    110a:	12 06                	adc    (%rsi),%al
    110c:	01 05 05 d6 05 06    	add    %eax,0x605d605(%rip)        # 605e717 <_end+0x5c575df>
    1112:	06                   	(bad)  
    1113:	59                   	pop    %rcx
    1114:	05 0a 06 01 05       	add    $0x501060a,%eax
    1119:	09 58 05             	or     %ebx,0x5(%rax)
    111c:	0c 59                	or     $0x59,%al
    111e:	05 05 06 7b 05       	add    $0x57b0605,%eax
    1123:	0c 06                	or     $0x6,%al
    1125:	01 05 01 3d 58 20    	add    %eax,0x20583d01(%rip)        # 20584e2c <_end+0x2017dcf4>
    112b:	2e 2e 05 0a 03 7a 20 	cs cs add $0x207a030a,%eax
    1132:	05 01 06 03 be       	add    $0xbe030601,%eax
    1137:	7f 90                	jg     10c9 <_init-0x3fff37>
    1139:	06                   	(bad)  
    113a:	01 05 05 06 08 2f    	add    %eax,0x2f080605(%rip)        # 2f081745 <_end+0x2ec7a60d>
    1140:	14 05                	adc    $0x5,%al
    1142:	0b 06                	or     (%rsi),%eax
    1144:	01 05 06 06 32 05    	add    %eax,0x5320606(%rip)        # 5321750 <_end+0x4f1a618>
    114a:	0a 06                	or     (%rsi),%al
    114c:	01 05 09 58 05 0e    	add    %eax,0xe055809(%rip)        # e05695b <_end+0xdc4f823>
    1152:	54                   	push   %rsp
    1153:	05 0b 3c 05 02       	add    $0x2053c0b,%eax
    1158:	06                   	(bad)  
    1159:	4b 05 23 06 01 05    	rex.WXB add $0x5010623,%rax
    115f:	10 4a 05             	adc    %cl,0x5(%rdx)
    1162:	0e                   	(bad)  
    1163:	e4 05                	in     $0x5,%al
    1165:	02 06                	add    (%rsi),%al
    1167:	3e 05 05 06 01 05    	ds add $0x5010605,%eax
    116d:	07                   	(bad)  
    116e:	06                   	(bad)  
    116f:	4e 05 0a 06 01 05    	rex.WRX add $0x501060a,%rax
    1175:	06                   	(bad)  
    1176:	06                   	(bad)  
    1177:	31 05 15 06 01 05    	xor    %eax,0x5010615(%rip)        # 5011792 <_end+0x4c0a65a>
    117d:	05 06 6a 13 05       	add    $0x5136a06,%eax
    1182:	0a 06                	or     (%rsi),%al
    1184:	01 05 08 2e 05 09    	add    %eax,0x9052e08(%rip)        # 9053f92 <_end+0x8c4ce5a>
    118a:	57                   	push   %rdi
    118b:	05 05 06 3f 05       	add    $0x53f0605,%eax
    1190:	16                   	(bad)  
    1191:	06                   	(bad)  
    1192:	3c 05                	cmp    $0x5,%al
    1194:	05 4a 06 ad 05       	add    $0x5ad064a,%eax
    1199:	14 06                	adc    $0x6,%al
    119b:	01 05 05 06 4b 05    	add    %eax,0x54b0605(%rip)        # 54b17a6 <_end+0x50aa66e>
    11a1:	11 06                	adc    %eax,(%rsi)
    11a3:	01 05 05 06 3d 05    	add    %eax,0x53d0605(%rip)        # 53d17ae <_end+0x4fca676>
    11a9:	0c 06                	or     $0x6,%al
    11ab:	01 05 01 3d 58 58    	add    %eax,0x58583d01(%rip)        # 58584eb2 <_end+0x5817dd7a>
    11b1:	05 0a 03 70 20       	add    $0x2070030a,%eax
    11b6:	05 0d 93 05 01       	add    $0x105930d,%eax
    11bb:	06                   	(bad)  
    11bc:	03 13                	add    (%rbx),%edx
    11be:	74 06                	je     11c6 <_init-0x3ffe3a>
    11c0:	01 05 05 06 08 2f    	add    %eax,0x2f080605(%rip)        # 2f0817cb <_end+0x2ec7a693>
    11c6:	05 03 13 05 05       	add    $0x5051303,%eax
    11cb:	13 14 05 0c 06 01 05 	adc    0x501060c(,%rax,1),%edx
    11d2:	05 00 02 04 01       	add    $0x1040200,%eax
    11d7:	58                   	pop    %rax
    11d8:	05 02 06 59 05       	add    $0x5590602,%eax
    11dd:	0c 06                	or     $0x6,%al
    11df:	01 05 05 08 20 05    	add    %eax,0x5200805(%rip)        # 52019ea <_end+0x4dfa8b2>
    11e5:	06                   	(bad)  
    11e6:	06                   	(bad)  
    11e7:	59                   	pop    %rcx
    11e8:	05 0b 06 01 05       	add    $0x501060b,%eax
    11ed:	0e                   	(bad)  
    11ee:	4a 58                	rex.WX pop %rax
    11f0:	05 06 06 3d 05       	add    $0x53d0606,%eax
    11f5:	09 06                	or     %eax,(%rsi)
    11f7:	01 05 1e 00 02 04    	add    %eax,0x402001e(%rip)        # 402121b <_end+0x3c1a0e3>
    11fd:	02 47 05             	add    0x5(%rdi),%al
    1200:	0b 00                	or     (%rax),%eax
    1202:	02 04 02             	add    (%rdx,%rax,1),%al
    1205:	4c 05 09 06 5b 05    	rex.WR add $0x55b0609,%rax
    120b:	0c 06                	or     $0x6,%al
    120d:	01 05 06 06 4b 05    	add    %eax,0x54b0606(%rip)        # 54b1819 <_end+0x50aa6e1>
    1213:	09 06                	or     %eax,(%rsi)
    1215:	01 05 0a 67 58 05    	add    %eax,0x558670a(%rip)        # 5587925 <_end+0x51807ed>
    121b:	0b 29                	or     (%rcx),%ebp
    121d:	05 05 06 03 0b       	add    $0xb030605,%eax
    1222:	3c 05                	cmp    $0x5,%al
    1224:	0b 06                	or     (%rsi),%eax
    1226:	01 05 05 06 4b 05    	add    %eax,0x54b0605(%rip)        # 54b1831 <_end+0x50aa6f9>
    122c:	0c 06                	or     $0x6,%al
    122e:	01 05 01 3d 58 20    	add    %eax,0x20583d01(%rip)        # 20584f35 <_end+0x2017ddfd>
    1234:	2e 2e 05 0d 1c 74 05 	cs cs add $0x5741c0d,%eax
    123b:	01 06                	add    %eax,(%rsi)
    123d:	03 d2                	add    %edx,%edx
    123f:	00 2e                	add    %ch,(%rsi)
    1241:	06                   	(bad)  
    1242:	01 05 05 06 02 30    	add    %eax,0x30020605(%rip)        # 3002184d <_end+0x2fc1a715>
    1248:	13 13                	adc    (%rbx),%edx
    124a:	13 14 13             	adc    (%rbx,%rdx,1),%edx
    124d:	13 18                	adc    (%rax),%ebx
    124f:	13 14 13             	adc    (%rbx,%rdx,1),%edx
    1252:	05 09 06 01 05       	add    $0x5010609,%eax
    1257:	05 06 ad 03 0d       	add    $0xd03ad06,%eax
    125c:	01 05 15 06 01 58    	add    %eax,0x58010615(%rip)        # 58011877 <_end+0x57c0a73f>
    1262:	58                   	pop    %rax
    1263:	58                   	pop    %rax
    1264:	05 08 58 05 05       	add    $0x5055808,%eax
    1269:	06                   	(bad)  
    126a:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    126b:	05 0f 06 01 05       	add    $0x501060f,%eax
    1270:	08 82 05 05 06 95    	or     %al,-0x6af9fafb(%rdx)
    1276:	02 29                	add    (%rcx),%ch
    1278:	13 05 1b 06 01 05    	adc    0x501061b(%rip),%eax        # 5011899 <_end+0x4c0a761>
    127e:	05 06 9f 05 15       	add    $0x15059f06,%eax
    1283:	06                   	(bad)  
    1284:	01 05 05 4a 06 08    	add    %eax,0x8064a05(%rip)        # 8065c8f <_end+0x7c5eb57>
    128a:	3e 04 02             	ds add $0x2,%al
    128d:	05 01 03 b6 7e       	add    $0x7eb60301,%eax
    1292:	01 05 03 15 05 0a    	add    %eax,0xa051503(%rip)        # a05279b <_end+0x9c4b663>
    1298:	06                   	(bad)  
    1299:	01 90 04 01 05 19    	add    %edx,0x19050104(%rax)
    129f:	03 c7                	add    %edi,%eax
    12a1:	01 01                	add    %eax,(%rcx)
    12a3:	05 05 06 85 05       	add    $0x5850605,%eax
    12a8:	09 06                	or     %eax,(%rsi)
    12aa:	01 05 08 e4 05 05    	add    %eax,0x505e408(%rip)        # 505f6b8 <_end+0x4c58580>
    12b0:	06                   	(bad)  
    12b1:	03 0d 82 05 13 06    	add    0x6130582(%rip),%ecx        # 6131839 <_end+0x5d2a701>
    12b7:	01 08                	add    %ecx,(%rax)
    12b9:	3c 05                	cmp    $0x5,%al
    12bb:	05 06 67 05 10       	add    $0x10056706,%eax
    12c0:	06                   	(bad)  
    12c1:	01 82 05 21 66 9e    	add    %eax,-0x6199defb(%rdx)
    12c7:	05 1f 3c 05 02       	add    $0x2053c1f,%eax
    12cc:	59                   	pop    %rcx
    12cd:	9e                   	sahf   
    12ce:	05 30 65 05 11       	add    $0x11056530,%eax
    12d3:	59                   	pop    %rcx
    12d4:	05 0e 57 05 05       	add    $0x505570e,%eax
    12d9:	06                   	(bad)  
    12da:	84 05 08 06 01 05    	test   %al,0x5010608(%rip)        # 50118e8 <_end+0x4c0a7b0>
    12e0:	05 06 c1 06 08       	add    $0x806c106,%eax
    12e5:	20 06                	and    %al,(%rsi)
    12e7:	67 05 09 06 01 05    	addr32 add $0x5010609,%eax
    12ed:	08 82 05 05 06 89    	or     %al,-0x76f9fafb(%rdx)
    12f3:	02 2f                	add    (%rdi),%ch
    12f5:	1a 05 09 06 01 05    	sbb    0x5010609(%rip),%al        # 5011904 <_end+0x4c0a7cc>
    12fb:	08 02                	or     %al,(%rdx)
    12fd:	25 12 05 05 06       	and    $0x6050512,%eax
    1302:	97                   	xchg   %eax,%edi
    1303:	08 21                	or     %ah,(%rcx)
    1305:	05 09 06 01 05       	add    $0x5010609,%eax
    130a:	08 08                	or     %cl,(%rax)
    130c:	4a 05 05 06 98 02    	rex.WX add $0x2980605,%rax
    1312:	2e 15 05 0c 06 01    	cs adc $0x1060c05,%eax
    1318:	05 0b 08 9e 05       	add    $0x59e080b,%eax
    131d:	02 06                	add    (%rsi),%al
    131f:	83 05 06 06 01 05 05 	addl   $0x5,0x5010606(%rip)        # 501192c <_end+0x4c0a7f4>
    1326:	08 90 05 06 06 59    	or     %dl,0x59060605(%rax)
    132c:	02 69 13             	add    0x13(%rcx),%ch
    132f:	75 05                	jne    1336 <_init-0x3ffcca>
    1331:	0d 06 01 05 01       	or     $0x1050106,%eax
    1336:	03 2e                	add    (%rsi),%ebp
    1338:	58                   	pop    %rax
    1339:	c8 05 02 06          	enterq $0x205,$0x6
    133d:	03 83 7f 58 06 9e    	add    -0x61f9a781(%rbx),%eax
    1343:	06                   	(bad)  
    1344:	02 3b                	add    (%rbx),%bh
    1346:	13 05 09 06 01 05    	adc    0x5010609(%rip),%eax        # 5011955 <_end+0x4c0a81d>
    134c:	02 06                	add    (%rsi),%al
    134e:	79 06                	jns    1356 <_init-0x3ffcaa>
    1350:	9e                   	sahf   
    1351:	06                   	(bad)  
    1352:	02 4d 13             	add    0x13(%rbp),%cl
    1355:	75 05                	jne    135c <_init-0x3ffca4>
    1357:	09 06                	or     %eax,(%rsi)
    1359:	01 05 02 06 03 0a    	add    %eax,0xa030602(%rip)        # a031961 <_end+0x9c2a829>
    135f:	9e                   	sahf   
    1360:	02 49 13             	add    0x13(%rcx),%cl
    1363:	75 05                	jne    136a <_init-0x3ffc96>
    1365:	09 06                	or     %eax,(%rsi)
    1367:	01 05 02 06 03 0e    	add    %eax,0xe030602(%rip)        # e03196f <_end+0xdc2a837>
    136d:	9e                   	sahf   
    136e:	06                   	(bad)  
    136f:	9e                   	sahf   
    1370:	9e                   	sahf   
    1371:	06                   	(bad)  
    1372:	02 4e 13             	add    0x13(%rsi),%cl
    1375:	75 05                	jne    137c <_init-0x3ffc84>
    1377:	09 06                	or     %eax,(%rsi)
    1379:	01 05 02 06 a4 02    	add    %eax,0x2a40602(%rip)        # 2a41981 <_end+0x263a849>
    137f:	7a 13                	jp     1394 <_init-0x3ffc6c>
    1381:	75 05                	jne    1388 <_init-0x3ffc78>
    1383:	09 06                	or     %eax,(%rsi)
    1385:	01 05 02 06 03 0d    	add    %eax,0xd030602(%rip)        # d03198d <_end+0xcc2a855>
    138b:	9e                   	sahf   
    138c:	02 5e 13             	add    0x13(%rsi),%bl
    138f:	75 05                	jne    1396 <_init-0x3ffc6a>
    1391:	09 06                	or     %eax,(%rsi)
    1393:	01 05 02 06 a4 02    	add    %eax,0x2a40602(%rip)        # 2a4199b <_end+0x263a863>
    1399:	6d                   	insl   (%dx),%es:(%rdi)
    139a:	13 75 05             	adc    0x5(%rbp),%esi
    139d:	09 06                	or     %eax,(%rsi)
    139f:	01 05 05 06 03 14    	add    %eax,0x14030605(%rip)        # 140319aa <_end+0x13c2a872>
    13a5:	9e                   	sahf   
    13a6:	05 09 06 01 05       	add    $0x5010609,%eax
    13ab:	08 08                	or     %cl,(%rax)
    13ad:	90                   	nop
    13ae:	05 05 06 03 11       	add    $0x11030605,%eax
    13b3:	90                   	nop
    13b4:	05 11 06 01 05       	add    $0x5010611,%eax
    13b9:	08 74 05 05          	or     %dh,0x5(%rbp,%rax,1)
    13bd:	06                   	(bad)  
    13be:	c2 f3 7a             	retq   $0x7af3
    13c1:	05 0a 06 01 08       	add    $0x801060a,%eax
    13c6:	12 05 08 82 05 03    	adc    0x3058208(%rip),%al        # 30595d4 <_end+0x2c5249c>
    13cc:	00 02                	add    %al,(%rdx)
    13ce:	04 01                	add    $0x1,%al
    13d0:	83 05 25 00 02 04 01 	addl   $0x1,0x4020025(%rip)        # 40213fc <_end+0x3c1a2c4>
    13d7:	08 81 05 03 84 05    	or     %al,0x5840305(%rcx)
    13dd:	20 08                	and    %cl,(%rax)
    13df:	81 05 09 86 05 02 06 	addl   $0x9e5c0306,0x2058609(%rip)        # 20599f2 <_end+0x1c528ba>
    13e6:	03 5c 9e 
    13e9:	02 73 13             	add    0x13(%rbx),%dh
    13ec:	75 05                	jne    13f3 <_init-0x3ffc0d>
    13ee:	09 06                	or     %eax,(%rsi)
    13f0:	01 05 02 06 03 0f    	add    %eax,0xf030602(%rip)        # f0319f8 <_end+0xec2a8c0>
    13f6:	9e                   	sahf   
    13f7:	08 84 05 09 75 05 10 	or     %al,0x10057509(%rbp,%rax,1)
    13fe:	06                   	(bad)  
    13ff:	01 05 20 06 03 1d    	add    %eax,0x1d030620(%rip)        # 1d031a25 <_end+0x1cc2a8ed>
    1405:	9e                   	sahf   
    1406:	05 05 13 05 08       	add    $0x8051305,%eax
    140b:	06                   	(bad)  
    140c:	01 05 20 49 05 05    	add    %eax,0x5054920(%rip)        # 5055d32 <_end+0x4c4ebfa>
    1412:	06                   	(bad)  
    1413:	40 05 08 06 01 05    	rex add $0x5010608,%eax
    1419:	05 06 31 08 13       	add    $0x13083106,%eax
    141e:	05 01 06 75 20       	add    $0x20750601,%eax
    1423:	05 0a 1c 58 05       	add    $0x5581c0a,%eax
    1428:	01 06                	add    %eax,(%rsi)
    142a:	03 0a                	add    (%rdx),%ecx
    142c:	3c 06                	cmp    $0x6,%al
    142e:	01 05 05 06 ad 13    	add    %eax,0x13ad0605(%rip)        # 13ad1a39 <_end+0x136ca901>
    1434:	13 14 13             	adc    (%rbx,%rdx,1),%edx
    1437:	15 06 9e 06 59       	adc    $0x59069e06,%eax
    143c:	e5 eb                	in     $0xeb,%eax
    143e:	05 15 06 01 05       	add    $0x5010615,%eax
    1443:	08 08                	or     %cl,(%rax)
    1445:	3c 05                	cmp    $0x5,%al
    1447:	05 06 a4 05 0f       	add    $0xf05a406,%eax
    144c:	06                   	(bad)  
    144d:	01 05 08 ba 05 05    	add    %eax,0x505ba08(%rip)        # 505ce5b <_end+0x4c55d23>
    1453:	06                   	(bad)  
    1454:	95                   	xchg   %eax,%ebp
    1455:	08 83 05 1b 06 01    	or     %al,0x1061b05(%rbx)
    145b:	05 05 06 67 05       	add    $0x5670605,%eax
    1460:	15 06 01 05 05       	adc    $0x5050106,%eax
    1465:	4a 06                	rex.WX (bad) 
    1467:	f4                   	hlt    
    1468:	04 02                	add    $0x2,%al
    146a:	05 03 03 8e 7d       	add    $0x7d8e0303,%eax
    146f:	01 04 01             	add    %eax,(%rcx,%rax,1)
    1472:	05 19 06 03 f2       	add    $0xf2030619,%eax
    1477:	02 01                	add    (%rcx),%al
    1479:	05 05 06 77 05       	add    $0x5770605,%eax
    147e:	09 06                	or     %eax,(%rsi)
    1480:	01 05 08 e4 05 05    	add    %eax,0x505e408(%rip)        # 505f88e <_end+0x4c58756>
    1486:	06                   	(bad)  
    1487:	8a 75 c9             	mov    -0x37(%rbp),%dh
    148a:	05 0c 06 01 05       	add    $0x501060c,%eax
    148f:	01 59 82             	add    %ebx,-0x7e(%rcx)
    1492:	05 02 06 03 64       	add    $0x64030602,%eax
    1497:	20 06                	and    %al,(%rsi)
    1499:	9e                   	sahf   
    149a:	06                   	(bad)  
    149b:	02 42 13             	add    0x13(%rdx),%al
    149e:	05 09 06 01 05       	add    $0x5010609,%eax
    14a3:	02 06                	add    (%rsi),%al
    14a5:	79 06                	jns    14ad <_init-0x3ffb53>
    14a7:	9e                   	sahf   
    14a8:	06                   	(bad)  
    14a9:	02 57 13             	add    0x13(%rdi),%dl
    14ac:	75 05                	jne    14b3 <_init-0x3ffb4d>
    14ae:	09 06                	or     %eax,(%rsi)
    14b0:	01 05 05 06 03 0a    	add    %eax,0xa030605(%rip)        # a031abb <_end+0x9c2a983>
    14b6:	9e                   	sahf   
    14b7:	05 02 13 02 49       	add    $0x49021302,%eax
    14bc:	13 75 05             	adc    0x5(%rbp),%esi
    14bf:	09 06                	or     %eax,(%rsi)
    14c1:	01 05 01 06 03 0e    	add    %eax,0xe030601(%rip)        # e031ac8 <_end+0xdc2a990>
    14c7:	9e                   	sahf   
    14c8:	06                   	(bad)  
    14c9:	01 05 05 06 4b 15    	add    %eax,0x154b0605(%rip)        # 154b1ad4 <_end+0x150aa99c>
    14cf:	05 08 06 01 05       	add    $0x5010608,%eax
    14d4:	05 06 03 0a 58       	add    $0x580a0306,%eax
    14d9:	05 08 06 01 05       	add    $0x5010608,%eax
    14de:	10 00                	adc    %al,(%rax)
    14e0:	02 04 01             	add    (%rcx,%rax,1),%al
    14e3:	58                   	pop    %rax
    14e4:	05 05 06 03 0c       	add    $0xc030605,%eax
    14e9:	58                   	pop    %rax
    14ea:	91                   	xchg   %eax,%ecx
    14eb:	05 0c 06 01 05       	add    $0x501060c,%eax
    14f0:	01 3d 20 05 02 06    	add    %edi,0x6020520(%rip)        # 6021a16 <_end+0x5c1a8de>
    14f6:	03 69 20             	add    0x20(%rcx),%ebp
    14f9:	06                   	(bad)  
    14fa:	3c 74                	cmp    $0x74,%al
    14fc:	06                   	(bad)  
    14fd:	9f                   	lahf   
    14fe:	91                   	xchg   %eax,%ecx
    14ff:	05 09 06 01 05       	add    $0x5010609,%eax
    1504:	02 06                	add    (%rsi),%al
    1506:	7c 05                	jl     150d <_init-0x3ffaf3>
    1508:	0b 06                	or     (%rsi),%eax
    150a:	01 ba 3c 3c 58 74    	add    %edi,0x74583c3c(%rdx)
    1510:	05 02 06 5f 05       	add    $0x55f0602,%eax
    1515:	09 06                	or     %eax,(%rsi)
    1517:	01 02                	add    %eax,(%rdx)
    1519:	06                   	(bad)  
    151a:	00 01                	add    %al,(%rcx)
    151c:	01 ce                	add    %ecx,%esi
    151e:	00 00                	add    %al,(%rax)
    1520:	00 02                	add    %al,(%rdx)
    1522:	00 3b                	add    %bh,(%rbx)
    1524:	00 00                	add    %al,(%rax)
    1526:	00 01                	add    %al,(%rcx)
    1528:	01 fb                	add    %edi,%ebx
    152a:	0e                   	(bad)  
    152b:	0d 00 01 01 01       	or     $0x1010100,%eax
    1530:	01 00                	add    %eax,(%rax)
    1532:	00 00                	add    %al,(%rax)
    1534:	01 00                	add    %eax,(%rax)
    1536:	00 01                	add    %al,(%rcx)
    1538:	2f                   	(bad)  
    1539:	75 73                	jne    15ae <_init-0x3ffa52>
    153b:	72 2f                	jb     156c <_init-0x3ffa94>
    153d:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
    1544:	00 00                	add    %al,(%rax)
    1546:	67 65 6e             	outsb  %gs:(%esi),(%dx)
    1549:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
    154c:	6b 69 65 2e          	imul   $0x2e,0x65(%rcx),%ebp
    1550:	63 00                	movslq (%rax),%eax
    1552:	00 00                	add    %al,(%rax)
    1554:	00 73 74             	add    %dh,0x74(%rbx)
    1557:	64 6c                	fs insb (%dx),%es:(%rdi)
    1559:	69 62 2e 68 00 01 00 	imul   $0x10068,0x2e(%rdx),%esp
    1560:	00 00                	add    %al,(%rax)
    1562:	05 01 00 09 02       	add    $0x2090001,%eax
    1567:	3b 2e                	cmp    (%rsi),%ebp
    1569:	40 00 00             	add    %al,(%rax)
    156c:	00 00                	add    %al,(%rax)
    156e:	00 03                	add    %al,(%rbx)
    1570:	19 01                	sbb    %eax,(%rcx)
    1572:	05 05 13 13 05       	add    $0x5131305,%eax
    1577:	08 06                	or     %al,(%rsi)
    1579:	01 05 0c 76 05 05    	add    %eax,0x505760c(%rip)        # 5058b8b <_end+0x4c51a53>
    157f:	00 02                	add    %al,(%rdx)
    1581:	04 01                	add    $0x1,%al
    1583:	58                   	pop    %rax
    1584:	05 02 06 59 05       	add    $0x5590602,%eax
    1589:	0a 06                	or     (%rsi),%al
    158b:	01 05 05 4a 05 1a    	add    %eax,0x1a054a05(%rip)        # 1a055f96 <_end+0x19c4ee5e>
    1591:	00 02                	add    %al,(%rdx)
    1593:	04 02                	add    $0x2,%al
    1595:	49 00 02             	rex.WB add %al,(%r10)
    1598:	04 02                	add    $0x2,%al
    159a:	3c 05                	cmp    $0x5,%al
    159c:	0c 31                	or     $0x31,%al
    159e:	05 09 62 05 0d       	add    $0xd056209,%eax
    15a3:	69 05 01 5a 06 23 06 	imul   $0x5050106,0x23065a01(%rip),%eax        # 23066fae <_end+0x22c5fe76>
    15aa:	01 05 05 
    15ad:	06                   	(bad)  
    15ae:	21 14 05 0f 06 01 05 	and    %edx,0x501060f(,%rax,1)
    15b5:	05 3c 00 02 04       	add    $0x402003c,%eax
    15ba:	01 06                	add    %eax,(%rsi)
    15bc:	59                   	pop    %rcx
    15bd:	05 02 00 02 04       	add    $0x4020002,%eax
    15c2:	01 13                	add    %edx,(%rbx)
    15c4:	05 08 00 02 04       	add    $0x4020008,%eax
    15c9:	01 06                	add    %eax,(%rsi)
    15cb:	01 05 06 00 02 04    	add    %eax,0x4020006(%rip)        # 40215d7 <_end+0x3c1a49f>
    15d1:	01 58 05             	add    %ebx,0x5(%rax)
    15d4:	0d 00 02 04 01       	or     $0x1040200,%eax
    15d9:	2f                   	(bad)  
    15da:	05 02 00 02 04       	add    $0x4020002,%eax
    15df:	01 75 05             	add    %esi,0x5(%rbp)
    15e2:	05 06 4b 05 01       	add    $0x1054b06,%eax
    15e7:	06                   	(bad)  
    15e8:	13 3c 02             	adc    (%rdx,%rax,1),%edi
    15eb:	01 00                	add    %eax,(%rax)
    15ed:	01 01                	add    %eax,(%rcx)

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6f                   	outsl  %ds:(%rsi),(%dx)
   1:	70 74                	jo     77 <_init-0x400f89>
   3:	69 6e 64 00 5f 6f 6c 	imul   $0x6c6f5f00,0x64(%rsi),%ebp
   a:	64 5f                	fs pop %rdi
   c:	6f                   	outsl  %ds:(%rsi),(%dx)
   d:	66 66 73 65          	data16 data16 jae 76 <_init-0x400f8a>
  11:	74 00                	je     13 <_init-0x400fed>
  13:	5f                   	pop    %rdi
  14:	5f                   	pop    %rdi
  15:	62                   	(bad)  
  16:	75 69                	jne    81 <_init-0x400f7f>
  18:	6c                   	insb   (%dx),%es:(%rdi)
  19:	74 69                	je     84 <_init-0x400f7c>
  1b:	6e                   	outsb  %ds:(%rsi),(%dx)
  1c:	5f                   	pop    %rdi
  1d:	70 75                	jo     94 <_init-0x400f6c>
  1f:	74 73                	je     94 <_init-0x400f6c>
  21:	00 5f 49             	add    %bl,0x49(%rdi)
  24:	4f 5f                	rex.WRXB pop %r15
  26:	72 65                	jb     8d <_init-0x400f73>
  28:	61                   	(bad)  
  29:	64 5f                	fs pop %rdi
  2b:	62 61                	(bad)  
  2d:	73 65                	jae    94 <_init-0x400f6c>
  2f:	00 75 73             	add    %dh,0x73(%rbp)
  32:	61                   	(bad)  
  33:	67 65 00 73 79       	add    %dh,%gs:0x79(%ebx)
  38:	73 5f                	jae    99 <_init-0x400f67>
  3a:	65 72 72             	gs jb  af <_init-0x400f51>
  3d:	6c                   	insb   (%dx),%es:(%rdi)
  3e:	69 73 74 00 61 72 67 	imul   $0x67726100,0x74(%rbx),%esi
  45:	63 00                	movslq (%rax),%eax
  47:	73 79                	jae    c2 <_init-0x400f3e>
  49:	73 5f                	jae    aa <_init-0x400f56>
  4b:	6e                   	outsb  %ds:(%rsi),(%dx)
  4c:	65 72 72             	gs jb  c1 <_init-0x400f3f>
  4f:	00 5f 49             	add    %bl,0x49(%rdi)
  52:	4f 5f                	rex.WRXB pop %r15
  54:	73 61                	jae    b7 <_init-0x400f49>
  56:	76 65                	jbe    bd <_init-0x400f43>
  58:	5f                   	pop    %rdi
  59:	65 6e                	outsb  %gs:(%rsi),(%dx)
  5b:	64 00 5f 49          	add    %bl,%fs:0x49(%rdi)
  5f:	4f 5f                	rex.WRXB pop %r15
  61:	77 72                	ja     d5 <_init-0x400f2b>
  63:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
  6a:	00 
  6b:	75 73                	jne    e0 <_init-0x400f20>
  6d:	65 72 5f             	gs jb  cf <_init-0x400f31>
  70:	69 64 00 73 68 6f 72 	imul   $0x74726f68,0x73(%rax,%rax,1),%esp
  77:	74 
  78:	20 69 6e             	and    %ch,0x6e(%rcx)
  7b:	74 00                	je     7d <_init-0x400f83>
  7d:	5f                   	pop    %rdi
  7e:	49                   	rex.WB
  7f:	4f 5f                	rex.WRXB pop %r15
  81:	6c                   	insb   (%dx),%es:(%rdi)
  82:	6f                   	outsl  %ds:(%rsi),(%dx)
  83:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
  86:	74 00                	je     88 <_init-0x400f78>
  88:	5f                   	pop    %rdi
  89:	5f                   	pop    %rdi
  8a:	74 7a                	je     106 <_init-0x400efa>
  8c:	6e                   	outsb  %ds:(%rsi),(%dx)
  8d:	61                   	(bad)  
  8e:	6d                   	insl   (%dx),%es:(%rdi)
  8f:	65 00 73 72          	add    %dh,%gs:0x72(%rbx)
  93:	61                   	(bad)  
  94:	6e                   	outsb  %ds:(%rsi),(%dx)
  95:	64 6f                	outsl  %fs:(%rsi),(%dx)
  97:	6d                   	insl   (%dx),%es:(%rdi)
  98:	00 47 4e             	add    %al,0x4e(%rdi)
  9b:	55                   	push   %rbp
  9c:	20 43 31             	and    %al,0x31(%rbx)
  9f:	37                   	(bad)  
  a0:	20 38                	and    %bh,(%rax)
  a2:	2e 33 2e             	xor    %cs:(%rsi),%ebp
  a5:	30 20                	xor    %ah,(%rax)
  a7:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  ac:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  b2:	72 69                	jb     11d <_init-0x400ee3>
  b4:	63 20                	movslq (%rax),%esp
  b6:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  bb:	68 3d 78 38 36       	pushq  $0x3638783d
  c0:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  c5:	67 20 2d 4f 67 00 62 	and    %ch,0x6200674f(%eip)        # 6200681b <_end+0x61bff6e3>
  cc:	75 66                	jne    134 <_init-0x400ecc>
  ce:	5f                   	pop    %rdi
  cf:	6f                   	outsl  %ds:(%rsi),(%dx)
  d0:	66 66 73 65          	data16 data16 jae 139 <_init-0x400ec7>
  d4:	74 00                	je     d6 <_init-0x400f2a>
  d6:	5f                   	pop    %rdi
  d7:	49                   	rex.WB
  d8:	4f 5f                	rex.WRXB pop %r15
  da:	77 72                	ja     14e <_init-0x400eb2>
  dc:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
  e3:	00 
  e4:	6d                   	insl   (%dx),%es:(%rdi)
  e5:	61                   	(bad)  
  e6:	69 6e 00 5f 66 72 65 	imul   $0x6572665f,0x0(%rsi),%ebp
  ed:	65 72 65             	gs jb  155 <_init-0x400eab>
  f0:	73 5f                	jae    151 <_init-0x400eaf>
  f2:	62                   	(bad)  
  f3:	75 66                	jne    15b <_init-0x400ea5>
  f5:	00 5f 49             	add    %bl,0x49(%rdi)
  f8:	4f 5f                	rex.WRXB pop %r15
  fa:	62                   	(bad)  
  fb:	75 66                	jne    163 <_init-0x400e9d>
  fd:	5f                   	pop    %rdi
  fe:	62 61                	(bad)  
 100:	73 65                	jae    167 <_init-0x400e99>
 102:	00 69 6e             	add    %ch,0x6e(%rcx)
 105:	66 69 6c 65 00 5f 5f 	imul   $0x5f5f,0x0(%rbp,%riz,2),%bp
 10c:	65 6e                	outsb  %gs:(%rsi),(%dx)
 10e:	76 69                	jbe    179 <_init-0x400e87>
 110:	72 6f                	jb     181 <_init-0x400e7f>
 112:	6e                   	outsb  %ds:(%rsi),(%dx)
 113:	00 5f 6d             	add    %bl,0x6d(%rdi)
 116:	61                   	(bad)  
 117:	72 6b                	jb     184 <_init-0x400e7c>
 119:	65 72 73             	gs jb  18f <_init-0x400e71>
 11c:	00 73 74             	add    %dh,0x74(%rbx)
 11f:	61                   	(bad)  
 120:	62                   	(bad)  
 121:	6c                   	insb   (%dx),%es:(%rdi)
 122:	65 00 69 6e          	add    %ch,%gs:0x6e(%rcx)
 126:	69 74 69 61 6c 69 7a 	imul   $0x657a696c,0x61(%rcx,%rbp,2),%esi
 12d:	65 
 12e:	5f                   	pop    %rdi
 12f:	74 61                	je     192 <_init-0x400e6e>
 131:	72 67                	jb     19a <_init-0x400e66>
 133:	65 74 00             	gs je  136 <_init-0x400eca>
 136:	63 68 65             	movslq 0x65(%rax),%ebp
 139:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 13c:	66 61                	data16 (bad) 
 13e:	69 6c 00 6f 70 74 65 	imul   $0x72657470,0x6f(%rax,%rax,1),%ebp
 145:	72 
 146:	72 00                	jb     148 <_init-0x400eb8>
 148:	2f                   	(bad)  
 149:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 14e:	63 61 68             	movslq 0x68(%rcx),%esp
 151:	69 72 2f 77 6f 72 6b 	imul   $0x6b726f77,0x2f(%rdx),%esi
 158:	73 70                	jae    1ca <_init-0x400e36>
 15a:	61                   	(bad)  
 15b:	63 65 2f             	movslq 0x2f(%rbp),%esp
 15e:	69 69 2d 61 73 6b 2f 	imul   $0x2f6b7361,0x2d(%rcx),%ebp
 165:	61                   	(bad)  
 166:	74 74                	je     1dc <_init-0x400e24>
 168:	61                   	(bad)  
 169:	63 6b 6c             	movslq 0x6c(%rbx),%ebp
 16c:	61                   	(bad)  
 16d:	62                   	(bad)  
 16e:	2f                   	(bad)  
 16f:	73 72                	jae    1e3 <_init-0x400e1d>
 171:	63 2f                	movslq (%rdi),%ebp
 173:	62                   	(bad)  
 174:	75 69                	jne    1df <_init-0x400e21>
 176:	6c                   	insb   (%dx),%es:(%rdi)
 177:	64 00 69 73          	add    %ch,%fs:0x73(%rcx)
 17b:	5f                   	pop    %rdi
 17c:	63 68 65             	movslq 0x65(%rax),%ebp
 17f:	63 6b 65             	movslq 0x65(%rbx),%ebp
 182:	72 00                	jb     184 <_init-0x400e7c>
 184:	63 6f 75             	movslq 0x75(%rdi),%ebp
 187:	72 73                	jb     1fc <_init-0x400e04>
 189:	65 00 76 6c          	add    %dh,%gs:0x6c(%rsi)
 18d:	65 76 65             	gs jbe 1f5 <_init-0x400e0b>
 190:	6c                   	insb   (%dx),%es:(%rdi)
 191:	00 6e 6f             	add    %ch,0x6f(%rsi)
 194:	74 69                	je     1ff <_init-0x400e01>
 196:	66 79 00             	data16 jns 199 <_init-0x400e67>
 199:	73 74                	jae    20f <_init-0x400df1>
 19b:	64 65 72 72          	fs gs jb 211 <_init-0x400def>
 19f:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
 1a3:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 1a8:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 1ac:	74 00                	je     1ae <_init-0x400e52>
 1ae:	5f                   	pop    %rdi
 1af:	5f                   	pop    %rdi
 1b0:	74 69                	je     21b <_init-0x400de5>
 1b2:	6d                   	insl   (%dx),%es:(%rdi)
 1b3:	65 7a 6f             	gs jp  225 <_init-0x400ddb>
 1b6:	6e                   	outsb  %ds:(%rsi),(%dx)
 1b7:	65 00 5f 6c          	add    %bl,%gs:0x6c(%rdi)
 1bb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bc:	63 6b 00             	movslq 0x0(%rbx),%ebp
 1bf:	5f                   	pop    %rdi
 1c0:	5f                   	pop    %rdi
 1c1:	64 61                	fs (bad) 
 1c3:	79 6c                	jns    231 <_init-0x400dcf>
 1c5:	69 67 68 74 00 66 6f 	imul   $0x6f660074,0x68(%rdi),%esp
 1cc:	72 63                	jb     231 <_init-0x400dcf>
 1ce:	65 5f                	gs pop %rdi
 1d0:	72 61                	jb     233 <_init-0x400dcd>
 1d2:	6e                   	outsb  %ds:(%rsi),(%dx)
 1d3:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1d5:	6d                   	insl   (%dx),%es:(%rdi)
 1d6:	00 73 74             	add    %dh,0x74(%rbx)
 1d9:	72 74                	jb     24f <_init-0x400db1>
 1db:	6f                   	outsl  %ds:(%rsi),(%dx)
 1dc:	6c                   	insb   (%dx),%es:(%rdi)
 1dd:	00 5f 63             	add    %bl,0x63(%rdi)
 1e0:	75 72                	jne    254 <_init-0x400dac>
 1e2:	5f                   	pop    %rdi
 1e3:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
 1e6:	75 6d                	jne    255 <_init-0x400dab>
 1e8:	6e                   	outsb  %ds:(%rsi),(%dx)
 1e9:	00 66 70             	add    %ah,0x70(%rsi)
 1ec:	72 69                	jb     257 <_init-0x400da9>
 1ee:	6e                   	outsb  %ds:(%rsi),(%dx)
 1ef:	74 66                	je     257 <_init-0x400da9>
 1f1:	00 61 74             	add    %ah,0x74(%rcx)
 1f4:	6f                   	outsl  %ds:(%rsi),(%dx)
 1f5:	69 00 61 72 67 76    	imul   $0x76677261,(%rax),%eax
 1fb:	00 65 78             	add    %ah,0x78(%rbp)
 1fe:	69 74 00 5f 76 74 61 	imul   $0x62617476,0x5f(%rax,%rax,1),%esi
 205:	62 
 206:	6c                   	insb   (%dx),%es:(%rdi)
 207:	65 5f                	gs pop %rdi
 209:	6f                   	outsl  %ds:(%rsi),(%dx)
 20a:	66 66 73 65          	data16 data16 jae 273 <_init-0x400d8d>
 20e:	74 00                	je     210 <_init-0x400df0>
 210:	5f                   	pop    %rdi
 211:	49                   	rex.WB
 212:	4f 5f                	rex.WRXB pop %r15
 214:	46                   	rex.RX
 215:	49                   	rex.WB
 216:	4c                   	rex.WR
 217:	45 00 73 74          	add    %r14b,0x74(%r11)
 21b:	72 74                	jb     291 <_init-0x400d6f>
 21d:	6f                   	outsl  %ds:(%rsi),(%dx)
 21e:	75 6c                	jne    28c <_init-0x400d74>
 220:	00 75 6e             	add    %dh,0x6e(%rbp)
 223:	73 69                	jae    28e <_init-0x400d72>
 225:	67 6e                	outsb  %ds:(%esi),(%dx)
 227:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 22c:	61                   	(bad)  
 22d:	72 00                	jb     22f <_init-0x400dd1>
 22f:	73 74                	jae    2a5 <_init-0x400d5b>
 231:	61                   	(bad)  
 232:	74 75                	je     2a9 <_init-0x400d57>
 234:	73 5f                	jae    295 <_init-0x400d6b>
 236:	6d                   	insl   (%dx),%es:(%rdi)
 237:	73 67                	jae    2a0 <_init-0x400d60>
 239:	00 68 6f             	add    %ch,0x6f(%rax)
 23c:	73 74                	jae    2b2 <_init-0x400d4e>
 23e:	5f                   	pop    %rdi
 23f:	74 61                	je     2a2 <_init-0x400d5e>
 241:	62                   	(bad)  
 242:	6c                   	insb   (%dx),%es:(%rdi)
 243:	65 00 74 61 72       	add    %dh,%gs:0x72(%rcx,%riz,2)
 248:	67 65 74 5f          	addr32 gs je 2ab <_init-0x400d55>
 24c:	69 64 00 6f 70 74 61 	imul   $0x72617470,0x6f(%rax,%rax,1),%esp
 253:	72 
 254:	67 00 6c 6f 6e       	add    %ch,0x6e(%edi,%ebp,2)
 259:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 25e:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 262:	73 69                	jae    2cd <_init-0x400d33>
 264:	67 6e                	outsb  %ds:(%esi),(%dx)
 266:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 26b:	74 00                	je     26d <_init-0x400d93>
 26d:	5f                   	pop    %rdi
 26e:	49                   	rex.WB
 26f:	4f 5f                	rex.WRXB pop %r15
 271:	6d                   	insl   (%dx),%es:(%rdi)
 272:	61                   	(bad)  
 273:	72 6b                	jb     2e0 <_init-0x400d20>
 275:	65 72 00             	gs jb  278 <_init-0x400d88>
 278:	5f                   	pop    %rdi
 279:	73 68                	jae    2e3 <_init-0x400d1d>
 27b:	6f                   	outsl  %ds:(%rsi),(%dx)
 27c:	72 74                	jb     2f2 <_init-0x400d0e>
 27e:	62                   	(bad)  
 27f:	75 66                	jne    2e7 <_init-0x400d19>
 281:	00 67 65             	add    %ah,0x65(%rdi)
 284:	74 68                	je     2ee <_init-0x400d12>
 286:	6f                   	outsl  %ds:(%rsi),(%dx)
 287:	73 74                	jae    2fd <_init-0x400d03>
 289:	6e                   	outsb  %ds:(%rsi),(%dx)
 28a:	61                   	(bad)  
 28b:	6d                   	insl   (%dx),%es:(%rdi)
 28c:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
 290:	4f 5f                	rex.WRXB pop %r15
 292:	72 65                	jb     2f9 <_init-0x400d07>
 294:	61                   	(bad)  
 295:	64 5f                	fs pop %rdi
 297:	65 6e                	outsb  %gs:(%rsi),(%dx)
 299:	64 00 5f 49          	add    %bl,%fs:0x49(%rdi)
 29d:	4f 5f                	rex.WRXB pop %r15
 29f:	77 72                	ja     313 <_init-0x400ced>
 2a1:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 2a8:	65 
 2a9:	00 5f 75             	add    %bl,0x75(%rdi)
 2ac:	6e                   	outsb  %ds:(%rsi),(%dx)
 2ad:	75 73                	jne    322 <_init-0x400cde>
 2af:	65 64 32 00          	gs xor %fs:(%rax),%al
 2b3:	5f                   	pop    %rdi
 2b4:	49                   	rex.WB
 2b5:	4f 5f                	rex.WRXB pop %r15
 2b7:	72 65                	jb     31e <_init-0x400ce2>
 2b9:	61                   	(bad)  
 2ba:	64 5f                	fs pop %rdi
 2bc:	70 74                	jo     332 <_init-0x400cce>
 2be:	72 00                	jb     2c0 <_init-0x400d40>
 2c0:	5f                   	pop    %rdi
 2c1:	73 79                	jae    33c <_init-0x400cc4>
 2c3:	73 5f                	jae    324 <_init-0x400cdc>
 2c5:	73 69                	jae    330 <_init-0x400cd0>
 2c7:	67 6c                	insb   (%dx),%es:(%edi)
 2c9:	69 73 74 00 67 65 74 	imul   $0x74656700,0x74(%rbx),%esi
 2d0:	6f                   	outsl  %ds:(%rsi),(%dx)
 2d1:	70 74                	jo     347 <_init-0x400cb9>
 2d3:	00 5f 49             	add    %bl,0x49(%rdi)
 2d6:	4f 5f                	rex.WRXB pop %r15
 2d8:	62                   	(bad)  
 2d9:	75 66                	jne    341 <_init-0x400cbf>
 2db:	5f                   	pop    %rdi
 2dc:	65 6e                	outsb  %gs:(%rsi),(%dx)
 2de:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
 2e2:	61                   	(bad)  
 2e3:	62                   	(bad)  
 2e4:	6c                   	insb   (%dx),%es:(%rdi)
 2e5:	65 5f                	gs pop %rdi
 2e7:	6c                   	insb   (%dx),%es:(%rdi)
 2e8:	61                   	(bad)  
 2e9:	75 6e                	jne    359 <_init-0x400ca7>
 2eb:	63 68 00             	movslq 0x0(%rax),%ebp
 2ee:	69 6e 69 74 5f 64 72 	imul   $0x72645f74,0x69(%rsi),%ebp
 2f5:	69 76 65 72 00 73 69 	imul   $0x69730072,0x65(%rsi),%esi
 2fc:	67 6e                	outsb  %ds:(%esi),(%dx)
 2fe:	61                   	(bad)  
 2ff:	6c                   	insb   (%dx),%es:(%rdi)
 300:	00 5f 66             	add    %bl,0x66(%rdi)
 303:	72 65                	jb     36a <_init-0x400c96>
 305:	65 72 65             	gs jb  36d <_init-0x400c93>
 308:	73 5f                	jae    369 <_init-0x400c97>
 30a:	6c                   	insb   (%dx),%es:(%rdi)
 30b:	69 73 74 00 61 6c 61 	imul   $0x616c6100,0x74(%rbx),%esi
 312:	72 6d                	jb     381 <_init-0x400c7f>
 314:	00 5f 5f             	add    %bl,0x5f(%rdi)
 317:	70 61                	jo     37a <_init-0x400c86>
 319:	64 35 00 63 68 65    	fs xor $0x65686300,%eax
 31f:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 322:	6c                   	insb   (%dx),%es:(%rdi)
 323:	65 76 65             	gs jbe 38b <_init-0x400c75>
 326:	6c                   	insb   (%dx),%es:(%rdi)
 327:	00 6f 70             	add    %ch,0x70(%rdi)
 32a:	74 73                	je     39f <_init-0x400c61>
 32c:	74 72                	je     3a0 <_init-0x400c60>
 32e:	69 6e 67 00 73 68 6f 	imul   $0x6f687300,0x67(%rsi),%ebp
 335:	72 74                	jb     3ab <_init-0x400c55>
 337:	20 75 6e             	and    %dh,0x6e(%rbp)
 33a:	73 69                	jae    3a5 <_init-0x400c5b>
 33c:	67 6e                	outsb  %ds:(%esi),(%dx)
 33e:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 343:	74 00                	je     345 <_init-0x400cbb>
 345:	6f                   	outsl  %ds:(%rsi),(%dx)
 346:	70 74                	jo     3bc <_init-0x400c44>
 348:	5f                   	pop    %rdi
 349:	61                   	(bad)  
 34a:	75 74                	jne    3c0 <_init-0x400c40>
 34c:	68 6b 65 79 00       	pushq  $0x79656b
 351:	6d                   	insl   (%dx),%es:(%rdi)
 352:	61                   	(bad)  
 353:	69 6e 2e 63 00 67 65 	imul   $0x65670063,0x2e(%rsi),%ebp
 35a:	6e                   	outsb  %ds:(%rsi),(%dx)
 35b:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
 35e:	6b 69 65 00          	imul   $0x0,0x65(%rcx),%ebp
 362:	5f                   	pop    %rdi
 363:	5f                   	pop    %rdi
 364:	6f                   	outsl  %ds:(%rsi),(%dx)
 365:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 36a:	74 00                	je     36c <_init-0x400c94>
 36c:	73 63                	jae    3d1 <_init-0x400c2f>
 36e:	72 61                	jb     3d1 <_init-0x400c2f>
 370:	6d                   	insl   (%dx),%es:(%rdi)
 371:	62                   	(bad)  
 372:	6c                   	insb   (%dx),%es:(%rdi)
 373:	65 00 5f 63          	add    %bl,%gs:0x63(%rdi)
 377:	68 61 69 6e 00       	pushq  $0x6e6961
 37c:	5f                   	pop    %rdi
 37d:	49                   	rex.WB
 37e:	4f 5f                	rex.WRXB pop %r15
 380:	77 69                	ja     3eb <_init-0x400c15>
 382:	64 65 5f             	fs gs pop %rdi
 385:	64 61                	fs (bad) 
 387:	74 61                	je     3ea <_init-0x400c16>
 389:	00 76 61             	add    %dh,0x61(%rsi)
 38c:	6c                   	insb   (%dx),%es:(%rdi)
 38d:	69 64 5f 68 6f 73 74 	imul   $0x74736f,0x68(%rdi,%rbx,2),%esp
 394:	00 
 395:	5f                   	pop    %rdi
 396:	5f                   	pop    %rdi
 397:	6f                   	outsl  %ds:(%rsi),(%dx)
 398:	66 66 5f             	data16 pop %di
 39b:	74 00                	je     39d <_init-0x400c63>
 39d:	5f                   	pop    %rdi
 39e:	49                   	rex.WB
 39f:	4f 5f                	rex.WRXB pop %r15
 3a1:	62 61                	(bad)  
 3a3:	63 6b 75             	movslq 0x75(%rbx),%ebp
 3a6:	70 5f                	jo     407 <_init-0x400bf9>
 3a8:	62 61                	(bad)  
 3aa:	73 65                	jae    411 <_init-0x400bef>
 3ac:	00 73 74             	add    %dh,0x74(%rbx)
 3af:	64 69 6e 00 5f 66 6c 	imul   $0x616c665f,%fs:0x0(%rsi),%ebp
 3b6:	61 
 3b7:	67 73 32             	addr32 jae 3ec <_init-0x400c14>
 3ba:	00 5f 6d             	add    %bl,0x6d(%rdi)
 3bd:	6f                   	outsl  %ds:(%rsi),(%dx)
 3be:	64 65 00 6f 70       	fs add %ch,%gs:0x70(%rdi)
 3c3:	74 5f                	je     424 <_init-0x400bdc>
 3c5:	6c                   	insb   (%dx),%es:(%rdi)
 3c6:	65 76 65             	gs jbe 42e <_init-0x400bd2>
 3c9:	6c                   	insb   (%dx),%es:(%rdi)
 3ca:	00 74 69 6d          	add    %dh,0x6d(%rcx,%rbp,2)
 3ce:	65 00 74 61 72       	add    %dh,%gs:0x72(%rcx,%riz,2)
 3d3:	67 65 74 5f          	addr32 gs je 436 <_init-0x400bca>
 3d7:	70 72                	jo     44b <_init-0x400bb5>
 3d9:	65 66 69 78 00 66 6f 	imul   $0x6f66,%gs:0x0(%rax),%di
 3e0:	70 65                	jo     447 <_init-0x400bb9>
 3e2:	6e                   	outsb  %ds:(%rsi),(%dx)
 3e3:	00 5f 49             	add    %bl,0x49(%rdi)
 3e6:	4f 5f                	rex.WRXB pop %r15
 3e8:	73 61                	jae    44b <_init-0x400bb5>
 3ea:	76 65                	jbe    451 <_init-0x400baf>
 3ec:	5f                   	pop    %rdi
 3ed:	62 61                	(bad)  
 3ef:	73 65                	jae    456 <_init-0x400baa>
 3f1:	00 73 74             	add    %dh,0x74(%rbx)
 3f4:	72 63                	jb     459 <_init-0x400ba7>
 3f6:	61                   	(bad)  
 3f7:	73 65                	jae    45e <_init-0x400ba2>
 3f9:	63 6d 70             	movslq 0x70(%rbp),%ebp
 3fc:	00 6f 70             	add    %ch,0x70(%rdi)
 3ff:	74 6f                	je     470 <_init-0x400b90>
 401:	70 74                	jo     477 <_init-0x400b89>
 403:	00 5f 66             	add    %bl,0x66(%rdi)
 406:	69 6c 65 6e 6f 00 5f 	imul   $0x5f5f006f,0x6e(%rbp,%riz,2),%ebp
 40d:	5f 
 40e:	6e                   	outsb  %ds:(%rsi),(%dx)
 40f:	70 74                	jo     485 <_init-0x400b7b>
 411:	72 00                	jb     413 <_init-0x400bed>
 413:	5f                   	pop    %rdi
 414:	66 6c                	data16 insb (%dx),%es:(%rdi)
 416:	61                   	(bad)  
 417:	67 73 00             	addr32 jae 41a <_init-0x400be6>
 41a:	73 74                	jae    490 <_init-0x400b70>
 41c:	64 6f                	outsl  %fs:(%rsi),(%dx)
 41e:	75 74                	jne    494 <_init-0x400b6c>
 420:	00 5f 49             	add    %bl,0x49(%rdi)
 423:	4f 5f                	rex.WRXB pop %r15
 425:	63 6f 64             	movslq 0x64(%rdi),%ebp
 428:	65 63 76 74          	movslq %gs:0x74(%rsi),%esi
 42c:	00 72 76             	add    %dh,0x76(%rdx)
 42f:	61                   	(bad)  
 430:	6c                   	insb   (%dx),%es:(%rdi)
 431:	00 73 63             	add    %dh,0x63(%rbx)
 434:	72 61                	jb     497 <_init-0x400b69>
 436:	6d                   	insl   (%dx),%es:(%rdi)
 437:	62                   	(bad)  
 438:	6c                   	insb   (%dx),%es:(%rdi)
 439:	65 2d 34 33 35 37    	gs sub $0x37353334,%eax
 43f:	39 33                	cmp    %esi,(%rbx)
 441:	31 30                	xor    %esi,(%rax)
 443:	2e 63 00             	movslq %cs:(%rax),%eax
 446:	67 65 74 62          	addr32 gs je 4ac <_init-0x400b54>
 44a:	75 66                	jne    4b2 <_init-0x400b4e>
 44c:	00 62 75             	add    %ah,0x75(%rdx)
 44f:	66 2e 63 00          	movslq %cs:(%rax),%ax
 453:	47                   	rex.RXB
 454:	65 74 73             	gs je  4ca <_init-0x400b36>
 457:	00 47 4e             	add    %al,0x4e(%rdi)
 45a:	55                   	push   %rbp
 45b:	20 43 31             	and    %al,0x31(%rbx)
 45e:	37                   	(bad)  
 45f:	20 38                	and    %bh,(%rax)
 461:	2e 33 2e             	xor    %cs:(%rsi),%ebp
 464:	30 20                	xor    %ah,(%rax)
 466:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
 46b:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 471:	72 69                	jb     4dc <_init-0x400b24>
 473:	63 20                	movslq (%rax),%esp
 475:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 47a:	68 3d 78 38 36       	pushq  $0x3638783d
 47f:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 484:	67 20 2d 4f 67 20 2d 	and    %ch,0x2d20674f(%eip)        # 2d206bda <_end+0x2cdffaa2>
 48b:	66 6e                	data16 outsb %ds:(%rsi),(%dx)
 48d:	6f                   	outsl  %ds:(%rsi),(%dx)
 48e:	2d 73 74 61 63       	sub    $0x63617473,%eax
 493:	6b 2d 70 72 6f 74 65 	imul   $0x65,0x746f7270(%rip),%ebp        # 746f770a <_end+0x742f05d2>
 49a:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
 49e:	00 63 6f             	add    %ah,0x6f(%rbx)
 4a1:	6e                   	outsb  %ds:(%rsi),(%dx)
 4a2:	66 69 67 2e 63 00    	imul   $0x63,0x2e(%rdi),%sp
 4a8:	74 65                	je     50f <_init-0x400af1>
 4aa:	73 74                	jae    520 <_init-0x400ae0>
 4ac:	00 73 70             	add    %dh,0x70(%rbx)
 4af:	72 69                	jb     51a <_init-0x400ae6>
 4b1:	6e                   	outsb  %ds:(%rsi),(%dx)
 4b2:	74 66                	je     51a <_init-0x400ae6>
 4b4:	00 68 65             	add    %ch,0x65(%rax)
 4b7:	78 6d                	js     526 <_init-0x400ada>
 4b9:	61                   	(bad)  
 4ba:	74 63                	je     51f <_init-0x400ae1>
 4bc:	68 00 73 76 61       	pushq  $0x61767300
 4c1:	6c                   	insb   (%dx),%es:(%rdi)
 4c2:	00 76 61             	add    %dh,0x61(%rsi)
 4c5:	6c                   	insb   (%dx),%es:(%rdi)
 4c6:	69 64 61 74 65 00 76 	imul   $0x69760065,0x74(%rcx,%riz,2),%esp
 4cd:	69 
 4ce:	73 69                	jae    539 <_init-0x400ac7>
 4d0:	62                   	(bad)  
 4d1:	6c                   	insb   (%dx),%es:(%rdi)
 4d2:	65 2e 63 00          	gs movslq %cs:(%rax),%eax
 4d6:	73 74                	jae    54c <_init-0x400ab4>
 4d8:	72 6e                	jb     548 <_init-0x400ab8>
 4da:	63 6d 70             	movslq 0x70(%rbp),%ebp
 4dd:	00 74 6f 75          	add    %dh,0x75(%rdi,%rbp,2)
 4e1:	63 68 31             	movslq 0x31(%rax),%ebp
 4e4:	00 74 6f 75          	add    %dh,0x75(%rdi,%rbp,2)
 4e8:	63 68 32             	movslq 0x32(%rax),%ebp
 4eb:	00 74 6f 75          	add    %dh,0x75(%rdi,%rbp,2)
 4ef:	63 68 33             	movslq 0x33(%rax),%ebp
 4f2:	00 63 62             	add    %ah,0x62(%rbx)
 4f5:	75 66                	jne    55d <_init-0x400aa3>
 4f7:	00 73 74             	add    %dh,0x74(%rbx)
 4fa:	61                   	(bad)  
 4fb:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 4fe:	74 6f                	je     56f <_init-0x400a91>
 500:	70 00                	jo     502 <_init-0x400afe>
 502:	73 61                	jae    565 <_init-0x400a9b>
 504:	76 65                	jbe    56b <_init-0x400a95>
 506:	5f                   	pop    %rdi
 507:	74 65                	je     56e <_init-0x400a92>
 509:	72 6d                	jb     578 <_init-0x400a88>
 50b:	00 67 6c             	add    %ah,0x6c(%rdi)
 50e:	6f                   	outsl  %ds:(%rsi),(%dx)
 50f:	62 61 6c 5f 73       	(bad)  {%k7}
 514:	61                   	(bad)  
 515:	76 65                	jbe    57c <_init-0x400a84>
 517:	5f                   	pop    %rdi
 518:	73 74                	jae    58e <_init-0x400a72>
 51a:	61                   	(bad)  
 51b:	63 6b 00             	movslq 0x0(%rbx),%ebp
 51e:	73 61                	jae    581 <_init-0x400a7f>
 520:	76 65                	jbe    587 <_init-0x400a79>
 522:	5f                   	pop    %rdi
 523:	63 68 61             	movslq 0x61(%rax),%ebp
 526:	72 00                	jb     528 <_init-0x400ad8>
 528:	67 6c                	insb   (%dx),%es:(%edi)
 52a:	6f                   	outsl  %ds:(%rsi),(%dx)
 52b:	62 61 6c 5f 6f       	(bad)  {%k7}
 530:	66 66 73 65          	data16 data16 jae 599 <_init-0x400a67>
 534:	74 00                	je     536 <_init-0x400aca>
 536:	67 65 74 73          	addr32 gs je 5ad <_init-0x400a53>
 53a:	5f                   	pop    %rdi
 53b:	63 6e 74             	movslq 0x74(%rsi),%ebp
 53e:	00 67 65             	add    %ah,0x65(%rdi)
 541:	74 63                	je     5a6 <_init-0x400a5a>
 543:	00 67 65             	add    %ah,0x65(%rdi)
 546:	74 73                	je     5bb <_init-0x400a45>
 548:	5f                   	pop    %rdi
 549:	62                   	(bad)  
 54a:	75 66                	jne    5b2 <_init-0x400a4e>
 54c:	00 6d 75             	add    %ch,0x75(%rbp)
 54f:	6e                   	outsb  %ds:(%rsi),(%dx)
 550:	6d                   	insl   (%dx),%es:(%rdi)
 551:	61                   	(bad)  
 552:	70 00                	jo     554 <_init-0x400aac>
 554:	73 70                	jae    5c6 <_init-0x400a3a>
 556:	61                   	(bad)  
 557:	63 65 00             	movslq 0x0(%rbp),%esp
 55a:	73 65                	jae    5c1 <_init-0x400a3f>
 55c:	67 68 61 6e 64 6c    	addr32 pushq $0x6c646e61
 562:	65 72 00             	gs jb  565 <_init-0x400a9b>
 565:	69 6c 6c 65 67 61 6c 	imul   $0x686c6167,0x65(%rsp,%rbp,2),%ebp
 56c:	68 
 56d:	61                   	(bad)  
 56e:	6e                   	outsb  %ds:(%rsi),(%dx)
 56f:	64 6c                	fs insb (%dx),%es:(%rdi)
 571:	65 72 00             	gs jb  574 <_init-0x400a8c>
 574:	64 65 73 74          	fs gs jae 5ec <_init-0x400a14>
 578:	00 73 75             	add    %dh,0x75(%rbx)
 57b:	70 70                	jo     5ed <_init-0x400a13>
 57d:	6f                   	outsl  %ds:(%rsi),(%dx)
 57e:	72 74                	jb     5f4 <_init-0x400a0c>
 580:	2e 63 00             	movslq %cs:(%rax),%eax
 583:	6d                   	insl   (%dx),%es:(%rdi)
 584:	6d                   	insl   (%dx),%es:(%rdi)
 585:	61                   	(bad)  
 586:	70 00                	jo     588 <_init-0x400a78>
 588:	62                   	(bad)  
 589:	75 73                	jne    5fe <_init-0x400a02>
 58b:	68 61 6e 64 6c       	pushq  $0x6c646e61
 590:	65 72 00             	gs jb  593 <_init-0x400a6d>
 593:	74 72                	je     607 <_init-0x4009f9>
 595:	61                   	(bad)  
 596:	6e                   	outsb  %ds:(%rsi),(%dx)
 597:	73 5f                	jae    5f8 <_init-0x400a08>
 599:	63 68 61             	movslq 0x61(%rax),%ebp
 59c:	72 00                	jb     59e <_init-0x400a62>
 59e:	6d                   	insl   (%dx),%es:(%rdi)
 59f:	65 6d                	gs insl (%dx),%es:(%rdi)
 5a1:	73 65                	jae    608 <_init-0x4009f8>
 5a3:	74 00                	je     5a5 <_init-0x400a5b>
 5a5:	73 74                	jae    61b <_init-0x4009e5>
 5a7:	61                   	(bad)  
 5a8:	74 75                	je     61f <_init-0x4009e1>
 5aa:	73 00                	jae    5ac <_init-0x400a54>
 5ac:	61                   	(bad)  
 5ad:	75 74                	jne    623 <_init-0x4009dd>
 5af:	6f                   	outsl  %ds:(%rsi),(%dx)
 5b0:	72 65                	jb     617 <_init-0x4009e9>
 5b2:	73 75                	jae    629 <_init-0x4009d7>
 5b4:	6c                   	insb   (%dx),%es:(%rdi)
 5b5:	74 00                	je     5b7 <_init-0x400a49>
 5b7:	73 69                	jae    622 <_init-0x4009de>
 5b9:	67 61                	addr32 (bad) 
 5bb:	6c                   	insb   (%dx),%es:(%rdi)
 5bc:	72 6d                	jb     62b <_init-0x4009d5>
 5be:	68 61 6e 64 6c       	pushq  $0x6c646e61
 5c3:	65 72 00             	gs jb  5c6 <_init-0x400a3a>
 5c6:	6e                   	outsb  %ds:(%rsi),(%dx)
 5c7:	6f                   	outsl  %ds:(%rsi),(%dx)
 5c8:	74 69                	je     633 <_init-0x4009cd>
 5ca:	66 79 5f             	data16 jns 62c <_init-0x4009d4>
 5cd:	73 65                	jae    634 <_init-0x4009cc>
 5cf:	72 76                	jb     647 <_init-0x4009b9>
 5d1:	65 72 00             	gs jb  5d4 <_init-0x400a2c>
 5d4:	6e                   	outsb  %ds:(%rsi),(%dx)
 5d5:	65 77 5f             	gs ja  637 <_init-0x4009c9>
 5d8:	73 74                	jae    64e <_init-0x4009b2>
 5da:	61                   	(bad)  
 5db:	63 6b 00             	movslq 0x0(%rbx),%ebp
 5de:	70 61                	jo     641 <_init-0x4009bf>
 5e0:	73 73                	jae    655 <_init-0x4009ab>
 5e2:	00 5f 5f             	add    %bl,0x5f(%rdi)
 5e5:	69 6e 36 5f 75 00 73 	imul   $0x7300755f,0x36(%rsi),%ebp
 5ec:	6f                   	outsl  %ds:(%rsi),(%dx)
 5ed:	63 6b 65             	movslq 0x65(%rbx),%ebp
 5f0:	74 00                	je     5f2 <_init-0x400a0e>
 5f2:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
 5f6:	65 00 69 6e          	add    %ch,%gs:0x6e(%rcx)
 5fa:	5f                   	pop    %rdi
 5fb:	70 6f                	jo     66c <_init-0x400994>
 5fd:	72 74                	jb     673 <_init-0x40098d>
 5ff:	5f                   	pop    %rdi
 600:	74 00                	je     602 <_init-0x4009fe>
 602:	5f                   	pop    %rdi
 603:	5f                   	pop    %rdi
 604:	75 69                	jne    66f <_init-0x400991>
 606:	6e                   	outsb  %ds:(%rsi),(%dx)
 607:	74 38                	je     641 <_init-0x4009bf>
 609:	5f                   	pop    %rdi
 60a:	74 00                	je     60c <_init-0x4009f4>
 60c:	5f                   	pop    %rdi
 60d:	5f                   	pop    %rdi
 60e:	73 69                	jae    679 <_init-0x400987>
 610:	67 68 61 6e 64 6c    	addr32 pushq $0x6c646e61
 616:	65 72 5f             	gs jb  678 <_init-0x400988>
 619:	74 00                	je     61b <_init-0x4009e5>
 61b:	53                   	push   %rbx
 61c:	4f                   	rex.WRXB
 61d:	43                   	rex.XB
 61e:	4b 5f                	rex.WXB pop %r15
 620:	4e                   	rex.WRX
 621:	4f                   	rex.WRXB
 622:	4e                   	rex.WRX
 623:	42                   	rex.X
 624:	4c                   	rex.WR
 625:	4f                   	rex.WRXB
 626:	43                   	rex.XB
 627:	4b 00 6e 6c          	rex.WXB add %bpl,0x6c(%r14)
 62b:	65 66 74 00          	gs data16 je 62f <_init-0x4009d1>
 62f:	72 69                	jb     69a <_init-0x400966>
 631:	6f                   	outsl  %ds:(%rsi),(%dx)
 632:	5f                   	pop    %rdi
 633:	66 64 00 69 6e       	data16 add %ch,%fs:0x6e(%rcx)
 638:	5f                   	pop    %rdi
 639:	61                   	(bad)  
 63a:	64 64 72 5f          	fs fs jb 69d <_init-0x400963>
 63e:	74 00                	je     640 <_init-0x4009c0>
 640:	75 73                	jne    6b5 <_init-0x40094b>
 642:	65 72 69             	gs jb  6ae <_init-0x400952>
 645:	64 00 75 73          	add    %dh,%fs:0x73(%rbp)
 649:	72 62                	jb     6ad <_init-0x400953>
 64b:	75 66                	jne    6b3 <_init-0x40094d>
 64d:	00 62 75             	add    %ah,0x75(%rdx)
 650:	66 70 00             	data16 jo 653 <_init-0x4009ad>
 653:	5f                   	pop    %rdi
 654:	5f                   	pop    %rdi
 655:	75 36                	jne    68d <_init-0x400973>
 657:	5f                   	pop    %rdi
 658:	61                   	(bad)  
 659:	64 64 72 31          	fs fs jb 68e <_init-0x400972>
 65d:	36 00 5f 5f          	add    %bl,%ss:0x5f(%rdi)
 661:	75 36                	jne    699 <_init-0x400967>
 663:	5f                   	pop    %rdi
 664:	61                   	(bad)  
 665:	64 64 72 33          	fs fs jb 69c <_init-0x400964>
 669:	32 00                	xor    (%rax),%al
 66b:	5f                   	pop    %rdi
 66c:	5f                   	pop    %rdi
 66d:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
 674:	73 73                	jae    6e9 <_init-0x400917>
 676:	63 61 6e             	movslq 0x6e(%rcx),%esp
 679:	66 00 5f 5f          	data16 add %bl,0x5f(%rdi)
 67d:	73 73                	jae    6f2 <_init-0x40090e>
 67f:	69 7a 65 5f 74 00 72 	imul   $0x7200745f,0x65(%rdx),%edi
 686:	69 6f 5f 72 65 61 64 	imul   $0x64616572,0x5f(%rdi),%ebp
 68d:	69 6e 69 74 62 00 53 	imul   $0x53006274,0x69(%rsi),%ebp
 694:	4f                   	rex.WRXB
 695:	43                   	rex.XB
 696:	4b 5f                	rex.WXB pop %r15
 698:	53                   	push   %rbx
 699:	54                   	push   %rsp
 69a:	52                   	push   %rdx
 69b:	45                   	rex.RB
 69c:	41                   	rex.B
 69d:	4d 00 69 6e          	rex.WRB add %r13b,0x6e(%r9)
 6a1:	36 61                	ss (bad) 
 6a3:	64 64 72 5f          	fs fs jb 706 <_init-0x4008fa>
 6a7:	6c                   	insb   (%dx),%es:(%rdi)
 6a8:	6f                   	outsl  %ds:(%rsi),(%dx)
 6a9:	6f                   	outsl  %ds:(%rsi),(%dx)
 6aa:	70 62                	jo     70e <_init-0x4008f2>
 6ac:	61                   	(bad)  
 6ad:	63 6b 00             	movslq 0x0(%rbx),%ebp
 6b0:	72 69                	jb     71b <_init-0x4008e5>
 6b2:	6f                   	outsl  %ds:(%rsi),(%dx)
 6b3:	5f                   	pop    %rdi
 6b4:	77 72                	ja     728 <_init-0x4008d8>
 6b6:	69 74 65 6e 00 5f 5f 	imul   $0x755f5f00,0x6e(%rbp,%riz,2),%esi
 6bd:	75 
 6be:	69 6e 74 33 32 5f 74 	imul   $0x745f3233,0x74(%rsi),%ebp
 6c5:	00 72 65             	add    %dh,0x65(%rdx)
 6c8:	71 5f                	jno    729 <_init-0x4008d7>
 6ca:	73 69                	jae    735 <_init-0x4008cb>
 6cc:	7a 65                	jp     733 <_init-0x4008cd>
 6ce:	00 73 69             	add    %dh,0x69(%rbx)
 6d1:	6e                   	outsb  %ds:(%rsi),(%dx)
 6d2:	5f                   	pop    %rdi
 6d3:	7a 65                	jp     73a <_init-0x4008c6>
 6d5:	72 6f                	jb     746 <_init-0x4008ba>
 6d7:	00 53 4f             	add    %dl,0x4f(%rbx)
 6da:	43                   	rex.XB
 6db:	4b 5f                	rex.WXB pop %r15
 6dd:	52                   	push   %rdx
 6de:	44                   	rex.R
 6df:	4d 00 73 5f          	rex.WRB add %r14b,0x5f(%r11)
 6e3:	61                   	(bad)  
 6e4:	64 64 72 00          	fs fs jb 6e8 <_init-0x400918>
 6e8:	75 72                	jne    75c <_init-0x4008a4>
 6ea:	6c                   	insb   (%dx),%es:(%rdi)
 6eb:	65 6e                	outsb  %gs:(%rsi),(%dx)
 6ed:	63 6f 64             	movslq 0x64(%rdi),%ebp
 6f0:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 6f4:	62                   	(bad)  
 6f5:	75 69                	jne    760 <_init-0x4008a0>
 6f7:	6c                   	insb   (%dx),%es:(%rdi)
 6f8:	74 69                	je     763 <_init-0x40089d>
 6fa:	6e                   	outsb  %ds:(%rsi),(%dx)
 6fb:	5f                   	pop    %rdi
 6fc:	6d                   	insl   (%dx),%es:(%rdi)
 6fd:	65 6d                	gs insl (%dx),%es:(%rdi)
 6ff:	6d                   	insl   (%dx),%es:(%rdi)
 700:	6f                   	outsl  %ds:(%rsi),(%dx)
 701:	76 65                	jbe    768 <_init-0x400898>
 703:	00 72 69             	add    %dh,0x69(%rdx)
 706:	6f                   	outsl  %ds:(%rsi),(%dx)
 707:	5f                   	pop    %rdi
 708:	72 65                	jb     76f <_init-0x400891>
 70a:	61                   	(bad)  
 70b:	64 00 5f 5f          	add    %bl,%fs:0x5f(%rdi)
 70f:	62 73                	(bad)  
 711:	78 00                	js     713 <_init-0x4008ed>
 713:	68 5f 6e 61 6d       	pushq  $0x6d616e5f
 718:	65 00 73 69          	add    %dh,%gs:0x69(%rbx)
 71c:	67 61                	addr32 (bad) 
 71e:	6c                   	insb   (%dx),%es:(%rdi)
 71f:	72 6d                	jb     78e <_init-0x400872>
 721:	5f                   	pop    %rdi
 722:	68 61 6e 64 6c       	pushq  $0x6c646e61
 727:	65 72 00             	gs jb  72a <_init-0x4008d6>
 72a:	73 69                	jae    795 <_init-0x40086b>
 72c:	6e                   	outsb  %ds:(%rsi),(%dx)
 72d:	5f                   	pop    %rdi
 72e:	61                   	(bad)  
 72f:	64 64 72 00          	fs fs jb 733 <_init-0x4008cd>
 733:	6d                   	insl   (%dx),%es:(%rdi)
 734:	61                   	(bad)  
 735:	78 6c                	js     7a3 <_init-0x40085d>
 737:	65 6e                	outsb  %gs:(%rsi),(%dx)
 739:	00 68 5f             	add    %ch,0x5f(%rax)
 73c:	61                   	(bad)  
 73d:	64 64 72 74          	fs fs jb 7b5 <_init-0x40084b>
 741:	79 70                	jns    7b3 <_init-0x40084d>
 743:	65 00 73 74          	add    %dh,%gs:0x74(%rbx)
 747:	72 63                	jb     7ac <_init-0x400854>
 749:	70 79                	jo     7c4 <_init-0x40083c>
 74b:	00 5f 5f             	add    %bl,0x5f(%rdi)
 74e:	62                   	(bad)  
 74f:	75 69                	jne    7ba <_init-0x400846>
 751:	6c                   	insb   (%dx),%es:(%rdi)
 752:	74 69                	je     7bd <_init-0x400843>
 754:	6e                   	outsb  %ds:(%rsi),(%dx)
 755:	5f                   	pop    %rdi
 756:	6d                   	insl   (%dx),%es:(%rdi)
 757:	65 6d                	gs insl (%dx),%es:(%rdi)
 759:	63 70 79             	movslq 0x79(%rax),%esi
 75c:	00 72 69             	add    %dh,0x69(%rdx)
 75f:	6f                   	outsl  %ds:(%rsi),(%dx)
 760:	5f                   	pop    %rdi
 761:	74 00                	je     763 <_init-0x40089d>
 763:	77 72                	ja     7d7 <_init-0x400829>
 765:	69 74 65 00 73 69 6e 	imul   $0x5f6e6973,0x0(%rbp,%riz,2),%esi
 76c:	5f 
 76d:	66 61                	data16 (bad) 
 76f:	6d                   	insl   (%dx),%es:(%rdi)
 770:	69 6c 79 00 76 65 72 	imul   $0x73726576,0x0(%rcx,%rdi,2),%ebp
 777:	73 
 778:	69 6f 6e 00 72 69 6f 	imul   $0x6f697200,0x6e(%rdi),%ebp
 77f:	5f                   	pop    %rdi
 780:	63 6e 74             	movslq 0x74(%rsi),%ebp
 783:	00 72 69             	add    %dh,0x69(%rdx)
 786:	6f                   	outsl  %ds:(%rsi),(%dx)
 787:	5f                   	pop    %rdi
 788:	62                   	(bad)  
 789:	75 66                	jne    7f1 <_init-0x40080f>
 78b:	70 74                	jo     801 <_init-0x4007ff>
 78d:	72 00                	jb     78f <_init-0x400871>
 78f:	68 5f 61 6c 69       	pushq  $0x696c615f
 794:	61                   	(bad)  
 795:	73 65                	jae    7fc <_init-0x400804>
 797:	73 00                	jae    799 <_init-0x400867>
 799:	69 6e 36 61 64 64 72 	imul   $0x72646461,0x36(%rsi),%ebp
 7a0:	5f                   	pop    %rdi
 7a1:	61                   	(bad)  
 7a2:	6e                   	outsb  %ds:(%rsi),(%dx)
 7a3:	79 00                	jns    7a5 <_init-0x40085b>
 7a5:	72 69                	jb     810 <_init-0x4007f0>
 7a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 7a8:	5f                   	pop    %rdi
 7a9:	62                   	(bad)  
 7aa:	75 66                	jne    812 <_init-0x4007ee>
 7ac:	00 65 72             	add    %ah,0x72(%rbp)
 7af:	72 63                	jb     814 <_init-0x4007ec>
 7b1:	6f                   	outsl  %ds:(%rsi),(%dx)
 7b2:	64 65 00 53 4f       	fs add %dl,%gs:0x4f(%rbx)
 7b7:	43                   	rex.XB
 7b8:	4b 5f                	rex.WXB pop %r15
 7ba:	44                   	rex.R
 7bb:	43                   	rex.XB
 7bc:	43 50                	rex.XB push %r8
 7be:	00 73 69             	add    %dh,0x69(%rbx)
 7c1:	6e                   	outsb  %ds:(%rsi),(%dx)
 7c2:	5f                   	pop    %rdi
 7c3:	70 6f                	jo     834 <_init-0x4007cc>
 7c5:	72 74                	jb     83b <_init-0x4007c5>
 7c7:	00 73 61             	add    %dh,0x61(%rbx)
 7ca:	5f                   	pop    %rdi
 7cb:	66 61                	data16 (bad) 
 7cd:	6d                   	insl   (%dx),%es:(%rdi)
 7ce:	69 6c 79 00 5f 5f 62 	imul   $0x73625f5f,0x0(%rcx,%rdi,2),%ebp
 7d5:	73 
 7d6:	77 61                	ja     839 <_init-0x4007c7>
 7d8:	70 5f                	jo     839 <_init-0x4007c7>
 7da:	31 36                	xor    %esi,(%rsi)
 7dc:	00 68 5f             	add    %ch,0x5f(%rax)
 7df:	6c                   	insb   (%dx),%es:(%rdi)
 7e0:	65 6e                	outsb  %gs:(%rsi),(%dx)
 7e2:	67 74 68             	addr32 je 84d <_init-0x4007b3>
 7e5:	00 68 5f             	add    %ch,0x5f(%rax)
 7e8:	61                   	(bad)  
 7e9:	64 64 72 5f          	fs fs jb 84c <_init-0x4007b4>
 7ed:	6c                   	insb   (%dx),%es:(%rdi)
 7ee:	69 73 74 00 5f 5f 73 	imul   $0x735f5f00,0x74(%rbx),%esi
 7f5:	6f                   	outsl  %ds:(%rsi),(%dx)
 7f6:	63 6b 65             	movslq 0x65(%rbx),%ebp
 7f9:	74 5f                	je     85a <_init-0x4007a6>
 7fb:	74 79                	je     876 <_init-0x40078a>
 7fd:	70 65                	jo     864 <_init-0x40079c>
 7ff:	00 6e 77             	add    %ch,0x77(%rsi)
 802:	72 69                	jb     86d <_init-0x400793>
 804:	74 74                	je     87a <_init-0x400786>
 806:	65 6e                	outsb  %gs:(%rsi),(%dx)
 808:	00 69 6e             	add    %ch,0x6e(%rcx)
 80b:	69 74 5f 74 69 6d 65 	imul   $0x6f656d69,0x74(%rdi,%rbx,2),%esi
 812:	6f 
 813:	75 74                	jne    889 <_init-0x400777>
 815:	00 64 72 69          	add    %ah,0x69(%rdx,%rsi,2)
 819:	76 65                	jbe    880 <_init-0x400780>
 81b:	72 5f                	jb     87c <_init-0x400784>
 81d:	70 6f                	jo     88e <_init-0x400772>
 81f:	73 74                	jae    895 <_init-0x40076b>
 821:	00 73 75             	add    %dh,0x75(%rbx)
 824:	62                   	(bad)  
 825:	6d                   	insl   (%dx),%es:(%rdi)
 826:	69 74 72 00 53 4f 43 	imul   $0x4b434f53,0x0(%rdx,%rsi,2),%esi
 82d:	4b 
 82e:	5f                   	pop    %rdi
 82f:	50                   	push   %rax
 830:	41                   	rex.B
 831:	43                   	rex.XB
 832:	4b                   	rex.WXB
 833:	45 54                	rex.RB push %r12
 835:	00 63 6f             	add    %ah,0x6f(%rbx)
 838:	6e                   	outsb  %ds:(%rsi),(%dx)
 839:	6e                   	outsb  %ds:(%rsi),(%dx)
 83a:	65 63 74 00 69       	movslq %gs:0x69(%rax,%rax,1),%esi
 83f:	6e                   	outsb  %ds:(%rsi),(%dx)
 840:	36 5f                	ss pop %rdi
 842:	61                   	(bad)  
 843:	64 64 72 00          	fs fs jb 847 <_init-0x4007b9>
 847:	67 65 74 68          	addr32 gs je 8b3 <_init-0x40074d>
 84b:	6f                   	outsl  %ds:(%rsi),(%dx)
 84c:	73 74                	jae    8c2 <_init-0x40073e>
 84e:	62                   	(bad)  
 84f:	79 6e                	jns    8bf <_init-0x400741>
 851:	61                   	(bad)  
 852:	6d                   	insl   (%dx),%es:(%rdi)
 853:	65 00 68 6f          	add    %ch,%gs:0x6f(%rax)
 857:	73 74                	jae    8cd <_init-0x400733>
 859:	65 6e                	outsb  %gs:(%rsi),(%dx)
 85b:	74 00                	je     85d <_init-0x4007a3>
 85d:	5f                   	pop    %rdi
 85e:	5f                   	pop    %rdi
 85f:	75 69                	jne    8ca <_init-0x400736>
 861:	6e                   	outsb  %ds:(%rsi),(%dx)
 862:	74 31                	je     895 <_init-0x40076b>
 864:	36 5f                	ss pop %rdi
 866:	74 00                	je     868 <_init-0x400798>
 868:	72 69                	jb     8d3 <_init-0x40072d>
 86a:	6f                   	outsl  %ds:(%rsi),(%dx)
 86b:	5f                   	pop    %rdi
 86c:	72 65                	jb     8d3 <_init-0x40072d>
 86e:	61                   	(bad)  
 86f:	64 6c                	fs insb (%dx),%es:(%rdi)
 871:	69 6e 65 62 00 5f 5f 	imul   $0x5f5f0062,0x65(%rsi),%ebp
 878:	75 36                	jne    8b0 <_init-0x400750>
 87a:	5f                   	pop    %rdi
 87b:	61                   	(bad)  
 87c:	64 64 72 38          	fs fs jb 8b8 <_init-0x400748>
 880:	00 5f 5f             	add    %bl,0x5f(%rdi)
 883:	65 72 72             	gs jb  8f8 <_init-0x400708>
 886:	6e                   	outsb  %ds:(%rsi),(%dx)
 887:	6f                   	outsl  %ds:(%rsi),(%dx)
 888:	5f                   	pop    %rdi
 889:	6c                   	insb   (%dx),%es:(%rdi)
 88a:	6f                   	outsl  %ds:(%rsi),(%dx)
 88b:	63 61 74             	movslq 0x74(%rcx),%esp
 88e:	69 6f 6e 00 64 72 69 	imul   $0x69726400,0x6e(%rdi),%ebp
 895:	76 65                	jbe    8fc <_init-0x400704>
 897:	72 6c                	jb     905 <_init-0x4006fb>
 899:	69 62 2e 63 00 65 72 	imul   $0x72650063,0x2e(%rdx),%esp
 8a0:	72 6d                	jb     90f <_init-0x4006f1>
 8a2:	73 67                	jae    90b <_init-0x4006f5>
 8a4:	00 73 65             	add    %dh,0x65(%rbx)
 8a7:	72 76                	jb     91f <_init-0x4006e1>
 8a9:	65 72 61             	gs jb  90d <_init-0x4006f3>
 8ac:	64 64 72 00          	fs fs jb 8b0 <_init-0x400750>
 8b0:	65 6e                	outsb  %gs:(%rsi),(%dx)
 8b2:	63 5f 72             	movslq 0x72(%rdi),%ebx
 8b5:	65 73 75             	gs jae 92d <_init-0x4006d3>
 8b8:	6c                   	insb   (%dx),%es:(%rdi)
 8b9:	74 00                	je     8bb <_init-0x400745>
 8bb:	73 61                	jae    91e <_init-0x4006e2>
 8bd:	5f                   	pop    %rdi
 8be:	66 61                	data16 (bad) 
 8c0:	6d                   	insl   (%dx),%es:(%rdi)
 8c1:	69 6c 79 5f 74 00 53 	imul   $0x4f530074,0x5f(%rcx,%rdi,2),%ebp
 8c8:	4f 
 8c9:	43                   	rex.XB
 8ca:	4b 5f                	rex.WXB pop %r15
 8cc:	43                   	rex.XB
 8cd:	4c                   	rex.WR
 8ce:	4f                   	rex.WRXB
 8cf:	45 58                	rex.RB pop %r8
 8d1:	45                   	rex.RB
 8d2:	43 00 73 6f          	rex.XB add %sil,0x6f(%r11)
 8d6:	63 6b 61             	movslq 0x61(%rbx),%ebp
 8d9:	64 64 72 00          	fs fs jb 8dd <_init-0x400723>
 8dd:	53                   	push   %rbx
 8de:	4f                   	rex.WRXB
 8df:	43                   	rex.XB
 8e0:	4b 5f                	rex.WXB pop %r15
 8e2:	44                   	rex.R
 8e3:	47 52                	rex.RXB push %r10
 8e5:	41                   	rex.B
 8e6:	4d 00 73 6f          	rex.WRB add %r14b,0x6f(%r11)
 8ea:	63 6b 61             	movslq 0x61(%rbx),%ebp
 8ed:	64 64 72 5f          	fs fs jb 950 <_init-0x4006b0>
 8f1:	69 6e 00 61 75 74 6f 	imul   $0x6f747561,0x0(%rsi),%ebp
 8f8:	67 72 61             	addr32 jb 95c <_init-0x4006a4>
 8fb:	64 65 64 00 73 61    	fs gs add %dh,%fs:0x61(%rbx)
 901:	5f                   	pop    %rdi
 902:	64 61                	fs (bad) 
 904:	74 61                	je     967 <_init-0x400699>
 906:	00 53 4f             	add    %dl,0x4f(%rbx)
 909:	43                   	rex.XB
 90a:	4b 5f                	rex.WXB pop %r15
 90c:	52                   	push   %rdx
 90d:	41 57                	push   %r15
 90f:	00 63 6c             	add    %ah,0x6c(%rbx)
 912:	69 65 6e 74 66 64 00 	imul   $0x646674,0x6e(%rbp),%esp
 919:	72 65                	jb     980 <_init-0x400680>
 91b:	73 75                	jae    992 <_init-0x40066e>
 91d:	6c                   	insb   (%dx),%es:(%rdi)
 91e:	74 5f                	je     97f <_init-0x400681>
 920:	73 69                	jae    98b <_init-0x400675>
 922:	7a 65                	jp     989 <_init-0x400677>
 924:	00 53 4f             	add    %dl,0x4f(%rbx)
 927:	43                   	rex.XB
 928:	4b 5f                	rex.WXB pop %r15
 92a:	53                   	push   %rbx
 92b:	45 51                	rex.RB push %r9
 92d:	50                   	push   %rax
 92e:	41                   	rex.B
 92f:	43                   	rex.XB
 930:	4b                   	rex.WXB
 931:	45 54                	rex.RB push %r12
 933:	00 63 68             	add    %ah,0x68(%rbx)
 936:	65 63 6b 00          	movslq %gs:0x0(%rbx),%ebp
 93a:	2f                   	(bad)  
 93b:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 940:	63 61 68             	movslq 0x68(%rcx),%esp
 943:	69 72 2f 77 6f 72 6b 	imul   $0x6b726f77,0x2f(%rdx),%esi
 94a:	73 70                	jae    9bc <_init-0x400644>
 94c:	61                   	(bad)  
 94d:	63 65 2f             	movslq 0x2f(%rbp),%esp
 950:	69 69 2d 61 73 6b 2f 	imul   $0x2f6b7361,0x2d(%rcx),%ebp
 957:	61                   	(bad)  
 958:	74 74                	je     9ce <_init-0x400632>
 95a:	61                   	(bad)  
 95b:	63 6b 6c             	movslq 0x6c(%rbx),%ebp
 95e:	61                   	(bad)  
 95f:	62                   	(bad)  
 960:	2f                   	(bad)  
 961:	73 72                	jae    9d5 <_init-0x40062b>
 963:	63 2f                	movslq (%rdi),%ebp
 965:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
 968:	6d                   	insl   (%dx),%es:(%rdi)
 969:	6f                   	outsl  %ds:(%rsi),(%dx)
 96a:	6e                   	outsb  %ds:(%rsi),(%dx)
 96b:	00 67 65             	add    %ah,0x65(%rdi)
 96e:	6e                   	outsb  %ds:(%rsi),(%dx)
 96f:	63 6f 6f             	movslq 0x6f(%rdi),%ebp
 972:	6b 69 65 2e          	imul   $0x2e,0x65(%rcx),%ebp
 976:	63 00                	movslq (%rax),%eax

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
       8:	e4 01                	in     $0x1,%al
       a:	00 00                	add    %al,(%rax)
       c:	00 00                	add    %al,(%rax)
       e:	00 00                	add    %al,(%rax)
      10:	fd                   	std    
      11:	01 00                	add    %eax,(%rax)
      13:	00 00                	add    %al,(%rax)
      15:	00 00                	add    %al,(%rax)
      17:	00 01                	add    %al,(%rcx)
      19:	00 55 fd             	add    %dl,-0x3(%rbp)
      1c:	01 00                	add    %eax,(%rax)
      1e:	00 00                	add    %al,(%rax)
      20:	00 00                	add    %al,(%rax)
      22:	00 92 03 00 00 00    	add    %dl,0x3(%rdx)
      28:	00 00                	add    %al,(%rax)
      2a:	00 01                	add    %al,(%rcx)
      2c:	00 56 92             	add    %dl,-0x6e(%rsi)
      2f:	03 00                	add    (%rax),%eax
      31:	00 00                	add    %al,(%rax)
      33:	00 00                	add    %al,(%rax)
      35:	00 99 03 00 00 00    	add    %bl,0x3(%rcx)
      3b:	00 00                	add    %al,(%rax)
      3d:	00 04 00             	add    %al,(%rax,%rax,1)
      40:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
      44:	99                   	cltd   
      45:	03 00                	add    (%rax),%eax
      47:	00 00                	add    %al,(%rax)
      49:	00 00                	add    %al,(%rax)
      4b:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
      51:	00 00                	add    %al,(%rax)
      53:	00 01                	add    %al,(%rcx)
      55:	00 56 00             	add    %dl,0x0(%rsi)
	...
      6c:	00 00                	add    %al,(%rax)
      6e:	00 e4                	add    %ah,%ah
      70:	01 00                	add    %eax,(%rax)
      72:	00 00                	add    %al,(%rax)
      74:	00 00                	add    %al,(%rax)
      76:	00 f8                	add    %bh,%al
      78:	01 00                	add    %eax,(%rax)
      7a:	00 00                	add    %al,(%rax)
      7c:	00 00                	add    %al,(%rax)
      7e:	00 01                	add    %al,(%rcx)
      80:	00 54 f8 01          	add    %dl,0x1(%rax,%rdi,8)
      84:	00 00                	add    %al,(%rax)
      86:	00 00                	add    %al,(%rax)
      88:	00 00                	add    %al,(%rax)
      8a:	91                   	xchg   %eax,%ecx
      8b:	03 00                	add    (%rax),%eax
      8d:	00 00                	add    %al,(%rax)
      8f:	00 00                	add    %al,(%rax)
      91:	00 01                	add    %al,(%rcx)
      93:	00 53 91             	add    %dl,-0x6f(%rbx)
      96:	03 00                	add    (%rax),%eax
      98:	00 00                	add    %al,(%rax)
      9a:	00 00                	add    %al,(%rax)
      9c:	00 99 03 00 00 00    	add    %bl,0x3(%rcx)
      a2:	00 00                	add    %al,(%rax)
      a4:	00 04 00             	add    %al,(%rax,%rax,1)
      a7:	f3 01 54 9f 99       	repz add %edx,-0x67(%rdi,%rbx,4)
      ac:	03 00                	add    (%rax),%eax
      ae:	00 00                	add    %al,(%rax)
      b0:	00 00                	add    %al,(%rax)
      b2:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
      b8:	00 00                	add    %al,(%rax)
      ba:	00 01                	add    %al,(%rcx)
      bc:	00 53 00             	add    %dl,0x0(%rbx)
	...
      db:	00 77 02             	add    %dh,0x2(%rdi)
      de:	00 00                	add    %al,(%rax)
      e0:	00 00                	add    %al,(%rax)
      e2:	00 00                	add    %al,(%rax)
      e4:	7e 02                	jle    e8 <_init-0x400f18>
      e6:	00 00                	add    %al,(%rax)
      e8:	00 00                	add    %al,(%rax)
      ea:	00 00                	add    %al,(%rax)
      ec:	01 00                	add    %eax,(%rax)
      ee:	54                   	push   %rsp
      ef:	7f 02                	jg     f3 <_init-0x400f0d>
      f1:	00 00                	add    %al,(%rax)
      f3:	00 00                	add    %al,(%rax)
      f5:	00 00                	add    %al,(%rax)
      f7:	86 02                	xchg   %al,(%rdx)
      f9:	00 00                	add    %al,(%rax)
      fb:	00 00                	add    %al,(%rax)
      fd:	00 00                	add    %al,(%rax)
      ff:	01 00                	add    %eax,(%rax)
     101:	54                   	push   %rsp
     102:	c2 02 00             	retq   $0x2
     105:	00 00                	add    %al,(%rax)
     107:	00 00                	add    %al,(%rax)
     109:	00 cc                	add    %cl,%ah
     10b:	02 00                	add    (%rax),%al
     10d:	00 00                	add    %al,(%rax)
     10f:	00 00                	add    %al,(%rax)
     111:	00 01                	add    %al,(%rcx)
     113:	00 54 e8 02          	add    %dl,0x2(%rax,%rbp,8)
     117:	00 00                	add    %al,(%rax)
     119:	00 00                	add    %al,(%rax)
     11b:	00 00                	add    %al,(%rax)
     11d:	f2 02 00             	repnz add (%rax),%al
     120:	00 00                	add    %al,(%rax)
     122:	00 00                	add    %al,(%rax)
     124:	00 01                	add    %al,(%rcx)
     126:	00 50 f2             	add    %dl,-0xe(%rax)
     129:	02 00                	add    (%rax),%al
     12b:	00 00                	add    %al,(%rax)
     12d:	00 00                	add    %al,(%rax)
     12f:	00 13                	add    %dl,(%rbx)
     131:	03 00                	add    (%rax),%eax
     133:	00 00                	add    %al,(%rax)
     135:	00 00                	add    %al,(%rax)
     137:	00 01                	add    %al,(%rcx)
     139:	00 54 24 03          	add    %dl,0x3(%rsp)
     13d:	00 00                	add    %al,(%rax)
     13f:	00 00                	add    %al,(%rax)
     141:	00 00                	add    %al,(%rax)
     143:	40 03 00             	rex add (%rax),%eax
     146:	00 00                	add    %al,(%rax)
     148:	00 00                	add    %al,(%rax)
     14a:	00 01                	add    %al,(%rcx)
     14c:	00 54 49 03          	add    %dl,0x3(%rcx,%rcx,2)
     150:	00 00                	add    %al,(%rax)
     152:	00 00                	add    %al,(%rax)
     154:	00 00                	add    %al,(%rax)
     156:	55                   	push   %rbp
     157:	03 00                	add    (%rax),%eax
     159:	00 00                	add    %al,(%rax)
     15b:	00 00                	add    %al,(%rax)
     15d:	00 01                	add    %al,(%rcx)
     15f:	00 50 00             	add    %dl,0x0(%rax)
	...
     16e:	00 00                	add    %al,(%rax)
     170:	00 03                	add    %al,(%rbx)
     172:	00 00                	add    %al,(%rax)
     174:	00 00                	add    %al,(%rax)
     176:	01 01                	add    %eax,(%rcx)
     178:	00 00                	add    %al,(%rax)
     17a:	00 00                	add    %al,(%rax)
     17c:	00 f1                	add    %dh,%cl
     17e:	01 00                	add    %eax,(%rax)
     180:	00 00                	add    %al,(%rax)
     182:	00 00                	add    %al,(%rax)
     184:	00 34 02             	add    %dh,(%rdx,%rax,1)
     187:	00 00                	add    %al,(%rax)
     189:	00 00                	add    %al,(%rax)
     18b:	00 00                	add    %al,(%rax)
     18d:	0a 00                	or     (%rax),%al
     18f:	03 2d 32 40 00 00    	add    0x4032(%rip),%ebp        # 41c7 <_init-0x3fce39>
     195:	00 00                	add    %al,(%rax)
     197:	00 9f 34 02 00 00    	add    %bl,0x234(%rdi)
     19d:	00 00                	add    %al,(%rax)
     19f:	00 00                	add    %al,(%rax)
     1a1:	53                   	push   %rbx
     1a2:	02 00                	add    (%rax),%al
     1a4:	00 00                	add    %al,(%rax)
     1a6:	00 00                	add    %al,(%rax)
     1a8:	00 01                	add    %al,(%rcx)
     1aa:	00 5c 53 02          	add    %bl,0x2(%rbx,%rdx,2)
     1ae:	00 00                	add    %al,(%rax)
     1b0:	00 00                	add    %al,(%rax)
     1b2:	00 00                	add    %al,(%rax)
     1b4:	6e                   	outsb  %ds:(%rsi),(%dx)
     1b5:	02 00                	add    (%rax),%al
     1b7:	00 00                	add    %al,(%rax)
     1b9:	00 00                	add    %al,(%rax)
     1bb:	00 0a                	add    %cl,(%rdx)
     1bd:	00 03                	add    %al,(%rbx)
     1bf:	2d 32 40 00 00       	sub    $0x4032,%eax
     1c4:	00 00                	add    %al,(%rax)
     1c6:	00 9f 6e 02 00 00    	add    %bl,0x26e(%rdi)
     1cc:	00 00                	add    %al,(%rax)
     1ce:	00 00                	add    %al,(%rax)
     1d0:	77 02                	ja     1d4 <_init-0x400e2c>
     1d2:	00 00                	add    %al,(%rax)
     1d4:	00 00                	add    %al,(%rax)
     1d6:	00 00                	add    %al,(%rax)
     1d8:	0a 00                	or     (%rax),%al
     1da:	03 25 32 40 00 00    	add    0x4032(%rip),%esp        # 4212 <_init-0x3fcdee>
     1e0:	00 00                	add    %al,(%rax)
     1e2:	00 9f 77 02 00 00    	add    %bl,0x277(%rdi)
     1e8:	00 00                	add    %al,(%rax)
     1ea:	00 00                	add    %al,(%rax)
     1ec:	94                   	xchg   %eax,%esp
     1ed:	03 00                	add    (%rax),%eax
     1ef:	00 00                	add    %al,(%rax)
     1f1:	00 00                	add    %al,(%rax)
     1f3:	00 01                	add    %al,(%rcx)
     1f5:	00 5c 99 03          	add    %bl,0x3(%rcx,%rbx,4)
     1f9:	00 00                	add    %al,(%rax)
     1fb:	00 00                	add    %al,(%rax)
     1fd:	00 00                	add    %al,(%rax)
     1ff:	b9 03 00 00 00       	mov    $0x3,%ecx
     204:	00 00                	add    %al,(%rax)
     206:	00 01                	add    %al,(%rcx)
     208:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
	...
     218:	00 00                	add    %al,(%rax)
     21a:	04 00                	add    $0x0,%al
     21c:	00 00                	add    %al,(%rax)
     21e:	00 01                	add    %al,(%rcx)
     220:	01 00                	add    %eax,(%rax)
     222:	00 00                	add    %al,(%rax)
     224:	f1                   	icebp  
     225:	01 00                	add    %eax,(%rax)
     227:	00 00                	add    %al,(%rax)
     229:	00 00                	add    %al,(%rax)
     22b:	00 77 02             	add    %dh,0x2(%rdi)
     22e:	00 00                	add    %al,(%rax)
     230:	00 00                	add    %al,(%rax)
     232:	00 00                	add    %al,(%rax)
     234:	02 00                	add    (%rax),%al
     236:	30 9f 77 02 00 00    	xor    %bl,0x277(%rdi)
     23c:	00 00                	add    %al,(%rax)
     23e:	00 00                	add    %al,(%rax)
     240:	db 02                	fildl  (%rdx)
     242:	00 00                	add    %al,(%rax)
     244:	00 00                	add    %al,(%rax)
     246:	00 00                	add    %al,(%rax)
     248:	01 00                	add    %eax,(%rax)
     24a:	5e                   	pop    %rsi
     24b:	db 02                	fildl  (%rdx)
     24d:	00 00                	add    %al,(%rax)
     24f:	00 00                	add    %al,(%rax)
     251:	00 00                	add    %al,(%rax)
     253:	db 02                	fildl  (%rdx)
     255:	00 00                	add    %al,(%rax)
     257:	00 00                	add    %al,(%rax)
     259:	00 00                	add    %al,(%rax)
     25b:	01 00                	add    %eax,(%rax)
     25d:	50                   	push   %rax
     25e:	db 02                	fildl  (%rdx)
     260:	00 00                	add    %al,(%rax)
     262:	00 00                	add    %al,(%rax)
     264:	00 00                	add    %al,(%rax)
     266:	98                   	cwtl   
     267:	03 00                	add    (%rax),%eax
     269:	00 00                	add    %al,(%rax)
     26b:	00 00                	add    %al,(%rax)
     26d:	00 01                	add    %al,(%rcx)
     26f:	00 5e 99             	add    %bl,-0x67(%rsi)
     272:	03 00                	add    (%rax),%eax
     274:	00 00                	add    %al,(%rax)
     276:	00 00                	add    %al,(%rax)
     278:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
     27e:	00 00                	add    %al,(%rax)
     280:	00 01                	add    %al,(%rcx)
     282:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     291:	00 00                	add    %al,(%rax)
     293:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 299 <_init-0x400d67>
     299:	00 00                	add    %al,(%rax)
     29b:	00 00                	add    %al,(%rax)
     29d:	00 f1                	add    %dh,%cl
     29f:	01 00                	add    %eax,(%rax)
     2a1:	00 00                	add    %al,(%rax)
     2a3:	00 00                	add    %al,(%rax)
     2a5:	00 77 02             	add    %dh,0x2(%rdi)
     2a8:	00 00                	add    %al,(%rax)
     2aa:	00 00                	add    %al,(%rax)
     2ac:	00 00                	add    %al,(%rax)
     2ae:	02 00                	add    (%rax),%al
     2b0:	30 9f 77 02 00 00    	xor    %bl,0x277(%rdi)
     2b6:	00 00                	add    %al,(%rax)
     2b8:	00 00                	add    %al,(%rax)
     2ba:	22 03                	and    (%rbx),%al
     2bc:	00 00                	add    %al,(%rax)
     2be:	00 00                	add    %al,(%rax)
     2c0:	00 00                	add    %al,(%rax)
     2c2:	01 00                	add    %eax,(%rax)
     2c4:	5d                   	pop    %rbp
     2c5:	22 03                	and    (%rbx),%al
     2c7:	00 00                	add    %al,(%rax)
     2c9:	00 00                	add    %al,(%rax)
     2cb:	00 00                	add    %al,(%rax)
     2cd:	24 03                	and    $0x3,%al
     2cf:	00 00                	add    %al,(%rax)
     2d1:	00 00                	add    %al,(%rax)
     2d3:	00 00                	add    %al,(%rax)
     2d5:	01 00                	add    %eax,(%rax)
     2d7:	50                   	push   %rax
     2d8:	24 03                	and    $0x3,%al
     2da:	00 00                	add    %al,(%rax)
     2dc:	00 00                	add    %al,(%rax)
     2de:	00 00                	add    %al,(%rax)
     2e0:	96                   	xchg   %eax,%esi
     2e1:	03 00                	add    (%rax),%eax
     2e3:	00 00                	add    %al,(%rax)
     2e5:	00 00                	add    %al,(%rax)
     2e7:	00 01                	add    %al,(%rcx)
     2e9:	00 5d 99             	add    %bl,-0x67(%rbp)
     2ec:	03 00                	add    (%rax),%eax
     2ee:	00 00                	add    %al,(%rax)
     2f0:	00 00                	add    %al,(%rax)
     2f2:	00 b9 03 00 00 00    	add    %bh,0x3(%rcx)
     2f8:	00 00                	add    %al,(%rax)
     2fa:	00 01                	add    %al,(%rcx)
     2fc:	00 5d 00             	add    %bl,0x0(%rbp)
	...
     31f:	00 17                	add    %dl,(%rdi)
     321:	00 00                	add    %al,(%rax)
     323:	00 00                	add    %al,(%rax)
     325:	00 00                	add    %al,(%rax)
     327:	00 01                	add    %al,(%rcx)
     329:	00 55 17             	add    %dl,0x17(%rbp)
     32c:	00 00                	add    %al,(%rax)
     32e:	00 00                	add    %al,(%rax)
     330:	00 00                	add    %al,(%rax)
     332:	00 20                	add    %ah,(%rax)
     334:	00 00                	add    %al,(%rax)
     336:	00 00                	add    %al,(%rax)
     338:	00 00                	add    %al,(%rax)
     33a:	00 01                	add    %al,(%rcx)
     33c:	00 54 20 00          	add    %dl,0x0(%rax,%riz,1)
     340:	00 00                	add    %al,(%rax)
     342:	00 00                	add    %al,(%rax)
     344:	00 00                	add    %al,(%rax)
     346:	5b                   	pop    %rbx
     347:	00 00                	add    %al,(%rax)
     349:	00 00                	add    %al,(%rax)
     34b:	00 00                	add    %al,(%rax)
     34d:	00 04 00             	add    %al,(%rax,%rax,1)
     350:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     354:	5b                   	pop    %rbx
     355:	00 00                	add    %al,(%rax)
     357:	00 00                	add    %al,(%rax)
     359:	00 00                	add    %al,(%rax)
     35b:	00 6b 00             	add    %ch,0x0(%rbx)
     35e:	00 00                	add    %al,(%rax)
     360:	00 00                	add    %al,(%rax)
     362:	00 00                	add    %al,(%rax)
     364:	01 00                	add    %eax,(%rax)
     366:	54                   	push   %rsp
     367:	6b 00 00             	imul   $0x0,(%rax),%eax
     36a:	00 00                	add    %al,(%rax)
     36c:	00 00                	add    %al,(%rax)
     36e:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
     374:	00 00                	add    %al,(%rax)
     376:	00 04 00             	add    %al,(%rax,%rax,1)
     379:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     391:	00 00                	add    %al,(%rax)
     393:	92                   	xchg   %eax,%edx
     394:	00 00                	add    %al,(%rax)
     396:	00 00                	add    %al,(%rax)
     398:	00 00                	add    %al,(%rax)
     39a:	00 a9 00 00 00 00    	add    %ch,0x0(%rcx)
     3a0:	00 00                	add    %al,(%rax)
     3a2:	00 01                	add    %al,(%rcx)
     3a4:	00 55 a9             	add    %dl,-0x57(%rbp)
     3a7:	00 00                	add    %al,(%rax)
     3a9:	00 00                	add    %al,(%rax)
     3ab:	00 00                	add    %al,(%rax)
     3ad:	00 ad 00 00 00 00    	add    %ch,0x0(%rbp)
     3b3:	00 00                	add    %al,(%rax)
     3b5:	00 09                	add    %cl,(%rcx)
     3b7:	00 03                	add    %al,(%rbx)
     3b9:	fc                   	cld    
     3ba:	64 40 00 00          	add    %al,%fs:(%rax)
     3be:	00 00                	add    %al,(%rax)
     3c0:	00 ad 00 00 00 00    	add    %ch,0x0(%rbp)
     3c6:	00 00                	add    %al,(%rax)
     3c8:	00 e4                	add    %ah,%ah
     3ca:	01 00                	add    %eax,(%rax)
     3cc:	00 00                	add    %al,(%rax)
     3ce:	00 00                	add    %al,(%rax)
     3d0:	00 04 00             	add    %al,(%rax,%rax,1)
     3d3:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     3ef:	00 00                	add    %al,(%rax)
     3f1:	92                   	xchg   %eax,%edx
     3f2:	00 00                	add    %al,(%rax)
     3f4:	00 00                	add    %al,(%rax)
     3f6:	00 00                	add    %al,(%rax)
     3f8:	00 ad 00 00 00 00    	add    %ch,0x0(%rbp)
     3fe:	00 00                	add    %al,(%rax)
     400:	00 01                	add    %al,(%rcx)
     402:	00 54 ad 00          	add    %dl,0x0(%rbp,%rbp,4)
     406:	00 00                	add    %al,(%rax)
     408:	00 00                	add    %al,(%rax)
     40a:	00 00                	add    %al,(%rax)
     40c:	14 01                	adc    $0x1,%al
     40e:	00 00                	add    %al,(%rax)
     410:	00 00                	add    %al,(%rax)
     412:	00 00                	add    %al,(%rax)
     414:	01 00                	add    %eax,(%rax)
     416:	56                   	push   %rsi
     417:	14 01                	adc    $0x1,%al
     419:	00 00                	add    %al,(%rax)
     41b:	00 00                	add    %al,(%rax)
     41d:	00 00                	add    %al,(%rax)
     41f:	1e                   	(bad)  
     420:	01 00                	add    %eax,(%rax)
     422:	00 00                	add    %al,(%rax)
     424:	00 00                	add    %al,(%rax)
     426:	00 04 00             	add    %al,(%rax,%rax,1)
     429:	f3 01 54 9f 1e       	repz add %edx,0x1e(%rdi,%rbx,4)
     42e:	01 00                	add    %eax,(%rax)
     430:	00 00                	add    %al,(%rax)
     432:	00 00                	add    %al,(%rax)
     434:	00 45 01             	add    %al,0x1(%rbp)
     437:	00 00                	add    %al,(%rax)
     439:	00 00                	add    %al,(%rax)
     43b:	00 00                	add    %al,(%rax)
     43d:	01 00                	add    %eax,(%rax)
     43f:	56                   	push   %rsi
     440:	45 01 00             	add    %r8d,(%r8)
     443:	00 00                	add    %al,(%rax)
     445:	00 00                	add    %al,(%rax)
     447:	00 e4                	add    %ah,%ah
     449:	01 00                	add    %eax,(%rax)
     44b:	00 00                	add    %al,(%rax)
     44d:	00 00                	add    %al,(%rax)
     44f:	00 04 00             	add    %al,(%rax,%rax,1)
     452:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
     46f:	00 dd                	add    %bl,%ch
     471:	00 00                	add    %al,(%rax)
     473:	00 00                	add    %al,(%rax)
     475:	00 00                	add    %al,(%rax)
     477:	00 e6                	add    %ah,%dh
     479:	00 00                	add    %al,(%rax)
     47b:	00 00                	add    %al,(%rax)
     47d:	00 00                	add    %al,(%rax)
     47f:	00 01                	add    %al,(%rcx)
     481:	00 50 e6             	add    %dl,-0x1a(%rax)
     484:	00 00                	add    %al,(%rax)
     486:	00 00                	add    %al,(%rax)
     488:	00 00                	add    %al,(%rax)
     48a:	00 14 01             	add    %dl,(%rcx,%rax,1)
     48d:	00 00                	add    %al,(%rax)
     48f:	00 00                	add    %al,(%rax)
     491:	00 00                	add    %al,(%rax)
     493:	01 00                	add    %eax,(%rax)
     495:	53                   	push   %rbx
     496:	1e                   	(bad)  
     497:	01 00                	add    %eax,(%rax)
     499:	00 00                	add    %al,(%rax)
     49b:	00 00                	add    %al,(%rax)
     49d:	00 27                	add    %ah,(%rdi)
     49f:	01 00                	add    %eax,(%rax)
     4a1:	00 00                	add    %al,(%rax)
     4a3:	00 00                	add    %al,(%rax)
     4a5:	00 01                	add    %al,(%rcx)
     4a7:	00 50 27             	add    %dl,0x27(%rax)
     4aa:	01 00                	add    %eax,(%rax)
     4ac:	00 00                	add    %al,(%rax)
     4ae:	00 00                	add    %al,(%rax)
     4b0:	00 4b 01             	add    %cl,0x1(%rbx)
     4b3:	00 00                	add    %al,(%rax)
     4b5:	00 00                	add    %al,(%rax)
     4b7:	00 00                	add    %al,(%rax)
     4b9:	01 00                	add    %eax,(%rax)
     4bb:	53                   	push   %rbx
     4bc:	6f                   	outsl  %ds:(%rsi),(%dx)
     4bd:	01 00                	add    %eax,(%rax)
     4bf:	00 00                	add    %al,(%rax)
     4c1:	00 00                	add    %al,(%rax)
     4c3:	00 85 01 00 00 00    	add    %al,0x1(%rbp)
     4c9:	00 00                	add    %al,(%rax)
     4cb:	00 01                	add    %al,(%rcx)
     4cd:	00 53 00             	add    %dl,0x0(%rbx)
	...
     4dc:	00 00                	add    %al,(%rax)
     4de:	00 01                	add    %al,(%rcx)
     4e0:	00 00                	add    %al,(%rax)
     4e2:	00 00                	add    %al,(%rax)
     4e4:	00 00                	add    %al,(%rax)
     4e6:	00 dd                	add    %bl,%ch
     4e8:	00 00                	add    %al,(%rax)
     4ea:	00 00                	add    %al,(%rax)
     4ec:	00 00                	add    %al,(%rax)
     4ee:	00 e6                	add    %ah,%dh
     4f0:	00 00                	add    %al,(%rax)
     4f2:	00 00                	add    %al,(%rax)
     4f4:	00 00                	add    %al,(%rax)
     4f6:	00 02                	add    %al,(%rdx)
     4f8:	00 30                	add    %dh,(%rax)
     4fa:	9f                   	lahf   
     4fb:	e6 00                	out    %al,$0x0
     4fd:	00 00                	add    %al,(%rax)
     4ff:	00 00                	add    %al,(%rax)
     501:	00 00                	add    %al,(%rax)
     503:	e8 00 00 00 00       	callq  508 <_init-0x400af8>
     508:	00 00                	add    %al,(%rax)
     50a:	00 01                	add    %al,(%rcx)
     50c:	00 50 1e             	add    %dl,0x1e(%rax)
     50f:	01 00                	add    %eax,(%rax)
     511:	00 00                	add    %al,(%rax)
     513:	00 00                	add    %al,(%rax)
     515:	00 34 01             	add    %dh,(%rcx,%rax,1)
     518:	00 00                	add    %al,(%rax)
     51a:	00 00                	add    %al,(%rax)
     51c:	00 00                	add    %al,(%rax)
     51e:	02 00                	add    (%rax),%al
     520:	30 9f 34 01 00 00    	xor    %bl,0x134(%rdi)
     526:	00 00                	add    %al,(%rax)
     528:	00 00                	add    %al,(%rax)
     52a:	36 01 00             	add    %eax,%ss:(%rax)
     52d:	00 00                	add    %al,(%rax)
     52f:	00 00                	add    %al,(%rax)
     531:	00 01                	add    %al,(%rcx)
     533:	00 50 00             	add    %dl,0x0(%rax)
	...
     546:	00 00                	add    %al,(%rax)
     548:	00 4b 01             	add    %cl,0x1(%rbx)
     54b:	00 00                	add    %al,(%rax)
     54d:	00 00                	add    %al,(%rax)
     54f:	00 00                	add    %al,(%rax)
     551:	6f                   	outsl  %ds:(%rsi),(%dx)
     552:	01 00                	add    %eax,(%rax)
     554:	00 00                	add    %al,(%rax)
     556:	00 00                	add    %al,(%rax)
     558:	00 01                	add    %al,(%rcx)
     55a:	00 53 85             	add    %dl,-0x7b(%rbx)
     55d:	01 00                	add    %eax,(%rax)
     55f:	00 00                	add    %al,(%rax)
     561:	00 00                	add    %al,(%rax)
     563:	00 e4                	add    %ah,%ah
     565:	01 00                	add    %eax,(%rax)
     567:	00 00                	add    %al,(%rax)
     569:	00 00                	add    %al,(%rax)
     56b:	00 01                	add    %al,(%rcx)
     56d:	00 53 00             	add    %dl,0x0(%rbx)
	...
     57c:	00 00                	add    %al,(%rax)
     57e:	00 04 00             	add    %al,(%rax,%rax,1)
     581:	00 00                	add    %al,(%rax)
     583:	36 01 00             	add    %eax,%ss:(%rax)
     586:	00 00                	add    %al,(%rax)
     588:	00 00                	add    %al,(%rax)
     58a:	00 8a 01 00 00 00    	add    %cl,0x1(%rdx)
     590:	00 00                	add    %al,(%rax)
     592:	00 02                	add    %al,(%rdx)
     594:	00 30                	add    %dh,(%rax)
     596:	9f                   	lahf   
     597:	8a 01                	mov    (%rcx),%al
     599:	00 00                	add    %al,(%rax)
     59b:	00 00                	add    %al,(%rax)
     59d:	00 00                	add    %al,(%rax)
     59f:	e4 01                	in     $0x1,%al
     5a1:	00 00                	add    %al,(%rax)
     5a3:	00 00                	add    %al,(%rax)
     5a5:	00 00                	add    %al,(%rax)
     5a7:	01 00                	add    %eax,(%rax)
     5a9:	56                   	push   %rsi
	...
     5ba:	03 00                	add    (%rax),%eax
	...
     5c4:	00 00                	add    %al,(%rax)
     5c6:	41 04 00             	rex.B add $0x0,%al
     5c9:	00 00                	add    %al,(%rax)
     5cb:	00 00                	add    %al,(%rax)
     5cd:	00 02                	add    %al,(%rdx)
     5cf:	00 30                	add    %dh,(%rax)
     5d1:	9f                   	lahf   
     5d2:	41 04 00             	rex.B add $0x0,%al
     5d5:	00 00                	add    %al,(%rax)
     5d7:	00 00                	add    %al,(%rax)
     5d9:	00 54 04 00          	add    %dl,0x0(%rsp,%rax,1)
     5dd:	00 00                	add    %al,(%rax)
     5df:	00 00                	add    %al,(%rax)
     5e1:	00 01                	add    %al,(%rcx)
     5e3:	00 50 00             	add    %dl,0x0(%rax)
	...
     5f2:	00 00                	add    %al,(%rax)
     5f4:	00 05 00 00 00 01    	add    %al,0x1000000(%rip)        # 10005fa <_end+0xbf94c2>
	...
     602:	00 00                	add    %al,(%rax)
     604:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 60a <_init-0x4009f6>
     60a:	00 00                	add    %al,(%rax)
     60c:	00 02                	add    %al,(%rdx)
     60e:	00 30                	add    %dh,(%rax)
     610:	9f                   	lahf   
     611:	05 00 00 00 00       	add    $0x0,%eax
     616:	00 00                	add    %al,(%rax)
     618:	00 21                	add    %ah,(%rcx)
     61a:	00 00                	add    %al,(%rax)
     61c:	00 00                	add    %al,(%rax)
     61e:	00 00                	add    %al,(%rax)
     620:	00 01                	add    %al,(%rcx)
     622:	00 50 37             	add    %dl,0x37(%rax)
     625:	04 00                	add    $0x0,%al
     627:	00 00                	add    %al,(%rax)
     629:	00 00                	add    %al,(%rax)
     62b:	00 41 04             	add    %al,0x4(%rcx)
     62e:	00 00                	add    %al,(%rax)
     630:	00 00                	add    %al,(%rax)
     632:	00 00                	add    %al,(%rax)
     634:	02 00                	add    (%rax),%al
     636:	30 9f 41 04 00 00    	xor    %bl,0x441(%rdi)
     63c:	00 00                	add    %al,(%rax)
     63e:	00 00                	add    %al,(%rax)
     640:	54                   	push   %rsp
     641:	04 00                	add    $0x0,%al
     643:	00 00                	add    %al,(%rax)
     645:	00 00                	add    %al,(%rax)
     647:	00 01                	add    %al,(%rcx)
     649:	00 51 00             	add    %dl,0x0(%rcx)
	...
     65c:	00 00                	add    %al,(%rax)
     65e:	00 7f 01             	add    %bh,0x1(%rdi)
     661:	00 00                	add    %al,(%rax)
     663:	00 00                	add    %al,(%rax)
     665:	00 00                	add    %al,(%rax)
     667:	8d 01                	lea    (%rcx),%eax
     669:	00 00                	add    %al,(%rax)
     66b:	00 00                	add    %al,(%rax)
     66d:	00 00                	add    %al,(%rax)
     66f:	01 00                	add    %eax,(%rax)
     671:	50                   	push   %rax
     672:	8d 01                	lea    (%rcx),%eax
     674:	00 00                	add    %al,(%rax)
     676:	00 00                	add    %al,(%rax)
     678:	00 00                	add    %al,(%rax)
     67a:	91                   	xchg   %eax,%ecx
     67b:	01 00                	add    %eax,(%rax)
     67d:	00 00                	add    %al,(%rax)
     67f:	00 00                	add    %al,(%rax)
     681:	00 01                	add    %al,(%rcx)
     683:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
	...
     697:	00 00                	add    %al,(%rax)
     699:	09 01                	or     %eax,(%rcx)
     69b:	00 00                	add    %al,(%rax)
     69d:	00 00                	add    %al,(%rax)
     69f:	00 00                	add    %al,(%rax)
     6a1:	20 01                	and    %al,(%rcx)
     6a3:	00 00                	add    %al,(%rax)
     6a5:	00 00                	add    %al,(%rax)
     6a7:	00 00                	add    %al,(%rax)
     6a9:	01 00                	add    %eax,(%rax)
     6ab:	55                   	push   %rbp
     6ac:	20 01                	and    %al,(%rcx)
     6ae:	00 00                	add    %al,(%rax)
     6b0:	00 00                	add    %al,(%rax)
     6b2:	00 00                	add    %al,(%rax)
     6b4:	71 01                	jno    6b7 <_init-0x400949>
     6b6:	00 00                	add    %al,(%rax)
     6b8:	00 00                	add    %al,(%rax)
     6ba:	00 00                	add    %al,(%rax)
     6bc:	01 00                	add    %eax,(%rax)
     6be:	53                   	push   %rbx
	...
     6d3:	00 00                	add    %al,(%rax)
     6d5:	88 00                	mov    %al,(%rax)
     6d7:	00 00                	add    %al,(%rax)
     6d9:	00 00                	add    %al,(%rax)
     6db:	00 00                	add    %al,(%rax)
     6dd:	99                   	cltd   
     6de:	00 00                	add    %al,(%rax)
     6e0:	00 00                	add    %al,(%rax)
     6e2:	00 00                	add    %al,(%rax)
     6e4:	00 01                	add    %al,(%rcx)
     6e6:	00 55 99             	add    %dl,-0x67(%rbp)
     6e9:	00 00                	add    %al,(%rax)
     6eb:	00 00                	add    %al,(%rax)
     6ed:	00 00                	add    %al,(%rax)
     6ef:	00 06                	add    %al,(%rsi)
     6f1:	01 00                	add    %eax,(%rax)
     6f3:	00 00                	add    %al,(%rax)
     6f5:	00 00                	add    %al,(%rax)
     6f7:	00 01                	add    %al,(%rcx)
     6f9:	00 56 06             	add    %dl,0x6(%rsi)
     6fc:	01 00                	add    %eax,(%rax)
     6fe:	00 00                	add    %al,(%rax)
     700:	00 00                	add    %al,(%rax)
     702:	00 09                	add    %cl,(%rcx)
     704:	01 00                	add    %eax,(%rax)
     706:	00 00                	add    %al,(%rax)
     708:	00 00                	add    %al,(%rax)
     70a:	00 04 00             	add    %al,(%rax,%rax,1)
     70d:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     725:	00 00                	add    %al,(%rax)
     727:	88 00                	mov    %al,(%rax)
     729:	00 00                	add    %al,(%rax)
     72b:	00 00                	add    %al,(%rax)
     72d:	00 00                	add    %al,(%rax)
     72f:	99                   	cltd   
     730:	00 00                	add    %al,(%rax)
     732:	00 00                	add    %al,(%rax)
     734:	00 00                	add    %al,(%rax)
     736:	00 01                	add    %al,(%rcx)
     738:	00 54 99 00          	add    %dl,0x0(%rcx,%rbx,4)
     73c:	00 00                	add    %al,(%rax)
     73e:	00 00                	add    %al,(%rax)
     740:	00 00                	add    %al,(%rax)
     742:	05 01 00 00 00       	add    $0x1,%eax
     747:	00 00                	add    %al,(%rax)
     749:	00 01                	add    %al,(%rcx)
     74b:	00 53 05             	add    %dl,0x5(%rbx)
     74e:	01 00                	add    %eax,(%rax)
     750:	00 00                	add    %al,(%rax)
     752:	00 00                	add    %al,(%rax)
     754:	00 09                	add    %cl,(%rcx)
     756:	01 00                	add    %eax,(%rax)
     758:	00 00                	add    %al,(%rax)
     75a:	00 00                	add    %al,(%rax)
     75c:	00 04 00             	add    %al,(%rax,%rax,1)
     75f:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
     774:	00 d2                	add    %dl,%dl
     776:	00 00                	add    %al,(%rax)
     778:	00 00                	add    %al,(%rax)
     77a:	00 00                	add    %al,(%rax)
     77c:	00 08                	add    %cl,(%rax)
     77e:	01 00                	add    %eax,(%rax)
     780:	00 00                	add    %al,(%rax)
     782:	00 00                	add    %al,(%rax)
     784:	00 01                	add    %al,(%rcx)
     786:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
	...
     7a2:	2e 00 00             	add    %al,%cs:(%rax)
     7a5:	00 00                	add    %al,(%rax)
     7a7:	00 00                	add    %al,(%rax)
     7a9:	00 4d 00             	add    %cl,0x0(%rbp)
     7ac:	00 00                	add    %al,(%rax)
     7ae:	00 00                	add    %al,(%rax)
     7b0:	00 00                	add    %al,(%rax)
     7b2:	01 00                	add    %eax,(%rax)
     7b4:	55                   	push   %rbp
     7b5:	4d 00 00             	rex.WRB add %r8b,(%r8)
     7b8:	00 00                	add    %al,(%rax)
     7ba:	00 00                	add    %al,(%rax)
     7bc:	00 56 00             	add    %dl,0x0(%rsi)
     7bf:	00 00                	add    %al,(%rax)
     7c1:	00 00                	add    %al,(%rax)
     7c3:	00 00                	add    %al,(%rax)
     7c5:	01 00                	add    %eax,(%rax)
     7c7:	54                   	push   %rsp
     7c8:	56                   	push   %rsi
     7c9:	00 00                	add    %al,(%rax)
     7cb:	00 00                	add    %al,(%rax)
     7cd:	00 00                	add    %al,(%rax)
     7cf:	00 6b 00             	add    %ch,0x0(%rbx)
     7d2:	00 00                	add    %al,(%rax)
     7d4:	00 00                	add    %al,(%rax)
     7d6:	00 00                	add    %al,(%rax)
     7d8:	04 00                	add    $0x0,%al
     7da:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     7de:	6b 00 00             	imul   $0x0,(%rax),%eax
     7e1:	00 00                	add    %al,(%rax)
     7e3:	00 00                	add    %al,(%rax)
     7e5:	00 7b 00             	add    %bh,0x0(%rbx)
     7e8:	00 00                	add    %al,(%rax)
     7ea:	00 00                	add    %al,(%rax)
     7ec:	00 00                	add    %al,(%rax)
     7ee:	01 00                	add    %eax,(%rax)
     7f0:	54                   	push   %rsp
     7f1:	7b 00                	jnp    7f3 <_init-0x40080d>
     7f3:	00 00                	add    %al,(%rax)
     7f5:	00 00                	add    %al,(%rax)
     7f7:	00 00                	add    %al,(%rax)
     7f9:	88 00                	mov    %al,(%rax)
     7fb:	00 00                	add    %al,(%rax)
     7fd:	00 00                	add    %al,(%rax)
     7ff:	00 00                	add    %al,(%rax)
     801:	04 00                	add    $0x0,%al
     803:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     81b:	00 00                	add    %al,(%rax)
     81d:	59                   	pop    %rcx
     81e:	04 00                	add    $0x0,%al
     820:	00 00                	add    %al,(%rax)
     822:	00 00                	add    %al,(%rax)
     824:	00 81 04 00 00 00    	add    %al,0x4(%rcx)
     82a:	00 00                	add    %al,(%rax)
     82c:	00 01                	add    %al,(%rcx)
     82e:	00 55 81             	add    %dl,-0x7f(%rbp)
     831:	04 00                	add    $0x0,%al
     833:	00 00                	add    %al,(%rax)
     835:	00 00                	add    %al,(%rax)
     837:	00 85 04 00 00 00    	add    %al,0x4(%rbp)
     83d:	00 00                	add    %al,(%rax)
     83f:	00 09                	add    %cl,(%rcx)
     841:	00 03                	add    %al,(%rbx)
     843:	e8 64 40 00 00       	callq  48ac <_init-0x3fc754>
     848:	00 00                	add    %al,(%rax)
     84a:	00 85 04 00 00 00    	add    %al,0x4(%rbp)
     850:	00 00                	add    %al,(%rax)
     852:	00 08                	add    %cl,(%rax)
     854:	05 00 00 00 00       	add    $0x0,%eax
     859:	00 00                	add    %al,(%rax)
     85b:	04 00                	add    $0x0,%al
     85d:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     879:	89 04 00             	mov    %eax,(%rax,%rax,1)
     87c:	00 00                	add    %al,(%rax)
     87e:	00 00                	add    %al,(%rax)
     880:	00 a8 04 00 00 00    	add    %ch,0x4(%rax)
     886:	00 00                	add    %al,(%rax)
     888:	00 01                	add    %al,(%rcx)
     88a:	00 50 a8             	add    %dl,-0x58(%rax)
     88d:	04 00                	add    $0x0,%al
     88f:	00 00                	add    %al,(%rax)
     891:	00 00                	add    %al,(%rax)
     893:	00 d3                	add    %dl,%bl
     895:	04 00                	add    $0x0,%al
     897:	00 00                	add    %al,(%rax)
     899:	00 00                	add    %al,(%rax)
     89b:	00 01                	add    %al,(%rcx)
     89d:	00 53 d4             	add    %dl,-0x2c(%rbx)
     8a0:	04 00                	add    $0x0,%al
     8a2:	00 00                	add    %al,(%rax)
     8a4:	00 00                	add    %al,(%rax)
     8a6:	00 e0                	add    %ah,%al
     8a8:	04 00                	add    $0x0,%al
     8aa:	00 00                	add    %al,(%rax)
     8ac:	00 00                	add    %al,(%rax)
     8ae:	00 01                	add    %al,(%rcx)
     8b0:	00 50 e0             	add    %dl,-0x20(%rax)
     8b3:	04 00                	add    $0x0,%al
     8b5:	00 00                	add    %al,(%rax)
     8b7:	00 00                	add    %al,(%rax)
     8b9:	00 08                	add    %cl,(%rax)
     8bb:	05 00 00 00 00       	add    $0x0,%eax
     8c0:	00 00                	add    %al,(%rax)
     8c2:	01 00                	add    %eax,(%rax)
     8c4:	53                   	push   %rbx
	...
     8d9:	00 00                	add    %al,(%rax)
     8db:	d0 03                	rolb   (%rbx)
     8dd:	00 00                	add    %al,(%rax)
     8df:	00 00                	add    %al,(%rax)
     8e1:	00 00                	add    %al,(%rax)
     8e3:	e7 03                	out    %eax,$0x3
     8e5:	00 00                	add    %al,(%rax)
     8e7:	00 00                	add    %al,(%rax)
     8e9:	00 00                	add    %al,(%rax)
     8eb:	01 00                	add    %eax,(%rax)
     8ed:	55                   	push   %rbp
     8ee:	e7 03                	out    %eax,$0x3
     8f0:	00 00                	add    %al,(%rax)
     8f2:	00 00                	add    %al,(%rax)
     8f4:	00 00                	add    %al,(%rax)
     8f6:	f4                   	hlt    
     8f7:	03 00                	add    (%rax),%eax
     8f9:	00 00                	add    %al,(%rax)
     8fb:	00 00                	add    %al,(%rax)
     8fd:	00 01                	add    %al,(%rcx)
     8ff:	00 51 f4             	add    %dl,-0xc(%rcx)
     902:	03 00                	add    (%rax),%eax
     904:	00 00                	add    %al,(%rax)
     906:	00 00                	add    %al,(%rax)
     908:	00 59 04             	add    %bl,0x4(%rcx)
     90b:	00 00                	add    %al,(%rax)
     90d:	00 00                	add    %al,(%rax)
     90f:	00 00                	add    %al,(%rax)
     911:	04 00                	add    $0x0,%al
     913:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     92b:	00 00                	add    %al,(%rax)
     92d:	eb 03                	jmp    932 <_init-0x4006ce>
     92f:	00 00                	add    %al,(%rax)
     931:	00 00                	add    %al,(%rax)
     933:	00 00                	add    %al,(%rax)
     935:	f4                   	hlt    
     936:	03 00                	add    (%rax),%eax
     938:	00 00                	add    %al,(%rax)
     93a:	00 00                	add    %al,(%rax)
     93c:	00 01                	add    %al,(%rcx)
     93e:	00 55 f4             	add    %dl,-0xc(%rbp)
     941:	03 00                	add    (%rax),%eax
     943:	00 00                	add    %al,(%rax)
     945:	00 00                	add    %al,(%rax)
     947:	00 2f                	add    %ch,(%rdi)
     949:	04 00                	add    $0x0,%al
     94b:	00 00                	add    %al,(%rax)
     94d:	00 00                	add    %al,(%rax)
     94f:	00 06                	add    %al,(%rsi)
     951:	00 77 0f             	add    %dh,0xf(%rdi)
     954:	09 f0                	or     %esi,%eax
     956:	1a 9f 30 04 00 00    	sbb    0x430(%rdi),%bl
     95c:	00 00                	add    %al,(%rax)
     95e:	00 00                	add    %al,(%rax)
     960:	59                   	pop    %rcx
     961:	04 00                	add    $0x0,%al
     963:	00 00                	add    %al,(%rax)
     965:	00 00                	add    %al,(%rax)
     967:	00 06                	add    %al,(%rsi)
     969:	00 77 0f             	add    %dh,0xf(%rdi)
     96c:	09 f0                	or     %esi,%eax
     96e:	1a 9f 00 00 00 00    	sbb    0x0(%rdi),%bl
	...
     988:	7e 03                	jle    98d <_init-0x400673>
     98a:	00 00                	add    %al,(%rax)
     98c:	00 00                	add    %al,(%rax)
     98e:	00 00                	add    %al,(%rax)
     990:	92                   	xchg   %eax,%edx
     991:	03 00                	add    (%rax),%eax
     993:	00 00                	add    %al,(%rax)
     995:	00 00                	add    %al,(%rax)
     997:	00 01                	add    %al,(%rcx)
     999:	00 55 92             	add    %dl,-0x6e(%rbp)
     99c:	03 00                	add    (%rax),%eax
     99e:	00 00                	add    %al,(%rax)
     9a0:	00 00                	add    %al,(%rax)
     9a2:	00 a1 03 00 00 00    	add    %ah,0x3(%rcx)
     9a8:	00 00                	add    %al,(%rax)
     9aa:	00 04 00             	add    %al,(%rax,%rax,1)
     9ad:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     9b1:	a1 03 00 00 00 00 00 	movabs 0xad00000000000003,%eax
     9b8:	00 ad 
     9ba:	03 00                	add    (%rax),%eax
     9bc:	00 00                	add    %al,(%rax)
     9be:	00 00                	add    %al,(%rax)
     9c0:	00 01                	add    %al,(%rcx)
     9c2:	00 55 ad             	add    %dl,-0x53(%rbp)
     9c5:	03 00                	add    (%rax),%eax
     9c7:	00 00                	add    %al,(%rax)
     9c9:	00 00                	add    %al,(%rax)
     9cb:	00 d0                	add    %dl,%al
     9cd:	03 00                	add    (%rax),%eax
     9cf:	00 00                	add    %al,(%rax)
     9d1:	00 00                	add    %al,(%rax)
     9d3:	00 04 00             	add    %al,(%rax,%rax,1)
     9d6:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     9f2:	2a 03                	sub    (%rbx),%al
     9f4:	00 00                	add    %al,(%rax)
     9f6:	00 00                	add    %al,(%rax)
     9f8:	00 00                	add    %al,(%rax)
     9fa:	3e 03 00             	add    %ds:(%rax),%eax
     9fd:	00 00                	add    %al,(%rax)
     9ff:	00 00                	add    %al,(%rax)
     a01:	00 01                	add    %al,(%rcx)
     a03:	00 55 3e             	add    %dl,0x3e(%rbp)
     a06:	03 00                	add    (%rax),%eax
     a08:	00 00                	add    %al,(%rax)
     a0a:	00 00                	add    %al,(%rax)
     a0c:	00 4d 03             	add    %cl,0x3(%rbp)
     a0f:	00 00                	add    %al,(%rax)
     a11:	00 00                	add    %al,(%rax)
     a13:	00 00                	add    %al,(%rax)
     a15:	04 00                	add    $0x0,%al
     a17:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     a1b:	4d 03 00             	add    (%r8),%r8
     a1e:	00 00                	add    %al,(%rax)
     a20:	00 00                	add    %al,(%rax)
     a22:	00 54 03 00          	add    %dl,0x0(%rbx,%rax,1)
     a26:	00 00                	add    %al,(%rax)
     a28:	00 00                	add    %al,(%rax)
     a2a:	00 01                	add    %al,(%rcx)
     a2c:	00 55 54             	add    %dl,0x54(%rbp)
     a2f:	03 00                	add    (%rax),%eax
     a31:	00 00                	add    %al,(%rax)
     a33:	00 00                	add    %al,(%rax)
     a35:	00 7e 03             	add    %bh,0x3(%rsi)
     a38:	00 00                	add    %al,(%rax)
     a3a:	00 00                	add    %al,(%rax)
     a3c:	00 00                	add    %al,(%rax)
     a3e:	04 00                	add    $0x0,%al
     a40:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     a5c:	d6                   	(bad)  
     a5d:	02 00                	add    (%rax),%al
     a5f:	00 00                	add    %al,(%rax)
     a61:	00 00                	add    %al,(%rax)
     a63:	00 ea                	add    %ch,%dl
     a65:	02 00                	add    (%rax),%al
     a67:	00 00                	add    %al,(%rax)
     a69:	00 00                	add    %al,(%rax)
     a6b:	00 01                	add    %al,(%rcx)
     a6d:	00 55 ea             	add    %dl,-0x16(%rbp)
     a70:	02 00                	add    (%rax),%al
     a72:	00 00                	add    %al,(%rax)
     a74:	00 00                	add    %al,(%rax)
     a76:	00 f9                	add    %bh,%cl
     a78:	02 00                	add    (%rax),%al
     a7a:	00 00                	add    %al,(%rax)
     a7c:	00 00                	add    %al,(%rax)
     a7e:	00 04 00             	add    %al,(%rax,%rax,1)
     a81:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     a85:	f9                   	stc    
     a86:	02 00                	add    (%rax),%al
     a88:	00 00                	add    %al,(%rax)
     a8a:	00 00                	add    %al,(%rax)
     a8c:	00 00                	add    %al,(%rax)
     a8e:	03 00                	add    (%rax),%eax
     a90:	00 00                	add    %al,(%rax)
     a92:	00 00                	add    %al,(%rax)
     a94:	00 01                	add    %al,(%rcx)
     a96:	00 55 00             	add    %dl,0x0(%rbp)
     a99:	03 00                	add    (%rax),%eax
     a9b:	00 00                	add    %al,(%rax)
     a9d:	00 00                	add    %al,(%rax)
     a9f:	00 2a                	add    %ch,(%rdx)
     aa1:	03 00                	add    (%rax),%eax
     aa3:	00 00                	add    %al,(%rax)
     aa5:	00 00                	add    %al,(%rax)
     aa7:	00 04 00             	add    %al,(%rax,%rax,1)
     aaa:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     ac6:	82                   	(bad)  
     ac7:	02 00                	add    (%rax),%al
     ac9:	00 00                	add    %al,(%rax)
     acb:	00 00                	add    %al,(%rax)
     acd:	00 96 02 00 00 00    	add    %dl,0x2(%rsi)
     ad3:	00 00                	add    %al,(%rax)
     ad5:	00 01                	add    %al,(%rcx)
     ad7:	00 55 96             	add    %dl,-0x6a(%rbp)
     ada:	02 00                	add    (%rax),%al
     adc:	00 00                	add    %al,(%rax)
     ade:	00 00                	add    %al,(%rax)
     ae0:	00 a5 02 00 00 00    	add    %ah,0x2(%rbp)
     ae6:	00 00                	add    %al,(%rax)
     ae8:	00 04 00             	add    %al,(%rax,%rax,1)
     aeb:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     aef:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
     af0:	02 00                	add    (%rax),%al
     af2:	00 00                	add    %al,(%rax)
     af4:	00 00                	add    %al,(%rax)
     af6:	00 ac 02 00 00 00 00 	add    %ch,0x0(%rdx,%rax,1)
     afd:	00 00                	add    %al,(%rax)
     aff:	01 00                	add    %eax,(%rax)
     b01:	55                   	push   %rbp
     b02:	ac                   	lods   %ds:(%rsi),%al
     b03:	02 00                	add    (%rax),%al
     b05:	00 00                	add    %al,(%rax)
     b07:	00 00                	add    %al,(%rax)
     b09:	00 d6                	add    %dl,%dh
     b0b:	02 00                	add    (%rax),%al
     b0d:	00 00                	add    %al,(%rax)
     b0f:	00 00                	add    %al,(%rax)
     b11:	00 04 00             	add    %al,(%rax,%rax,1)
     b14:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     b30:	00 00                	add    %al,(%rax)
     b32:	f4                   	hlt    
     b33:	00 00                	add    %al,(%rax)
     b35:	00 00                	add    %al,(%rax)
     b37:	00 00                	add    %al,(%rax)
     b39:	00 3b                	add    %bh,(%rbx)
     b3b:	01 00                	add    %eax,(%rax)
     b3d:	00 00                	add    %al,(%rax)
     b3f:	00 00                	add    %al,(%rax)
     b41:	00 01                	add    %al,(%rcx)
     b43:	00 55 3b             	add    %dl,0x3b(%rbp)
     b46:	01 00                	add    %eax,(%rax)
     b48:	00 00                	add    %al,(%rax)
     b4a:	00 00                	add    %al,(%rax)
     b4c:	00 6f 01             	add    %ch,0x1(%rdi)
     b4f:	00 00                	add    %al,(%rax)
     b51:	00 00                	add    %al,(%rax)
     b53:	00 00                	add    %al,(%rax)
     b55:	04 00                	add    $0x0,%al
     b57:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     b5b:	6f                   	outsl  %ds:(%rsi),(%dx)
     b5c:	01 00                	add    %eax,(%rax)
     b5e:	00 00                	add    %al,(%rax)
     b60:	00 00                	add    %al,(%rax)
     b62:	00 76 01             	add    %dh,0x1(%rsi)
     b65:	00 00                	add    %al,(%rax)
     b67:	00 00                	add    %al,(%rax)
     b69:	00 00                	add    %al,(%rax)
     b6b:	01 00                	add    %eax,(%rax)
     b6d:	55                   	push   %rbp
     b6e:	76 01                	jbe    b71 <_init-0x40048f>
     b70:	00 00                	add    %al,(%rax)
     b72:	00 00                	add    %al,(%rax)
     b74:	00 00                	add    %al,(%rax)
     b76:	8a 01                	mov    (%rcx),%al
     b78:	00 00                	add    %al,(%rax)
     b7a:	00 00                	add    %al,(%rax)
     b7c:	00 00                	add    %al,(%rax)
     b7e:	04 00                	add    $0x0,%al
     b80:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     b84:	8a 01                	mov    (%rcx),%al
     b86:	00 00                	add    %al,(%rax)
     b88:	00 00                	add    %al,(%rax)
     b8a:	00 00                	add    %al,(%rax)
     b8c:	9c                   	pushfq 
     b8d:	01 00                	add    %eax,(%rax)
     b8f:	00 00                	add    %al,(%rax)
     b91:	00 00                	add    %al,(%rax)
     b93:	00 01                	add    %al,(%rcx)
     b95:	00 55 00             	add    %dl,0x0(%rbp)
	...
     bb0:	00 00                	add    %al,(%rax)
     bb2:	00 f4                	add    %dh,%ah
     bb4:	00 00                	add    %al,(%rax)
     bb6:	00 00                	add    %al,(%rax)
     bb8:	00 00                	add    %al,(%rax)
     bba:	00 54 01 00          	add    %dl,0x0(%rcx,%rax,1)
     bbe:	00 00                	add    %al,(%rax)
     bc0:	00 00                	add    %al,(%rax)
     bc2:	00 01                	add    %al,(%rcx)
     bc4:	00 54 54 01          	add    %dl,0x1(%rsp,%rdx,2)
     bc8:	00 00                	add    %al,(%rax)
     bca:	00 00                	add    %al,(%rax)
     bcc:	00 00                	add    %al,(%rax)
     bce:	5d                   	pop    %rbp
     bcf:	01 00                	add    %eax,(%rax)
     bd1:	00 00                	add    %al,(%rax)
     bd3:	00 00                	add    %al,(%rax)
     bd5:	00 02                	add    %al,(%rdx)
     bd7:	00 77 00             	add    %dh,0x0(%rdi)
     bda:	5d                   	pop    %rbp
     bdb:	01 00                	add    %eax,(%rax)
     bdd:	00 00                	add    %al,(%rax)
     bdf:	00 00                	add    %al,(%rax)
     be1:	00 6f 01             	add    %ch,0x1(%rdi)
     be4:	00 00                	add    %al,(%rax)
     be6:	00 00                	add    %al,(%rax)
     be8:	00 00                	add    %al,(%rax)
     bea:	04 00                	add    $0x0,%al
     bec:	f3 01 54 9f 6f       	repz add %edx,0x6f(%rdi,%rbx,4)
     bf1:	01 00                	add    %eax,(%rax)
     bf3:	00 00                	add    %al,(%rax)
     bf5:	00 00                	add    %al,(%rax)
     bf7:	00 7f 01             	add    %bh,0x1(%rdi)
     bfa:	00 00                	add    %al,(%rax)
     bfc:	00 00                	add    %al,(%rax)
     bfe:	00 00                	add    %al,(%rax)
     c00:	01 00                	add    %eax,(%rax)
     c02:	54                   	push   %rsp
     c03:	7f 01                	jg     c06 <_init-0x4003fa>
     c05:	00 00                	add    %al,(%rax)
     c07:	00 00                	add    %al,(%rax)
     c09:	00 00                	add    %al,(%rax)
     c0b:	8a 01                	mov    (%rcx),%al
     c0d:	00 00                	add    %al,(%rax)
     c0f:	00 00                	add    %al,(%rax)
     c11:	00 00                	add    %al,(%rax)
     c13:	04 00                	add    $0x0,%al
     c15:	f3 01 54 9f 8a       	repz add %edx,-0x76(%rdi,%rbx,4)
     c1a:	01 00                	add    %eax,(%rax)
     c1c:	00 00                	add    %al,(%rax)
     c1e:	00 00                	add    %al,(%rax)
     c20:	00 9c 01 00 00 00 00 	add    %bl,0x0(%rcx,%rax,1)
     c27:	00 00                	add    %al,(%rax)
     c29:	01 00                	add    %eax,(%rax)
     c2b:	54                   	push   %rsp
	...
     c40:	00 00                	add    %al,(%rax)
     c42:	a2 00 00 00 00 00 00 	movabs %al,0xb600000000000000
     c49:	00 b6 
     c4b:	00 00                	add    %al,(%rax)
     c4d:	00 00                	add    %al,(%rax)
     c4f:	00 00                	add    %al,(%rax)
     c51:	00 01                	add    %al,(%rcx)
     c53:	00 55 b6             	add    %dl,-0x4a(%rbp)
     c56:	00 00                	add    %al,(%rax)
     c58:	00 00                	add    %al,(%rax)
     c5a:	00 00                	add    %al,(%rax)
     c5c:	00 f3                	add    %dh,%bl
     c5e:	00 00                	add    %al,(%rax)
     c60:	00 00                	add    %al,(%rax)
     c62:	00 00                	add    %al,(%rax)
     c64:	00 01                	add    %al,(%rcx)
     c66:	00 5c f3 00          	add    %bl,0x0(%rbx,%rsi,8)
     c6a:	00 00                	add    %al,(%rax)
     c6c:	00 00                	add    %al,(%rax)
     c6e:	00 00                	add    %al,(%rax)
     c70:	f4                   	hlt    
     c71:	00 00                	add    %al,(%rax)
     c73:	00 00                	add    %al,(%rax)
     c75:	00 00                	add    %al,(%rax)
     c77:	00 01                	add    %al,(%rcx)
     c79:	00 50 00             	add    %dl,0x0(%rax)
	...
     c8c:	00 00                	add    %al,(%rax)
     c8e:	00 c2                	add    %al,%dl
     c90:	00 00                	add    %al,(%rax)
     c92:	00 00                	add    %al,(%rax)
     c94:	00 00                	add    %al,(%rax)
     c96:	00 d9                	add    %bl,%cl
     c98:	00 00                	add    %al,(%rax)
     c9a:	00 00                	add    %al,(%rax)
     c9c:	00 00                	add    %al,(%rax)
     c9e:	00 01                	add    %al,(%rcx)
     ca0:	00 50 df             	add    %dl,-0x21(%rax)
     ca3:	00 00                	add    %al,(%rax)
     ca5:	00 00                	add    %al,(%rax)
     ca7:	00 00                	add    %al,(%rax)
     ca9:	00 e7                	add    %ah,%bh
     cab:	00 00                	add    %al,(%rax)
     cad:	00 00                	add    %al,(%rax)
     caf:	00 00                	add    %al,(%rax)
     cb1:	00 01                	add    %al,(%rcx)
     cb3:	00 50 00             	add    %dl,0x0(%rax)
	...
     cc2:	00 00                	add    %al,(%rax)
     cc4:	00 02                	add    %al,(%rdx)
     cc6:	00 00                	add    %al,(%rax)
     cc8:	00 00                	add    %al,(%rax)
     cca:	00 00                	add    %al,(%rax)
     ccc:	01 01                	add    %eax,(%rcx)
     cce:	00 a9 00 00 00 00    	add    %ch,0x0(%rcx)
     cd4:	00 00                	add    %al,(%rax)
     cd6:	00 b6 00 00 00 00    	add    %dh,0x0(%rsi)
     cdc:	00 00                	add    %al,(%rax)
     cde:	00 01                	add    %al,(%rcx)
     ce0:	00 55 b6             	add    %dl,-0x4a(%rbp)
     ce3:	00 00                	add    %al,(%rax)
     ce5:	00 00                	add    %al,(%rax)
     ce7:	00 00                	add    %al,(%rax)
     ce9:	00 d0                	add    %dl,%al
     ceb:	00 00                	add    %al,(%rax)
     ced:	00 00                	add    %al,(%rax)
     cef:	00 00                	add    %al,(%rax)
     cf1:	00 01                	add    %al,(%rcx)
     cf3:	00 53 d0             	add    %dl,-0x30(%rbx)
     cf6:	00 00                	add    %al,(%rax)
     cf8:	00 00                	add    %al,(%rax)
     cfa:	00 00                	add    %al,(%rax)
     cfc:	00 df                	add    %bl,%bh
     cfe:	00 00                	add    %al,(%rax)
     d00:	00 00                	add    %al,(%rax)
     d02:	00 00                	add    %al,(%rax)
     d04:	00 01                	add    %al,(%rcx)
     d06:	00 56 df             	add    %dl,-0x21(%rsi)
     d09:	00 00                	add    %al,(%rax)
     d0b:	00 00                	add    %al,(%rax)
     d0d:	00 00                	add    %al,(%rax)
     d0f:	00 df                	add    %bl,%bh
     d11:	00 00                	add    %al,(%rax)
     d13:	00 00                	add    %al,(%rax)
     d15:	00 00                	add    %al,(%rax)
     d17:	00 01                	add    %al,(%rcx)
     d19:	00 53 df             	add    %dl,-0x21(%rbx)
     d1c:	00 00                	add    %al,(%rax)
     d1e:	00 00                	add    %al,(%rax)
     d20:	00 00                	add    %al,(%rax)
     d22:	00 f0                	add    %dh,%al
     d24:	00 00                	add    %al,(%rax)
     d26:	00 00                	add    %al,(%rax)
     d28:	00 00                	add    %al,(%rax)
     d2a:	00 03                	add    %al,(%rbx)
     d2c:	00 73 01             	add    %dh,0x1(%rbx)
     d2f:	9f                   	lahf   
	...
     d4c:	38 00                	cmp    %al,(%rax)
     d4e:	00 00                	add    %al,(%rax)
     d50:	00 00                	add    %al,(%rax)
     d52:	00 00                	add    %al,(%rax)
     d54:	01 00                	add    %eax,(%rax)
     d56:	55                   	push   %rbp
     d57:	38 00                	cmp    %al,(%rax)
     d59:	00 00                	add    %al,(%rax)
     d5b:	00 00                	add    %al,(%rax)
     d5d:	00 00                	add    %al,(%rax)
     d5f:	58                   	pop    %rax
     d60:	00 00                	add    %al,(%rax)
     d62:	00 00                	add    %al,(%rax)
     d64:	00 00                	add    %al,(%rax)
     d66:	00 04 00             	add    %al,(%rax,%rax,1)
     d69:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     d85:	00 00                	add    %al,(%rax)
     d87:	5a                   	pop    %rdx
     d88:	02 00                	add    (%rax),%al
     d8a:	00 00                	add    %al,(%rax)
     d8c:	00 00                	add    %al,(%rax)
     d8e:	00 6e 02             	add    %ch,0x2(%rsi)
     d91:	00 00                	add    %al,(%rax)
     d93:	00 00                	add    %al,(%rax)
     d95:	00 00                	add    %al,(%rax)
     d97:	01 00                	add    %eax,(%rax)
     d99:	55                   	push   %rbp
     d9a:	6e                   	outsb  %ds:(%rsi),(%dx)
     d9b:	02 00                	add    (%rax),%al
     d9d:	00 00                	add    %al,(%rax)
     d9f:	00 00                	add    %al,(%rax)
     da1:	00 72 02             	add    %dh,0x2(%rdx)
     da4:	00 00                	add    %al,(%rax)
     da6:	00 00                	add    %al,(%rax)
     da8:	00 00                	add    %al,(%rax)
     daa:	01 00                	add    %eax,(%rax)
     dac:	54                   	push   %rsp
     dad:	72 02                	jb     db1 <_init-0x40024f>
     daf:	00 00                	add    %al,(%rax)
     db1:	00 00                	add    %al,(%rax)
     db3:	00 00                	add    %al,(%rax)
     db5:	78 02                	js     db9 <_init-0x400247>
     db7:	00 00                	add    %al,(%rax)
     db9:	00 00                	add    %al,(%rax)
     dbb:	00 00                	add    %al,(%rax)
     dbd:	04 00                	add    $0x0,%al
     dbf:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     dc3:	78 02                	js     dc7 <_init-0x400239>
     dc5:	00 00                	add    %al,(%rax)
     dc7:	00 00                	add    %al,(%rax)
     dc9:	00 00                	add    %al,(%rax)
     dcb:	81 02 00 00 00 00    	addl   $0x0,(%rdx)
     dd1:	00 00                	add    %al,(%rax)
     dd3:	01 00                	add    %eax,(%rax)
     dd5:	55                   	push   %rbp
     dd6:	81 02 00 00 00 00    	addl   $0x0,(%rdx)
     ddc:	00 00                	add    %al,(%rax)
     dde:	82                   	(bad)  
     ddf:	02 00                	add    (%rax),%al
     de1:	00 00                	add    %al,(%rax)
     de3:	00 00                	add    %al,(%rax)
     de5:	00 04 00             	add    %al,(%rax,%rax,1)
     de8:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     e04:	00 00                	add    %al,(%rax)
     e06:	9c                   	pushfq 
     e07:	01 00                	add    %eax,(%rax)
     e09:	00 00                	add    %al,(%rax)
     e0b:	00 00                	add    %al,(%rax)
     e0d:	00 d1                	add    %dl,%cl
     e0f:	01 00                	add    %eax,(%rax)
     e11:	00 00                	add    %al,(%rax)
     e13:	00 00                	add    %al,(%rax)
     e15:	00 01                	add    %al,(%rcx)
     e17:	00 55 d1             	add    %dl,-0x2f(%rbp)
     e1a:	01 00                	add    %eax,(%rax)
     e1c:	00 00                	add    %al,(%rax)
     e1e:	00 00                	add    %al,(%rax)
     e20:	00 da                	add    %bl,%dl
     e22:	01 00                	add    %eax,(%rax)
     e24:	00 00                	add    %al,(%rax)
     e26:	00 00                	add    %al,(%rax)
     e28:	00 01                	add    %al,(%rcx)
     e2a:	00 51 da             	add    %dl,-0x26(%rcx)
     e2d:	01 00                	add    %eax,(%rax)
     e2f:	00 00                	add    %al,(%rax)
     e31:	00 00                	add    %al,(%rax)
     e33:	00 dc                	add    %bl,%ah
     e35:	01 00                	add    %eax,(%rax)
     e37:	00 00                	add    %al,(%rax)
     e39:	00 00                	add    %al,(%rax)
     e3b:	00 01                	add    %al,(%rcx)
     e3d:	00 53 dc             	add    %dl,-0x24(%rbx)
     e40:	01 00                	add    %eax,(%rax)
     e42:	00 00                	add    %al,(%rax)
     e44:	00 00                	add    %al,(%rax)
     e46:	00 dd                	add    %bl,%ch
     e48:	01 00                	add    %eax,(%rax)
     e4a:	00 00                	add    %al,(%rax)
     e4c:	00 00                	add    %al,(%rax)
     e4e:	00 04 00             	add    %al,(%rax,%rax,1)
     e51:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     e55:	dd 01                	fldl   (%rcx)
     e57:	00 00                	add    %al,(%rax)
     e59:	00 00                	add    %al,(%rax)
     e5b:	00 00                	add    %al,(%rax)
     e5d:	5a                   	pop    %rdx
     e5e:	02 00                	add    (%rax),%al
     e60:	00 00                	add    %al,(%rax)
     e62:	00 00                	add    %al,(%rax)
     e64:	00 01                	add    %al,(%rcx)
     e66:	00 53 00             	add    %dl,0x0(%rbx)
	...
     e85:	00 f9                	add    %bh,%cl
     e87:	0b 00                	or     (%rax),%eax
     e89:	00 00                	add    %al,(%rax)
     e8b:	00 00                	add    %al,(%rax)
     e8d:	00 18                	add    %bl,(%rax)
     e8f:	0c 00                	or     $0x0,%al
     e91:	00 00                	add    %al,(%rax)
     e93:	00 00                	add    %al,(%rax)
     e95:	00 01                	add    %al,(%rcx)
     e97:	00 55 18             	add    %dl,0x18(%rbp)
     e9a:	0c 00                	or     $0x0,%al
     e9c:	00 00                	add    %al,(%rax)
     e9e:	00 00                	add    %al,(%rax)
     ea0:	00 1a                	add    %bl,(%rdx)
     ea2:	0c 00                	or     $0x0,%al
     ea4:	00 00                	add    %al,(%rax)
     ea6:	00 00                	add    %al,(%rax)
     ea8:	00 04 00             	add    %al,(%rax,%rax,1)
     eab:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     eaf:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
     eb2:	00 00                	add    %al,(%rax)
     eb4:	00 00                	add    %al,(%rax)
     eb6:	00 24 0c             	add    %ah,(%rsp,%rcx,1)
     eb9:	00 00                	add    %al,(%rax)
     ebb:	00 00                	add    %al,(%rax)
     ebd:	00 00                	add    %al,(%rax)
     ebf:	01 00                	add    %eax,(%rax)
     ec1:	55                   	push   %rbp
     ec2:	24 0c                	and    $0xc,%al
     ec4:	00 00                	add    %al,(%rax)
     ec6:	00 00                	add    %al,(%rax)
     ec8:	00 00                	add    %al,(%rax)
     eca:	3e 0c 00             	ds or  $0x0,%al
     ecd:	00 00                	add    %al,(%rax)
     ecf:	00 00                	add    %al,(%rax)
     ed1:	00 04 00             	add    %al,(%rax,%rax,1)
     ed4:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     ed8:	3e 0c 00             	ds or  $0x0,%al
     edb:	00 00                	add    %al,(%rax)
     edd:	00 00                	add    %al,(%rax)
     edf:	00 5c 0c 00          	add    %bl,0x0(%rsp,%rcx,1)
     ee3:	00 00                	add    %al,(%rax)
     ee5:	00 00                	add    %al,(%rax)
     ee7:	00 01                	add    %al,(%rcx)
     ee9:	00 55 5c             	add    %dl,0x5c(%rbp)
     eec:	0c 00                	or     $0x0,%al
     eee:	00 00                	add    %al,(%rax)
     ef0:	00 00                	add    %al,(%rax)
     ef2:	00 60 0c             	add    %ah,0xc(%rax)
     ef5:	00 00                	add    %al,(%rax)
     ef7:	00 00                	add    %al,(%rax)
     ef9:	00 00                	add    %al,(%rax)
     efb:	01 00                	add    %eax,(%rax)
     efd:	52                   	push   %rdx
     efe:	60                   	(bad)  
     eff:	0c 00                	or     $0x0,%al
     f01:	00 00                	add    %al,(%rax)
     f03:	00 00                	add    %al,(%rax)
     f05:	00 67 0c             	add    %ah,0xc(%rdi)
     f08:	00 00                	add    %al,(%rax)
     f0a:	00 00                	add    %al,(%rax)
     f0c:	00 00                	add    %al,(%rax)
     f0e:	04 00                	add    $0x0,%al
     f10:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     f30:	00 00                	add    %al,(%rax)
     f32:	f9                   	stc    
     f33:	0b 00                	or     (%rax),%eax
     f35:	00 00                	add    %al,(%rax)
     f37:	00 00                	add    %al,(%rax)
     f39:	00 18                	add    %bl,(%rax)
     f3b:	0c 00                	or     $0x0,%al
     f3d:	00 00                	add    %al,(%rax)
     f3f:	00 00                	add    %al,(%rax)
     f41:	00 01                	add    %al,(%rcx)
     f43:	00 54 18 0c          	add    %dl,0xc(%rax,%rbx,1)
     f47:	00 00                	add    %al,(%rax)
     f49:	00 00                	add    %al,(%rax)
     f4b:	00 00                	add    %al,(%rax)
     f4d:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
     f50:	00 00                	add    %al,(%rax)
     f52:	00 00                	add    %al,(%rax)
     f54:	00 04 00             	add    %al,(%rax,%rax,1)
     f57:	f3 01 54 9f 1a       	repz add %edx,0x1a(%rdi,%rbx,4)
     f5c:	0c 00                	or     $0x0,%al
     f5e:	00 00                	add    %al,(%rax)
     f60:	00 00                	add    %al,(%rax)
     f62:	00 1d 0c 00 00 00    	add    %bl,0xc(%rip)        # f74 <_init-0x40008c>
     f68:	00 00                	add    %al,(%rax)
     f6a:	00 01                	add    %al,(%rcx)
     f6c:	00 54 1d 0c          	add    %dl,0xc(%rbp,%rbx,1)
     f70:	00 00                	add    %al,(%rax)
     f72:	00 00                	add    %al,(%rax)
     f74:	00 00                	add    %al,(%rax)
     f76:	3e 0c 00             	ds or  $0x0,%al
     f79:	00 00                	add    %al,(%rax)
     f7b:	00 00                	add    %al,(%rax)
     f7d:	00 04 00             	add    %al,(%rax,%rax,1)
     f80:	f3 01 54 9f 3e       	repz add %edx,0x3e(%rdi,%rbx,4)
     f85:	0c 00                	or     $0x0,%al
     f87:	00 00                	add    %al,(%rax)
     f89:	00 00                	add    %al,(%rax)
     f8b:	00 55 0c             	add    %dl,0xc(%rbp)
     f8e:	00 00                	add    %al,(%rax)
     f90:	00 00                	add    %al,(%rax)
     f92:	00 00                	add    %al,(%rax)
     f94:	01 00                	add    %eax,(%rax)
     f96:	54                   	push   %rsp
     f97:	55                   	push   %rbp
     f98:	0c 00                	or     $0x0,%al
     f9a:	00 00                	add    %al,(%rax)
     f9c:	00 00                	add    %al,(%rax)
     f9e:	00 60 0c             	add    %ah,0xc(%rax)
     fa1:	00 00                	add    %al,(%rax)
     fa3:	00 00                	add    %al,(%rax)
     fa5:	00 00                	add    %al,(%rax)
     fa7:	01 00                	add    %eax,(%rax)
     fa9:	51                   	push   %rcx
     faa:	60                   	(bad)  
     fab:	0c 00                	or     $0x0,%al
     fad:	00 00                	add    %al,(%rax)
     faf:	00 00                	add    %al,(%rax)
     fb1:	00 67 0c             	add    %ah,0xc(%rdi)
     fb4:	00 00                	add    %al,(%rax)
     fb6:	00 00                	add    %al,(%rax)
     fb8:	00 00                	add    %al,(%rax)
     fba:	04 00                	add    $0x0,%al
     fbc:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
     fdd:	00 f9                	add    %bh,%cl
     fdf:	0b 00                	or     (%rax),%eax
     fe1:	00 00                	add    %al,(%rax)
     fe3:	00 00                	add    %al,(%rax)
     fe5:	00 18                	add    %bl,(%rax)
     fe7:	0c 00                	or     $0x0,%al
     fe9:	00 00                	add    %al,(%rax)
     feb:	00 00                	add    %al,(%rax)
     fed:	00 01                	add    %al,(%rcx)
     fef:	00 51 18             	add    %dl,0x18(%rcx)
     ff2:	0c 00                	or     $0x0,%al
     ff4:	00 00                	add    %al,(%rax)
     ff6:	00 00                	add    %al,(%rax)
     ff8:	00 1a                	add    %bl,(%rdx)
     ffa:	0c 00                	or     $0x0,%al
     ffc:	00 00                	add    %al,(%rax)
     ffe:	00 00                	add    %al,(%rax)
    1000:	00 04 00             	add    %al,(%rax,%rax,1)
    1003:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
    1007:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
    100a:	00 00                	add    %al,(%rax)
    100c:	00 00                	add    %al,(%rax)
    100e:	00 2d 0c 00 00 00    	add    %ch,0xc(%rip)        # 1020 <_init-0x3fffe0>
    1014:	00 00                	add    %al,(%rax)
    1016:	00 01                	add    %al,(%rcx)
    1018:	00 51 2d             	add    %dl,0x2d(%rcx)
    101b:	0c 00                	or     $0x0,%al
    101d:	00 00                	add    %al,(%rax)
    101f:	00 00                	add    %al,(%rax)
    1021:	00 3e                	add    %bh,(%rsi)
    1023:	0c 00                	or     $0x0,%al
    1025:	00 00                	add    %al,(%rax)
    1027:	00 00                	add    %al,(%rax)
    1029:	00 04 00             	add    %al,(%rax,%rax,1)
    102c:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
    1030:	3e 0c 00             	ds or  $0x0,%al
    1033:	00 00                	add    %al,(%rax)
    1035:	00 00                	add    %al,(%rax)
    1037:	00 50 0c             	add    %dl,0xc(%rax)
    103a:	00 00                	add    %al,(%rax)
    103c:	00 00                	add    %al,(%rax)
    103e:	00 00                	add    %al,(%rax)
    1040:	01 00                	add    %eax,(%rax)
    1042:	51                   	push   %rcx
    1043:	50                   	push   %rax
    1044:	0c 00                	or     $0x0,%al
    1046:	00 00                	add    %al,(%rax)
    1048:	00 00                	add    %al,(%rax)
    104a:	00 60 0c             	add    %ah,0xc(%rax)
    104d:	00 00                	add    %al,(%rax)
    104f:	00 00                	add    %al,(%rax)
    1051:	00 00                	add    %al,(%rax)
    1053:	01 00                	add    %eax,(%rax)
    1055:	58                   	pop    %rax
    1056:	60                   	(bad)  
    1057:	0c 00                	or     $0x0,%al
    1059:	00 00                	add    %al,(%rax)
    105b:	00 00                	add    %al,(%rax)
    105d:	00 67 0c             	add    %ah,0xc(%rdi)
    1060:	00 00                	add    %al,(%rax)
    1062:	00 00                	add    %al,(%rax)
    1064:	00 00                	add    %al,(%rax)
    1066:	04 00                	add    $0x0,%al
    1068:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
	...
    1088:	00 00                	add    %al,(%rax)
    108a:	f9                   	stc    
    108b:	0b 00                	or     (%rax),%eax
    108d:	00 00                	add    %al,(%rax)
    108f:	00 00                	add    %al,(%rax)
    1091:	00 18                	add    %bl,(%rax)
    1093:	0c 00                	or     $0x0,%al
    1095:	00 00                	add    %al,(%rax)
    1097:	00 00                	add    %al,(%rax)
    1099:	00 01                	add    %al,(%rcx)
    109b:	00 52 18             	add    %dl,0x18(%rdx)
    109e:	0c 00                	or     $0x0,%al
    10a0:	00 00                	add    %al,(%rax)
    10a2:	00 00                	add    %al,(%rax)
    10a4:	00 1a                	add    %bl,(%rdx)
    10a6:	0c 00                	or     $0x0,%al
    10a8:	00 00                	add    %al,(%rax)
    10aa:	00 00                	add    %al,(%rax)
    10ac:	00 04 00             	add    %al,(%rax,%rax,1)
    10af:	f3 01 52 9f          	repz add %edx,-0x61(%rdx)
    10b3:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
    10b6:	00 00                	add    %al,(%rax)
    10b8:	00 00                	add    %al,(%rax)
    10ba:	00 2d 0c 00 00 00    	add    %ch,0xc(%rip)        # 10cc <_init-0x3fff34>
    10c0:	00 00                	add    %al,(%rax)
    10c2:	00 01                	add    %al,(%rcx)
    10c4:	00 52 2d             	add    %dl,0x2d(%rdx)
    10c7:	0c 00                	or     $0x0,%al
    10c9:	00 00                	add    %al,(%rax)
    10cb:	00 00                	add    %al,(%rax)
    10cd:	00 3e                	add    %bh,(%rsi)
    10cf:	0c 00                	or     $0x0,%al
    10d1:	00 00                	add    %al,(%rax)
    10d3:	00 00                	add    %al,(%rax)
    10d5:	00 04 00             	add    %al,(%rax,%rax,1)
    10d8:	f3 01 52 9f          	repz add %edx,-0x61(%rdx)
    10dc:	3e 0c 00             	ds or  $0x0,%al
    10df:	00 00                	add    %al,(%rax)
    10e1:	00 00                	add    %al,(%rax)
    10e3:	00 4d 0c             	add    %cl,0xc(%rbp)
    10e6:	00 00                	add    %al,(%rax)
    10e8:	00 00                	add    %al,(%rax)
    10ea:	00 00                	add    %al,(%rax)
    10ec:	01 00                	add    %eax,(%rax)
    10ee:	52                   	push   %rdx
    10ef:	4d 0c 00             	rex.WRB or $0x0,%al
    10f2:	00 00                	add    %al,(%rax)
    10f4:	00 00                	add    %al,(%rax)
    10f6:	00 60 0c             	add    %ah,0xc(%rax)
    10f9:	00 00                	add    %al,(%rax)
    10fb:	00 00                	add    %al,(%rax)
    10fd:	00 00                	add    %al,(%rax)
    10ff:	01 00                	add    %eax,(%rax)
    1101:	59                   	pop    %rcx
    1102:	60                   	(bad)  
    1103:	0c 00                	or     $0x0,%al
    1105:	00 00                	add    %al,(%rax)
    1107:	00 00                	add    %al,(%rax)
    1109:	00 67 0c             	add    %ah,0xc(%rdi)
    110c:	00 00                	add    %al,(%rax)
    110e:	00 00                	add    %al,(%rax)
    1110:	00 00                	add    %al,(%rax)
    1112:	04 00                	add    $0x0,%al
    1114:	f3 01 52 9f          	repz add %edx,-0x61(%rdx)
	...
    1134:	f9                   	stc    
    1135:	0b 00                	or     (%rax),%eax
    1137:	00 00                	add    %al,(%rax)
    1139:	00 00                	add    %al,(%rax)
    113b:	00 18                	add    %bl,(%rax)
    113d:	0c 00                	or     $0x0,%al
    113f:	00 00                	add    %al,(%rax)
    1141:	00 00                	add    %al,(%rax)
    1143:	00 01                	add    %al,(%rcx)
    1145:	00 58 18             	add    %bl,0x18(%rax)
    1148:	0c 00                	or     $0x0,%al
    114a:	00 00                	add    %al,(%rax)
    114c:	00 00                	add    %al,(%rax)
    114e:	00 1a                	add    %bl,(%rdx)
    1150:	0c 00                	or     $0x0,%al
    1152:	00 00                	add    %al,(%rax)
    1154:	00 00                	add    %al,(%rax)
    1156:	00 04 00             	add    %al,(%rax,%rax,1)
    1159:	f3 01 58 9f          	repz add %ebx,-0x61(%rax)
    115d:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
    1160:	00 00                	add    %al,(%rax)
    1162:	00 00                	add    %al,(%rax)
    1164:	00 2d 0c 00 00 00    	add    %ch,0xc(%rip)        # 1176 <_init-0x3ffe8a>
    116a:	00 00                	add    %al,(%rax)
    116c:	00 01                	add    %al,(%rcx)
    116e:	00 58 2d             	add    %bl,0x2d(%rax)
    1171:	0c 00                	or     $0x0,%al
    1173:	00 00                	add    %al,(%rax)
    1175:	00 00                	add    %al,(%rax)
    1177:	00 3e                	add    %bh,(%rsi)
    1179:	0c 00                	or     $0x0,%al
    117b:	00 00                	add    %al,(%rax)
    117d:	00 00                	add    %al,(%rax)
    117f:	00 04 00             	add    %al,(%rax,%rax,1)
    1182:	f3 01 58 9f          	repz add %ebx,-0x61(%rax)
    1186:	3e 0c 00             	ds or  $0x0,%al
    1189:	00 00                	add    %al,(%rax)
    118b:	00 00                	add    %al,(%rax)
    118d:	00 4a 0c             	add    %cl,0xc(%rdx)
    1190:	00 00                	add    %al,(%rax)
    1192:	00 00                	add    %al,(%rax)
    1194:	00 00                	add    %al,(%rax)
    1196:	01 00                	add    %eax,(%rax)
    1198:	58                   	pop    %rax
    1199:	4a 0c 00             	rex.WX or $0x0,%al
    119c:	00 00                	add    %al,(%rax)
    119e:	00 00                	add    %al,(%rax)
    11a0:	00 67 0c             	add    %ah,0xc(%rdi)
    11a3:	00 00                	add    %al,(%rax)
    11a5:	00 00                	add    %al,(%rax)
    11a7:	00 00                	add    %al,(%rax)
    11a9:	04 00                	add    $0x0,%al
    11ab:	f3 01 58 9f          	repz add %ebx,-0x61(%rax)
	...
    11c7:	f9                   	stc    
    11c8:	0b 00                	or     (%rax),%eax
    11ca:	00 00                	add    %al,(%rax)
    11cc:	00 00                	add    %al,(%rax)
    11ce:	00 18                	add    %bl,(%rax)
    11d0:	0c 00                	or     $0x0,%al
    11d2:	00 00                	add    %al,(%rax)
    11d4:	00 00                	add    %al,(%rax)
    11d6:	00 01                	add    %al,(%rcx)
    11d8:	00 59 18             	add    %bl,0x18(%rcx)
    11db:	0c 00                	or     $0x0,%al
    11dd:	00 00                	add    %al,(%rax)
    11df:	00 00                	add    %al,(%rax)
    11e1:	00 19                	add    %bl,(%rcx)
    11e3:	0c 00                	or     $0x0,%al
    11e5:	00 00                	add    %al,(%rax)
    11e7:	00 00                	add    %al,(%rax)
    11e9:	00 01                	add    %al,(%rcx)
    11eb:	00 53 19             	add    %dl,0x19(%rbx)
    11ee:	0c 00                	or     $0x0,%al
    11f0:	00 00                	add    %al,(%rax)
    11f2:	00 00                	add    %al,(%rax)
    11f4:	00 1a                	add    %bl,(%rdx)
    11f6:	0c 00                	or     $0x0,%al
    11f8:	00 00                	add    %al,(%rax)
    11fa:	00 00                	add    %al,(%rax)
    11fc:	00 04 00             	add    %al,(%rax,%rax,1)
    11ff:	f3 01 59 9f          	repz add %ebx,-0x61(%rcx)
    1203:	1a 0c 00             	sbb    (%rax,%rax,1),%cl
    1206:	00 00                	add    %al,(%rax)
    1208:	00 00                	add    %al,(%rax)
    120a:	00 67 0c             	add    %ah,0xc(%rdi)
    120d:	00 00                	add    %al,(%rax)
    120f:	00 00                	add    %al,(%rax)
    1211:	00 00                	add    %al,(%rax)
    1213:	01 00                	add    %eax,(%rax)
    1215:	53                   	push   %rbx
	...
    1226:	00 00                	add    %al,(%rax)
    1228:	61                   	(bad)  
    1229:	0c 00                	or     $0x0,%al
    122b:	00 00                	add    %al,(%rax)
    122d:	00 00                	add    %al,(%rax)
    122f:	00 67 0c             	add    %ah,0xc(%rdi)
    1232:	00 00                	add    %al,(%rax)
    1234:	00 00                	add    %al,(%rax)
    1236:	00 00                	add    %al,(%rax)
    1238:	01 00                	add    %eax,(%rax)
    123a:	50                   	push   %rax
	...
    1253:	fc                   	cld    
    1254:	09 00                	or     %eax,(%rax)
    1256:	00 00                	add    %al,(%rax)
    1258:	00 00                	add    %al,(%rax)
    125a:	00 11                	add    %dl,(%rcx)
    125c:	0a 00                	or     (%rax),%al
    125e:	00 00                	add    %al,(%rax)
    1260:	00 00                	add    %al,(%rax)
    1262:	00 01                	add    %al,(%rcx)
    1264:	00 55 11             	add    %dl,0x11(%rbp)
    1267:	0a 00                	or     (%rax),%al
    1269:	00 00                	add    %al,(%rax)
    126b:	00 00                	add    %al,(%rax)
    126d:	00 d9                	add    %bl,%cl
    126f:	0a 00                	or     (%rax),%al
    1271:	00 00                	add    %al,(%rax)
    1273:	00 00                	add    %al,(%rax)
    1275:	00 01                	add    %al,(%rcx)
    1277:	00 5c d9 0a          	add    %bl,0xa(%rcx,%rbx,8)
    127b:	00 00                	add    %al,(%rax)
    127d:	00 00                	add    %al,(%rax)
    127f:	00 00                	add    %al,(%rax)
    1281:	da 0a                	fimull (%rdx)
    1283:	00 00                	add    %al,(%rax)
    1285:	00 00                	add    %al,(%rax)
    1287:	00 00                	add    %al,(%rax)
    1289:	04 00                	add    $0x0,%al
    128b:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
    128f:	da 0a                	fimull (%rdx)
    1291:	00 00                	add    %al,(%rax)
    1293:	00 00                	add    %al,(%rax)
    1295:	00 00                	add    %al,(%rax)
    1297:	f9                   	stc    
    1298:	0b 00                	or     (%rax),%eax
    129a:	00 00                	add    %al,(%rax)
    129c:	00 00                	add    %al,(%rax)
    129e:	00 01                	add    %al,(%rcx)
    12a0:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
	...
    12b8:	00 00                	add    %al,(%rax)
    12ba:	48 0a 00             	rex.W or (%rax),%al
    12bd:	00 00                	add    %al,(%rax)
    12bf:	00 00                	add    %al,(%rax)
    12c1:	00 5d 0a             	add    %bl,0xa(%rbp)
    12c4:	00 00                	add    %al,(%rax)
    12c6:	00 00                	add    %al,(%rax)
    12c8:	00 00                	add    %al,(%rax)
    12ca:	01 00                	add    %eax,(%rax)
    12cc:	50                   	push   %rax
    12cd:	5d                   	pop    %rbp
    12ce:	0a 00                	or     (%rax),%al
    12d0:	00 00                	add    %al,(%rax)
    12d2:	00 00                	add    %al,(%rax)
    12d4:	00 d1                	add    %dl,%cl
    12d6:	0a 00                	or     (%rax),%al
    12d8:	00 00                	add    %al,(%rax)
    12da:	00 00                	add    %al,(%rax)
    12dc:	00 01                	add    %al,(%rcx)
    12de:	00 53 da             	add    %dl,-0x26(%rbx)
    12e1:	0a 00                	or     (%rax),%al
    12e3:	00 00                	add    %al,(%rax)
    12e5:	00 00                	add    %al,(%rax)
    12e7:	00 e4                	add    %ah,%ah
    12e9:	0a 00                	or     (%rax),%al
    12eb:	00 00                	add    %al,(%rax)
    12ed:	00 00                	add    %al,(%rax)
    12ef:	00 01                	add    %al,(%rcx)
    12f1:	00 50 2d             	add    %dl,0x2d(%rax)
    12f4:	0b 00                	or     (%rax),%eax
    12f6:	00 00                	add    %al,(%rax)
    12f8:	00 00                	add    %al,(%rax)
    12fa:	00 f9                	add    %bh,%cl
    12fc:	0b 00                	or     (%rax),%eax
    12fe:	00 00                	add    %al,(%rax)
    1300:	00 00                	add    %al,(%rax)
    1302:	00 01                	add    %al,(%rcx)
    1304:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1317:	00 00                	add    %al,(%rax)
    1319:	00 5e 0a             	add    %bl,0xa(%rsi)
    131c:	00 00                	add    %al,(%rax)
    131e:	00 00                	add    %al,(%rax)
    1320:	00 00                	add    %al,(%rax)
    1322:	99                   	cltd   
    1323:	0a 00                	or     (%rax),%al
    1325:	00 00                	add    %al,(%rax)
    1327:	00 00                	add    %al,(%rax)
    1329:	00 01                	add    %al,(%rcx)
    132b:	00 50 2d             	add    %dl,0x2d(%rax)
    132e:	0b 00                	or     (%rax),%eax
    1330:	00 00                	add    %al,(%rax)
    1332:	00 00                	add    %al,(%rax)
    1334:	00 37                	add    %dh,(%rdi)
    1336:	0b 00                	or     (%rax),%eax
    1338:	00 00                	add    %al,(%rax)
    133a:	00 00                	add    %al,(%rax)
    133c:	00 01                	add    %al,(%rcx)
    133e:	00 50 00             	add    %dl,0x0(%rax)
	...
    1355:	00 00                	add    %al,(%rax)
    1357:	00 d1                	add    %dl,%cl
    1359:	09 00                	or     %eax,(%rax)
    135b:	00 00                	add    %al,(%rax)
    135d:	00 00                	add    %al,(%rax)
    135f:	00 da                	add    %bl,%dl
    1361:	09 00                	or     %eax,(%rax)
    1363:	00 00                	add    %al,(%rax)
    1365:	00 00                	add    %al,(%rax)
    1367:	00 01                	add    %al,(%rcx)
    1369:	00 55 da             	add    %dl,-0x26(%rbp)
    136c:	09 00                	or     %eax,(%rax)
    136e:	00 00                	add    %al,(%rax)
    1370:	00 00                	add    %al,(%rax)
    1372:	00 f3                	add    %dh,%bl
    1374:	09 00                	or     %eax,(%rax)
    1376:	00 00                	add    %al,(%rax)
    1378:	00 00                	add    %al,(%rax)
    137a:	00 01                	add    %al,(%rcx)
    137c:	00 53 f4             	add    %dl,-0xc(%rbx)
    137f:	09 00                	or     %eax,(%rax)
    1381:	00 00                	add    %al,(%rax)
    1383:	00 00                	add    %al,(%rax)
    1385:	00 f9                	add    %bh,%cl
    1387:	09 00                	or     %eax,(%rax)
    1389:	00 00                	add    %al,(%rax)
    138b:	00 00                	add    %al,(%rax)
    138d:	00 01                	add    %al,(%rcx)
    138f:	00 53 f9             	add    %dl,-0x7(%rbx)
    1392:	09 00                	or     %eax,(%rax)
    1394:	00 00                	add    %al,(%rax)
    1396:	00 00                	add    %al,(%rax)
    1398:	00 fc                	add    %bh,%ah
    139a:	09 00                	or     %eax,(%rax)
    139c:	00 00                	add    %al,(%rax)
    139e:	00 00                	add    %al,(%rax)
    13a0:	00 01                	add    %al,(%rcx)
    13a2:	00 55 00             	add    %dl,0x0(%rbp)
	...
    13b9:	00 00                	add    %al,(%rax)
    13bb:	00 7f 02             	add    %bh,0x2(%rdi)
    13be:	00 00                	add    %al,(%rax)
    13c0:	00 00                	add    %al,(%rax)
    13c2:	00 00                	add    %al,(%rax)
    13c4:	c9                   	leaveq 
    13c5:	02 00                	add    (%rax),%al
    13c7:	00 00                	add    %al,(%rax)
    13c9:	00 00                	add    %al,(%rax)
    13cb:	00 01                	add    %al,(%rcx)
    13cd:	00 55 c9             	add    %dl,-0x37(%rbp)
    13d0:	02 00                	add    (%rax),%al
    13d2:	00 00                	add    %al,(%rax)
    13d4:	00 00                	add    %al,(%rax)
    13d6:	00 6b 05             	add    %ch,0x5(%rbx)
    13d9:	00 00                	add    %al,(%rax)
    13db:	00 00                	add    %al,(%rax)
    13dd:	00 00                	add    %al,(%rax)
    13df:	01 00                	add    %eax,(%rax)
    13e1:	5d                   	pop    %rbp
    13e2:	6b 05 00 00 00 00 00 	imul   $0x0,0x0(%rip),%eax        # 13e9 <_init-0x3ffc17>
    13e9:	00 70 05             	add    %dh,0x5(%rax)
    13ec:	00 00                	add    %al,(%rax)
    13ee:	00 00                	add    %al,(%rax)
    13f0:	00 00                	add    %al,(%rax)
    13f2:	04 00                	add    $0x0,%al
    13f4:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
    13f8:	70 05                	jo     13ff <_init-0x3ffc01>
    13fa:	00 00                	add    %al,(%rax)
    13fc:	00 00                	add    %al,(%rax)
    13fe:	00 00                	add    %al,(%rax)
    1400:	d1 09                	rorl   (%rcx)
    1402:	00 00                	add    %al,(%rax)
    1404:	00 00                	add    %al,(%rax)
    1406:	00 00                	add    %al,(%rax)
    1408:	01 00                	add    %eax,(%rax)
    140a:	5d                   	pop    %rbp
	...
    141f:	7f 02                	jg     1423 <_init-0x3ffbdd>
    1421:	00 00                	add    %al,(%rax)
    1423:	00 00                	add    %al,(%rax)
    1425:	00 00                	add    %al,(%rax)
    1427:	c4 02 00 00          	(bad)  
    142b:	00 00                	add    %al,(%rax)
    142d:	00 00                	add    %al,(%rax)
    142f:	01 00                	add    %eax,(%rax)
    1431:	54                   	push   %rsp
    1432:	c4 02 00 00          	(bad)  
    1436:	00 00                	add    %al,(%rax)
    1438:	00 00                	add    %al,(%rax)
    143a:	d1 09                	rorl   (%rcx)
    143c:	00 00                	add    %al,(%rax)
    143e:	00 00                	add    %al,(%rax)
    1440:	00 00                	add    %al,(%rax)
    1442:	04 00                	add    $0x0,%al
    1444:	91                   	xchg   %eax,%ecx
    1445:	84 bf 7d 00 00 00    	test   %bh,0x7d(%rdi)
	...
    145b:	00 00                	add    %al,(%rax)
    145d:	00 7f 02             	add    %bh,0x2(%rdi)
    1460:	00 00                	add    %al,(%rax)
    1462:	00 00                	add    %al,(%rax)
    1464:	00 00                	add    %al,(%rax)
    1466:	bf 02 00 00 00       	mov    $0x2,%edi
    146b:	00 00                	add    %al,(%rax)
    146d:	00 01                	add    %al,(%rcx)
    146f:	00 51 bf             	add    %dl,-0x41(%rcx)
    1472:	02 00                	add    (%rax),%al
    1474:	00 00                	add    %al,(%rax)
    1476:	00 00                	add    %al,(%rax)
    1478:	00 7e 03             	add    %bh,0x3(%rsi)
    147b:	00 00                	add    %al,(%rax)
    147d:	00 00                	add    %al,(%rax)
    147f:	00 00                	add    %al,(%rax)
    1481:	01 00                	add    %eax,(%rax)
    1483:	5f                   	pop    %rdi
    1484:	70 05                	jo     148b <_init-0x3ffb75>
    1486:	00 00                	add    %al,(%rax)
    1488:	00 00                	add    %al,(%rax)
    148a:	00 00                	add    %al,(%rax)
    148c:	7e 06                	jle    1494 <_init-0x3ffb6c>
    148e:	00 00                	add    %al,(%rax)
    1490:	00 00                	add    %al,(%rax)
    1492:	00 00                	add    %al,(%rax)
    1494:	01 00                	add    %eax,(%rax)
    1496:	5f                   	pop    %rdi
	...
    14ab:	00 00                	add    %al,(%rax)
    14ad:	7f 02                	jg     14b1 <_init-0x3ffb4f>
    14af:	00 00                	add    %al,(%rax)
    14b1:	00 00                	add    %al,(%rax)
    14b3:	00 00                	add    %al,(%rax)
    14b5:	cd 02                	int    $0x2
    14b7:	00 00                	add    %al,(%rax)
    14b9:	00 00                	add    %al,(%rax)
    14bb:	00 00                	add    %al,(%rax)
    14bd:	01 00                	add    %eax,(%rax)
    14bf:	52                   	push   %rdx
    14c0:	cd 02                	int    $0x2
    14c2:	00 00                	add    %al,(%rax)
    14c4:	00 00                	add    %al,(%rax)
    14c6:	00 00                	add    %al,(%rax)
    14c8:	8e 03                	mov    (%rbx),%es
    14ca:	00 00                	add    %al,(%rax)
    14cc:	00 00                	add    %al,(%rax)
    14ce:	00 00                	add    %al,(%rax)
    14d0:	04 00                	add    $0x0,%al
    14d2:	91                   	xchg   %eax,%ecx
    14d3:	f8                   	clc    
    14d4:	be 7d 70 05 00       	mov    $0x5707d,%esi
    14d9:	00 00                	add    %al,(%rax)
    14db:	00 00                	add    %al,(%rax)
    14dd:	00 7e 06             	add    %bh,0x6(%rsi)
    14e0:	00 00                	add    %al,(%rax)
    14e2:	00 00                	add    %al,(%rax)
    14e4:	00 00                	add    %al,(%rax)
    14e6:	04 00                	add    $0x0,%al
    14e8:	91                   	xchg   %eax,%ecx
    14e9:	f8                   	clc    
    14ea:	be 7d 00 00 00       	mov    $0x7d,%esi
	...
    14ff:	00 00                	add    %al,(%rax)
    1501:	00 7f 02             	add    %bh,0x2(%rdi)
    1504:	00 00                	add    %al,(%rax)
    1506:	00 00                	add    %al,(%rax)
    1508:	00 00                	add    %al,(%rax)
    150a:	cd 02                	int    $0x2
    150c:	00 00                	add    %al,(%rax)
    150e:	00 00                	add    %al,(%rax)
    1510:	00 00                	add    %al,(%rax)
    1512:	01 00                	add    %eax,(%rax)
    1514:	58                   	pop    %rax
    1515:	cd 02                	int    $0x2
    1517:	00 00                	add    %al,(%rax)
    1519:	00 00                	add    %al,(%rax)
    151b:	00 00                	add    %al,(%rax)
    151d:	a0 03 00 00 00 00 00 	movabs 0x400000000000003,%al
    1524:	00 04 
    1526:	00 91 88 bf 7d 70    	add    %dl,0x707dbf88(%rcx)
    152c:	05 00 00 00 00       	add    $0x0,%eax
    1531:	00 00                	add    %al,(%rax)
    1533:	7e 06                	jle    153b <_init-0x3ffac5>
    1535:	00 00                	add    %al,(%rax)
    1537:	00 00                	add    %al,(%rax)
    1539:	00 00                	add    %al,(%rax)
    153b:	04 00                	add    $0x0,%al
    153d:	91                   	xchg   %eax,%ecx
    153e:	88 bf 7d 00 00 00    	mov    %bh,0x7d(%rdi)
	...
    1554:	00 00                	add    %al,(%rax)
    1556:	00 7f 02             	add    %bh,0x2(%rdi)
    1559:	00 00                	add    %al,(%rax)
    155b:	00 00                	add    %al,(%rax)
    155d:	00 00                	add    %al,(%rax)
    155f:	cd 02                	int    $0x2
    1561:	00 00                	add    %al,(%rax)
    1563:	00 00                	add    %al,(%rax)
    1565:	00 00                	add    %al,(%rax)
    1567:	01 00                	add    %eax,(%rax)
    1569:	59                   	pop    %rcx
    156a:	cd 02                	int    $0x2
    156c:	00 00                	add    %al,(%rax)
    156e:	00 00                	add    %al,(%rax)
    1570:	00 00                	add    %al,(%rax)
    1572:	70 03                	jo     1577 <_init-0x3ffa89>
    1574:	00 00                	add    %al,(%rax)
    1576:	00 00                	add    %al,(%rax)
    1578:	00 00                	add    %al,(%rax)
    157a:	01 00                	add    %eax,(%rax)
    157c:	5e                   	pop    %rsi
    157d:	70 05                	jo     1584 <_init-0x3ffa7c>
    157f:	00 00                	add    %al,(%rax)
    1581:	00 00                	add    %al,(%rax)
    1583:	00 00                	add    %al,(%rax)
    1585:	7e 06                	jle    158d <_init-0x3ffa73>
    1587:	00 00                	add    %al,(%rax)
    1589:	00 00                	add    %al,(%rax)
    158b:	00 00                	add    %al,(%rax)
    158d:	01 00                	add    %eax,(%rax)
    158f:	5e                   	pop    %rsi
	...
    15a4:	00 00                	add    %al,(%rax)
    15a6:	7f 02                	jg     15aa <_init-0x3ffa56>
    15a8:	00 00                	add    %al,(%rax)
    15aa:	00 00                	add    %al,(%rax)
    15ac:	00 00                	add    %al,(%rax)
    15ae:	5e                   	pop    %rsi
    15af:	05 00 00 00 00       	add    $0x0,%eax
    15b4:	00 00                	add    %al,(%rax)
    15b6:	02 00                	add    (%rax),%al
    15b8:	91                   	xchg   %eax,%ecx
    15b9:	00 70 05             	add    %dh,0x5(%rax)
    15bc:	00 00                	add    %al,(%rax)
    15be:	00 00                	add    %al,(%rax)
    15c0:	00 00                	add    %al,(%rax)
    15c2:	c7                   	(bad)  
    15c3:	08 00                	or     %al,(%rax)
    15c5:	00 00                	add    %al,(%rax)
    15c7:	00 00                	add    %al,(%rax)
    15c9:	00 02                	add    %al,(%rdx)
    15cb:	00 91 00 23 09 00    	add    %dl,0x92300(%rcx)
    15d1:	00 00                	add    %al,(%rax)
    15d3:	00 00                	add    %al,(%rax)
    15d5:	00 d1                	add    %dl,%cl
    15d7:	09 00                	or     %eax,(%rax)
    15d9:	00 00                	add    %al,(%rax)
    15db:	00 00                	add    %al,(%rax)
    15dd:	00 02                	add    %al,(%rdx)
    15df:	00 91 00 00 00 00    	add    %dl,0x0(%rcx)
	...
    15f9:	00 ce                	add    %cl,%dh
    15fb:	02 00                	add    (%rax),%al
    15fd:	00 00                	add    %al,(%rax)
    15ff:	00 00                	add    %al,(%rax)
    1601:	00 df                	add    %bl,%bh
    1603:	02 00                	add    (%rax),%al
    1605:	00 00                	add    %al,(%rax)
    1607:	00 00                	add    %al,(%rax)
    1609:	00 01                	add    %al,(%rcx)
    160b:	00 50 df             	add    %dl,-0x21(%rax)
    160e:	02 00                	add    (%rax),%al
    1610:	00 00                	add    %al,(%rax)
    1612:	00 00                	add    %al,(%rax)
    1614:	00 5e 05             	add    %bl,0x5(%rsi)
    1617:	00 00                	add    %al,(%rax)
    1619:	00 00                	add    %al,(%rax)
    161b:	00 00                	add    %al,(%rax)
    161d:	01 00                	add    %eax,(%rax)
    161f:	53                   	push   %rbx
    1620:	70 05                	jo     1627 <_init-0x3ff9d9>
    1622:	00 00                	add    %al,(%rax)
    1624:	00 00                	add    %al,(%rax)
    1626:	00 00                	add    %al,(%rax)
    1628:	7a 05                	jp     162f <_init-0x3ff9d1>
    162a:	00 00                	add    %al,(%rax)
    162c:	00 00                	add    %al,(%rax)
    162e:	00 00                	add    %al,(%rax)
    1630:	01 00                	add    %eax,(%rax)
    1632:	50                   	push   %rax
    1633:	bc 05 00 00 00       	mov    $0x5,%esp
    1638:	00 00                	add    %al,(%rax)
    163a:	00 d1                	add    %dl,%cl
    163c:	09 00                	or     %eax,(%rax)
    163e:	00 00                	add    %al,(%rax)
    1640:	00 00                	add    %al,(%rax)
    1642:	00 01                	add    %al,(%rcx)
    1644:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1657:	00 00                	add    %al,(%rax)
    1659:	00 e0                	add    %ah,%al
    165b:	02 00                	add    (%rax),%al
    165d:	00 00                	add    %al,(%rax)
    165f:	00 00                	add    %al,(%rax)
    1661:	00 33                	add    %dh,(%rbx)
    1663:	03 00                	add    (%rax),%eax
    1665:	00 00                	add    %al,(%rax)
    1667:	00 00                	add    %al,(%rax)
    1669:	00 01                	add    %al,(%rcx)
    166b:	00 50 bc             	add    %dl,-0x44(%rax)
    166e:	05 00 00 00 00       	add    $0x0,%eax
    1673:	00 00                	add    %al,(%rax)
    1675:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 167c <_init-0x3ff984>
    167c:	00 01                	add    %al,(%rcx)
    167e:	00 50 00             	add    %dl,0x0(%rax)
	...
    1691:	00 00                	add    %al,(%rax)
    1693:	00 76 03             	add    %dh,0x3(%rsi)
    1696:	00 00                	add    %al,(%rax)
    1698:	00 00                	add    %al,(%rax)
    169a:	00 00                	add    %al,(%rax)
    169c:	e3 03                	jrcxz  16a1 <_init-0x3ff95f>
    169e:	00 00                	add    %al,(%rax)
    16a0:	00 00                	add    %al,(%rax)
    16a2:	00 00                	add    %al,(%rax)
    16a4:	03 00                	add    (%rax),%eax
    16a6:	71 7f                	jno    1727 <_init-0x3ff8d9>
    16a8:	9f                   	lahf   
    16a9:	7e 06                	jle    16b1 <_init-0x3ff94f>
    16ab:	00 00                	add    %al,(%rax)
    16ad:	00 00                	add    %al,(%rax)
    16af:	00 00                	add    %al,(%rax)
    16b1:	92                   	xchg   %eax,%edx
    16b2:	06                   	(bad)  
    16b3:	00 00                	add    %al,(%rax)
    16b5:	00 00                	add    %al,(%rax)
    16b7:	00 00                	add    %al,(%rax)
    16b9:	03 00                	add    (%rax),%eax
    16bb:	71 7f                	jno    173c <_init-0x3ff8c4>
    16bd:	9f                   	lahf   
	...
    16d2:	00 00                	add    %al,(%rax)
    16d4:	b8 03 00 00 00       	mov    $0x3,%eax
    16d9:	00 00                	add    %al,(%rax)
    16db:	00 d6                	add    %dl,%dh
    16dd:	03 00                	add    (%rax),%eax
    16df:	00 00                	add    %al,(%rax)
    16e1:	00 00                	add    %al,(%rax)
    16e3:	00 01                	add    %al,(%rcx)
    16e5:	00 50 7e             	add    %dl,0x7e(%rax)
    16e8:	06                   	(bad)  
    16e9:	00 00                	add    %al,(%rax)
    16eb:	00 00                	add    %al,(%rax)
    16ed:	00 00                	add    %al,(%rax)
    16ef:	88 06                	mov    %al,(%rsi)
    16f1:	00 00                	add    %al,(%rax)
    16f3:	00 00                	add    %al,(%rax)
    16f5:	00 00                	add    %al,(%rax)
    16f7:	01 00                	add    %eax,(%rax)
    16f9:	50                   	push   %rax
    16fa:	88 06                	mov    %al,(%rsi)
    16fc:	00 00                	add    %al,(%rax)
    16fe:	00 00                	add    %al,(%rax)
    1700:	00 00                	add    %al,(%rax)
    1702:	92                   	xchg   %eax,%edx
    1703:	06                   	(bad)  
    1704:	00 00                	add    %al,(%rax)
    1706:	00 00                	add    %al,(%rax)
    1708:	00 00                	add    %al,(%rax)
    170a:	0d 00 71 00 31       	or     $0x31007100,%eax
    170f:	24 71                	and    $0x71,%al
    1711:	00 22                	add    %ah,(%rdx)
    1713:	72 00                	jb     1715 <_init-0x3ff8eb>
    1715:	22 23                	and    (%rbx),%ah
    1717:	7d 9f                	jge    16b8 <_init-0x3ff948>
	...
    1729:	01 00                	add    %eax,(%rax)
    172b:	34 03                	xor    $0x3,%al
    172d:	00 00                	add    %al,(%rax)
    172f:	00 00                	add    %al,(%rax)
    1731:	00 00                	add    %al,(%rax)
    1733:	3d 03 00 00 00       	cmp    $0x3,%eax
    1738:	00 00                	add    %al,(%rax)
    173a:	00 04 00             	add    %al,(%rax,%rax,1)
    173d:	91                   	xchg   %eax,%ecx
    173e:	84 bf 7d 00 00 00    	test   %bh,0x7d(%rdi)
	...
    1754:	00 3d 00 00 00 00    	add    %bh,0x0(%rip)        # 175a <_init-0x3ff8a6>
    175a:	00 00                	add    %al,(%rax)
    175c:	00 59 00             	add    %bl,0x0(%rcx)
    175f:	00 00                	add    %al,(%rax)
    1761:	00 00                	add    %al,(%rax)
    1763:	00 00                	add    %al,(%rax)
    1765:	01 00                	add    %eax,(%rax)
    1767:	55                   	push   %rbp
    1768:	64 00 00             	add    %al,%fs:(%rax)
    176b:	00 00                	add    %al,(%rax)
    176d:	00 00                	add    %al,(%rax)
    176f:	00 18                	add    %bl,(%rax)
    1771:	01 00                	add    %eax,(%rax)
    1773:	00 00                	add    %al,(%rax)
    1775:	00 00                	add    %al,(%rax)
    1777:	00 01                	add    %al,(%rcx)
    1779:	00 53 00             	add    %dl,0x0(%rbx)
	...
    178c:	00 00                	add    %al,(%rax)
    178e:	01 01                	add    %eax,(%rcx)
    1790:	00 00                	add    %al,(%rax)
    1792:	01 01                	add    %eax,(%rcx)
    1794:	01 01                	add    %eax,(%rcx)
    1796:	01 01                	add    %eax,(%rcx)
    1798:	00 00                	add    %al,(%rax)
    179a:	01 01                	add    %eax,(%rcx)
    179c:	00 00                	add    %al,(%rax)
    179e:	00 3d 00 00 00 00    	add    %bh,0x0(%rip)        # 17a4 <_init-0x3ff85c>
    17a4:	00 00                	add    %al,(%rax)
    17a6:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
    17aa:	00 00                	add    %al,(%rax)
    17ac:	00 00                	add    %al,(%rax)
    17ae:	00 01                	add    %al,(%rcx)
    17b0:	00 54 5c 00          	add    %dl,0x0(%rsp,%rbx,2)
    17b4:	00 00                	add    %al,(%rax)
    17b6:	00 00                	add    %al,(%rax)
    17b8:	00 00                	add    %al,(%rax)
    17ba:	64 00 00             	add    %al,%fs:(%rax)
    17bd:	00 00                	add    %al,(%rax)
    17bf:	00 00                	add    %al,(%rax)
    17c1:	00 01                	add    %al,(%rcx)
    17c3:	00 56 64             	add    %dl,0x64(%rsi)
    17c6:	00 00                	add    %al,(%rax)
    17c8:	00 00                	add    %al,(%rax)
    17ca:	00 00                	add    %al,(%rax)
    17cc:	00 6b 00             	add    %ch,0x0(%rbx)
    17cf:	00 00                	add    %al,(%rax)
    17d1:	00 00                	add    %al,(%rax)
    17d3:	00 00                	add    %al,(%rax)
    17d5:	03 00                	add    (%rax),%eax
    17d7:	76 01                	jbe    17da <_init-0x3ff826>
    17d9:	9f                   	lahf   
    17da:	6b 00 00             	imul   $0x0,(%rax),%eax
    17dd:	00 00                	add    %al,(%rax)
    17df:	00 00                	add    %al,(%rax)
    17e1:	00 e0                	add    %ah,%al
    17e3:	00 00                	add    %al,(%rax)
    17e5:	00 00                	add    %al,(%rax)
    17e7:	00 00                	add    %al,(%rax)
    17e9:	00 01                	add    %al,(%rcx)
    17eb:	00 56 e0             	add    %dl,-0x20(%rsi)
    17ee:	00 00                	add    %al,(%rax)
    17f0:	00 00                	add    %al,(%rax)
    17f2:	00 00                	add    %al,(%rax)
    17f4:	00 e8                	add    %ch,%al
    17f6:	00 00                	add    %al,(%rax)
    17f8:	00 00                	add    %al,(%rax)
    17fa:	00 00                	add    %al,(%rax)
    17fc:	00 03                	add    %al,(%rbx)
    17fe:	00 76 01             	add    %dh,0x1(%rsi)
    1801:	9f                   	lahf   
    1802:	e8 00 00 00 00       	callq  1807 <_init-0x3ff7f9>
    1807:	00 00                	add    %al,(%rax)
    1809:	00 f0                	add    %dh,%al
    180b:	00 00                	add    %al,(%rax)
    180d:	00 00                	add    %al,(%rax)
    180f:	00 00                	add    %al,(%rax)
    1811:	00 03                	add    %al,(%rbx)
    1813:	00 76 02             	add    %dh,0x2(%rsi)
    1816:	9f                   	lahf   
    1817:	f0 00 00             	lock add %al,(%rax)
    181a:	00 00                	add    %al,(%rax)
    181c:	00 00                	add    %al,(%rax)
    181e:	00 fc                	add    %bh,%ah
    1820:	00 00                	add    %al,(%rax)
    1822:	00 00                	add    %al,(%rax)
    1824:	00 00                	add    %al,(%rax)
    1826:	00 03                	add    %al,(%rbx)
    1828:	00 76 03             	add    %dh,0x3(%rsi)
    182b:	9f                   	lahf   
    182c:	fc                   	cld    
    182d:	00 00                	add    %al,(%rax)
    182f:	00 00                	add    %al,(%rax)
    1831:	00 00                	add    %al,(%rax)
    1833:	00 01                	add    %al,(%rcx)
    1835:	01 00                	add    %eax,(%rax)
    1837:	00 00                	add    %al,(%rax)
    1839:	00 00                	add    %al,(%rax)
    183b:	00 01                	add    %al,(%rcx)
    183d:	00 56 01             	add    %dl,0x1(%rsi)
    1840:	01 00                	add    %eax,(%rax)
    1842:	00 00                	add    %al,(%rax)
    1844:	00 00                	add    %al,(%rax)
    1846:	00 09                	add    %cl,(%rcx)
    1848:	01 00                	add    %eax,(%rax)
    184a:	00 00                	add    %al,(%rax)
    184c:	00 00                	add    %al,(%rax)
    184e:	00 03                	add    %al,(%rbx)
    1850:	00 76 01             	add    %dh,0x1(%rsi)
    1853:	9f                   	lahf   
    1854:	09 01                	or     %eax,(%rcx)
    1856:	00 00                	add    %al,(%rax)
    1858:	00 00                	add    %al,(%rax)
    185a:	00 00                	add    %al,(%rax)
    185c:	19 01                	sbb    %eax,(%rcx)
    185e:	00 00                	add    %al,(%rax)
    1860:	00 00                	add    %al,(%rax)
    1862:	00 00                	add    %al,(%rax)
    1864:	01 00                	add    %eax,(%rax)
    1866:	56                   	push   %rsi
	...
    187f:	62                   	(bad)  
    1880:	00 00                	add    %al,(%rax)
    1882:	00 00                	add    %al,(%rax)
    1884:	00 00                	add    %al,(%rax)
    1886:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
    188a:	00 00                	add    %al,(%rax)
    188c:	00 00                	add    %al,(%rax)
    188e:	00 03                	add    %al,(%rbx)
    1890:	00 74 7f 9f          	add    %dh,-0x61(%rdi,%rdi,2)
    1894:	64 00 00             	add    %al,%fs:(%rax)
    1897:	00 00                	add    %al,(%rax)
    1899:	00 00                	add    %al,(%rax)
    189b:	00 72 00             	add    %dh,0x0(%rdx)
    189e:	00 00                	add    %al,(%rax)
    18a0:	00 00                	add    %al,(%rax)
    18a2:	00 00                	add    %al,(%rax)
    18a4:	01 00                	add    %eax,(%rax)
    18a6:	5c                   	pop    %rsp
    18a7:	72 00                	jb     18a9 <_init-0x3ff757>
    18a9:	00 00                	add    %al,(%rax)
    18ab:	00 00                	add    %al,(%rax)
    18ad:	00 00                	add    %al,(%rax)
    18af:	76 00                	jbe    18b1 <_init-0x3ff74f>
    18b1:	00 00                	add    %al,(%rax)
    18b3:	00 00                	add    %al,(%rax)
    18b5:	00 00                	add    %al,(%rax)
    18b7:	01 00                	add    %eax,(%rax)
    18b9:	50                   	push   %rax
    18ba:	76 00                	jbe    18bc <_init-0x3ff744>
    18bc:	00 00                	add    %al,(%rax)
    18be:	00 00                	add    %al,(%rax)
    18c0:	00 00                	add    %al,(%rax)
    18c2:	1b 01                	sbb    (%rcx),%eax
    18c4:	00 00                	add    %al,(%rax)
    18c6:	00 00                	add    %al,(%rax)
    18c8:	00 00                	add    %al,(%rax)
    18ca:	01 00                	add    %eax,(%rax)
    18cc:	5c                   	pop    %rsp
	...
    18e5:	1c 01                	sbb    $0x1,%al
    18e7:	00 00                	add    %al,(%rax)
    18e9:	00 00                	add    %al,(%rax)
    18eb:	00 00                	add    %al,(%rax)
    18ed:	34 01                	xor    $0x1,%al
    18ef:	00 00                	add    %al,(%rax)
    18f1:	00 00                	add    %al,(%rax)
    18f3:	00 00                	add    %al,(%rax)
    18f5:	01 00                	add    %eax,(%rax)
    18f7:	55                   	push   %rbp
    18f8:	34 01                	xor    $0x1,%al
    18fa:	00 00                	add    %al,(%rax)
    18fc:	00 00                	add    %al,(%rax)
    18fe:	00 00                	add    %al,(%rax)
    1900:	6e                   	outsb  %ds:(%rsi),(%dx)
    1901:	01 00                	add    %eax,(%rax)
    1903:	00 00                	add    %al,(%rax)
    1905:	00 00                	add    %al,(%rax)
    1907:	00 01                	add    %al,(%rcx)
    1909:	00 5c 6e 01          	add    %bl,0x1(%rsi,%rbp,2)
    190d:	00 00                	add    %al,(%rax)
    190f:	00 00                	add    %al,(%rax)
    1911:	00 00                	add    %al,(%rax)
    1913:	71 01                	jno    1916 <_init-0x3ff6ea>
    1915:	00 00                	add    %al,(%rax)
    1917:	00 00                	add    %al,(%rax)
    1919:	00 00                	add    %al,(%rax)
    191b:	04 00                	add    $0x0,%al
    191d:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
    1921:	71 01                	jno    1924 <_init-0x3ff6dc>
    1923:	00 00                	add    %al,(%rax)
    1925:	00 00                	add    %al,(%rax)
    1927:	00 00                	add    %al,(%rax)
    1929:	7a 01                	jp     192c <_init-0x3ff6d4>
    192b:	00 00                	add    %al,(%rax)
    192d:	00 00                	add    %al,(%rax)
    192f:	00 00                	add    %al,(%rax)
    1931:	01 00                	add    %eax,(%rax)
    1933:	5c                   	pop    %rsp
	...
    1948:	1c 01                	sbb    $0x1,%al
    194a:	00 00                	add    %al,(%rax)
    194c:	00 00                	add    %al,(%rax)
    194e:	00 00                	add    %al,(%rax)
    1950:	34 01                	xor    $0x1,%al
    1952:	00 00                	add    %al,(%rax)
    1954:	00 00                	add    %al,(%rax)
    1956:	00 00                	add    %al,(%rax)
    1958:	01 00                	add    %eax,(%rax)
    195a:	54                   	push   %rsp
    195b:	34 01                	xor    $0x1,%al
    195d:	00 00                	add    %al,(%rax)
    195f:	00 00                	add    %al,(%rax)
    1961:	00 00                	add    %al,(%rax)
    1963:	7a 01                	jp     1966 <_init-0x3ff69a>
    1965:	00 00                	add    %al,(%rax)
    1967:	00 00                	add    %al,(%rax)
    1969:	00 00                	add    %al,(%rax)
    196b:	04 00                	add    $0x0,%al
    196d:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
    1986:	00 00                	add    %al,(%rax)
    1988:	00 1c 01             	add    %bl,(%rcx,%rax,1)
    198b:	00 00                	add    %al,(%rax)
    198d:	00 00                	add    %al,(%rax)
    198f:	00 00                	add    %al,(%rax)
    1991:	34 01                	xor    $0x1,%al
    1993:	00 00                	add    %al,(%rax)
    1995:	00 00                	add    %al,(%rax)
    1997:	00 00                	add    %al,(%rax)
    1999:	01 00                	add    %eax,(%rax)
    199b:	51                   	push   %rcx
    199c:	34 01                	xor    $0x1,%al
    199e:	00 00                	add    %al,(%rax)
    19a0:	00 00                	add    %al,(%rax)
    19a2:	00 00                	add    %al,(%rax)
    19a4:	70 01                	jo     19a7 <_init-0x3ff659>
    19a6:	00 00                	add    %al,(%rax)
    19a8:	00 00                	add    %al,(%rax)
    19aa:	00 00                	add    %al,(%rax)
    19ac:	01 00                	add    %eax,(%rax)
    19ae:	5d                   	pop    %rbp
    19af:	70 01                	jo     19b2 <_init-0x3ff64e>
    19b1:	00 00                	add    %al,(%rax)
    19b3:	00 00                	add    %al,(%rax)
    19b5:	00 00                	add    %al,(%rax)
    19b7:	71 01                	jno    19ba <_init-0x3ff646>
    19b9:	00 00                	add    %al,(%rax)
    19bb:	00 00                	add    %al,(%rax)
    19bd:	00 00                	add    %al,(%rax)
    19bf:	04 00                	add    $0x0,%al
    19c1:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
    19c5:	71 01                	jno    19c8 <_init-0x3ff638>
    19c7:	00 00                	add    %al,(%rax)
    19c9:	00 00                	add    %al,(%rax)
    19cb:	00 00                	add    %al,(%rax)
    19cd:	7a 01                	jp     19d0 <_init-0x3ff630>
    19cf:	00 00                	add    %al,(%rax)
    19d1:	00 00                	add    %al,(%rax)
    19d3:	00 00                	add    %al,(%rax)
    19d5:	01 00                	add    %eax,(%rax)
    19d7:	5d                   	pop    %rbp
	...
    19e8:	01 00                	add    %eax,(%rax)
    19ea:	00 00                	add    %al,(%rax)
    19ec:	00 00                	add    %al,(%rax)
    19ee:	2f                   	(bad)  
    19ef:	01 00                	add    %eax,(%rax)
    19f1:	00 00                	add    %al,(%rax)
    19f3:	00 00                	add    %al,(%rax)
    19f5:	00 34 01             	add    %dh,(%rcx,%rax,1)
    19f8:	00 00                	add    %al,(%rax)
    19fa:	00 00                	add    %al,(%rax)
    19fc:	00 00                	add    %al,(%rax)
    19fe:	01 00                	add    %eax,(%rax)
    1a00:	51                   	push   %rcx
    1a01:	34 01                	xor    $0x1,%al
    1a03:	00 00                	add    %al,(%rax)
    1a05:	00 00                	add    %al,(%rax)
    1a07:	00 00                	add    %al,(%rax)
    1a09:	6b 01 00             	imul   $0x0,(%rcx),%eax
    1a0c:	00 00                	add    %al,(%rax)
    1a0e:	00 00                	add    %al,(%rax)
    1a10:	00 01                	add    %al,(%rcx)
    1a12:	00 53 71             	add    %dl,0x71(%rbx)
    1a15:	01 00                	add    %eax,(%rax)
    1a17:	00 00                	add    %al,(%rax)
    1a19:	00 00                	add    %al,(%rax)
    1a1b:	00 7a 01             	add    %bh,0x1(%rdx)
    1a1e:	00 00                	add    %al,(%rax)
    1a20:	00 00                	add    %al,(%rax)
    1a22:	00 00                	add    %al,(%rax)
    1a24:	01 00                	add    %eax,(%rax)
    1a26:	53                   	push   %rbx
	...
    1a3b:	34 01                	xor    $0x1,%al
    1a3d:	00 00                	add    %al,(%rax)
    1a3f:	00 00                	add    %al,(%rax)
    1a41:	00 00                	add    %al,(%rax)
    1a43:	3a 01                	cmp    (%rcx),%al
    1a45:	00 00                	add    %al,(%rax)
    1a47:	00 00                	add    %al,(%rax)
    1a49:	00 00                	add    %al,(%rax)
    1a4b:	01 00                	add    %eax,(%rax)
    1a4d:	50                   	push   %rax
    1a4e:	4d 01 00             	add    %r8,(%r8)
    1a51:	00 00                	add    %al,(%rax)
    1a53:	00 00                	add    %al,(%rax)
    1a55:	00 56 01             	add    %dl,0x1(%rsi)
    1a58:	00 00                	add    %al,(%rax)
    1a5a:	00 00                	add    %al,(%rax)
    1a5c:	00 00                	add    %al,(%rax)
    1a5e:	01 00                	add    %eax,(%rax)
    1a60:	50                   	push   %rax
	...
    1a71:	03 00                	add    (%rax),%eax
    1a73:	00 00                	add    %al,(%rax)
    1a75:	00 00                	add    %al,(%rax)
    1a77:	2f                   	(bad)  
    1a78:	01 00                	add    %eax,(%rax)
    1a7a:	00 00                	add    %al,(%rax)
    1a7c:	00 00                	add    %al,(%rax)
    1a7e:	00 34 01             	add    %dh,(%rcx,%rax,1)
    1a81:	00 00                	add    %al,(%rax)
    1a83:	00 00                	add    %al,(%rax)
    1a85:	00 00                	add    %al,(%rax)
    1a87:	01 00                	add    %eax,(%rax)
    1a89:	54                   	push   %rsp
    1a8a:	34 01                	xor    $0x1,%al
    1a8c:	00 00                	add    %al,(%rax)
    1a8e:	00 00                	add    %al,(%rax)
    1a90:	00 00                	add    %al,(%rax)
    1a92:	6c                   	insb   (%dx),%es:(%rdi)
    1a93:	01 00                	add    %eax,(%rax)
    1a95:	00 00                	add    %al,(%rax)
    1a97:	00 00                	add    %al,(%rax)
    1a99:	00 01                	add    %al,(%rcx)
    1a9b:	00 56 71             	add    %dl,0x71(%rsi)
    1a9e:	01 00                	add    %eax,(%rax)
    1aa0:	00 00                	add    %al,(%rax)
    1aa2:	00 00                	add    %al,(%rax)
    1aa4:	00 7a 01             	add    %bh,0x1(%rdx)
    1aa7:	00 00                	add    %al,(%rax)
    1aa9:	00 00                	add    %al,(%rax)
    1aab:	00 00                	add    %al,(%rax)
    1aad:	01 00                	add    %eax,(%rax)
    1aaf:	56                   	push   %rsi
	...
    1ac8:	03 02                	add    (%rdx),%eax
    1aca:	00 00                	add    %al,(%rax)
    1acc:	00 00                	add    %al,(%rax)
    1ace:	00 00                	add    %al,(%rax)
    1ad0:	1b 02                	sbb    (%rdx),%eax
    1ad2:	00 00                	add    %al,(%rax)
    1ad4:	00 00                	add    %al,(%rax)
    1ad6:	00 00                	add    %al,(%rax)
    1ad8:	01 00                	add    %eax,(%rax)
    1ada:	55                   	push   %rbp
    1adb:	1b 02                	sbb    (%rdx),%eax
    1add:	00 00                	add    %al,(%rax)
    1adf:	00 00                	add    %al,(%rax)
    1ae1:	00 00                	add    %al,(%rax)
    1ae3:	75 02                	jne    1ae7 <_init-0x3ff519>
    1ae5:	00 00                	add    %al,(%rax)
    1ae7:	00 00                	add    %al,(%rax)
    1ae9:	00 00                	add    %al,(%rax)
    1aeb:	01 00                	add    %eax,(%rax)
    1aed:	5d                   	pop    %rbp
    1aee:	75 02                	jne    1af2 <_init-0x3ff50e>
    1af0:	00 00                	add    %al,(%rax)
    1af2:	00 00                	add    %al,(%rax)
    1af4:	00 00                	add    %al,(%rax)
    1af6:	76 02                	jbe    1afa <_init-0x3ff506>
    1af8:	00 00                	add    %al,(%rax)
    1afa:	00 00                	add    %al,(%rax)
    1afc:	00 00                	add    %al,(%rax)
    1afe:	04 00                	add    $0x0,%al
    1b00:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
    1b04:	76 02                	jbe    1b08 <_init-0x3ff4f8>
    1b06:	00 00                	add    %al,(%rax)
    1b08:	00 00                	add    %al,(%rax)
    1b0a:	00 00                	add    %al,(%rax)
    1b0c:	7f 02                	jg     1b10 <_init-0x3ff4f0>
    1b0e:	00 00                	add    %al,(%rax)
    1b10:	00 00                	add    %al,(%rax)
    1b12:	00 00                	add    %al,(%rax)
    1b14:	01 00                	add    %eax,(%rax)
    1b16:	5d                   	pop    %rbp
	...
    1b2b:	03 02                	add    (%rdx),%eax
    1b2d:	00 00                	add    %al,(%rax)
    1b2f:	00 00                	add    %al,(%rax)
    1b31:	00 00                	add    %al,(%rax)
    1b33:	1b 02                	sbb    (%rdx),%eax
    1b35:	00 00                	add    %al,(%rax)
    1b37:	00 00                	add    %al,(%rax)
    1b39:	00 00                	add    %al,(%rax)
    1b3b:	01 00                	add    %eax,(%rax)
    1b3d:	54                   	push   %rsp
    1b3e:	1b 02                	sbb    (%rdx),%eax
    1b40:	00 00                	add    %al,(%rax)
    1b42:	00 00                	add    %al,(%rax)
    1b44:	00 00                	add    %al,(%rax)
    1b46:	7f 02                	jg     1b4a <_init-0x3ff4b6>
    1b48:	00 00                	add    %al,(%rax)
    1b4a:	00 00                	add    %al,(%rax)
    1b4c:	00 00                	add    %al,(%rax)
    1b4e:	04 00                	add    $0x0,%al
    1b50:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
    1b69:	00 00                	add    %al,(%rax)
    1b6b:	00 03                	add    %al,(%rbx)
    1b6d:	02 00                	add    (%rax),%al
    1b6f:	00 00                	add    %al,(%rax)
    1b71:	00 00                	add    %al,(%rax)
    1b73:	00 1b                	add    %bl,(%rbx)
    1b75:	02 00                	add    (%rax),%al
    1b77:	00 00                	add    %al,(%rax)
    1b79:	00 00                	add    %al,(%rax)
    1b7b:	00 01                	add    %al,(%rcx)
    1b7d:	00 51 1b             	add    %dl,0x1b(%rcx)
    1b80:	02 00                	add    (%rax),%al
    1b82:	00 00                	add    %al,(%rax)
    1b84:	00 00                	add    %al,(%rax)
    1b86:	00 73 02             	add    %dh,0x2(%rbx)
    1b89:	00 00                	add    %al,(%rax)
    1b8b:	00 00                	add    %al,(%rax)
    1b8d:	00 00                	add    %al,(%rax)
    1b8f:	01 00                	add    %eax,(%rax)
    1b91:	5c                   	pop    %rsp
    1b92:	73 02                	jae    1b96 <_init-0x3ff46a>
    1b94:	00 00                	add    %al,(%rax)
    1b96:	00 00                	add    %al,(%rax)
    1b98:	00 00                	add    %al,(%rax)
    1b9a:	76 02                	jbe    1b9e <_init-0x3ff462>
    1b9c:	00 00                	add    %al,(%rax)
    1b9e:	00 00                	add    %al,(%rax)
    1ba0:	00 00                	add    %al,(%rax)
    1ba2:	04 00                	add    $0x0,%al
    1ba4:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
    1ba8:	76 02                	jbe    1bac <_init-0x3ff454>
    1baa:	00 00                	add    %al,(%rax)
    1bac:	00 00                	add    %al,(%rax)
    1bae:	00 00                	add    %al,(%rax)
    1bb0:	7f 02                	jg     1bb4 <_init-0x3ff44c>
    1bb2:	00 00                	add    %al,(%rax)
    1bb4:	00 00                	add    %al,(%rax)
    1bb6:	00 00                	add    %al,(%rax)
    1bb8:	01 00                	add    %eax,(%rax)
    1bba:	5c                   	pop    %rsp
	...
    1bcf:	00 00                	add    %al,(%rax)
    1bd1:	32 02                	xor    (%rdx),%al
    1bd3:	00 00                	add    %al,(%rax)
    1bd5:	00 00                	add    %al,(%rax)
    1bd7:	00 00                	add    %al,(%rax)
    1bd9:	40 02 00             	add    (%rax),%al
    1bdc:	00 00                	add    %al,(%rax)
    1bde:	00 00                	add    %al,(%rax)
    1be0:	00 01                	add    %al,(%rcx)
    1be2:	00 50 50             	add    %dl,0x50(%rax)
    1be5:	02 00                	add    (%rax),%al
    1be7:	00 00                	add    %al,(%rax)
    1be9:	00 00                	add    %al,(%rax)
    1beb:	00 5f 02             	add    %bl,0x2(%rdi)
    1bee:	00 00                	add    %al,(%rax)
    1bf0:	00 00                	add    %al,(%rax)
    1bf2:	00 00                	add    %al,(%rax)
    1bf4:	01 00                	add    %eax,(%rax)
    1bf6:	50                   	push   %rax
    1bf7:	76 02                	jbe    1bfb <_init-0x3ff405>
    1bf9:	00 00                	add    %al,(%rax)
    1bfb:	00 00                	add    %al,(%rax)
    1bfd:	00 00                	add    %al,(%rax)
    1bff:	7d 02                	jge    1c03 <_init-0x3ff3fd>
    1c01:	00 00                	add    %al,(%rax)
    1c03:	00 00                	add    %al,(%rax)
    1c05:	00 00                	add    %al,(%rax)
    1c07:	01 00                	add    %eax,(%rax)
    1c09:	50                   	push   %rax
	...
    1c1a:	04 00                	add    $0x0,%al
    1c1c:	00 00                	add    %al,(%rax)
    1c1e:	00 00                	add    %al,(%rax)
    1c20:	16                   	(bad)  
    1c21:	02 00                	add    (%rax),%al
    1c23:	00 00                	add    %al,(%rax)
    1c25:	00 00                	add    %al,(%rax)
    1c27:	00 1b                	add    %bl,(%rbx)
    1c29:	02 00                	add    (%rax),%al
    1c2b:	00 00                	add    %al,(%rax)
    1c2d:	00 00                	add    %al,(%rax)
    1c2f:	00 02                	add    %al,(%rdx)
    1c31:	00 31                	add    %dh,(%rcx)
    1c33:	9f                   	lahf   
    1c34:	1b 02                	sbb    (%rdx),%eax
    1c36:	00 00                	add    %al,(%rax)
    1c38:	00 00                	add    %al,(%rax)
    1c3a:	00 00                	add    %al,(%rax)
    1c3c:	70 02                	jo     1c40 <_init-0x3ff3c0>
    1c3e:	00 00                	add    %al,(%rax)
    1c40:	00 00                	add    %al,(%rax)
    1c42:	00 00                	add    %al,(%rax)
    1c44:	01 00                	add    %eax,(%rax)
    1c46:	53                   	push   %rbx
    1c47:	76 02                	jbe    1c4b <_init-0x3ff3b5>
    1c49:	00 00                	add    %al,(%rax)
    1c4b:	00 00                	add    %al,(%rax)
    1c4d:	00 00                	add    %al,(%rax)
    1c4f:	7f 02                	jg     1c53 <_init-0x3ff3ad>
    1c51:	00 00                	add    %al,(%rax)
    1c53:	00 00                	add    %al,(%rax)
    1c55:	00 00                	add    %al,(%rax)
    1c57:	01 00                	add    %eax,(%rax)
    1c59:	53                   	push   %rbx
	...
    1c6a:	03 00                	add    (%rax),%eax
	...
    1c78:	16                   	(bad)  
    1c79:	02 00                	add    (%rax),%al
    1c7b:	00 00                	add    %al,(%rax)
    1c7d:	00 00                	add    %al,(%rax)
    1c7f:	00 1b                	add    %bl,(%rbx)
    1c81:	02 00                	add    (%rax),%al
    1c83:	00 00                	add    %al,(%rax)
    1c85:	00 00                	add    %al,(%rax)
    1c87:	00 01                	add    %al,(%rcx)
    1c89:	00 54 1b 02          	add    %dl,0x2(%rbx,%rbx,1)
    1c8d:	00 00                	add    %al,(%rax)
    1c8f:	00 00                	add    %al,(%rax)
    1c91:	00 00                	add    %al,(%rax)
    1c93:	3b 02                	cmp    (%rdx),%eax
    1c95:	00 00                	add    %al,(%rax)
    1c97:	00 00                	add    %al,(%rax)
    1c99:	00 00                	add    %al,(%rax)
    1c9b:	01 00                	add    %eax,(%rax)
    1c9d:	56                   	push   %rsi
    1c9e:	3b 02                	cmp    (%rdx),%eax
    1ca0:	00 00                	add    %al,(%rax)
    1ca2:	00 00                	add    %al,(%rax)
    1ca4:	00 00                	add    %al,(%rax)
    1ca6:	50                   	push   %rax
    1ca7:	02 00                	add    (%rax),%al
    1ca9:	00 00                	add    %al,(%rax)
    1cab:	00 00                	add    %al,(%rax)
    1cad:	00 01                	add    %al,(%rcx)
    1caf:	00 51 50             	add    %dl,0x50(%rcx)
    1cb2:	02 00                	add    (%rax),%al
    1cb4:	00 00                	add    %al,(%rax)
    1cb6:	00 00                	add    %al,(%rax)
    1cb8:	00 61 02             	add    %ah,0x2(%rcx)
    1cbb:	00 00                	add    %al,(%rax)
    1cbd:	00 00                	add    %al,(%rax)
    1cbf:	00 00                	add    %al,(%rax)
    1cc1:	01 00                	add    %eax,(%rax)
    1cc3:	56                   	push   %rsi
    1cc4:	61                   	(bad)  
    1cc5:	02 00                	add    (%rax),%al
    1cc7:	00 00                	add    %al,(%rax)
    1cc9:	00 00                	add    %al,(%rax)
    1ccb:	00 64 02 00          	add    %ah,0x0(%rdx,%rax,1)
    1ccf:	00 00                	add    %al,(%rax)
    1cd1:	00 00                	add    %al,(%rax)
    1cd3:	00 01                	add    %al,(%rcx)
    1cd5:	00 51 64             	add    %dl,0x64(%rcx)
    1cd8:	02 00                	add    (%rax),%al
    1cda:	00 00                	add    %al,(%rax)
    1cdc:	00 00                	add    %al,(%rax)
    1cde:	00 71 02             	add    %dh,0x2(%rcx)
    1ce1:	00 00                	add    %al,(%rax)
    1ce3:	00 00                	add    %al,(%rax)
    1ce5:	00 00                	add    %al,(%rax)
    1ce7:	01 00                	add    %eax,(%rax)
    1ce9:	56                   	push   %rsi
    1cea:	76 02                	jbe    1cee <_init-0x3ff312>
    1cec:	00 00                	add    %al,(%rax)
    1cee:	00 00                	add    %al,(%rax)
    1cf0:	00 00                	add    %al,(%rax)
    1cf2:	7f 02                	jg     1cf6 <_init-0x3ff30a>
    1cf4:	00 00                	add    %al,(%rax)
    1cf6:	00 00                	add    %al,(%rax)
    1cf8:	00 00                	add    %al,(%rax)
    1cfa:	01 00                	add    %eax,(%rax)
    1cfc:	56                   	push   %rsi
	...
    1d15:	7a 01                	jp     1d18 <_init-0x3ff2e8>
    1d17:	00 00                	add    %al,(%rax)
    1d19:	00 00                	add    %al,(%rax)
    1d1b:	00 00                	add    %al,(%rax)
    1d1d:	8f 01                	popq   (%rcx)
    1d1f:	00 00                	add    %al,(%rax)
    1d21:	00 00                	add    %al,(%rax)
    1d23:	00 00                	add    %al,(%rax)
    1d25:	01 00                	add    %eax,(%rax)
    1d27:	55                   	push   %rbp
    1d28:	8f 01                	popq   (%rcx)
    1d2a:	00 00                	add    %al,(%rax)
    1d2c:	00 00                	add    %al,(%rax)
    1d2e:	00 00                	add    %al,(%rax)
    1d30:	ed                   	in     (%dx),%eax
    1d31:	01 00                	add    %eax,(%rax)
    1d33:	00 00                	add    %al,(%rax)
    1d35:	00 00                	add    %al,(%rax)
    1d37:	00 01                	add    %al,(%rcx)
    1d39:	00 53 ed             	add    %dl,-0x13(%rbx)
    1d3c:	01 00                	add    %eax,(%rax)
    1d3e:	00 00                	add    %al,(%rax)
    1d40:	00 00                	add    %al,(%rax)
    1d42:	00 f3                	add    %dh,%bl
    1d44:	01 00                	add    %eax,(%rax)
    1d46:	00 00                	add    %al,(%rax)
    1d48:	00 00                	add    %al,(%rax)
    1d4a:	00 04 00             	add    %al,(%rax,%rax,1)
    1d4d:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
    1d51:	f3 01 00             	repz add %eax,(%rax)
    1d54:	00 00                	add    %al,(%rax)
    1d56:	00 00                	add    %al,(%rax)
    1d58:	00 03                	add    %al,(%rbx)
    1d5a:	02 00                	add    (%rax),%al
    1d5c:	00 00                	add    %al,(%rax)
    1d5e:	00 00                	add    %al,(%rax)
    1d60:	00 01                	add    %al,(%rcx)
    1d62:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1d79:	00 00                	add    %al,(%rax)
    1d7b:	00 7a 01             	add    %bh,0x1(%rdx)
    1d7e:	00 00                	add    %al,(%rax)
    1d80:	00 00                	add    %al,(%rax)
    1d82:	00 00                	add    %al,(%rax)
    1d84:	8f 01                	popq   (%rcx)
    1d86:	00 00                	add    %al,(%rax)
    1d88:	00 00                	add    %al,(%rax)
    1d8a:	00 00                	add    %al,(%rax)
    1d8c:	01 00                	add    %eax,(%rax)
    1d8e:	54                   	push   %rsp
    1d8f:	8f 01                	popq   (%rcx)
    1d91:	00 00                	add    %al,(%rax)
    1d93:	00 00                	add    %al,(%rax)
    1d95:	00 00                	add    %al,(%rax)
    1d97:	f2 01 00             	repnz add %eax,(%rax)
    1d9a:	00 00                	add    %al,(%rax)
    1d9c:	00 00                	add    %al,(%rax)
    1d9e:	00 01                	add    %al,(%rcx)
    1da0:	00 5d f2             	add    %bl,-0xe(%rbp)
    1da3:	01 00                	add    %eax,(%rax)
    1da5:	00 00                	add    %al,(%rax)
    1da7:	00 00                	add    %al,(%rax)
    1da9:	00 f3                	add    %dh,%bl
    1dab:	01 00                	add    %eax,(%rax)
    1dad:	00 00                	add    %al,(%rax)
    1daf:	00 00                	add    %al,(%rax)
    1db1:	00 04 00             	add    %al,(%rax,%rax,1)
    1db4:	f3 01 54 9f f3       	repz add %edx,-0xd(%rdi,%rbx,4)
    1db9:	01 00                	add    %eax,(%rax)
    1dbb:	00 00                	add    %al,(%rax)
    1dbd:	00 00                	add    %al,(%rax)
    1dbf:	00 03                	add    %al,(%rbx)
    1dc1:	02 00                	add    (%rax),%al
    1dc3:	00 00                	add    %al,(%rax)
    1dc5:	00 00                	add    %al,(%rax)
    1dc7:	00 01                	add    %al,(%rcx)
    1dc9:	00 5d 00             	add    %bl,0x0(%rbp)
	...
    1de0:	00 00                	add    %al,(%rax)
    1de2:	00 7a 01             	add    %bh,0x1(%rdx)
    1de5:	00 00                	add    %al,(%rax)
    1de7:	00 00                	add    %al,(%rax)
    1de9:	00 00                	add    %al,(%rax)
    1deb:	8f 01                	popq   (%rcx)
    1ded:	00 00                	add    %al,(%rax)
    1def:	00 00                	add    %al,(%rax)
    1df1:	00 00                	add    %al,(%rax)
    1df3:	01 00                	add    %eax,(%rax)
    1df5:	51                   	push   %rcx
    1df6:	8f 01                	popq   (%rcx)
    1df8:	00 00                	add    %al,(%rax)
    1dfa:	00 00                	add    %al,(%rax)
    1dfc:	00 00                	add    %al,(%rax)
    1dfe:	cf                   	iret   
    1dff:	01 00                	add    %eax,(%rax)
    1e01:	00 00                	add    %al,(%rax)
    1e03:	00 00                	add    %al,(%rax)
    1e05:	00 01                	add    %al,(%rcx)
    1e07:	00 5c cf 01          	add    %bl,0x1(%rdi,%rcx,8)
    1e0b:	00 00                	add    %al,(%rax)
    1e0d:	00 00                	add    %al,(%rax)
    1e0f:	00 00                	add    %al,(%rax)
    1e11:	f3 01 00             	repz add %eax,(%rax)
    1e14:	00 00                	add    %al,(%rax)
    1e16:	00 00                	add    %al,(%rax)
    1e18:	00 04 00             	add    %al,(%rax,%rax,1)
    1e1b:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
    1e1f:	f3 01 00             	repz add %eax,(%rax)
    1e22:	00 00                	add    %al,(%rax)
    1e24:	00 00                	add    %al,(%rax)
    1e26:	00 03                	add    %al,(%rbx)
    1e28:	02 00                	add    (%rax),%al
    1e2a:	00 00                	add    %al,(%rax)
    1e2c:	00 00                	add    %al,(%rax)
    1e2e:	00 01                	add    %al,(%rcx)
    1e30:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
	...
    1e40:	00 00                	add    %al,(%rax)
    1e42:	01 00                	add    %eax,(%rax)
    1e44:	00 00                	add    %al,(%rax)
    1e46:	c2 01 00             	retq   $0x1
    1e49:	00 00                	add    %al,(%rax)
    1e4b:	00 00                	add    %al,(%rax)
    1e4d:	00 cc                	add    %cl,%ah
    1e4f:	01 00                	add    %eax,(%rax)
    1e51:	00 00                	add    %al,(%rax)
    1e53:	00 00                	add    %al,(%rax)
    1e55:	00 01                	add    %al,(%rcx)
    1e57:	00 5c cc 01          	add    %bl,0x1(%rsp,%rcx,8)
    1e5b:	00 00                	add    %al,(%rax)
    1e5d:	00 00                	add    %al,(%rax)
    1e5f:	00 00                	add    %al,(%rax)
    1e61:	e8 01 00 00 00       	callq  1e67 <_init-0x3ff199>
    1e66:	00 00                	add    %al,(%rax)
    1e68:	00 01                	add    %al,(%rcx)
    1e6a:	00 56 00             	add    %dl,0x0(%rsi)
	...
    1e7d:	00 00                	add    %al,(%rax)
    1e7f:	00 12                	add    %dl,(%rdx)
    1e81:	00 00                	add    %al,(%rax)
    1e83:	00 00                	add    %al,(%rax)
    1e85:	00 00                	add    %al,(%rax)
    1e87:	00 29                	add    %ch,(%rcx)
    1e89:	00 00                	add    %al,(%rax)
    1e8b:	00 00                	add    %al,(%rax)
    1e8d:	00 00                	add    %al,(%rax)
    1e8f:	00 01                	add    %al,(%rcx)
    1e91:	00 55 29             	add    %dl,0x29(%rbp)
    1e94:	00 00                	add    %al,(%rax)
    1e96:	00 00                	add    %al,(%rax)
    1e98:	00 00                	add    %al,(%rax)
    1e9a:	00 3d 00 00 00 00    	add    %bh,0x0(%rip)        # 1ea0 <_init-0x3ff160>
    1ea0:	00 00                	add    %al,(%rax)
    1ea2:	00 04 00             	add    %al,(%rax,%rax,1)
    1ea5:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
    1ebd:	00 00                	add    %al,(%rax)
    1ebf:	30 00                	xor    %al,(%rax)
    1ec1:	00 00                	add    %al,(%rax)
    1ec3:	00 00                	add    %al,(%rax)
    1ec5:	00 00                	add    %al,(%rax)
    1ec7:	34 00                	xor    $0x0,%al
    1ec9:	00 00                	add    %al,(%rax)
    1ecb:	00 00                	add    %al,(%rax)
    1ecd:	00 00                	add    %al,(%rax)
    1ecf:	01 00                	add    %eax,(%rax)
    1ed1:	55                   	push   %rbp
    1ed2:	34 00                	xor    $0x0,%al
    1ed4:	00 00                	add    %al,(%rax)
    1ed6:	00 00                	add    %al,(%rax)
    1ed8:	00 00                	add    %al,(%rax)
    1eda:	38 00                	cmp    %al,(%rax)
    1edc:	00 00                	add    %al,(%rax)
    1ede:	00 00                	add    %al,(%rax)
    1ee0:	00 00                	add    %al,(%rax)
    1ee2:	03 00                	add    (%rax),%eax
    1ee4:	75 7f                	jne    1f65 <_init-0x3ff09b>
    1ee6:	9f                   	lahf   
    1ee7:	38 00                	cmp    %al,(%rax)
    1ee9:	00 00                	add    %al,(%rax)
    1eeb:	00 00                	add    %al,(%rax)
    1eed:	00 00                	add    %al,(%rax)
    1eef:	4f 00 00             	rex.WRXB add %r8b,(%r8)
    1ef2:	00 00                	add    %al,(%rax)
    1ef4:	00 00                	add    %al,(%rax)
    1ef6:	00 04 00             	add    %al,(%rax,%rax,1)
    1ef9:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
    1f11:	00 00                	add    %al,(%rax)
    1f13:	40 00 00             	add    %al,(%rax)
    1f16:	00 00                	add    %al,(%rax)
    1f18:	00 00                	add    %al,(%rax)
    1f1a:	00 46 00             	add    %al,0x0(%rsi)
    1f1d:	00 00                	add    %al,(%rax)
    1f1f:	00 00                	add    %al,(%rax)
    1f21:	00 00                	add    %al,(%rax)
    1f23:	01 00                	add    %eax,(%rax)
    1f25:	50                   	push   %rax
    1f26:	46 00 00             	rex.RX add %r8b,(%rax)
    1f29:	00 00                	add    %al,(%rax)
    1f2b:	00 00                	add    %al,(%rax)
    1f2d:	00 4e 00             	add    %cl,0x0(%rsi)
    1f30:	00 00                	add    %al,(%rax)
    1f32:	00 00                	add    %al,(%rax)
    1f34:	00 00                	add    %al,(%rax)
    1f36:	01 00                	add    %eax,(%rax)
    1f38:	53                   	push   %rbx
    1f39:	4e 00 00             	rex.WRX add %r8b,(%rax)
    1f3c:	00 00                	add    %al,(%rax)
    1f3e:	00 00                	add    %al,(%rax)
    1f40:	00 4f 00             	add    %cl,0x0(%rdi)
    1f43:	00 00                	add    %al,(%rax)
    1f45:	00 00                	add    %al,(%rax)
    1f47:	00 00                	add    %al,(%rax)
    1f49:	01 00                	add    %eax,(%rax)
    1f4b:	50                   	push   %rax
	...
    1f60:	0c 00                	or     $0x0,%al
    1f62:	00 00                	add    %al,(%rax)
    1f64:	00 00                	add    %al,(%rax)
    1f66:	00 00                	add    %al,(%rax)
    1f68:	24 00                	and    $0x0,%al
    1f6a:	00 00                	add    %al,(%rax)
    1f6c:	00 00                	add    %al,(%rax)
    1f6e:	00 00                	add    %al,(%rax)
    1f70:	01 00                	add    %eax,(%rax)
    1f72:	52                   	push   %rdx
    1f73:	2a 00                	sub    (%rax),%al
    1f75:	00 00                	add    %al,(%rax)
    1f77:	00 00                	add    %al,(%rax)
    1f79:	00 00                	add    %al,(%rax)
    1f7b:	30 00                	xor    %al,(%rax)
    1f7d:	00 00                	add    %al,(%rax)
    1f7f:	00 00                	add    %al,(%rax)
    1f81:	00 00                	add    %al,(%rax)
    1f83:	01 00                	add    %eax,(%rax)
    1f85:	52                   	push   %rdx
	...