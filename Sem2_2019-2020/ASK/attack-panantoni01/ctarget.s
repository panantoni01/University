
ctarget:     file format elf64-x86-64


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
