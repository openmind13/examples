
auth_overflow2:     file format elf64-x86-64


Disassembly of section .init:

00000000000005d0 <_init>:
 5d0:	48 83 ec 08          	sub    $0x8,%rsp
 5d4:	48 8b 05 0d 0a 20 00 	mov    0x200a0d(%rip),%rax        # 200fe8 <__gmon_start__>
 5db:	48 85 c0             	test   %rax,%rax
 5de:	74 02                	je     5e2 <_init+0x12>
 5e0:	ff d0                	callq  *%rax
 5e2:	48 83 c4 08          	add    $0x8,%rsp
 5e6:	c3                   	retq   

Disassembly of section .plt:

00000000000005f0 <.plt>:
 5f0:	ff 35 aa 09 20 00    	pushq  0x2009aa(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5f6:	ff 25 ac 09 20 00    	jmpq   *0x2009ac(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000600 <strcpy@plt>:
 600:	ff 25 aa 09 20 00    	jmpq   *0x2009aa(%rip)        # 200fb0 <strcpy@GLIBC_2.2.5>
 606:	68 00 00 00 00       	pushq  $0x0
 60b:	e9 e0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000610 <puts@plt>:
 610:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 200fb8 <puts@GLIBC_2.2.5>
 616:	68 01 00 00 00       	pushq  $0x1
 61b:	e9 d0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000620 <printf@plt>:
 620:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 200fc0 <printf@GLIBC_2.2.5>
 626:	68 02 00 00 00       	pushq  $0x2
 62b:	e9 c0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000630 <strcmp@plt>:
 630:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 200fc8 <strcmp@GLIBC_2.2.5>
 636:	68 03 00 00 00       	pushq  $0x3
 63b:	e9 b0 ff ff ff       	jmpq   5f0 <.plt>

0000000000000640 <exit@plt>:
 640:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 200fd0 <exit@GLIBC_2.2.5>
 646:	68 04 00 00 00       	pushq  $0x4
 64b:	e9 a0 ff ff ff       	jmpq   5f0 <.plt>

Disassembly of section .plt.got:

0000000000000650 <__cxa_finalize@plt>:
 650:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 656:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000660 <_start>:
 660:	31 ed                	xor    %ebp,%ebp
 662:	49 89 d1             	mov    %rdx,%r9
 665:	5e                   	pop    %rsi
 666:	48 89 e2             	mov    %rsp,%rdx
 669:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 66d:	50                   	push   %rax
 66e:	54                   	push   %rsp
 66f:	4c 8d 05 5a 02 00 00 	lea    0x25a(%rip),%r8        # 8d0 <__libc_csu_fini>
 676:	48 8d 0d e3 01 00 00 	lea    0x1e3(%rip),%rcx        # 860 <__libc_csu_init>
 67d:	48 8d 3d 4d 01 00 00 	lea    0x14d(%rip),%rdi        # 7d1 <main>
 684:	ff 15 56 09 20 00    	callq  *0x200956(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 68a:	f4                   	hlt    
 68b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000690 <deregister_tm_clones>:
 690:	48 8d 3d 79 09 20 00 	lea    0x200979(%rip),%rdi        # 201010 <__TMC_END__>
 697:	55                   	push   %rbp
 698:	48 8d 05 71 09 20 00 	lea    0x200971(%rip),%rax        # 201010 <__TMC_END__>
 69f:	48 39 f8             	cmp    %rdi,%rax
 6a2:	48 89 e5             	mov    %rsp,%rbp
 6a5:	74 19                	je     6c0 <deregister_tm_clones+0x30>
 6a7:	48 8b 05 2a 09 20 00 	mov    0x20092a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 6ae:	48 85 c0             	test   %rax,%rax
 6b1:	74 0d                	je     6c0 <deregister_tm_clones+0x30>
 6b3:	5d                   	pop    %rbp
 6b4:	ff e0                	jmpq   *%rax
 6b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6bd:	00 00 00 
 6c0:	5d                   	pop    %rbp
 6c1:	c3                   	retq   
 6c2:	0f 1f 40 00          	nopl   0x0(%rax)
 6c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6cd:	00 00 00 

00000000000006d0 <register_tm_clones>:
 6d0:	48 8d 3d 39 09 20 00 	lea    0x200939(%rip),%rdi        # 201010 <__TMC_END__>
 6d7:	48 8d 35 32 09 20 00 	lea    0x200932(%rip),%rsi        # 201010 <__TMC_END__>
 6de:	55                   	push   %rbp
 6df:	48 29 fe             	sub    %rdi,%rsi
 6e2:	48 89 e5             	mov    %rsp,%rbp
 6e5:	48 c1 fe 03          	sar    $0x3,%rsi
 6e9:	48 89 f0             	mov    %rsi,%rax
 6ec:	48 c1 e8 3f          	shr    $0x3f,%rax
 6f0:	48 01 c6             	add    %rax,%rsi
 6f3:	48 d1 fe             	sar    %rsi
 6f6:	74 18                	je     710 <register_tm_clones+0x40>
 6f8:	48 8b 05 f1 08 20 00 	mov    0x2008f1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 6ff:	48 85 c0             	test   %rax,%rax
 702:	74 0c                	je     710 <register_tm_clones+0x40>
 704:	5d                   	pop    %rbp
 705:	ff e0                	jmpq   *%rax
 707:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 70e:	00 00 
 710:	5d                   	pop    %rbp
 711:	c3                   	retq   
 712:	0f 1f 40 00          	nopl   0x0(%rax)
 716:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 71d:	00 00 00 

0000000000000720 <__do_global_dtors_aux>:
 720:	80 3d e9 08 20 00 00 	cmpb   $0x0,0x2008e9(%rip)        # 201010 <__TMC_END__>
 727:	75 2f                	jne    758 <__do_global_dtors_aux+0x38>
 729:	48 83 3d c7 08 20 00 	cmpq   $0x0,0x2008c7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 730:	00 
 731:	55                   	push   %rbp
 732:	48 89 e5             	mov    %rsp,%rbp
 735:	74 0c                	je     743 <__do_global_dtors_aux+0x23>
 737:	48 8b 3d ca 08 20 00 	mov    0x2008ca(%rip),%rdi        # 201008 <__dso_handle>
 73e:	e8 0d ff ff ff       	callq  650 <__cxa_finalize@plt>
 743:	e8 48 ff ff ff       	callq  690 <deregister_tm_clones>
 748:	c6 05 c1 08 20 00 01 	movb   $0x1,0x2008c1(%rip)        # 201010 <__TMC_END__>
 74f:	5d                   	pop    %rbp
 750:	c3                   	retq   
 751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 758:	f3 c3                	repz retq 
 75a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000760 <frame_dummy>:
 760:	55                   	push   %rbp
 761:	48 89 e5             	mov    %rsp,%rbp
 764:	5d                   	pop    %rbp
 765:	e9 66 ff ff ff       	jmpq   6d0 <register_tm_clones>

000000000000076a <check_authentication>:
 76a:	55                   	push   %rbp
 76b:	48 89 e5             	mov    %rsp,%rbp
 76e:	48 83 ec 30          	sub    $0x30,%rsp
 772:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
 776:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 77d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 781:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 785:	48 89 d6             	mov    %rdx,%rsi
 788:	48 89 c7             	mov    %rax,%rdi
 78b:	e8 70 fe ff ff       	callq  600 <strcpy@plt>
 790:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 794:	48 8d 35 4d 01 00 00 	lea    0x14d(%rip),%rsi        # 8e8 <_IO_stdin_used+0x8>
 79b:	48 89 c7             	mov    %rax,%rdi
 79e:	e8 8d fe ff ff       	callq  630 <strcmp@plt>
 7a3:	85 c0                	test   %eax,%eax
 7a5:	75 07                	jne    7ae <check_authentication+0x44>
 7a7:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 7ae:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 7b2:	48 8d 35 38 01 00 00 	lea    0x138(%rip),%rsi        # 8f1 <_IO_stdin_used+0x11>
 7b9:	48 89 c7             	mov    %rax,%rdi
 7bc:	e8 6f fe ff ff       	callq  630 <strcmp@plt>
 7c1:	85 c0                	test   %eax,%eax
 7c3:	75 07                	jne    7cc <check_authentication+0x62>
 7c5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
 7cc:	8b 45 fc             	mov    -0x4(%rbp),%eax
 7cf:	c9                   	leaveq 
 7d0:	c3                   	retq   

00000000000007d1 <main>:
 7d1:	55                   	push   %rbp
 7d2:	48 89 e5             	mov    %rsp,%rbp
 7d5:	48 83 ec 10          	sub    $0x10,%rsp
 7d9:	89 7d fc             	mov    %edi,-0x4(%rbp)
 7dc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
 7e0:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
 7e4:	7f 25                	jg     80b <main+0x3a>
 7e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 7ea:	48 8b 00             	mov    (%rax),%rax
 7ed:	48 89 c6             	mov    %rax,%rsi
 7f0:	48 8d 3d 03 01 00 00 	lea    0x103(%rip),%rdi        # 8fa <_IO_stdin_used+0x1a>
 7f7:	b8 00 00 00 00       	mov    $0x0,%eax
 7fc:	e8 1f fe ff ff       	callq  620 <printf@plt>
 801:	bf 00 00 00 00       	mov    $0x0,%edi
 806:	e8 35 fe ff ff       	callq  640 <exit@plt>
 80b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
 80f:	48 83 c0 08          	add    $0x8,%rax
 813:	48 8b 00             	mov    (%rax),%rax
 816:	48 89 c7             	mov    %rax,%rdi
 819:	e8 4c ff ff ff       	callq  76a <check_authentication>
 81e:	85 c0                	test   %eax,%eax
 820:	74 26                	je     848 <main+0x77>
 822:	48 8d 3d e7 00 00 00 	lea    0xe7(%rip),%rdi        # 910 <_IO_stdin_used+0x30>
 829:	e8 e2 fd ff ff       	callq  610 <puts@plt>
 82e:	48 8d 3d 03 01 00 00 	lea    0x103(%rip),%rdi        # 938 <_IO_stdin_used+0x58>
 835:	e8 d6 fd ff ff       	callq  610 <puts@plt>
 83a:	48 8d 3d 27 01 00 00 	lea    0x127(%rip),%rdi        # 968 <_IO_stdin_used+0x88>
 841:	e8 ca fd ff ff       	callq  610 <puts@plt>
 846:	eb 0c                	jmp    854 <main+0x83>
 848:	48 8d 3d 3d 01 00 00 	lea    0x13d(%rip),%rdi        # 98c <_IO_stdin_used+0xac>
 84f:	e8 bc fd ff ff       	callq  610 <puts@plt>
 854:	b8 00 00 00 00       	mov    $0x0,%eax
 859:	c9                   	leaveq 
 85a:	c3                   	retq   
 85b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000860 <__libc_csu_init>:
 860:	41 57                	push   %r15
 862:	41 56                	push   %r14
 864:	49 89 d7             	mov    %rdx,%r15
 867:	41 55                	push   %r13
 869:	41 54                	push   %r12
 86b:	4c 8d 25 26 05 20 00 	lea    0x200526(%rip),%r12        # 200d98 <__frame_dummy_init_array_entry>
 872:	55                   	push   %rbp
 873:	48 8d 2d 26 05 20 00 	lea    0x200526(%rip),%rbp        # 200da0 <__init_array_end>
 87a:	53                   	push   %rbx
 87b:	41 89 fd             	mov    %edi,%r13d
 87e:	49 89 f6             	mov    %rsi,%r14
 881:	4c 29 e5             	sub    %r12,%rbp
 884:	48 83 ec 08          	sub    $0x8,%rsp
 888:	48 c1 fd 03          	sar    $0x3,%rbp
 88c:	e8 3f fd ff ff       	callq  5d0 <_init>
 891:	48 85 ed             	test   %rbp,%rbp
 894:	74 20                	je     8b6 <__libc_csu_init+0x56>
 896:	31 db                	xor    %ebx,%ebx
 898:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 89f:	00 
 8a0:	4c 89 fa             	mov    %r15,%rdx
 8a3:	4c 89 f6             	mov    %r14,%rsi
 8a6:	44 89 ef             	mov    %r13d,%edi
 8a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 8ad:	48 83 c3 01          	add    $0x1,%rbx
 8b1:	48 39 dd             	cmp    %rbx,%rbp
 8b4:	75 ea                	jne    8a0 <__libc_csu_init+0x40>
 8b6:	48 83 c4 08          	add    $0x8,%rsp
 8ba:	5b                   	pop    %rbx
 8bb:	5d                   	pop    %rbp
 8bc:	41 5c                	pop    %r12
 8be:	41 5d                	pop    %r13
 8c0:	41 5e                	pop    %r14
 8c2:	41 5f                	pop    %r15
 8c4:	c3                   	retq   
 8c5:	90                   	nop
 8c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8cd:	00 00 00 

00000000000008d0 <__libc_csu_fini>:
 8d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000008d4 <_fini>:
 8d4:	48 83 ec 08          	sub    $0x8,%rsp
 8d8:	48 83 c4 08          	add    $0x8,%rsp
 8dc:	c3                   	retq   
