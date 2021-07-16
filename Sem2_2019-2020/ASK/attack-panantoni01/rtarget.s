
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	48 83 ec 08          	sub    $0x8,%rsp
  401004:	48 8b 05 ed 5f 00 00 	mov    0x5fed(%rip),%rax        # 406ff8 <__gmon_start__>
  40100b:	48 85 c0             	test   %rax,%rax
  40100e:	74 02                	je     401012 <_init+0x12>
  401010:	ff d0                	callq  *%rax
  401012:	48 83 c4 08          	add    $0x8,%rsp
  401016:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 5f 00 00    	jmpq   *0x5fe4(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <strcasecmp@plt>:
  401030:	ff 25 e2 5f 00 00    	jmpq   *0x5fe2(%rip)        # 407018 <strcasecmp@GLIBC_2.2.5>
  401036:	68 00 00 00 00       	pushq  $0x0
  40103b:	e9 e0 ff ff ff       	jmpq   401020 <.plt>

0000000000401040 <__errno_location@plt>:
  401040:	ff 25 da 5f 00 00    	jmpq   *0x5fda(%rip)        # 407020 <__errno_location@GLIBC_2.2.5>
  401046:	68 01 00 00 00       	pushq  $0x1
  40104b:	e9 d0 ff ff ff       	jmpq   401020 <.plt>

0000000000401050 <srandom@plt>:
  401050:	ff 25 d2 5f 00 00    	jmpq   *0x5fd2(%rip)        # 407028 <srandom@GLIBC_2.2.5>
  401056:	68 02 00 00 00       	pushq  $0x2
  40105b:	e9 c0 ff ff ff       	jmpq   401020 <.plt>

0000000000401060 <strncmp@plt>:
  401060:	ff 25 ca 5f 00 00    	jmpq   *0x5fca(%rip)        # 407030 <strncmp@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	pushq  $0x3
  40106b:	e9 b0 ff ff ff       	jmpq   401020 <.plt>

0000000000401070 <strcpy@plt>:
  401070:	ff 25 c2 5f 00 00    	jmpq   *0x5fc2(%rip)        # 407038 <strcpy@GLIBC_2.2.5>
  401076:	68 04 00 00 00       	pushq  $0x4
  40107b:	e9 a0 ff ff ff       	jmpq   401020 <.plt>

0000000000401080 <puts@plt>:
  401080:	ff 25 ba 5f 00 00    	jmpq   *0x5fba(%rip)        # 407040 <puts@GLIBC_2.2.5>
  401086:	68 05 00 00 00       	pushq  $0x5
  40108b:	e9 90 ff ff ff       	jmpq   401020 <.plt>

0000000000401090 <write@plt>:
  401090:	ff 25 b2 5f 00 00    	jmpq   *0x5fb2(%rip)        # 407048 <write@GLIBC_2.2.5>
  401096:	68 06 00 00 00       	pushq  $0x6
  40109b:	e9 80 ff ff ff       	jmpq   401020 <.plt>

00000000004010a0 <mmap@plt>:
  4010a0:	ff 25 aa 5f 00 00    	jmpq   *0x5faa(%rip)        # 407050 <mmap@GLIBC_2.2.5>
  4010a6:	68 07 00 00 00       	pushq  $0x7
  4010ab:	e9 70 ff ff ff       	jmpq   401020 <.plt>

00000000004010b0 <printf@plt>:
  4010b0:	ff 25 a2 5f 00 00    	jmpq   *0x5fa2(%rip)        # 407058 <printf@GLIBC_2.2.5>
  4010b6:	68 08 00 00 00       	pushq  $0x8
  4010bb:	e9 60 ff ff ff       	jmpq   401020 <.plt>

00000000004010c0 <memset@plt>:
  4010c0:	ff 25 9a 5f 00 00    	jmpq   *0x5f9a(%rip)        # 407060 <memset@GLIBC_2.2.5>
  4010c6:	68 09 00 00 00       	pushq  $0x9
  4010cb:	e9 50 ff ff ff       	jmpq   401020 <.plt>

00000000004010d0 <alarm@plt>:
  4010d0:	ff 25 92 5f 00 00    	jmpq   *0x5f92(%rip)        # 407068 <alarm@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	pushq  $0xa
  4010db:	e9 40 ff ff ff       	jmpq   401020 <.plt>

00000000004010e0 <close@plt>:
  4010e0:	ff 25 8a 5f 00 00    	jmpq   *0x5f8a(%rip)        # 407070 <close@GLIBC_2.2.5>
  4010e6:	68 0b 00 00 00       	pushq  $0xb
  4010eb:	e9 30 ff ff ff       	jmpq   401020 <.plt>

00000000004010f0 <read@plt>:
  4010f0:	ff 25 82 5f 00 00    	jmpq   *0x5f82(%rip)        # 407078 <read@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	pushq  $0xc
  4010fb:	e9 20 ff ff ff       	jmpq   401020 <.plt>

0000000000401100 <signal@plt>:
  401100:	ff 25 7a 5f 00 00    	jmpq   *0x5f7a(%rip)        # 407080 <signal@GLIBC_2.2.5>
  401106:	68 0d 00 00 00       	pushq  $0xd
  40110b:	e9 10 ff ff ff       	jmpq   401020 <.plt>

0000000000401110 <gethostbyname@plt>:
  401110:	ff 25 72 5f 00 00    	jmpq   *0x5f72(%rip)        # 407088 <gethostbyname@GLIBC_2.2.5>
  401116:	68 0e 00 00 00       	pushq  $0xe
  40111b:	e9 00 ff ff ff       	jmpq   401020 <.plt>

0000000000401120 <fprintf@plt>:
  401120:	ff 25 6a 5f 00 00    	jmpq   *0x5f6a(%rip)        # 407090 <fprintf@GLIBC_2.2.5>
  401126:	68 0f 00 00 00       	pushq  $0xf
  40112b:	e9 f0 fe ff ff       	jmpq   401020 <.plt>

0000000000401130 <strtol@plt>:
  401130:	ff 25 62 5f 00 00    	jmpq   *0x5f62(%rip)        # 407098 <strtol@GLIBC_2.2.5>
  401136:	68 10 00 00 00       	pushq  $0x10
  40113b:	e9 e0 fe ff ff       	jmpq   401020 <.plt>

0000000000401140 <memcpy@plt>:
  401140:	ff 25 5a 5f 00 00    	jmpq   *0x5f5a(%rip)        # 4070a0 <memcpy@GLIBC_2.14>
  401146:	68 11 00 00 00       	pushq  $0x11
  40114b:	e9 d0 fe ff ff       	jmpq   401020 <.plt>

0000000000401150 <time@plt>:
  401150:	ff 25 52 5f 00 00    	jmpq   *0x5f52(%rip)        # 4070a8 <time@GLIBC_2.2.5>
  401156:	68 12 00 00 00       	pushq  $0x12
  40115b:	e9 c0 fe ff ff       	jmpq   401020 <.plt>

0000000000401160 <random@plt>:
  401160:	ff 25 4a 5f 00 00    	jmpq   *0x5f4a(%rip)        # 4070b0 <random@GLIBC_2.2.5>
  401166:	68 13 00 00 00       	pushq  $0x13
  40116b:	e9 b0 fe ff ff       	jmpq   401020 <.plt>

0000000000401170 <__isoc99_sscanf@plt>:
  401170:	ff 25 42 5f 00 00    	jmpq   *0x5f42(%rip)        # 4070b8 <__isoc99_sscanf@GLIBC_2.7>
  401176:	68 14 00 00 00       	pushq  $0x14
  40117b:	e9 a0 fe ff ff       	jmpq   401020 <.plt>

0000000000401180 <munmap@plt>:
  401180:	ff 25 3a 5f 00 00    	jmpq   *0x5f3a(%rip)        # 4070c0 <munmap@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	pushq  $0x15
  40118b:	e9 90 fe ff ff       	jmpq   401020 <.plt>

0000000000401190 <memmove@plt>:
  401190:	ff 25 32 5f 00 00    	jmpq   *0x5f32(%rip)        # 4070c8 <memmove@GLIBC_2.2.5>
  401196:	68 16 00 00 00       	pushq  $0x16
  40119b:	e9 80 fe ff ff       	jmpq   401020 <.plt>

00000000004011a0 <fopen@plt>:
  4011a0:	ff 25 2a 5f 00 00    	jmpq   *0x5f2a(%rip)        # 4070d0 <fopen@GLIBC_2.2.5>
  4011a6:	68 17 00 00 00       	pushq  $0x17
  4011ab:	e9 70 fe ff ff       	jmpq   401020 <.plt>

00000000004011b0 <getopt@plt>:
  4011b0:	ff 25 22 5f 00 00    	jmpq   *0x5f22(%rip)        # 4070d8 <getopt@GLIBC_2.2.5>
  4011b6:	68 18 00 00 00       	pushq  $0x18
  4011bb:	e9 60 fe ff ff       	jmpq   401020 <.plt>

00000000004011c0 <strtoul@plt>:
  4011c0:	ff 25 1a 5f 00 00    	jmpq   *0x5f1a(%rip)        # 4070e0 <strtoul@GLIBC_2.2.5>
  4011c6:	68 19 00 00 00       	pushq  $0x19
  4011cb:	e9 50 fe ff ff       	jmpq   401020 <.plt>

00000000004011d0 <gethostname@plt>:
  4011d0:	ff 25 12 5f 00 00    	jmpq   *0x5f12(%rip)        # 4070e8 <gethostname@GLIBC_2.2.5>
  4011d6:	68 1a 00 00 00       	pushq  $0x1a
  4011db:	e9 40 fe ff ff       	jmpq   401020 <.plt>

00000000004011e0 <sprintf@plt>:
  4011e0:	ff 25 0a 5f 00 00    	jmpq   *0x5f0a(%rip)        # 4070f0 <sprintf@GLIBC_2.2.5>
  4011e6:	68 1b 00 00 00       	pushq  $0x1b
  4011eb:	e9 30 fe ff ff       	jmpq   401020 <.plt>

00000000004011f0 <exit@plt>:
  4011f0:	ff 25 02 5f 00 00    	jmpq   *0x5f02(%rip)        # 4070f8 <exit@GLIBC_2.2.5>
  4011f6:	68 1c 00 00 00       	pushq  $0x1c
  4011fb:	e9 20 fe ff ff       	jmpq   401020 <.plt>

0000000000401200 <connect@plt>:
  401200:	ff 25 fa 5e 00 00    	jmpq   *0x5efa(%rip)        # 407100 <connect@GLIBC_2.2.5>
  401206:	68 1d 00 00 00       	pushq  $0x1d
  40120b:	e9 10 fe ff ff       	jmpq   401020 <.plt>

0000000000401210 <getc@plt>:
  401210:	ff 25 f2 5e 00 00    	jmpq   *0x5ef2(%rip)        # 407108 <getc@GLIBC_2.2.5>
  401216:	68 1e 00 00 00       	pushq  $0x1e
  40121b:	e9 00 fe ff ff       	jmpq   401020 <.plt>

0000000000401220 <socket@plt>:
  401220:	ff 25 ea 5e 00 00    	jmpq   *0x5eea(%rip)        # 407110 <socket@GLIBC_2.2.5>
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
  40123f:	49 c7 c0 10 30 40 00 	mov    $0x403010,%r8
  401246:	48 c7 c1 b0 2f 40 00 	mov    $0x402fb0,%rcx
  40124d:	48 c7 c7 f6 14 40 00 	mov    $0x4014f6,%rdi
  401254:	ff 15 96 5d 00 00    	callq  *0x5d96(%rip)        # 406ff0 <__libc_start_main@GLIBC_2.2.5>
  40125a:	f4                   	hlt    
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_dl_relocate_static_pie>:
  401260:	c3                   	retq   
  401261:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401268:	00 00 00 
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <deregister_tm_clones>:
  401270:	b8 88 74 40 00       	mov    $0x407488,%eax
  401275:	48 3d 88 74 40 00    	cmp    $0x407488,%rax
  40127b:	74 13                	je     401290 <deregister_tm_clones+0x20>
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	48 85 c0             	test   %rax,%rax
  401285:	74 09                	je     401290 <deregister_tm_clones+0x20>
  401287:	bf 88 74 40 00       	mov    $0x407488,%edi
  40128c:	ff e0                	jmpq   *%rax
  40128e:	66 90                	xchg   %ax,%ax
  401290:	c3                   	retq   
  401291:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401298:	00 00 00 00 
  40129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012a0 <register_tm_clones>:
  4012a0:	be 88 74 40 00       	mov    $0x407488,%esi
  4012a5:	48 81 ee 88 74 40 00 	sub    $0x407488,%rsi
  4012ac:	48 c1 fe 03          	sar    $0x3,%rsi
  4012b0:	48 89 f0             	mov    %rsi,%rax
  4012b3:	48 c1 e8 3f          	shr    $0x3f,%rax
  4012b7:	48 01 c6             	add    %rax,%rsi
  4012ba:	48 d1 fe             	sar    %rsi
  4012bd:	74 11                	je     4012d0 <register_tm_clones+0x30>
  4012bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c4:	48 85 c0             	test   %rax,%rax
  4012c7:	74 07                	je     4012d0 <register_tm_clones+0x30>
  4012c9:	bf 88 74 40 00       	mov    $0x407488,%edi
  4012ce:	ff e0                	jmpq   *%rax
  4012d0:	c3                   	retq   
  4012d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4012d8:	00 00 00 00 
  4012dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004012e0 <__do_global_dtors_aux>:
  4012e0:	80 3d e1 61 00 00 00 	cmpb   $0x0,0x61e1(%rip)        # 4074c8 <completed.7325>
  4012e7:	75 17                	jne    401300 <__do_global_dtors_aux+0x20>
  4012e9:	55                   	push   %rbp
  4012ea:	48 89 e5             	mov    %rsp,%rbp
  4012ed:	e8 7e ff ff ff       	callq  401270 <deregister_tm_clones>
  4012f2:	c6 05 cf 61 00 00 01 	movb   $0x1,0x61cf(%rip)        # 4074c8 <completed.7325>
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
  401319:	83 3d ec 61 00 00 00 	cmpl   $0x0,0x61ec(%rip)        # 40750c <is_checker>
  401320:	74 4b                	je     40136d <usage+0x5b>
  401322:	48 8d 3d df 2c 00 00 	lea    0x2cdf(%rip),%rdi        # 404008 <_IO_stdin_used+0x8>
  401329:	b8 00 00 00 00       	mov    $0x0,%eax
  40132e:	e8 7d fd ff ff       	callq  4010b0 <printf@plt>
  401333:	48 8d 3d 06 2d 00 00 	lea    0x2d06(%rip),%rdi        # 404040 <_IO_stdin_used+0x40>
  40133a:	e8 41 fd ff ff       	callq  401080 <puts@plt>
  40133f:	48 8d 3d 72 2e 00 00 	lea    0x2e72(%rip),%rdi        # 4041b8 <_IO_stdin_used+0x1b8>
  401346:	e8 35 fd ff ff       	callq  401080 <puts@plt>
  40134b:	48 8d 3d 16 2d 00 00 	lea    0x2d16(%rip),%rdi        # 404068 <_IO_stdin_used+0x68>
  401352:	e8 29 fd ff ff       	callq  401080 <puts@plt>
  401357:	48 8d 3d 74 2e 00 00 	lea    0x2e74(%rip),%rdi        # 4041d2 <_IO_stdin_used+0x1d2>
  40135e:	e8 1d fd ff ff       	callq  401080 <puts@plt>
  401363:	bf 00 00 00 00       	mov    $0x0,%edi
  401368:	e8 83 fe ff ff       	callq  4011f0 <exit@plt>
  40136d:	48 8d 3d 7a 2e 00 00 	lea    0x2e7a(%rip),%rdi        # 4041ee <_IO_stdin_used+0x1ee>
  401374:	b8 00 00 00 00       	mov    $0x0,%eax
  401379:	e8 32 fd ff ff       	callq  4010b0 <printf@plt>
  40137e:	48 8d 3d 0b 2d 00 00 	lea    0x2d0b(%rip),%rdi        # 404090 <_IO_stdin_used+0x90>
  401385:	e8 f6 fc ff ff       	callq  401080 <puts@plt>
  40138a:	48 8d 3d 27 2d 00 00 	lea    0x2d27(%rip),%rdi        # 4040b8 <_IO_stdin_used+0xb8>
  401391:	e8 ea fc ff ff       	callq  401080 <puts@plt>
  401396:	48 8d 3d 6f 2e 00 00 	lea    0x2e6f(%rip),%rdi        # 40420c <_IO_stdin_used+0x20c>
  40139d:	e8 de fc ff ff       	callq  401080 <puts@plt>
  4013a2:	eb bf                	jmp    401363 <usage+0x51>

00000000004013a4 <initialize_target>:
  4013a4:	55                   	push   %rbp
  4013a5:	53                   	push   %rbx
  4013a6:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  4013ad:	89 f5                	mov    %esi,%ebp
  4013af:	89 3d 47 61 00 00    	mov    %edi,0x6147(%rip)        # 4074fc <check_level>
  4013b5:	8b 3d 75 5d 00 00    	mov    0x5d75(%rip),%edi        # 407130 <target_id>
  4013bb:	e8 cc 1b 00 00       	callq  402f8c <gencookie>
  4013c0:	89 05 42 61 00 00    	mov    %eax,0x6142(%rip)        # 407508 <cookie>
  4013c6:	89 c7                	mov    %eax,%edi
  4013c8:	e8 bf 1b 00 00       	callq  402f8c <gencookie>
  4013cd:	89 05 31 61 00 00    	mov    %eax,0x6131(%rip)        # 407504 <authkey>
  4013d3:	8b 05 57 5d 00 00    	mov    0x5d57(%rip),%eax        # 407130 <target_id>
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
  401406:	48 89 05 73 60 00 00 	mov    %rax,0x6073(%rip)        # 407480 <buf_offset>
  40140d:	c6 05 14 6d 00 00 72 	movb   $0x72,0x6d14(%rip)        # 408128 <target_prefix>
  401414:	83 3d dd 60 00 00 00 	cmpl   $0x0,0x60dd(%rip)        # 4074f8 <notify>
  40141b:	74 09                	je     401426 <initialize_target+0x82>
  40141d:	83 3d e8 60 00 00 00 	cmpl   $0x0,0x60e8(%rip)        # 40750c <is_checker>
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
  401460:	48 8d 15 f9 5c 00 00 	lea    0x5cf9(%rip),%rdx        # 407160 <host_table>
  401467:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  40146b:	48 85 ff             	test   %rdi,%rdi
  40146e:	74 2c                	je     40149c <initialize_target+0xf8>
  401470:	48 89 e6             	mov    %rsp,%rsi
  401473:	e8 b8 fb ff ff       	callq  401030 <strcasecmp@plt>
  401478:	85 c0                	test   %eax,%eax
  40147a:	74 1b                	je     401497 <initialize_target+0xf3>
  40147c:	83 c3 01             	add    $0x1,%ebx
  40147f:	eb dc                	jmp    40145d <initialize_target+0xb9>
  401481:	48 8d 3d 60 2c 00 00 	lea    0x2c60(%rip),%rdi        # 4040e8 <_IO_stdin_used+0xe8>
  401488:	e8 f3 fb ff ff       	callq  401080 <puts@plt>
  40148d:	bf 08 00 00 00       	mov    $0x8,%edi
  401492:	e8 59 fd ff ff       	callq  4011f0 <exit@plt>
  401497:	bd 01 00 00 00       	mov    $0x1,%ebp
  40149c:	85 ed                	test   %ebp,%ebp
  40149e:	74 38                	je     4014d8 <initialize_target+0x134>
  4014a0:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4014a7:	00 
  4014a8:	e8 44 18 00 00       	callq  402cf1 <init_driver>
  4014ad:	85 c0                	test   %eax,%eax
  4014af:	0f 89 71 ff ff ff    	jns    401426 <initialize_target+0x82>
  4014b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4014bc:	00 
  4014bd:	48 8d 3d 9c 2c 00 00 	lea    0x2c9c(%rip),%rdi        # 404160 <_IO_stdin_used+0x160>
  4014c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4014c9:	e8 e2 fb ff ff       	callq  4010b0 <printf@plt>
  4014ce:	bf 08 00 00 00       	mov    $0x8,%edi
  4014d3:	e8 18 fd ff ff       	callq  4011f0 <exit@plt>
  4014d8:	48 89 e6             	mov    %rsp,%rsi
  4014db:	48 8d 3d 3e 2c 00 00 	lea    0x2c3e(%rip),%rdi        # 404120 <_IO_stdin_used+0x120>
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
  401503:	48 c7 c6 c3 20 40 00 	mov    $0x4020c3,%rsi
  40150a:	bf 0b 00 00 00       	mov    $0xb,%edi
  40150f:	e8 ec fb ff ff       	callq  401100 <signal@plt>
  401514:	48 c7 c6 6f 20 40 00 	mov    $0x40206f,%rsi
  40151b:	bf 07 00 00 00       	mov    $0x7,%edi
  401520:	e8 db fb ff ff       	callq  401100 <signal@plt>
  401525:	48 c7 c6 17 21 40 00 	mov    $0x402117,%rsi
  40152c:	bf 04 00 00 00       	mov    $0x4,%edi
  401531:	e8 ca fb ff ff       	callq  401100 <signal@plt>
  401536:	83 3d cf 5f 00 00 00 	cmpl   $0x0,0x5fcf(%rip)        # 40750c <is_checker>
  40153d:	75 26                	jne    401565 <main+0x6f>
  40153f:	4c 8d 25 e7 2c 00 00 	lea    0x2ce7(%rip),%r12        # 40422d <_IO_stdin_used+0x22d>
  401546:	48 8b 05 53 5f 00 00 	mov    0x5f53(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  40154d:	48 89 05 9c 5f 00 00 	mov    %rax,0x5f9c(%rip)        # 4074f0 <infile>
  401554:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40155a:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401560:	e9 88 00 00 00       	jmpq   4015ed <main+0xf7>
  401565:	48 c7 c6 6b 21 40 00 	mov    $0x40216b,%rsi
  40156c:	bf 0e 00 00 00       	mov    $0xe,%edi
  401571:	e8 8a fb ff ff       	callq  401100 <signal@plt>
  401576:	bf 05 00 00 00       	mov    $0x5,%edi
  40157b:	e8 50 fb ff ff       	callq  4010d0 <alarm@plt>
  401580:	4c 8d 25 9e 2c 00 00 	lea    0x2c9e(%rip),%r12        # 404225 <_IO_stdin_used+0x225>
  401587:	eb bd                	jmp    401546 <main+0x50>
  401589:	48 8b 3b             	mov    (%rbx),%rdi
  40158c:	e8 81 fd ff ff       	callq  401312 <usage>
  401591:	48 8d 35 e2 2e 00 00 	lea    0x2ee2(%rip),%rsi        # 40447a <_IO_stdin_used+0x47a>
  401598:	48 8b 3d 09 5f 00 00 	mov    0x5f09(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  40159f:	e8 fc fb ff ff       	callq  4011a0 <fopen@plt>
  4015a4:	48 89 05 45 5f 00 00 	mov    %rax,0x5f45(%rip)        # 4074f0 <infile>
  4015ab:	48 85 c0             	test   %rax,%rax
  4015ae:	75 3d                	jne    4015ed <main+0xf7>
  4015b0:	48 8b 15 f1 5e 00 00 	mov    0x5ef1(%rip),%rdx        # 4074a8 <optarg@@GLIBC_2.2.5>
  4015b7:	48 8d 35 74 2c 00 00 	lea    0x2c74(%rip),%rsi        # 404232 <_IO_stdin_used+0x232>
  4015be:	48 8b 3d fb 5e 00 00 	mov    0x5efb(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  4015c5:	e8 56 fb ff ff       	callq  401120 <fprintf@plt>
  4015ca:	b8 01 00 00 00       	mov    $0x1,%eax
  4015cf:	e9 ce 00 00 00       	jmpq   4016a2 <main+0x1ac>
  4015d4:	ba 10 00 00 00       	mov    $0x10,%edx
  4015d9:	be 00 00 00 00       	mov    $0x0,%esi
  4015de:	48 8b 3d c3 5e 00 00 	mov    0x5ec3(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
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
  40160b:	48 8d 15 5e 2c 00 00 	lea    0x2c5e(%rip),%rdx        # 404270 <_IO_stdin_used+0x270>
  401612:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  401616:	48 01 d0             	add    %rdx,%rax
  401619:	ff e0                	jmpq   *%rax
  40161b:	ba 0a 00 00 00       	mov    $0xa,%edx
  401620:	be 00 00 00 00       	mov    $0x0,%esi
  401625:	48 8b 3d 7c 5e 00 00 	mov    0x5e7c(%rip),%rdi        # 4074a8 <optarg@@GLIBC_2.2.5>
  40162c:	e8 ff fa ff ff       	callq  401130 <strtol@plt>
  401631:	41 89 c5             	mov    %eax,%r13d
  401634:	eb b7                	jmp    4015ed <main+0xf7>
  401636:	c7 05 b8 5e 00 00 00 	movl   $0x0,0x5eb8(%rip)        # 4074f8 <notify>
  40163d:	00 00 00 
  401640:	eb ab                	jmp    4015ed <main+0xf7>
  401642:	48 8d 3d 06 2c 00 00 	lea    0x2c06(%rip),%rdi        # 40424f <_IO_stdin_used+0x24f>
  401649:	b8 00 00 00 00       	mov    $0x0,%eax
  40164e:	e8 5d fa ff ff       	callq  4010b0 <printf@plt>
  401653:	48 8b 3b             	mov    (%rbx),%rdi
  401656:	e8 b7 fc ff ff       	callq  401312 <usage>
  40165b:	be 01 00 00 00       	mov    $0x1,%esi
  401660:	44 89 ef             	mov    %r13d,%edi
  401663:	e8 3c fd ff ff       	callq  4013a4 <initialize_target>
  401668:	83 3d 9d 5e 00 00 00 	cmpl   $0x0,0x5e9d(%rip)        # 40750c <is_checker>
  40166f:	74 09                	je     40167a <main+0x184>
  401671:	44 39 35 8c 5e 00 00 	cmp    %r14d,0x5e8c(%rip)        # 407504 <authkey>
  401678:	75 31                	jne    4016ab <main+0x1b5>
  40167a:	8b 35 88 5e 00 00    	mov    0x5e88(%rip),%esi        # 407508 <cookie>
  401680:	48 8d 3d db 2b 00 00 	lea    0x2bdb(%rip),%rdi        # 404262 <_IO_stdin_used+0x262>
  401687:	b8 00 00 00 00       	mov    $0x0,%eax
  40168c:	e8 1f fa ff ff       	callq  4010b0 <printf@plt>
  401691:	48 8b 3d e8 5d 00 00 	mov    0x5de8(%rip),%rdi        # 407480 <buf_offset>
  401698:	e8 20 0b 00 00       	callq  4021bd <launch>
  40169d:	b8 00 00 00 00       	mov    $0x0,%eax
  4016a2:	5b                   	pop    %rbx
  4016a3:	5d                   	pop    %rbp
  4016a4:	41 5c                	pop    %r12
  4016a6:	41 5d                	pop    %r13
  4016a8:	41 5e                	pop    %r14
  4016aa:	c3                   	retq   
  4016ab:	44 89 f6             	mov    %r14d,%esi
  4016ae:	48 8d 3d d3 2a 00 00 	lea    0x2ad3(%rip),%rdi        # 404188 <_IO_stdin_used+0x188>
  4016b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4016ba:	e8 f1 f9 ff ff       	callq  4010b0 <printf@plt>
  4016bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c4:	e8 93 07 00 00       	callq  401e5c <check_fail>
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
  401b26:	e8 64 03 00 00       	callq  401e8f <Gets>
  401b2b:	b8 01 00 00 00       	mov    $0x1,%eax
  401b30:	48 83 c4 38          	add    $0x38,%rsp
  401b34:	c3                   	retq   

0000000000401b35 <touch1>:
  401b35:	48 83 ec 08          	sub    $0x8,%rsp
  401b39:	c7 05 bd 59 00 00 01 	movl   $0x1,0x59bd(%rip)        # 407500 <vlevel>
  401b40:	00 00 00 
  401b43:	48 8d 3d cf 27 00 00 	lea    0x27cf(%rip),%rdi        # 404319 <_IO_stdin_used+0x319>
  401b4a:	e8 31 f5 ff ff       	callq  401080 <puts@plt>
  401b4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401b54:	e8 30 04 00 00       	callq  401f89 <validate>
  401b59:	bf 00 00 00 00       	mov    $0x0,%edi
  401b5e:	e8 8d f6 ff ff       	callq  4011f0 <exit@plt>

0000000000401b63 <touch2>:
  401b63:	48 83 ec 08          	sub    $0x8,%rsp
  401b67:	89 fe                	mov    %edi,%esi
  401b69:	c7 05 8d 59 00 00 02 	movl   $0x2,0x598d(%rip)        # 407500 <vlevel>
  401b70:	00 00 00 
  401b73:	39 3d 8f 59 00 00    	cmp    %edi,0x598f(%rip)        # 407508 <cookie>
  401b79:	74 25                	je     401ba0 <touch2+0x3d>
  401b7b:	48 8d 3d e6 27 00 00 	lea    0x27e6(%rip),%rdi        # 404368 <_IO_stdin_used+0x368>
  401b82:	b8 00 00 00 00       	mov    $0x0,%eax
  401b87:	e8 24 f5 ff ff       	callq  4010b0 <printf@plt>
  401b8c:	bf 02 00 00 00       	mov    $0x2,%edi
  401b91:	e8 b1 04 00 00       	callq  402047 <fail>
  401b96:	bf 00 00 00 00       	mov    $0x0,%edi
  401b9b:	e8 50 f6 ff ff       	callq  4011f0 <exit@plt>
  401ba0:	48 8d 3d 99 27 00 00 	lea    0x2799(%rip),%rdi        # 404340 <_IO_stdin_used+0x340>
  401ba7:	b8 00 00 00 00       	mov    $0x0,%eax
  401bac:	e8 ff f4 ff ff       	callq  4010b0 <printf@plt>
  401bb1:	bf 02 00 00 00       	mov    $0x2,%edi
  401bb6:	e8 ce 03 00 00       	callq  401f89 <validate>
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
  401c09:	48 8d 35 26 27 00 00 	lea    0x2726(%rip),%rsi        # 404336 <_IO_stdin_used+0x336>
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
  401c42:	c7 05 b4 58 00 00 03 	movl   $0x3,0x58b4(%rip)        # 407500 <vlevel>
  401c49:	00 00 00 
  401c4c:	48 89 fe             	mov    %rdi,%rsi
  401c4f:	8b 3d b3 58 00 00    	mov    0x58b3(%rip),%edi        # 407508 <cookie>
  401c55:	e8 63 ff ff ff       	callq  401bbd <hexmatch>
  401c5a:	85 c0                	test   %eax,%eax
  401c5c:	74 28                	je     401c86 <touch3+0x48>
  401c5e:	48 89 de             	mov    %rbx,%rsi
  401c61:	48 8d 3d 28 27 00 00 	lea    0x2728(%rip),%rdi        # 404390 <_IO_stdin_used+0x390>
  401c68:	b8 00 00 00 00       	mov    $0x0,%eax
  401c6d:	e8 3e f4 ff ff       	callq  4010b0 <printf@plt>
  401c72:	bf 03 00 00 00       	mov    $0x3,%edi
  401c77:	e8 0d 03 00 00       	callq  401f89 <validate>
  401c7c:	bf 00 00 00 00       	mov    $0x0,%edi
  401c81:	e8 6a f5 ff ff       	callq  4011f0 <exit@plt>
  401c86:	48 89 de             	mov    %rbx,%rsi
  401c89:	48 8d 3d 28 27 00 00 	lea    0x2728(%rip),%rdi        # 4043b8 <_IO_stdin_used+0x3b8>
  401c90:	b8 00 00 00 00       	mov    $0x0,%eax
  401c95:	e8 16 f4 ff ff       	callq  4010b0 <printf@plt>
  401c9a:	bf 03 00 00 00       	mov    $0x3,%edi
  401c9f:	e8 a3 03 00 00       	callq  402047 <fail>
  401ca4:	eb d6                	jmp    401c7c <touch3+0x3e>

0000000000401ca6 <test>:
  401ca6:	48 83 ec 08          	sub    $0x8,%rsp
  401caa:	b8 00 00 00 00       	mov    $0x0,%eax
  401caf:	e8 6b fe ff ff       	callq  401b1f <getbuf>
  401cb4:	89 c6                	mov    %eax,%esi
  401cb6:	48 8d 3d 23 27 00 00 	lea    0x2723(%rip),%rdi        # 4043e0 <_IO_stdin_used+0x3e0>
  401cbd:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc2:	e8 e9 f3 ff ff       	callq  4010b0 <printf@plt>
  401cc7:	48 83 c4 08          	add    $0x8,%rsp
  401ccb:	c3                   	retq   

0000000000401ccc <start_farm>:
  401ccc:	b8 01 00 00 00       	mov    $0x1,%eax
  401cd1:	c3                   	retq   

0000000000401cd2 <setval_276>:
  401cd2:	c7 07 48 89 c7 c7    	movl   $0xc7c78948,(%rdi)
  401cd8:	c3                   	retq   

0000000000401cd9 <setval_137>:
  401cd9:	c7 07 48 89 c7 c7    	movl   $0xc7c78948,(%rdi)
  401cdf:	c3                   	retq   

0000000000401ce0 <setval_156>:
  401ce0:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
  401ce6:	c3                   	retq   

0000000000401ce7 <setval_400>:
  401ce7:	c7 07 48 89 c7 c3    	movl   $0xc3c78948,(%rdi)
  401ced:	c3                   	retq   

0000000000401cee <getval_281>:
  401cee:	b8 d8 90 90 90       	mov    $0x909090d8,%eax
  401cf3:	c3                   	retq   

0000000000401cf4 <getval_170>:
  401cf4:	b8 58 90 90 90       	mov    $0x90909058,%eax
  401cf9:	c3                   	retq   

0000000000401cfa <getval_138>:
  401cfa:	b8 b5 b0 58 90       	mov    $0x9058b0b5,%eax
  401cff:	c3                   	retq   

0000000000401d00 <setval_356>:
  401d00:	c7 07 58 91 90 90    	movl   $0x90909158,(%rdi)
  401d06:	c3                   	retq   

0000000000401d07 <mid_farm>:
  401d07:	b8 01 00 00 00       	mov    $0x1,%eax
  401d0c:	c3                   	retq   

0000000000401d0d <add_xy>:
  401d0d:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401d11:	c3                   	retq   

0000000000401d12 <setval_426>:
  401d12:	c7 07 48 99 e0 c3    	movl   $0xc3e09948,(%rdi)
  401d18:	c3                   	retq   

0000000000401d19 <getval_474>:
  401d19:	b8 68 89 e0 90       	mov    $0x90e08968,%eax
  401d1e:	c3                   	retq   

0000000000401d1f <setval_338>:
  401d1f:	c7 07 89 c1 18 c0    	movl   $0xc018c189,(%rdi)
  401d25:	c3                   	retq   

0000000000401d26 <addval_341>:
  401d26:	8d 87 89 d6 48 d2    	lea    -0x2db72977(%rdi),%eax
  401d2c:	c3                   	retq   

0000000000401d2d <getval_240>:
  401d2d:	b8 89 d6 38 d2       	mov    $0xd238d689,%eax
  401d32:	c3                   	retq   

0000000000401d33 <getval_288>:
  401d33:	b8 06 88 ca 90       	mov    $0x90ca8806,%eax
  401d38:	c3                   	retq   

0000000000401d39 <setval_409>:
  401d39:	c7 07 89 c1 08 d2    	movl   $0xd208c189,(%rdi)
  401d3f:	c3                   	retq   

0000000000401d40 <getval_453>:
  401d40:	b8 48 89 e0 94       	mov    $0x94e08948,%eax
  401d45:	c3                   	retq   

0000000000401d46 <setval_282>:
  401d46:	c7 07 7f 89 ca c2    	movl   $0xc2ca897f,(%rdi)
  401d4c:	c3                   	retq   

0000000000401d4d <setval_411>:
  401d4d:	c7 07 09 c1 20 db    	movl   $0xdb20c109,(%rdi)
  401d53:	c3                   	retq   

0000000000401d54 <getval_367>:
  401d54:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  401d59:	c3                   	retq   

0000000000401d5a <setval_255>:
  401d5a:	c7 07 89 c1 92 90    	movl   $0x9092c189,(%rdi)
  401d60:	c3                   	retq   

0000000000401d61 <setval_207>:
  401d61:	c7 07 89 d6 28 db    	movl   $0xdb28d689,(%rdi)
  401d67:	c3                   	retq   

0000000000401d68 <addval_152>:
  401d68:	8d 87 89 ca 91 90    	lea    -0x6f6e3577(%rdi),%eax
  401d6e:	c3                   	retq   

0000000000401d6f <getval_423>:
  401d6f:	b8 09 ca 90 90       	mov    $0x9090ca09,%eax
  401d74:	c3                   	retq   

0000000000401d75 <getval_328>:
  401d75:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401d7a:	c3                   	retq   

0000000000401d7b <setval_285>:
  401d7b:	c7 07 99 d6 84 db    	movl   $0xdb84d699,(%rdi)
  401d81:	c3                   	retq   

0000000000401d82 <setval_377>:
  401d82:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  401d88:	c3                   	retq   

0000000000401d89 <setval_394>:
  401d89:	c7 07 c3 89 d6 90    	movl   $0x90d689c3,(%rdi)
  401d8f:	c3                   	retq   

0000000000401d90 <setval_218>:
  401d90:	c7 07 b7 81 c1 c3    	movl   $0xc3c181b7,(%rdi)
  401d96:	c3                   	retq   

0000000000401d97 <getval_204>:
  401d97:	b8 8d c1 90 90       	mov    $0x9090c18d,%eax
  401d9c:	c3                   	retq   

0000000000401d9d <setval_470>:
  401d9d:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401da3:	c3                   	retq   

0000000000401da4 <getval_226>:
  401da4:	b8 89 d6 78 c9       	mov    $0xc978d689,%eax
  401da9:	c3                   	retq   

0000000000401daa <setval_171>:
  401daa:	c7 07 c9 ca 84 c0    	movl   $0xc084cac9,(%rdi)
  401db0:	c3                   	retq   

0000000000401db1 <addval_224>:
  401db1:	8d 87 90 89 ca 92    	lea    -0x6d357670(%rdi),%eax
  401db7:	c3                   	retq   

0000000000401db8 <addval_208>:
  401db8:	8d 87 45 89 ca c3    	lea    -0x3c3576bb(%rdi),%eax
  401dbe:	c3                   	retq   

0000000000401dbf <getval_180>:
  401dbf:	b8 89 c1 38 db       	mov    $0xdb38c189,%eax
  401dc4:	c3                   	retq   

0000000000401dc5 <addval_148>:
  401dc5:	8d 87 89 d6 90 c1    	lea    -0x3e6f2977(%rdi),%eax
  401dcb:	c3                   	retq   

0000000000401dcc <getval_217>:
  401dcc:	b8 89 d6 c4 c0       	mov    $0xc0c4d689,%eax
  401dd1:	c3                   	retq   

0000000000401dd2 <setval_438>:
  401dd2:	c7 07 81 c1 c3 b8    	movl   $0xb8c3c181,(%rdi)
  401dd8:	c3                   	retq   

0000000000401dd9 <addval_434>:
  401dd9:	8d 87 48 88 e0 90    	lea    -0x6f1f77b8(%rdi),%eax
  401ddf:	c3                   	retq   

0000000000401de0 <setval_437>:
  401de0:	c7 07 5f 48 89 e0    	movl   $0xe089485f,(%rdi)
  401de6:	c3                   	retq   

0000000000401de7 <end_farm>:
  401de7:	b8 01 00 00 00       	mov    $0x1,%eax
  401dec:	c3                   	retq   

0000000000401ded <save_char>:
  401ded:	8b 05 31 63 00 00    	mov    0x6331(%rip),%eax        # 408124 <gets_cnt>
  401df3:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401df8:	7f 4a                	jg     401e44 <save_char+0x57>
  401dfa:	89 f9                	mov    %edi,%ecx
  401dfc:	c0 e9 04             	shr    $0x4,%cl
  401dff:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401e02:	4c 8d 05 47 28 00 00 	lea    0x2847(%rip),%r8        # 404650 <trans_char>
  401e09:	83 e1 0f             	and    $0xf,%ecx
  401e0c:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  401e11:	48 8d 0d 08 57 00 00 	lea    0x5708(%rip),%rcx        # 407520 <gets_buf>
  401e18:	48 63 f2             	movslq %edx,%rsi
  401e1b:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  401e1f:	8d 72 01             	lea    0x1(%rdx),%esi
  401e22:	83 e7 0f             	and    $0xf,%edi
  401e25:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  401e2a:	48 63 f6             	movslq %esi,%rsi
  401e2d:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  401e31:	83 c2 02             	add    $0x2,%edx
  401e34:	48 63 d2             	movslq %edx,%rdx
  401e37:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  401e3b:	83 c0 01             	add    $0x1,%eax
  401e3e:	89 05 e0 62 00 00    	mov    %eax,0x62e0(%rip)        # 408124 <gets_cnt>
  401e44:	c3                   	retq   

0000000000401e45 <save_term>:
  401e45:	8b 05 d9 62 00 00    	mov    0x62d9(%rip),%eax        # 408124 <gets_cnt>
  401e4b:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401e4e:	48 98                	cltq   
  401e50:	48 8d 15 c9 56 00 00 	lea    0x56c9(%rip),%rdx        # 407520 <gets_buf>
  401e57:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401e5b:	c3                   	retq   

0000000000401e5c <check_fail>:
  401e5c:	48 83 ec 08          	sub    $0x8,%rsp
  401e60:	0f be 35 c1 62 00 00 	movsbl 0x62c1(%rip),%esi        # 408128 <target_prefix>
  401e67:	48 8d 0d b2 56 00 00 	lea    0x56b2(%rip),%rcx        # 407520 <gets_buf>
  401e6e:	8b 15 88 56 00 00    	mov    0x5688(%rip),%edx        # 4074fc <check_level>
  401e74:	48 8d 3d 88 25 00 00 	lea    0x2588(%rip),%rdi        # 404403 <_IO_stdin_used+0x403>
  401e7b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e80:	e8 2b f2 ff ff       	callq  4010b0 <printf@plt>
  401e85:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8a:	e8 61 f3 ff ff       	callq  4011f0 <exit@plt>

0000000000401e8f <Gets>:
  401e8f:	41 54                	push   %r12
  401e91:	55                   	push   %rbp
  401e92:	53                   	push   %rbx
  401e93:	49 89 fc             	mov    %rdi,%r12
  401e96:	c7 05 84 62 00 00 00 	movl   $0x0,0x6284(%rip)        # 408124 <gets_cnt>
  401e9d:	00 00 00 
  401ea0:	48 89 fb             	mov    %rdi,%rbx
  401ea3:	48 8b 3d 46 56 00 00 	mov    0x5646(%rip),%rdi        # 4074f0 <infile>
  401eaa:	e8 61 f3 ff ff       	callq  401210 <getc@plt>
  401eaf:	83 f8 ff             	cmp    $0xffffffff,%eax
  401eb2:	74 18                	je     401ecc <Gets+0x3d>
  401eb4:	83 f8 0a             	cmp    $0xa,%eax
  401eb7:	74 13                	je     401ecc <Gets+0x3d>
  401eb9:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401ebd:	88 03                	mov    %al,(%rbx)
  401ebf:	0f b6 f8             	movzbl %al,%edi
  401ec2:	e8 26 ff ff ff       	callq  401ded <save_char>
  401ec7:	48 89 eb             	mov    %rbp,%rbx
  401eca:	eb d7                	jmp    401ea3 <Gets+0x14>
  401ecc:	c6 03 00             	movb   $0x0,(%rbx)
  401ecf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed4:	e8 6c ff ff ff       	callq  401e45 <save_term>
  401ed9:	4c 89 e0             	mov    %r12,%rax
  401edc:	5b                   	pop    %rbx
  401edd:	5d                   	pop    %rbp
  401ede:	41 5c                	pop    %r12
  401ee0:	c3                   	retq   

0000000000401ee1 <notify_server>:
  401ee1:	83 3d 24 56 00 00 00 	cmpl   $0x0,0x5624(%rip)        # 40750c <is_checker>
  401ee8:	0f 85 9a 00 00 00    	jne    401f88 <notify_server+0xa7>
  401eee:	53                   	push   %rbx
  401eef:	48 81 ec 00 20 00 00 	sub    $0x2000,%rsp
  401ef6:	81 3d 24 62 00 00 9c 	cmpl   $0x1f9c,0x6224(%rip)        # 408124 <gets_cnt>
  401efd:	1f 00 00 
  401f00:	7f 5a                	jg     401f5c <notify_server+0x7b>
  401f02:	44 0f be 0d 1e 62 00 	movsbl 0x621e(%rip),%r9d        # 408128 <target_prefix>
  401f09:	00 
  401f0a:	83 3d e7 55 00 00 00 	cmpl   $0x0,0x55e7(%rip)        # 4074f8 <notify>
  401f11:	74 64                	je     401f77 <notify_server+0x96>
  401f13:	44 8b 05 ea 55 00 00 	mov    0x55ea(%rip),%r8d        # 407504 <authkey>
  401f1a:	85 ff                	test   %edi,%edi
  401f1c:	74 61                	je     401f7f <notify_server+0x9e>
  401f1e:	48 8d 1d f9 24 00 00 	lea    0x24f9(%rip),%rbx        # 40441e <_IO_stdin_used+0x41e>
  401f25:	48 89 e7             	mov    %rsp,%rdi
  401f28:	48 8d 05 f1 55 00 00 	lea    0x55f1(%rip),%rax        # 407520 <gets_buf>
  401f2f:	50                   	push   %rax
  401f30:	56                   	push   %rsi
  401f31:	48 89 d9             	mov    %rbx,%rcx
  401f34:	8b 15 f6 51 00 00    	mov    0x51f6(%rip),%edx        # 407130 <target_id>
  401f3a:	48 8d 35 e2 24 00 00 	lea    0x24e2(%rip),%rsi        # 404423 <_IO_stdin_used+0x423>
  401f41:	b8 00 00 00 00       	mov    $0x0,%eax
  401f46:	e8 95 f2 ff ff       	callq  4011e0 <sprintf@plt>
  401f4b:	48 89 df             	mov    %rbx,%rdi
  401f4e:	e8 2d f1 ff ff       	callq  401080 <puts@plt>
  401f53:	48 81 c4 10 20 00 00 	add    $0x2010,%rsp
  401f5a:	5b                   	pop    %rbx
  401f5b:	c3                   	retq   
  401f5c:	48 8d 3d 85 25 00 00 	lea    0x2585(%rip),%rdi        # 4044e8 <_IO_stdin_used+0x4e8>
  401f63:	b8 00 00 00 00       	mov    $0x0,%eax
  401f68:	e8 43 f1 ff ff       	callq  4010b0 <printf@plt>
  401f6d:	bf 01 00 00 00       	mov    $0x1,%edi
  401f72:	e8 79 f2 ff ff       	callq  4011f0 <exit@plt>
  401f77:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401f7d:	eb 9b                	jmp    401f1a <notify_server+0x39>
  401f7f:	48 8d 1d 93 24 00 00 	lea    0x2493(%rip),%rbx        # 404419 <_IO_stdin_used+0x419>
  401f86:	eb 9d                	jmp    401f25 <notify_server+0x44>
  401f88:	c3                   	retq   

0000000000401f89 <validate>:
  401f89:	53                   	push   %rbx
  401f8a:	89 fb                	mov    %edi,%ebx
  401f8c:	83 3d 79 55 00 00 00 	cmpl   $0x0,0x5579(%rip)        # 40750c <is_checker>
  401f93:	74 68                	je     401ffd <validate+0x74>
  401f95:	39 3d 65 55 00 00    	cmp    %edi,0x5565(%rip)        # 407500 <vlevel>
  401f9b:	75 2d                	jne    401fca <validate+0x41>
  401f9d:	8b 35 59 55 00 00    	mov    0x5559(%rip),%esi        # 4074fc <check_level>
  401fa3:	39 fe                	cmp    %edi,%esi
  401fa5:	75 39                	jne    401fe0 <validate+0x57>
  401fa7:	0f be 35 7a 61 00 00 	movsbl 0x617a(%rip),%esi        # 408128 <target_prefix>
  401fae:	48 8d 0d 6b 55 00 00 	lea    0x556b(%rip),%rcx        # 407520 <gets_buf>
  401fb5:	89 fa                	mov    %edi,%edx
  401fb7:	48 8d 3d 9f 24 00 00 	lea    0x249f(%rip),%rdi        # 40445d <_IO_stdin_used+0x45d>
  401fbe:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc3:	e8 e8 f0 ff ff       	callq  4010b0 <printf@plt>
  401fc8:	5b                   	pop    %rbx
  401fc9:	c3                   	retq   
  401fca:	48 8d 3d 6e 24 00 00 	lea    0x246e(%rip),%rdi        # 40443f <_IO_stdin_used+0x43f>
  401fd1:	e8 aa f0 ff ff       	callq  401080 <puts@plt>
  401fd6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdb:	e8 7c fe ff ff       	callq  401e5c <check_fail>
  401fe0:	89 fa                	mov    %edi,%edx
  401fe2:	48 8d 3d 2f 25 00 00 	lea    0x252f(%rip),%rdi        # 404518 <_IO_stdin_used+0x518>
  401fe9:	b8 00 00 00 00       	mov    $0x0,%eax
  401fee:	e8 bd f0 ff ff       	callq  4010b0 <printf@plt>
  401ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff8:	e8 5f fe ff ff       	callq  401e5c <check_fail>
  401ffd:	39 3d fd 54 00 00    	cmp    %edi,0x54fd(%rip)        # 407500 <vlevel>
  402003:	74 1a                	je     40201f <validate+0x96>
  402005:	48 8d 3d 33 24 00 00 	lea    0x2433(%rip),%rdi        # 40443f <_IO_stdin_used+0x43f>
  40200c:	e8 6f f0 ff ff       	callq  401080 <puts@plt>
  402011:	89 de                	mov    %ebx,%esi
  402013:	bf 00 00 00 00       	mov    $0x0,%edi
  402018:	e8 c4 fe ff ff       	callq  401ee1 <notify_server>
  40201d:	eb a9                	jmp    401fc8 <validate+0x3f>
  40201f:	0f be 15 02 61 00 00 	movsbl 0x6102(%rip),%edx        # 408128 <target_prefix>
  402026:	89 fe                	mov    %edi,%esi
  402028:	48 8d 3d 11 25 00 00 	lea    0x2511(%rip),%rdi        # 404540 <_IO_stdin_used+0x540>
  40202f:	b8 00 00 00 00       	mov    $0x0,%eax
  402034:	e8 77 f0 ff ff       	callq  4010b0 <printf@plt>
  402039:	89 de                	mov    %ebx,%esi
  40203b:	bf 01 00 00 00       	mov    $0x1,%edi
  402040:	e8 9c fe ff ff       	callq  401ee1 <notify_server>
  402045:	eb 81                	jmp    401fc8 <validate+0x3f>

0000000000402047 <fail>:
  402047:	48 83 ec 08          	sub    $0x8,%rsp
  40204b:	83 3d ba 54 00 00 00 	cmpl   $0x0,0x54ba(%rip)        # 40750c <is_checker>
  402052:	75 11                	jne    402065 <fail+0x1e>
  402054:	89 fe                	mov    %edi,%esi
  402056:	bf 00 00 00 00       	mov    $0x0,%edi
  40205b:	e8 81 fe ff ff       	callq  401ee1 <notify_server>
  402060:	48 83 c4 08          	add    $0x8,%rsp
  402064:	c3                   	retq   
  402065:	b8 00 00 00 00       	mov    $0x0,%eax
  40206a:	e8 ed fd ff ff       	callq  401e5c <check_fail>

000000000040206f <bushandler>:
  40206f:	48 83 ec 08          	sub    $0x8,%rsp
  402073:	83 3d 92 54 00 00 00 	cmpl   $0x0,0x5492(%rip)        # 40750c <is_checker>
  40207a:	74 16                	je     402092 <bushandler+0x23>
  40207c:	48 8d 3d ef 23 00 00 	lea    0x23ef(%rip),%rdi        # 404472 <_IO_stdin_used+0x472>
  402083:	e8 f8 ef ff ff       	callq  401080 <puts@plt>
  402088:	b8 00 00 00 00       	mov    $0x0,%eax
  40208d:	e8 ca fd ff ff       	callq  401e5c <check_fail>
  402092:	48 8d 3d df 24 00 00 	lea    0x24df(%rip),%rdi        # 404578 <_IO_stdin_used+0x578>
  402099:	e8 e2 ef ff ff       	callq  401080 <puts@plt>
  40209e:	48 8d 3d d7 23 00 00 	lea    0x23d7(%rip),%rdi        # 40447c <_IO_stdin_used+0x47c>
  4020a5:	e8 d6 ef ff ff       	callq  401080 <puts@plt>
  4020aa:	be 00 00 00 00       	mov    $0x0,%esi
  4020af:	bf 00 00 00 00       	mov    $0x0,%edi
  4020b4:	e8 28 fe ff ff       	callq  401ee1 <notify_server>
  4020b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4020be:	e8 2d f1 ff ff       	callq  4011f0 <exit@plt>

00000000004020c3 <seghandler>:
  4020c3:	48 83 ec 08          	sub    $0x8,%rsp
  4020c7:	83 3d 3e 54 00 00 00 	cmpl   $0x0,0x543e(%rip)        # 40750c <is_checker>
  4020ce:	74 16                	je     4020e6 <seghandler+0x23>
  4020d0:	48 8d 3d bb 23 00 00 	lea    0x23bb(%rip),%rdi        # 404492 <_IO_stdin_used+0x492>
  4020d7:	e8 a4 ef ff ff       	callq  401080 <puts@plt>
  4020dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e1:	e8 76 fd ff ff       	callq  401e5c <check_fail>
  4020e6:	48 8d 3d ab 24 00 00 	lea    0x24ab(%rip),%rdi        # 404598 <_IO_stdin_used+0x598>
  4020ed:	e8 8e ef ff ff       	callq  401080 <puts@plt>
  4020f2:	48 8d 3d 83 23 00 00 	lea    0x2383(%rip),%rdi        # 40447c <_IO_stdin_used+0x47c>
  4020f9:	e8 82 ef ff ff       	callq  401080 <puts@plt>
  4020fe:	be 00 00 00 00       	mov    $0x0,%esi
  402103:	bf 00 00 00 00       	mov    $0x0,%edi
  402108:	e8 d4 fd ff ff       	callq  401ee1 <notify_server>
  40210d:	bf 01 00 00 00       	mov    $0x1,%edi
  402112:	e8 d9 f0 ff ff       	callq  4011f0 <exit@plt>

0000000000402117 <illegalhandler>:
  402117:	48 83 ec 08          	sub    $0x8,%rsp
  40211b:	83 3d ea 53 00 00 00 	cmpl   $0x0,0x53ea(%rip)        # 40750c <is_checker>
  402122:	74 16                	je     40213a <illegalhandler+0x23>
  402124:	48 8d 3d 7a 23 00 00 	lea    0x237a(%rip),%rdi        # 4044a5 <_IO_stdin_used+0x4a5>
  40212b:	e8 50 ef ff ff       	callq  401080 <puts@plt>
  402130:	b8 00 00 00 00       	mov    $0x0,%eax
  402135:	e8 22 fd ff ff       	callq  401e5c <check_fail>
  40213a:	48 8d 3d 7f 24 00 00 	lea    0x247f(%rip),%rdi        # 4045c0 <_IO_stdin_used+0x5c0>
  402141:	e8 3a ef ff ff       	callq  401080 <puts@plt>
  402146:	48 8d 3d 2f 23 00 00 	lea    0x232f(%rip),%rdi        # 40447c <_IO_stdin_used+0x47c>
  40214d:	e8 2e ef ff ff       	callq  401080 <puts@plt>
  402152:	be 00 00 00 00       	mov    $0x0,%esi
  402157:	bf 00 00 00 00       	mov    $0x0,%edi
  40215c:	e8 80 fd ff ff       	callq  401ee1 <notify_server>
  402161:	bf 01 00 00 00       	mov    $0x1,%edi
  402166:	e8 85 f0 ff ff       	callq  4011f0 <exit@plt>

000000000040216b <sigalrmhandler>:
  40216b:	48 83 ec 08          	sub    $0x8,%rsp
  40216f:	83 3d 96 53 00 00 00 	cmpl   $0x0,0x5396(%rip)        # 40750c <is_checker>
  402176:	74 16                	je     40218e <sigalrmhandler+0x23>
  402178:	48 8d 3d 3a 23 00 00 	lea    0x233a(%rip),%rdi        # 4044b9 <_IO_stdin_used+0x4b9>
  40217f:	e8 fc ee ff ff       	callq  401080 <puts@plt>
  402184:	b8 00 00 00 00       	mov    $0x0,%eax
  402189:	e8 ce fc ff ff       	callq  401e5c <check_fail>
  40218e:	be 05 00 00 00       	mov    $0x5,%esi
  402193:	48 8d 3d 56 24 00 00 	lea    0x2456(%rip),%rdi        # 4045f0 <_IO_stdin_used+0x5f0>
  40219a:	b8 00 00 00 00       	mov    $0x0,%eax
  40219f:	e8 0c ef ff ff       	callq  4010b0 <printf@plt>
  4021a4:	be 00 00 00 00       	mov    $0x0,%esi
  4021a9:	bf 00 00 00 00       	mov    $0x0,%edi
  4021ae:	e8 2e fd ff ff       	callq  401ee1 <notify_server>
  4021b3:	bf 01 00 00 00       	mov    $0x1,%edi
  4021b8:	e8 33 f0 ff ff       	callq  4011f0 <exit@plt>

00000000004021bd <launch>:
  4021bd:	55                   	push   %rbp
  4021be:	48 89 e5             	mov    %rsp,%rbp
  4021c1:	48 89 fa             	mov    %rdi,%rdx
  4021c4:	48 8d 47 17          	lea    0x17(%rdi),%rax
  4021c8:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4021cc:	48 29 c4             	sub    %rax,%rsp
  4021cf:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4021d4:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4021d8:	be f4 00 00 00       	mov    $0xf4,%esi
  4021dd:	e8 de ee ff ff       	callq  4010c0 <memset@plt>
  4021e2:	48 8b 05 b7 52 00 00 	mov    0x52b7(%rip),%rax        # 4074a0 <stdin@@GLIBC_2.2.5>
  4021e9:	48 39 05 00 53 00 00 	cmp    %rax,0x5300(%rip)        # 4074f0 <infile>
  4021f0:	74 2b                	je     40221d <launch+0x60>
  4021f2:	c7 05 04 53 00 00 00 	movl   $0x0,0x5304(%rip)        # 407500 <vlevel>
  4021f9:	00 00 00 
  4021fc:	b8 00 00 00 00       	mov    $0x0,%eax
  402201:	e8 a0 fa ff ff       	callq  401ca6 <test>
  402206:	83 3d ff 52 00 00 00 	cmpl   $0x0,0x52ff(%rip)        # 40750c <is_checker>
  40220d:	75 21                	jne    402230 <launch+0x73>
  40220f:	48 8d 3d c3 22 00 00 	lea    0x22c3(%rip),%rdi        # 4044d9 <_IO_stdin_used+0x4d9>
  402216:	e8 65 ee ff ff       	callq  401080 <puts@plt>
  40221b:	c9                   	leaveq 
  40221c:	c3                   	retq   
  40221d:	48 8d 3d 9d 22 00 00 	lea    0x229d(%rip),%rdi        # 4044c1 <_IO_stdin_used+0x4c1>
  402224:	b8 00 00 00 00       	mov    $0x0,%eax
  402229:	e8 82 ee ff ff       	callq  4010b0 <printf@plt>
  40222e:	eb c2                	jmp    4021f2 <launch+0x35>
  402230:	48 8d 3d 97 22 00 00 	lea    0x2297(%rip),%rdi        # 4044ce <_IO_stdin_used+0x4ce>
  402237:	e8 44 ee ff ff       	callq  401080 <puts@plt>
  40223c:	b8 00 00 00 00       	mov    $0x0,%eax
  402241:	e8 16 fc ff ff       	callq  401e5c <check_fail>

0000000000402246 <stable_launch>:
  402246:	53                   	push   %rbx
  402247:	48 89 3d 9a 52 00 00 	mov    %rdi,0x529a(%rip)        # 4074e8 <global_offset>
  40224e:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402254:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40225a:	b9 32 01 00 00       	mov    $0x132,%ecx
  40225f:	ba 07 00 00 00       	mov    $0x7,%edx
  402264:	be 00 00 10 00       	mov    $0x100000,%esi
  402269:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40226e:	e8 2d ee ff ff       	callq  4010a0 <mmap@plt>
  402273:	48 89 c3             	mov    %rax,%rbx
  402276:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40227c:	75 43                	jne    4022c1 <stable_launch+0x7b>
  40227e:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  402285:	48 89 15 a4 5e 00 00 	mov    %rdx,0x5ea4(%rip)        # 408130 <stack_top>
  40228c:	48 89 e0             	mov    %rsp,%rax
  40228f:	48 89 d4             	mov    %rdx,%rsp
  402292:	48 89 c2             	mov    %rax,%rdx
  402295:	48 89 15 44 52 00 00 	mov    %rdx,0x5244(%rip)        # 4074e0 <global_save_stack>
  40229c:	48 8b 3d 45 52 00 00 	mov    0x5245(%rip),%rdi        # 4074e8 <global_offset>
  4022a3:	e8 15 ff ff ff       	callq  4021bd <launch>
  4022a8:	48 8b 05 31 52 00 00 	mov    0x5231(%rip),%rax        # 4074e0 <global_save_stack>
  4022af:	48 89 c4             	mov    %rax,%rsp
  4022b2:	be 00 00 10 00       	mov    $0x100000,%esi
  4022b7:	48 89 df             	mov    %rbx,%rdi
  4022ba:	e8 c1 ee ff ff       	callq  401180 <munmap@plt>
  4022bf:	5b                   	pop    %rbx
  4022c0:	c3                   	retq   
  4022c1:	be 00 00 10 00       	mov    $0x100000,%esi
  4022c6:	48 89 c7             	mov    %rax,%rdi
  4022c9:	e8 b2 ee ff ff       	callq  401180 <munmap@plt>
  4022ce:	ba 00 60 58 55       	mov    $0x55586000,%edx
  4022d3:	48 8d 35 4e 23 00 00 	lea    0x234e(%rip),%rsi        # 404628 <_IO_stdin_used+0x628>
  4022da:	48 8b 3d df 51 00 00 	mov    0x51df(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  4022e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e6:	e8 35 ee ff ff       	callq  401120 <fprintf@plt>
  4022eb:	bf 01 00 00 00       	mov    $0x1,%edi
  4022f0:	e8 fb ee ff ff       	callq  4011f0 <exit@plt>

00000000004022f5 <rio_readinitb>:
  4022f5:	89 37                	mov    %esi,(%rdi)
  4022f7:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4022fe:	48 8d 47 10          	lea    0x10(%rdi),%rax
  402302:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402306:	c3                   	retq   

0000000000402307 <sigalrm_handler>:
  402307:	48 83 ec 08          	sub    $0x8,%rsp
  40230b:	ba 00 00 00 00       	mov    $0x0,%edx
  402310:	48 8d 35 49 23 00 00 	lea    0x2349(%rip),%rsi        # 404660 <trans_char+0x10>
  402317:	48 8b 3d a2 51 00 00 	mov    0x51a2(%rip),%rdi        # 4074c0 <stderr@@GLIBC_2.2.5>
  40231e:	b8 00 00 00 00       	mov    $0x0,%eax
  402323:	e8 f8 ed ff ff       	callq  401120 <fprintf@plt>
  402328:	bf 01 00 00 00       	mov    $0x1,%edi
  40232d:	e8 be ee ff ff       	callq  4011f0 <exit@plt>

0000000000402332 <urlencode>:
  402332:	41 54                	push   %r12
  402334:	55                   	push   %rbp
  402335:	53                   	push   %rbx
  402336:	48 83 ec 10          	sub    $0x10,%rsp
  40233a:	48 89 fb             	mov    %rdi,%rbx
  40233d:	48 89 f5             	mov    %rsi,%rbp
  402340:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402347:	b8 00 00 00 00       	mov    $0x0,%eax
  40234c:	f2 ae                	repnz scas %es:(%rdi),%al
  40234e:	48 89 ce             	mov    %rcx,%rsi
  402351:	48 f7 d6             	not    %rsi
  402354:	8d 46 ff             	lea    -0x1(%rsi),%eax
  402357:	eb 0e                	jmp    402367 <urlencode+0x35>
  402359:	88 55 00             	mov    %dl,0x0(%rbp)
  40235c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402360:	48 83 c3 01          	add    $0x1,%rbx
  402364:	44 89 e0             	mov    %r12d,%eax
  402367:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40236b:	85 c0                	test   %eax,%eax
  40236d:	0f 84 95 00 00 00    	je     402408 <urlencode+0xd6>
  402373:	0f b6 13             	movzbl (%rbx),%edx
  402376:	80 fa 2a             	cmp    $0x2a,%dl
  402379:	0f 94 c1             	sete   %cl
  40237c:	80 fa 2d             	cmp    $0x2d,%dl
  40237f:	0f 94 c0             	sete   %al
  402382:	08 c1                	or     %al,%cl
  402384:	75 d3                	jne    402359 <urlencode+0x27>
  402386:	80 fa 2e             	cmp    $0x2e,%dl
  402389:	74 ce                	je     402359 <urlencode+0x27>
  40238b:	80 fa 5f             	cmp    $0x5f,%dl
  40238e:	74 c9                	je     402359 <urlencode+0x27>
  402390:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402393:	3c 09                	cmp    $0x9,%al
  402395:	76 c2                	jbe    402359 <urlencode+0x27>
  402397:	8d 42 bf             	lea    -0x41(%rdx),%eax
  40239a:	3c 19                	cmp    $0x19,%al
  40239c:	76 bb                	jbe    402359 <urlencode+0x27>
  40239e:	8d 42 9f             	lea    -0x61(%rdx),%eax
  4023a1:	3c 19                	cmp    $0x19,%al
  4023a3:	76 b4                	jbe    402359 <urlencode+0x27>
  4023a5:	80 fa 20             	cmp    $0x20,%dl
  4023a8:	74 4c                	je     4023f6 <urlencode+0xc4>
  4023aa:	8d 42 e0             	lea    -0x20(%rdx),%eax
  4023ad:	3c 5f                	cmp    $0x5f,%al
  4023af:	0f 96 c1             	setbe  %cl
  4023b2:	80 fa 09             	cmp    $0x9,%dl
  4023b5:	0f 94 c0             	sete   %al
  4023b8:	08 c1                	or     %al,%cl
  4023ba:	74 47                	je     402403 <urlencode+0xd1>
  4023bc:	0f b6 d2             	movzbl %dl,%edx
  4023bf:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  4023c4:	48 8d 35 2d 23 00 00 	lea    0x232d(%rip),%rsi        # 4046f8 <trans_char+0xa8>
  4023cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d0:	e8 0b ee ff ff       	callq  4011e0 <sprintf@plt>
  4023d5:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  4023da:	88 45 00             	mov    %al,0x0(%rbp)
  4023dd:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  4023e2:	88 45 01             	mov    %al,0x1(%rbp)
  4023e5:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4023ea:	88 45 02             	mov    %al,0x2(%rbp)
  4023ed:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4023f1:	e9 6a ff ff ff       	jmpq   402360 <urlencode+0x2e>
  4023f6:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4023fa:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023fe:	e9 5d ff ff ff       	jmpq   402360 <urlencode+0x2e>
  402403:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402408:	48 83 c4 10          	add    $0x10,%rsp
  40240c:	5b                   	pop    %rbx
  40240d:	5d                   	pop    %rbp
  40240e:	41 5c                	pop    %r12
  402410:	c3                   	retq   

0000000000402411 <rio_writen>:
  402411:	41 55                	push   %r13
  402413:	41 54                	push   %r12
  402415:	55                   	push   %rbp
  402416:	53                   	push   %rbx
  402417:	48 83 ec 08          	sub    $0x8,%rsp
  40241b:	41 89 fc             	mov    %edi,%r12d
  40241e:	48 89 f5             	mov    %rsi,%rbp
  402421:	49 89 d5             	mov    %rdx,%r13
  402424:	48 89 d3             	mov    %rdx,%rbx
  402427:	eb 06                	jmp    40242f <rio_writen+0x1e>
  402429:	48 29 c3             	sub    %rax,%rbx
  40242c:	48 01 c5             	add    %rax,%rbp
  40242f:	48 85 db             	test   %rbx,%rbx
  402432:	74 24                	je     402458 <rio_writen+0x47>
  402434:	48 89 da             	mov    %rbx,%rdx
  402437:	48 89 ee             	mov    %rbp,%rsi
  40243a:	44 89 e7             	mov    %r12d,%edi
  40243d:	e8 4e ec ff ff       	callq  401090 <write@plt>
  402442:	48 85 c0             	test   %rax,%rax
  402445:	7f e2                	jg     402429 <rio_writen+0x18>
  402447:	e8 f4 eb ff ff       	callq  401040 <__errno_location@plt>
  40244c:	83 38 04             	cmpl   $0x4,(%rax)
  40244f:	75 15                	jne    402466 <rio_writen+0x55>
  402451:	b8 00 00 00 00       	mov    $0x0,%eax
  402456:	eb d1                	jmp    402429 <rio_writen+0x18>
  402458:	4c 89 e8             	mov    %r13,%rax
  40245b:	48 83 c4 08          	add    $0x8,%rsp
  40245f:	5b                   	pop    %rbx
  402460:	5d                   	pop    %rbp
  402461:	41 5c                	pop    %r12
  402463:	41 5d                	pop    %r13
  402465:	c3                   	retq   
  402466:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40246d:	eb ec                	jmp    40245b <rio_writen+0x4a>

000000000040246f <rio_read>:
  40246f:	41 55                	push   %r13
  402471:	41 54                	push   %r12
  402473:	55                   	push   %rbp
  402474:	53                   	push   %rbx
  402475:	48 83 ec 08          	sub    $0x8,%rsp
  402479:	48 89 fb             	mov    %rdi,%rbx
  40247c:	49 89 f5             	mov    %rsi,%r13
  40247f:	49 89 d4             	mov    %rdx,%r12
  402482:	eb 0a                	jmp    40248e <rio_read+0x1f>
  402484:	e8 b7 eb ff ff       	callq  401040 <__errno_location@plt>
  402489:	83 38 04             	cmpl   $0x4,(%rax)
  40248c:	75 5a                	jne    4024e8 <rio_read+0x79>
  40248e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402491:	85 ed                	test   %ebp,%ebp
  402493:	7f 22                	jg     4024b7 <rio_read+0x48>
  402495:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402499:	ba 00 20 00 00       	mov    $0x2000,%edx
  40249e:	48 89 ee             	mov    %rbp,%rsi
  4024a1:	8b 3b                	mov    (%rbx),%edi
  4024a3:	e8 48 ec ff ff       	callq  4010f0 <read@plt>
  4024a8:	89 43 04             	mov    %eax,0x4(%rbx)
  4024ab:	85 c0                	test   %eax,%eax
  4024ad:	78 d5                	js     402484 <rio_read+0x15>
  4024af:	74 40                	je     4024f1 <rio_read+0x82>
  4024b1:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4024b5:	eb d7                	jmp    40248e <rio_read+0x1f>
  4024b7:	89 e8                	mov    %ebp,%eax
  4024b9:	4c 39 e0             	cmp    %r12,%rax
  4024bc:	72 03                	jb     4024c1 <rio_read+0x52>
  4024be:	44 89 e5             	mov    %r12d,%ebp
  4024c1:	4c 63 e5             	movslq %ebp,%r12
  4024c4:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4024c8:	4c 89 e2             	mov    %r12,%rdx
  4024cb:	4c 89 ef             	mov    %r13,%rdi
  4024ce:	e8 6d ec ff ff       	callq  401140 <memcpy@plt>
  4024d3:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4024d7:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4024da:	4c 89 e0             	mov    %r12,%rax
  4024dd:	48 83 c4 08          	add    $0x8,%rsp
  4024e1:	5b                   	pop    %rbx
  4024e2:	5d                   	pop    %rbp
  4024e3:	41 5c                	pop    %r12
  4024e5:	41 5d                	pop    %r13
  4024e7:	c3                   	retq   
  4024e8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024ef:	eb ec                	jmp    4024dd <rio_read+0x6e>
  4024f1:	b8 00 00 00 00       	mov    $0x0,%eax
  4024f6:	eb e5                	jmp    4024dd <rio_read+0x6e>

00000000004024f8 <rio_readlineb>:
  4024f8:	41 55                	push   %r13
  4024fa:	41 54                	push   %r12
  4024fc:	55                   	push   %rbp
  4024fd:	53                   	push   %rbx
  4024fe:	48 83 ec 18          	sub    $0x18,%rsp
  402502:	49 89 fd             	mov    %rdi,%r13
  402505:	48 89 f5             	mov    %rsi,%rbp
  402508:	49 89 d4             	mov    %rdx,%r12
  40250b:	bb 01 00 00 00       	mov    $0x1,%ebx
  402510:	4c 39 e3             	cmp    %r12,%rbx
  402513:	73 44                	jae    402559 <rio_readlineb+0x61>
  402515:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  40251a:	ba 01 00 00 00       	mov    $0x1,%edx
  40251f:	4c 89 ef             	mov    %r13,%rdi
  402522:	e8 48 ff ff ff       	callq  40246f <rio_read>
  402527:	83 f8 01             	cmp    $0x1,%eax
  40252a:	75 19                	jne    402545 <rio_readlineb+0x4d>
  40252c:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402530:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  402535:	88 45 00             	mov    %al,0x0(%rbp)
  402538:	3c 0a                	cmp    $0xa,%al
  40253a:	74 1a                	je     402556 <rio_readlineb+0x5e>
  40253c:	48 83 c3 01          	add    $0x1,%rbx
  402540:	48 89 d5             	mov    %rdx,%rbp
  402543:	eb cb                	jmp    402510 <rio_readlineb+0x18>
  402545:	85 c0                	test   %eax,%eax
  402547:	75 22                	jne    40256b <rio_readlineb+0x73>
  402549:	48 83 fb 01          	cmp    $0x1,%rbx
  40254d:	75 0a                	jne    402559 <rio_readlineb+0x61>
  40254f:	b8 00 00 00 00       	mov    $0x0,%eax
  402554:	eb 0a                	jmp    402560 <rio_readlineb+0x68>
  402556:	48 89 d5             	mov    %rdx,%rbp
  402559:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  40255d:	48 89 d8             	mov    %rbx,%rax
  402560:	48 83 c4 18          	add    $0x18,%rsp
  402564:	5b                   	pop    %rbx
  402565:	5d                   	pop    %rbp
  402566:	41 5c                	pop    %r12
  402568:	41 5d                	pop    %r13
  40256a:	c3                   	retq   
  40256b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402572:	eb ec                	jmp    402560 <rio_readlineb+0x68>

0000000000402574 <submitr>:
  402574:	41 57                	push   %r15
  402576:	41 56                	push   %r14
  402578:	41 55                	push   %r13
  40257a:	41 54                	push   %r12
  40257c:	55                   	push   %rbp
  40257d:	53                   	push   %rbx
  40257e:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402585:	49 89 fd             	mov    %rdi,%r13
  402588:	89 74 24 14          	mov    %esi,0x14(%rsp)
  40258c:	49 89 d7             	mov    %rdx,%r15
  40258f:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  402594:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  402599:	4d 89 ce             	mov    %r9,%r14
  40259c:	48 8b ac 24 90 a0 00 	mov    0xa090(%rsp),%rbp
  4025a3:	00 
  4025a4:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  4025ab:	00 00 00 00 
  4025af:	ba 00 00 00 00       	mov    $0x0,%edx
  4025b4:	be 01 00 00 00       	mov    $0x1,%esi
  4025b9:	bf 02 00 00 00       	mov    $0x2,%edi
  4025be:	e8 5d ec ff ff       	callq  401220 <socket@plt>
  4025c3:	85 c0                	test   %eax,%eax
  4025c5:	0f 88 9a 02 00 00    	js     402865 <submitr+0x2f1>
  4025cb:	89 c3                	mov    %eax,%ebx
  4025cd:	4c 89 ef             	mov    %r13,%rdi
  4025d0:	e8 3b eb ff ff       	callq  401110 <gethostbyname@plt>
  4025d5:	48 85 c0             	test   %rax,%rax
  4025d8:	0f 84 d3 02 00 00    	je     4028b1 <submitr+0x33d>
  4025de:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  4025e5:	00 
  4025e6:	48 c7 84 24 42 a0 00 	movq   $0x0,0xa042(%rsp)
  4025ed:	00 00 00 00 00 
  4025f2:	c7 84 24 4a a0 00 00 	movl   $0x0,0xa04a(%rsp)
  4025f9:	00 00 00 00 
  4025fd:	66 c7 84 24 4e a0 00 	movw   $0x0,0xa04e(%rsp)
  402604:	00 00 00 
  402607:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  40260e:	00 02 00 
  402611:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402615:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402619:	48 8d bc 24 44 a0 00 	lea    0xa044(%rsp),%rdi
  402620:	00 
  402621:	48 8b 31             	mov    (%rcx),%rsi
  402624:	e8 67 eb ff ff       	callq  401190 <memmove@plt>
  402629:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  40262e:	66 c1 c0 08          	rol    $0x8,%ax
  402632:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402639:	00 
  40263a:	ba 10 00 00 00       	mov    $0x10,%edx
  40263f:	4c 89 e6             	mov    %r12,%rsi
  402642:	89 df                	mov    %ebx,%edi
  402644:	e8 b7 eb ff ff       	callq  401200 <connect@plt>
  402649:	85 c0                	test   %eax,%eax
  40264b:	0f 88 c8 02 00 00    	js     402919 <submitr+0x3a5>
  402651:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402658:	b8 00 00 00 00       	mov    $0x0,%eax
  40265d:	48 89 f1             	mov    %rsi,%rcx
  402660:	4c 89 f7             	mov    %r14,%rdi
  402663:	f2 ae                	repnz scas %es:(%rdi),%al
  402665:	48 89 ca             	mov    %rcx,%rdx
  402668:	48 f7 d2             	not    %rdx
  40266b:	48 89 f1             	mov    %rsi,%rcx
  40266e:	4c 89 ff             	mov    %r15,%rdi
  402671:	f2 ae                	repnz scas %es:(%rdi),%al
  402673:	48 f7 d1             	not    %rcx
  402676:	49 89 c8             	mov    %rcx,%r8
  402679:	48 89 f1             	mov    %rsi,%rcx
  40267c:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402681:	f2 ae                	repnz scas %es:(%rdi),%al
  402683:	48 f7 d1             	not    %rcx
  402686:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  40268b:	48 89 f1             	mov    %rsi,%rcx
  40268e:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402693:	f2 ae                	repnz scas %es:(%rdi),%al
  402695:	48 89 c8             	mov    %rcx,%rax
  402698:	48 f7 d0             	not    %rax
  40269b:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4026a0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4026a5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4026ac:	00 
  4026ad:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026b3:	0f 87 ba 02 00 00    	ja     402973 <submitr+0x3ff>
  4026b9:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  4026c0:	00 
  4026c1:	b9 00 04 00 00       	mov    $0x400,%ecx
  4026c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026cb:	48 89 f7             	mov    %rsi,%rdi
  4026ce:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4026d1:	4c 89 f7             	mov    %r14,%rdi
  4026d4:	e8 59 fc ff ff       	callq  402332 <urlencode>
  4026d9:	85 c0                	test   %eax,%eax
  4026db:	0f 88 05 03 00 00    	js     4029e6 <submitr+0x472>
  4026e1:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  4026e8:	00 
  4026e9:	4d 89 e9             	mov    %r13,%r9
  4026ec:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  4026f3:	00 
  4026f4:	4c 89 f9             	mov    %r15,%rcx
  4026f7:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4026fc:	48 8d 35 85 1f 00 00 	lea    0x1f85(%rip),%rsi        # 404688 <trans_char+0x38>
  402703:	4c 89 e7             	mov    %r12,%rdi
  402706:	b8 00 00 00 00       	mov    $0x0,%eax
  40270b:	e8 d0 ea ff ff       	callq  4011e0 <sprintf@plt>
  402710:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402717:	b8 00 00 00 00       	mov    $0x0,%eax
  40271c:	4c 89 e7             	mov    %r12,%rdi
  40271f:	f2 ae                	repnz scas %es:(%rdi),%al
  402721:	48 89 ca             	mov    %rcx,%rdx
  402724:	48 f7 d2             	not    %rdx
  402727:	48 8d 52 ff          	lea    -0x1(%rdx),%rdx
  40272b:	4c 89 e6             	mov    %r12,%rsi
  40272e:	89 df                	mov    %ebx,%edi
  402730:	e8 dc fc ff ff       	callq  402411 <rio_writen>
  402735:	48 85 c0             	test   %rax,%rax
  402738:	0f 88 33 03 00 00    	js     402a71 <submitr+0x4fd>
  40273e:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  402745:	00 
  402746:	89 de                	mov    %ebx,%esi
  402748:	4c 89 e7             	mov    %r12,%rdi
  40274b:	e8 a5 fb ff ff       	callq  4022f5 <rio_readinitb>
  402750:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402757:	00 
  402758:	ba 00 20 00 00       	mov    $0x2000,%edx
  40275d:	4c 89 e7             	mov    %r12,%rdi
  402760:	e8 93 fd ff ff       	callq  4024f8 <rio_readlineb>
  402765:	48 85 c0             	test   %rax,%rax
  402768:	0f 8e 72 03 00 00    	jle    402ae0 <submitr+0x56c>
  40276e:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  402775:	00 
  402776:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  40277d:	00 
  40277e:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  402785:	00 
  402786:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  40278b:	48 8d 35 6d 1f 00 00 	lea    0x1f6d(%rip),%rsi        # 4046ff <trans_char+0xaf>
  402792:	b8 00 00 00 00       	mov    $0x0,%eax
  402797:	e8 d4 e9 ff ff       	callq  401170 <__isoc99_sscanf@plt>
  40279c:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027a3:	00 
  4027a4:	b9 03 00 00 00       	mov    $0x3,%ecx
  4027a9:	48 8d 3d 66 1f 00 00 	lea    0x1f66(%rip),%rdi        # 404716 <trans_char+0xc6>
  4027b0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027b2:	0f 97 c0             	seta   %al
  4027b5:	1c 00                	sbb    $0x0,%al
  4027b7:	84 c0                	test   %al,%al
  4027b9:	0f 84 9f 03 00 00    	je     402b5e <submitr+0x5ea>
  4027bf:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027c6:	00 
  4027c7:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4027ce:	00 
  4027cf:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027d4:	e8 1f fd ff ff       	callq  4024f8 <rio_readlineb>
  4027d9:	48 85 c0             	test   %rax,%rax
  4027dc:	7f be                	jg     40279c <submitr+0x228>
  4027de:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027e5:	3a 20 43 
  4027e8:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  4027ef:	20 75 6e 
  4027f2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4027f6:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4027fa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402801:	74 6f 20 
  402804:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
  40280b:	68 65 61 
  40280e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402812:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402816:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40281d:	66 72 6f 
  402820:	48 ba 6d 20 74 68 65 	movabs $0x657220656874206d,%rdx
  402827:	20 72 65 
  40282a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40282e:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402832:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402839:	73 65 72 
  40283c:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402840:	c7 45 38 76 65 72 00 	movl   $0x726576,0x38(%rbp)
  402847:	89 df                	mov    %ebx,%edi
  402849:	e8 92 e8 ff ff       	callq  4010e0 <close@plt>
  40284e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402853:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  40285a:	5b                   	pop    %rbx
  40285b:	5d                   	pop    %rbp
  40285c:	41 5c                	pop    %r12
  40285e:	41 5d                	pop    %r13
  402860:	41 5e                	pop    %r14
  402862:	41 5f                	pop    %r15
  402864:	c3                   	retq   
  402865:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40286c:	3a 20 43 
  40286f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402876:	20 75 6e 
  402879:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40287d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402881:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402888:	74 6f 20 
  40288b:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402892:	65 20 73 
  402895:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402899:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  40289d:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4028a4:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4028aa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028af:	eb a2                	jmp    402853 <submitr+0x2df>
  4028b1:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4028b8:	3a 20 44 
  4028bb:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  4028c2:	20 75 6e 
  4028c5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028c9:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  4028cd:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028d4:	74 6f 20 
  4028d7:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  4028de:	76 65 20 
  4028e1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028e5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4028e9:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4028f0:	72 20 61 
  4028f3:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028f7:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4028fe:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402904:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402908:	89 df                	mov    %ebx,%edi
  40290a:	e8 d1 e7 ff ff       	callq  4010e0 <close@plt>
  40290f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402914:	e9 3a ff ff ff       	jmpq   402853 <submitr+0x2df>
  402919:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402920:	3a 20 55 
  402923:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  40292a:	20 74 6f 
  40292d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402931:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402935:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40293c:	65 63 74 
  40293f:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
  402946:	68 65 20 
  402949:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40294d:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402951:	c7 45 20 73 65 72 76 	movl   $0x76726573,0x20(%rbp)
  402958:	66 c7 45 24 65 72    	movw   $0x7265,0x24(%rbp)
  40295e:	c6 45 26 00          	movb   $0x0,0x26(%rbp)
  402962:	89 df                	mov    %ebx,%edi
  402964:	e8 77 e7 ff ff       	callq  4010e0 <close@plt>
  402969:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40296e:	e9 e0 fe ff ff       	jmpq   402853 <submitr+0x2df>
  402973:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40297a:	3a 20 52 
  40297d:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  402984:	20 73 74 
  402987:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40298b:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  40298f:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  402996:	74 6f 6f 
  402999:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
  4029a0:	65 2e 20 
  4029a3:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029a7:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  4029ab:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4029b2:	61 73 65 
  4029b5:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
  4029bc:	49 54 52 
  4029bf:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4029c3:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  4029c7:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4029ce:	55 46 00 
  4029d1:	48 89 45 30          	mov    %rax,0x30(%rbp)
  4029d5:	89 df                	mov    %ebx,%edi
  4029d7:	e8 04 e7 ff ff       	callq  4010e0 <close@plt>
  4029dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029e1:	e9 6d fe ff ff       	jmpq   402853 <submitr+0x2df>
  4029e6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4029ed:	3a 20 52 
  4029f0:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
  4029f7:	20 73 74 
  4029fa:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029fe:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a02:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402a09:	63 6f 6e 
  402a0c:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
  402a13:	20 61 6e 
  402a16:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a1a:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402a1e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402a25:	67 61 6c 
  402a28:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
  402a2f:	6e 70 72 
  402a32:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a36:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402a3a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402a41:	6c 65 20 
  402a44:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
  402a4b:	63 74 65 
  402a4e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402a52:	48 89 55 38          	mov    %rdx,0x38(%rbp)
  402a56:	66 c7 45 40 72 2e    	movw   $0x2e72,0x40(%rbp)
  402a5c:	c6 45 42 00          	movb   $0x0,0x42(%rbp)
  402a60:	89 df                	mov    %ebx,%edi
  402a62:	e8 79 e6 ff ff       	callq  4010e0 <close@plt>
  402a67:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a6c:	e9 e2 fd ff ff       	jmpq   402853 <submitr+0x2df>
  402a71:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a78:	3a 20 43 
  402a7b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402a82:	20 75 6e 
  402a85:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a89:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402a8d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a94:	74 6f 20 
  402a97:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
  402a9e:	20 74 6f 
  402aa1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aa5:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402aa9:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402ab0:	72 65 73 
  402ab3:	48 ba 75 6c 74 20 73 	movabs $0x7672657320746c75,%rdx
  402aba:	65 72 76 
  402abd:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402ac1:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402ac5:	66 c7 45 30 65 72    	movw   $0x7265,0x30(%rbp)
  402acb:	c6 45 32 00          	movb   $0x0,0x32(%rbp)
  402acf:	89 df                	mov    %ebx,%edi
  402ad1:	e8 0a e6 ff ff       	callq  4010e0 <close@plt>
  402ad6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402adb:	e9 73 fd ff ff       	jmpq   402853 <submitr+0x2df>
  402ae0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402ae7:	3a 20 43 
  402aea:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402af1:	20 75 6e 
  402af4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402af8:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402afc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b03:	74 6f 20 
  402b06:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
  402b0d:	66 69 72 
  402b10:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b14:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402b18:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402b1f:	61 64 65 
  402b22:	48 ba 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rdx
  402b29:	6d 20 72 
  402b2c:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b30:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402b34:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402b3b:	20 73 65 
  402b3e:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402b42:	c7 45 38 72 76 65 72 	movl   $0x72657672,0x38(%rbp)
  402b49:	c6 45 3c 00          	movb   $0x0,0x3c(%rbp)
  402b4d:	89 df                	mov    %ebx,%edi
  402b4f:	e8 8c e5 ff ff       	callq  4010e0 <close@plt>
  402b54:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b59:	e9 f5 fc ff ff       	jmpq   402853 <submitr+0x2df>
  402b5e:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402b65:	00 
  402b66:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402b6d:	00 
  402b6e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b73:	e8 80 f9 ff ff       	callq  4024f8 <rio_readlineb>
  402b78:	48 85 c0             	test   %rax,%rax
  402b7b:	0f 8e 97 00 00 00    	jle    402c18 <submitr+0x6a4>
  402b81:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  402b88:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402b8e:	0f 85 08 01 00 00    	jne    402c9c <submitr+0x728>
  402b94:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402b9b:	00 
  402b9c:	48 89 ef             	mov    %rbp,%rdi
  402b9f:	e8 cc e4 ff ff       	callq  401070 <strcpy@plt>
  402ba4:	89 df                	mov    %ebx,%edi
  402ba6:	e8 35 e5 ff ff       	callq  4010e0 <close@plt>
  402bab:	b9 04 00 00 00       	mov    $0x4,%ecx
  402bb0:	48 8d 3d 59 1b 00 00 	lea    0x1b59(%rip),%rdi        # 404710 <trans_char+0xc0>
  402bb7:	48 89 ee             	mov    %rbp,%rsi
  402bba:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402bbc:	0f 97 c0             	seta   %al
  402bbf:	1c 00                	sbb    $0x0,%al
  402bc1:	0f be c0             	movsbl %al,%eax
  402bc4:	85 c0                	test   %eax,%eax
  402bc6:	0f 84 87 fc ff ff    	je     402853 <submitr+0x2df>
  402bcc:	b9 05 00 00 00       	mov    $0x5,%ecx
  402bd1:	48 8d 3d 3c 1b 00 00 	lea    0x1b3c(%rip),%rdi        # 404714 <trans_char+0xc4>
  402bd8:	48 89 ee             	mov    %rbp,%rsi
  402bdb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402bdd:	0f 97 c0             	seta   %al
  402be0:	1c 00                	sbb    $0x0,%al
  402be2:	0f be c0             	movsbl %al,%eax
  402be5:	85 c0                	test   %eax,%eax
  402be7:	0f 84 66 fc ff ff    	je     402853 <submitr+0x2df>
  402bed:	b9 03 00 00 00       	mov    $0x3,%ecx
  402bf2:	48 8d 3d 20 1b 00 00 	lea    0x1b20(%rip),%rdi        # 404719 <trans_char+0xc9>
  402bf9:	48 89 ee             	mov    %rbp,%rsi
  402bfc:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402bfe:	0f 97 c0             	seta   %al
  402c01:	1c 00                	sbb    $0x0,%al
  402c03:	0f be c0             	movsbl %al,%eax
  402c06:	85 c0                	test   %eax,%eax
  402c08:	0f 84 45 fc ff ff    	je     402853 <submitr+0x2df>
  402c0e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c13:	e9 3b fc ff ff       	jmpq   402853 <submitr+0x2df>
  402c18:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c1f:	3a 20 43 
  402c22:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402c29:	20 75 6e 
  402c2c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402c30:	48 89 55 08          	mov    %rdx,0x8(%rbp)
  402c34:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c3b:	74 6f 20 
  402c3e:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
  402c45:	73 74 61 
  402c48:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c4c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
  402c50:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402c57:	65 73 73 
  402c5a:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
  402c61:	72 6f 6d 
  402c64:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c68:	48 89 55 28          	mov    %rdx,0x28(%rbp)
  402c6c:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402c73:	6c 74 20 
  402c76:	48 89 45 30          	mov    %rax,0x30(%rbp)
  402c7a:	c7 45 38 73 65 72 76 	movl   $0x76726573,0x38(%rbp)
  402c81:	66 c7 45 3c 65 72    	movw   $0x7265,0x3c(%rbp)
  402c87:	c6 45 3e 00          	movb   $0x0,0x3e(%rbp)
  402c8b:	89 df                	mov    %ebx,%edi
  402c8d:	e8 4e e4 ff ff       	callq  4010e0 <close@plt>
  402c92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c97:	e9 b7 fb ff ff       	jmpq   402853 <submitr+0x2df>
  402c9c:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402ca1:	48 8d 35 20 1a 00 00 	lea    0x1a20(%rip),%rsi        # 4046c8 <trans_char+0x78>
  402ca8:	48 89 ef             	mov    %rbp,%rdi
  402cab:	b8 00 00 00 00       	mov    $0x0,%eax
  402cb0:	e8 2b e5 ff ff       	callq  4011e0 <sprintf@plt>
  402cb5:	89 df                	mov    %ebx,%edi
  402cb7:	e8 24 e4 ff ff       	callq  4010e0 <close@plt>
  402cbc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cc1:	e9 8d fb ff ff       	jmpq   402853 <submitr+0x2df>

0000000000402cc6 <init_timeout>:
  402cc6:	85 ff                	test   %edi,%edi
  402cc8:	74 26                	je     402cf0 <init_timeout+0x2a>
  402cca:	53                   	push   %rbx
  402ccb:	89 fb                	mov    %edi,%ebx
  402ccd:	78 1a                	js     402ce9 <init_timeout+0x23>
  402ccf:	48 8d 35 31 f6 ff ff 	lea    -0x9cf(%rip),%rsi        # 402307 <sigalrm_handler>
  402cd6:	bf 0e 00 00 00       	mov    $0xe,%edi
  402cdb:	e8 20 e4 ff ff       	callq  401100 <signal@plt>
  402ce0:	89 df                	mov    %ebx,%edi
  402ce2:	e8 e9 e3 ff ff       	callq  4010d0 <alarm@plt>
  402ce7:	5b                   	pop    %rbx
  402ce8:	c3                   	retq   
  402ce9:	bb 00 00 00 00       	mov    $0x0,%ebx
  402cee:	eb df                	jmp    402ccf <init_timeout+0x9>
  402cf0:	c3                   	retq   

0000000000402cf1 <init_driver>:
  402cf1:	41 54                	push   %r12
  402cf3:	55                   	push   %rbp
  402cf4:	53                   	push   %rbx
  402cf5:	48 83 ec 10          	sub    $0x10,%rsp
  402cf9:	49 89 fc             	mov    %rdi,%r12
  402cfc:	be 01 00 00 00       	mov    $0x1,%esi
  402d01:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d06:	e8 f5 e3 ff ff       	callq  401100 <signal@plt>
  402d0b:	be 01 00 00 00       	mov    $0x1,%esi
  402d10:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d15:	e8 e6 e3 ff ff       	callq  401100 <signal@plt>
  402d1a:	be 01 00 00 00       	mov    $0x1,%esi
  402d1f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d24:	e8 d7 e3 ff ff       	callq  401100 <signal@plt>
  402d29:	ba 00 00 00 00       	mov    $0x0,%edx
  402d2e:	be 01 00 00 00       	mov    $0x1,%esi
  402d33:	bf 02 00 00 00       	mov    $0x2,%edi
  402d38:	e8 e3 e4 ff ff       	callq  401220 <socket@plt>
  402d3d:	85 c0                	test   %eax,%eax
  402d3f:	0f 88 8a 00 00 00    	js     402dcf <init_driver+0xde>
  402d45:	89 c3                	mov    %eax,%ebx
  402d47:	48 8d 3d ce 19 00 00 	lea    0x19ce(%rip),%rdi        # 40471c <trans_char+0xcc>
  402d4e:	e8 bd e3 ff ff       	callq  401110 <gethostbyname@plt>
  402d53:	48 85 c0             	test   %rax,%rax
  402d56:	0f 84 c6 00 00 00    	je     402e22 <init_driver+0x131>
  402d5c:	48 89 e5             	mov    %rsp,%rbp
  402d5f:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
  402d66:	00 00 
  402d68:	c7 45 0a 00 00 00 00 	movl   $0x0,0xa(%rbp)
  402d6f:	66 c7 45 0e 00 00    	movw   $0x0,0xe(%rbp)
  402d75:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d7b:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402d7f:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d83:	48 8d 7d 04          	lea    0x4(%rbp),%rdi
  402d87:	48 8b 31             	mov    (%rcx),%rsi
  402d8a:	e8 01 e4 ff ff       	callq  401190 <memmove@plt>
  402d8f:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402d96:	ba 10 00 00 00       	mov    $0x10,%edx
  402d9b:	48 89 ee             	mov    %rbp,%rsi
  402d9e:	89 df                	mov    %ebx,%edi
  402da0:	e8 5b e4 ff ff       	callq  401200 <connect@plt>
  402da5:	85 c0                	test   %eax,%eax
  402da7:	0f 88 e7 00 00 00    	js     402e94 <init_driver+0x1a3>
  402dad:	89 df                	mov    %ebx,%edi
  402daf:	e8 2c e3 ff ff       	callq  4010e0 <close@plt>
  402db4:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  402dbb:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  402dc1:	b8 00 00 00 00       	mov    $0x0,%eax
  402dc6:	48 83 c4 10          	add    $0x10,%rsp
  402dca:	5b                   	pop    %rbx
  402dcb:	5d                   	pop    %rbp
  402dcc:	41 5c                	pop    %r12
  402dce:	c3                   	retq   
  402dcf:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402dd6:	3a 20 43 
  402dd9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
  402de0:	20 75 6e 
  402de3:	49 89 04 24          	mov    %rax,(%r12)
  402de7:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402dec:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402df3:	74 6f 20 
  402df6:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
  402dfd:	65 20 73 
  402e00:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e05:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e0a:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402e11:	6b 65 
  402e13:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  402e1a:	00 
  402e1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e20:	eb a4                	jmp    402dc6 <init_driver+0xd5>
  402e22:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402e29:	3a 20 44 
  402e2c:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
  402e33:	20 75 6e 
  402e36:	49 89 04 24          	mov    %rax,(%r12)
  402e3a:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402e3f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e46:	74 6f 20 
  402e49:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
  402e50:	76 65 20 
  402e53:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402e58:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402e5d:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e64:	72 20 61 
  402e67:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  402e6c:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  402e73:	72 65 
  402e75:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402e7c:	73 
  402e7d:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  402e83:	89 df                	mov    %ebx,%edi
  402e85:	e8 56 e2 ff ff       	callq  4010e0 <close@plt>
  402e8a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e8f:	e9 32 ff ff ff       	jmpq   402dc6 <init_driver+0xd5>
  402e94:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402e9b:	3a 20 55 
  402e9e:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
  402ea5:	20 74 6f 
  402ea8:	49 89 04 24          	mov    %rax,(%r12)
  402eac:	49 89 54 24 08       	mov    %rdx,0x8(%r12)
  402eb1:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402eb8:	65 63 74 
  402ebb:	48 ba 20 74 6f 20 73 	movabs $0x76726573206f7420,%rdx
  402ec2:	65 72 76 
  402ec5:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402eca:	49 89 54 24 18       	mov    %rdx,0x18(%r12)
  402ecf:	66 41 c7 44 24 20 65 	movw   $0x7265,0x20(%r12)
  402ed6:	72 
  402ed7:	41 c6 44 24 22 00    	movb   $0x0,0x22(%r12)
  402edd:	89 df                	mov    %ebx,%edi
  402edf:	e8 fc e1 ff ff       	callq  4010e0 <close@plt>
  402ee4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ee9:	e9 d8 fe ff ff       	jmpq   402dc6 <init_driver+0xd5>

0000000000402eee <driver_post>:
  402eee:	53                   	push   %rbx
  402eef:	4c 89 cb             	mov    %r9,%rbx
  402ef2:	45 85 c0             	test   %r8d,%r8d
  402ef5:	75 18                	jne    402f0f <driver_post+0x21>
  402ef7:	48 85 ff             	test   %rdi,%rdi
  402efa:	74 05                	je     402f01 <driver_post+0x13>
  402efc:	80 3f 00             	cmpb   $0x0,(%rdi)
  402eff:	75 32                	jne    402f33 <driver_post+0x45>
  402f01:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f06:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f0a:	44 89 c0             	mov    %r8d,%eax
  402f0d:	5b                   	pop    %rbx
  402f0e:	c3                   	retq   
  402f0f:	48 89 ce             	mov    %rcx,%rsi
  402f12:	48 8d 3d 1b 18 00 00 	lea    0x181b(%rip),%rdi        # 404734 <trans_char+0xe4>
  402f19:	b8 00 00 00 00       	mov    $0x0,%eax
  402f1e:	e8 8d e1 ff ff       	callq  4010b0 <printf@plt>
  402f23:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f28:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f2c:	b8 00 00 00 00       	mov    $0x0,%eax
  402f31:	eb da                	jmp    402f0d <driver_post+0x1f>
  402f33:	48 83 ec 08          	sub    $0x8,%rsp
  402f37:	41 51                	push   %r9
  402f39:	49 89 c9             	mov    %rcx,%r9
  402f3c:	49 89 d0             	mov    %rdx,%r8
  402f3f:	48 89 f9             	mov    %rdi,%rcx
  402f42:	48 89 f2             	mov    %rsi,%rdx
  402f45:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402f4a:	48 8d 3d cb 17 00 00 	lea    0x17cb(%rip),%rdi        # 40471c <trans_char+0xcc>
  402f51:	e8 1e f6 ff ff       	callq  402574 <submitr>
  402f56:	48 83 c4 10          	add    $0x10,%rsp
  402f5a:	eb b1                	jmp    402f0d <driver_post+0x1f>

0000000000402f5c <check>:
  402f5c:	89 f8                	mov    %edi,%eax
  402f5e:	c1 e8 1c             	shr    $0x1c,%eax
  402f61:	74 1d                	je     402f80 <check+0x24>
  402f63:	b9 00 00 00 00       	mov    $0x0,%ecx
  402f68:	83 f9 1f             	cmp    $0x1f,%ecx
  402f6b:	7f 0d                	jg     402f7a <check+0x1e>
  402f6d:	89 f8                	mov    %edi,%eax
  402f6f:	d3 e8                	shr    %cl,%eax
  402f71:	3c 0a                	cmp    $0xa,%al
  402f73:	74 11                	je     402f86 <check+0x2a>
  402f75:	83 c1 08             	add    $0x8,%ecx
  402f78:	eb ee                	jmp    402f68 <check+0xc>
  402f7a:	b8 01 00 00 00       	mov    $0x1,%eax
  402f7f:	c3                   	retq   
  402f80:	b8 00 00 00 00       	mov    $0x0,%eax
  402f85:	c3                   	retq   
  402f86:	b8 00 00 00 00       	mov    $0x0,%eax
  402f8b:	c3                   	retq   

0000000000402f8c <gencookie>:
  402f8c:	53                   	push   %rbx
  402f8d:	83 c7 01             	add    $0x1,%edi
  402f90:	e8 bb e0 ff ff       	callq  401050 <srandom@plt>
  402f95:	e8 c6 e1 ff ff       	callq  401160 <random@plt>
  402f9a:	89 c3                	mov    %eax,%ebx
  402f9c:	89 c7                	mov    %eax,%edi
  402f9e:	e8 b9 ff ff ff       	callq  402f5c <check>
  402fa3:	85 c0                	test   %eax,%eax
  402fa5:	74 ee                	je     402f95 <gencookie+0x9>
  402fa7:	89 d8                	mov    %ebx,%eax
  402fa9:	5b                   	pop    %rbx
  402faa:	c3                   	retq   
  402fab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402fb0 <__libc_csu_init>:
  402fb0:	41 57                	push   %r15
  402fb2:	49 89 d7             	mov    %rdx,%r15
  402fb5:	41 56                	push   %r14
  402fb7:	49 89 f6             	mov    %rsi,%r14
  402fba:	41 55                	push   %r13
  402fbc:	41 89 fd             	mov    %edi,%r13d
  402fbf:	41 54                	push   %r12
  402fc1:	4c 8d 25 48 3e 00 00 	lea    0x3e48(%rip),%r12        # 406e10 <__frame_dummy_init_array_entry>
  402fc8:	55                   	push   %rbp
  402fc9:	48 8d 2d 48 3e 00 00 	lea    0x3e48(%rip),%rbp        # 406e18 <__init_array_end>
  402fd0:	53                   	push   %rbx
  402fd1:	4c 29 e5             	sub    %r12,%rbp
  402fd4:	48 83 ec 08          	sub    $0x8,%rsp
  402fd8:	e8 23 e0 ff ff       	callq  401000 <_init>
  402fdd:	48 c1 fd 03          	sar    $0x3,%rbp
  402fe1:	74 1b                	je     402ffe <__libc_csu_init+0x4e>
  402fe3:	31 db                	xor    %ebx,%ebx
  402fe5:	0f 1f 00             	nopl   (%rax)
  402fe8:	4c 89 fa             	mov    %r15,%rdx
  402feb:	4c 89 f6             	mov    %r14,%rsi
  402fee:	44 89 ef             	mov    %r13d,%edi
  402ff1:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402ff5:	48 83 c3 01          	add    $0x1,%rbx
  402ff9:	48 39 dd             	cmp    %rbx,%rbp
  402ffc:	75 ea                	jne    402fe8 <__libc_csu_init+0x38>
  402ffe:	48 83 c4 08          	add    $0x8,%rsp
  403002:	5b                   	pop    %rbx
  403003:	5d                   	pop    %rbp
  403004:	41 5c                	pop    %r12
  403006:	41 5d                	pop    %r13
  403008:	41 5e                	pop    %r14
  40300a:	41 5f                	pop    %r15
  40300c:	c3                   	retq   
  40300d:	0f 1f 00             	nopl   (%rax)

0000000000403010 <__libc_csu_fini>:
  403010:	c3                   	retq   

Disassembly of section .fini:

0000000000403014 <_fini>:
  403014:	48 83 ec 08          	sub    $0x8,%rsp
  403018:	48 83 c4 08          	add    $0x8,%rsp
  40301c:	c3                   	retq   
