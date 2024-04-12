	.text
	.file	"pwd.c"
	.globl	get_oldpwd_attr                 # -- Begin function get_oldpwd_attr
	.p2align	4, 0x90
	.type	get_oldpwd_attr,@function
get_oldpwd_attr:                        # @get_oldpwd_attr
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/builtin/pwd.c"
	.loc	1 28 0                          # src/builtin/pwd.c:28:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp0:
	.loc	1 29 9 prologue_end             # src/builtin/pwd.c:29:9
	movq	-8(%rbp), %rax
	.loc	1 29 8 is_stmt 0                # src/builtin/pwd.c:29:8
	movq	(%rax), %rax
	.loc	1 29 7                          # src/builtin/pwd.c:29:7
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	1 29 6                          # src/builtin/pwd.c:29:6
	jne	.LBB0_4
# %bb.1:
.Ltmp2:
	.loc	1 31 21 is_stmt 1               # src/builtin/pwd.c:31:21
	movl	$7, %edi
	callq	malloc
	movq	%rax, %rcx
	.loc	1 31 5 is_stmt 0                # src/builtin/pwd.c:31:5
	movq	-8(%rbp), %rax
	.loc	1 31 4                          # src/builtin/pwd.c:31:4
	movq	(%rax), %rax
	.loc	1 31 19                         # src/builtin/pwd.c:31:19
	movq	%rcx, (%rax)
.Ltmp3:
	.loc	1 32 10 is_stmt 1               # src/builtin/pwd.c:32:10
	movq	-8(%rbp), %rax
	.loc	1 32 9 is_stmt 0                # src/builtin/pwd.c:32:9
	movq	(%rax), %rax
	.loc	1 32 8                          # src/builtin/pwd.c:32:8
	cmpq	$0, (%rax)
.Ltmp4:
	.loc	1 32 7                          # src/builtin/pwd.c:32:7
	jne	.LBB0_3
# %bb.2:
.Ltmp5:
	.loc	1 34 4 is_stmt 1                # src/builtin/pwd.c:34:4
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 35 4                          # src/builtin/pwd.c:35:4
	jmp	.LBB0_7
.Ltmp6:
.LBB0_3:
	.loc	1 37 16                         # src/builtin/pwd.c:37:16
	movq	-8(%rbp), %rax
	.loc	1 37 15 is_stmt 0               # src/builtin/pwd.c:37:15
	movq	(%rax), %rax
	.loc	1 37 25                         # src/builtin/pwd.c:37:25
	movq	(%rax), %rdi
	.loc	1 37 3                          # src/builtin/pwd.c:37:3
	movabsq	$.L.str.1, %rsi
	movl	$7, %edx
	callq	ft_strlcpy
.Ltmp7:
.LBB0_4:
	.loc	1 39 8 is_stmt 1                # src/builtin/pwd.c:39:8
	movq	-8(%rbp), %rax
	.loc	1 39 7 is_stmt 0                # src/builtin/pwd.c:39:7
	movq	(%rax), %rax
	.loc	1 39 6                          # src/builtin/pwd.c:39:6
	cmpq	$0, 8(%rax)
.Ltmp8:
	.loc	1 39 6                          # src/builtin/pwd.c:39:6
	je	.LBB0_6
# %bb.5:
.Ltmp9:
	.loc	1 40 10 is_stmt 1               # src/builtin/pwd.c:40:10
	movq	-8(%rbp), %rax
	.loc	1 40 9 is_stmt 0                # src/builtin/pwd.c:40:9
	movq	(%rax), %rax
	.loc	1 40 19                         # src/builtin/pwd.c:40:19
	movq	8(%rax), %rdi
	.loc	1 40 3                          # src/builtin/pwd.c:40:3
	callq	free
.Ltmp10:
.LBB0_6:
	.loc	1 41 23 is_stmt 1               # src/builtin/pwd.c:41:23
	movq	-16(%rbp), %rax
	.loc	1 41 22 is_stmt 0               # src/builtin/pwd.c:41:22
	movq	(%rax), %rax
	.loc	1 41 29                         # src/builtin/pwd.c:41:29
	movq	8(%rax), %rcx
	.loc	1 41 4                          # src/builtin/pwd.c:41:4
	movq	-8(%rbp), %rax
	.loc	1 41 3                          # src/builtin/pwd.c:41:3
	movq	(%rax), %rax
	.loc	1 41 19                         # src/builtin/pwd.c:41:19
	movq	%rcx, 8(%rax)
.LBB0_7:
	.loc	1 42 1 is_stmt 1                # src/builtin/pwd.c:42:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	get_oldpwd_attr, .Lfunc_end0-get_oldpwd_attr
	.cfi_endproc
                                        # -- End function
	.globl	get_oldpwd                      # -- Begin function get_oldpwd
	.p2align	4, 0x90
	.type	get_oldpwd,@function
get_oldpwd:                             # @get_oldpwd
.Lfunc_begin1:
	.loc	1 45 0                          # src/builtin/pwd.c:45:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp12:
	.loc	1 49 9 prologue_end             # src/builtin/pwd.c:49:9
	movq	$0, -32(%rbp)
	.loc	1 50 12                         # src/builtin/pwd.c:50:12
	movq	-16(%rbp), %rax
	.loc	1 50 11 is_stmt 0               # src/builtin/pwd.c:50:11
	movq	(%rax), %rax
	.loc	1 50 8                          # src/builtin/pwd.c:50:8
	movq	%rax, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 51 2 is_stmt 1                # src/builtin/pwd.c:51:2
	cmpq	$0, -40(%rbp)
	je	.LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp13:
	.loc	1 53 18                         # src/builtin/pwd.c:53:18
	movq	-40(%rbp), %rax
	.loc	1 53 25 is_stmt 0               # src/builtin/pwd.c:53:25
	movq	(%rax), %rdi
	.loc	1 53 7                          # src/builtin/pwd.c:53:7
	movabsq	$.L.str.1, %rsi
	movl	$6, %edx
	callq	ft_strncmp
	.loc	1 53 44                         # src/builtin/pwd.c:53:44
	cmpl	$0, %eax
.Ltmp14:
	.loc	1 53 7                          # src/builtin/pwd.c:53:7
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp15:
	.loc	1 54 13 is_stmt 1               # src/builtin/pwd.c:54:13
	movq	-40(%rbp), %rax
	.loc	1 54 11 is_stmt 0               # src/builtin/pwd.c:54:11
	movq	%rax, -32(%rbp)
.Ltmp16:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 55 11 is_stmt 1               # src/builtin/pwd.c:55:11
	movq	-40(%rbp), %rax
	.loc	1 55 18 is_stmt 0               # src/builtin/pwd.c:55:18
	movq	16(%rax), %rax
	.loc	1 55 9                          # src/builtin/pwd.c:55:9
	movq	%rax, -40(%rbp)
.Ltmp17:
	.loc	1 51 2 is_stmt 1                # src/builtin/pwd.c:51:2
	jmp	.LBB1_1
.LBB1_5:
.Ltmp18:
	.loc	1 57 7                          # src/builtin/pwd.c:57:7
	cmpq	$0, -32(%rbp)
.Ltmp19:
	.loc	1 57 6 is_stmt 0                # src/builtin/pwd.c:57:6
	jne	.LBB1_9
# %bb.6:
.Ltmp20:
	.loc	1 59 12 is_stmt 1               # src/builtin/pwd.c:59:12
	movl	$24, %edi
	callq	malloc
	.loc	1 59 10 is_stmt 0               # src/builtin/pwd.c:59:10
	movq	%rax, -32(%rbp)
.Ltmp21:
	.loc	1 60 8 is_stmt 1                # src/builtin/pwd.c:60:8
	cmpq	$0, -32(%rbp)
.Ltmp22:
	.loc	1 60 7 is_stmt 0                # src/builtin/pwd.c:60:7
	jne	.LBB1_8
# %bb.7:
.Ltmp23:
	.loc	1 61 12 is_stmt 1               # src/builtin/pwd.c:61:12
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 61 4 is_stmt 0                # src/builtin/pwd.c:61:4
	movq	$0, -8(%rbp)
	jmp	.LBB1_10
.Ltmp24:
.LBB1_8:
	.loc	1 62 3 is_stmt 1                # src/builtin/pwd.c:62:3
	leaq	-32(%rbp), %rdi
	callq	init_env_var_attr
.Ltmp25:
.LBB1_9:
	.loc	1 64 2                          # src/builtin/pwd.c:64:2
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	get_oldpwd_attr
	.loc	1 65 10                         # src/builtin/pwd.c:65:10
	movq	-32(%rbp), %rax
	.loc	1 65 2 is_stmt 0                # src/builtin/pwd.c:65:2
	movq	%rax, -8(%rbp)
.LBB1_10:
	.loc	1 66 1 is_stmt 1                # src/builtin/pwd.c:66:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end1:
	.size	get_oldpwd, .Lfunc_end1-get_oldpwd
	.cfi_endproc
                                        # -- End function
	.globl	get_env_pwd                     # -- Begin function get_env_pwd
	.p2align	4, 0x90
	.type	get_env_pwd,@function
get_env_pwd:                            # @get_env_pwd
.Lfunc_begin2:
	.loc	1 69 0                          # src/builtin/pwd.c:69:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp27:
	.loc	1 72 12 prologue_end            # src/builtin/pwd.c:72:12
	movq	-16(%rbp), %rax
	.loc	1 72 11 is_stmt 0               # src/builtin/pwd.c:72:11
	movq	(%rax), %rax
	.loc	1 72 8                          # src/builtin/pwd.c:72:8
	movq	%rax, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 73 9 is_stmt 1                # src/builtin/pwd.c:73:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	1 73 15 is_stmt 0               # src/builtin/pwd.c:73:15
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 73 18                         # src/builtin/pwd.c:73:18
	callq	__errno_location
	.loc	1 73 24                         # src/builtin/pwd.c:73:24
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 24                          # src/builtin/pwd.c:0:24
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 73 2                          # src/builtin/pwd.c:73:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_7
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp28:
	.loc	1 75 18 is_stmt 1               # src/builtin/pwd.c:75:18
	movq	-24(%rbp), %rax
	.loc	1 75 25 is_stmt 0               # src/builtin/pwd.c:75:25
	movq	(%rax), %rdi
	.loc	1 75 7                          # src/builtin/pwd.c:75:7
	movabsq	$.L.str.2, %rsi
	movl	$3, %edx
	callq	ft_strncmp
	.loc	1 75 41                         # src/builtin/pwd.c:75:41
	cmpl	$0, %eax
.Ltmp29:
	.loc	1 75 7                          # src/builtin/pwd.c:75:7
	jne	.LBB2_6
# %bb.5:
.Ltmp30:
	.loc	1 76 12 is_stmt 1               # src/builtin/pwd.c:76:12
	movq	-24(%rbp), %rax
	.loc	1 76 4 is_stmt 0                # src/builtin/pwd.c:76:4
	movq	%rax, -8(%rbp)
	jmp	.LBB2_8
.Ltmp31:
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 77 11 is_stmt 1               # src/builtin/pwd.c:77:11
	movq	-24(%rbp), %rax
	.loc	1 77 18 is_stmt 0               # src/builtin/pwd.c:77:18
	movq	16(%rax), %rax
	.loc	1 77 9                          # src/builtin/pwd.c:77:9
	movq	%rax, -24(%rbp)
.Ltmp32:
	.loc	1 73 2 is_stmt 1                # src/builtin/pwd.c:73:2
	jmp	.LBB2_1
.LBB2_7:
	.loc	1 79 2                          # src/builtin/pwd.c:79:2
	movq	$0, -8(%rbp)
.LBB2_8:
	.loc	1 80 1                          # src/builtin/pwd.c:80:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp33:
.Lfunc_end2:
	.size	get_env_pwd, .Lfunc_end2-get_env_pwd
	.cfi_endproc
                                        # -- End function
	.globl	pwd                             # -- Begin function pwd
	.p2align	4, 0x90
	.type	pwd,@function
pwd:                                    # @pwd
.Lfunc_begin3:
	.loc	1 83 0                          # src/builtin/pwd.c:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp34:
	.loc	1 90 5 prologue_end             # src/builtin/pwd.c:90:5
	movl	$1, -20(%rbp)
	.loc	1 91 8                          # src/builtin/pwd.c:91:8
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$4096, %esi                     # imm = 0x1000
	callq	getcwd
	.loc	1 91 6 is_stmt 0                # src/builtin/pwd.c:91:6
	movq	%rax, -32(%rbp)
	.loc	1 92 21 is_stmt 1               # src/builtin/pwd.c:92:21
	movq	-8(%rbp), %rdi
	.loc	1 92 32 is_stmt 0               # src/builtin/pwd.c:92:32
	addq	$56, %rdi
	.loc	1 92 8                          # src/builtin/pwd.c:92:8
	callq	get_env_pwd
	.loc	1 92 6                          # src/builtin/pwd.c:92:6
	movq	%rax, -40(%rbp)
.Ltmp35:
	.loc	1 93 6 is_stmt 1                # src/builtin/pwd.c:93:6
	cmpq	$0, -40(%rbp)
.Ltmp36:
	.loc	1 93 6 is_stmt 0                # src/builtin/pwd.c:93:6
	je	.LBB3_5
# %bb.1:
.Ltmp37:
	.loc	1 95 24 is_stmt 1               # src/builtin/pwd.c:95:24
	movq	-8(%rbp), %rdi
	.loc	1 95 35 is_stmt 0               # src/builtin/pwd.c:95:35
	addq	$56, %rdi
	.loc	1 95 40                         # src/builtin/pwd.c:95:40
	movq	-40(%rbp), %rsi
	.loc	1 95 12                         # src/builtin/pwd.c:95:12
	callq	get_oldpwd
	.loc	1 95 10                         # src/builtin/pwd.c:95:10
	movq	%rax, -48(%rbp)
.Ltmp38:
	.loc	1 96 18 is_stmt 1               # src/builtin/pwd.c:96:18
	movq	-40(%rbp), %rax
	.loc	1 96 23 is_stmt 0               # src/builtin/pwd.c:96:23
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 96 29                         # src/builtin/pwd.c:96:29
	movq	-48(%rbp), %rax
	.loc	1 96 37                         # src/builtin/pwd.c:96:37
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 96 53                         # src/builtin/pwd.c:96:53
	movq	-40(%rbp), %rax
	.loc	1 96 58                         # src/builtin/pwd.c:96:58
	movq	(%rax), %rdi
	.loc	1 96 43                         # src/builtin/pwd.c:96:43
	callq	ft_strlen
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 96 7                          # src/builtin/pwd.c:96:7
	callq	ft_strncmp
	.loc	1 96 65                         # src/builtin/pwd.c:96:65
	cmpl	$0, %eax
.Ltmp39:
	.loc	1 96 7                          # src/builtin/pwd.c:96:7
	jne	.LBB3_3
# %bb.2:
.Ltmp40:
	.loc	1 97 9 is_stmt 1                # src/builtin/pwd.c:97:9
	movq	-32(%rbp), %rdi
	.loc	1 97 4 is_stmt 0                # src/builtin/pwd.c:97:4
	callq	free
	jmp	.LBB3_4
.LBB3_3:
	.loc	1 99 17 is_stmt 1               # src/builtin/pwd.c:99:17
	movq	-32(%rbp), %rcx
	.loc	1 99 4 is_stmt 0                # src/builtin/pwd.c:99:4
	movq	-40(%rbp), %rax
	.loc	1 99 15                         # src/builtin/pwd.c:99:15
	movq	%rcx, 8(%rax)
.Ltmp41:
.LBB3_4:
	.loc	1 100 2 is_stmt 1               # src/builtin/pwd.c:100:2
	jmp	.LBB3_5
.Ltmp42:
.LBB3_5:
	.loc	1 101 6                         # src/builtin/pwd.c:101:6
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 101 16 is_stmt 0              # src/builtin/pwd.c:101:16
	je	.LBB3_8
# %bb.6:
	.loc	1 101 19                        # src/builtin/pwd.c:101:19
	movq	-16(%rbp), %rax
	.loc	1 101 24                        # src/builtin/pwd.c:101:24
	movq	40(%rax), %rax
	.loc	1 101 19                        # src/builtin/pwd.c:101:19
	cmpq	$0, 8(%rax)
.Ltmp43:
	.loc	1 101 6                         # src/builtin/pwd.c:101:6
	je	.LBB3_8
# %bb.7:
.Ltmp44:
	.loc	1 102 8 is_stmt 1               # src/builtin/pwd.c:102:8
	movq	-16(%rbp), %rax
	.loc	1 102 13 is_stmt 0              # src/builtin/pwd.c:102:13
	movq	40(%rax), %rax
	.loc	1 102 19                        # src/builtin/pwd.c:102:19
	movq	8(%rax), %rax
	.loc	1 102 8                         # src/builtin/pwd.c:102:8
	movl	4(%rax), %eax
	.loc	1 102 6                         # src/builtin/pwd.c:102:6
	movl	%eax, -20(%rbp)
.Ltmp45:
.LBB3_8:
	.loc	1 103 8 is_stmt 1               # src/builtin/pwd.c:103:8
	movl	-20(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	.loc	1 103 12 is_stmt 0              # src/builtin/pwd.c:103:12
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	.loc	1 103 27                        # src/builtin/pwd.c:103:27
	movq	-32(%rbp), %rdi
	.loc	1 103 17                        # src/builtin/pwd.c:103:17
	callq	ft_strlen
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 103 2                         # src/builtin/pwd.c:103:2
	callq	write
	.loc	1 104 8 is_stmt 1               # src/builtin/pwd.c:104:8
	movl	-20(%rbp), %edi
	.loc	1 104 2 is_stmt 0               # src/builtin/pwd.c:104:2
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	callq	write
	.loc	1 105 1 is_stmt 1               # src/builtin/pwd.c:105:1
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp46:
.Lfunc_end3:
	.size	pwd, .Lfunc_end3-pwd
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"OLDPWD"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"PWD"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/builtin/../../include/minishell.h"
	.file	3 "/usr/include" "dirent.h"
	.file	4 "/usr/include" "signal.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0xb95 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x5d:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x92:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xa0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xaf:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xc8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	413                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe5:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xfa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x108:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string181                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	2959                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x116:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string52                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	645                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x124:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	396                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x132:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x140:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	335                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x14f:0x5 DW_TAG_pointer_type
	.long	340                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x154:0xb DW_TAG_typedef
	.long	351                             # DW_AT_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x15f:0x2d DW_TAG_structure_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x167:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x173:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x17f:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x18c:0x5 DW_TAG_pointer_type
	.long	401                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x191:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x198:0x5 DW_TAG_pointer_type
	.long	351                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x19d:0x5 DW_TAG_pointer_type
	.long	335                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a2:0x5 DW_TAG_pointer_type
	.long	423                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a7:0xb DW_TAG_typedef
	.long	434                             # DW_AT_type
	.long	.Linfo_string180                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1b2:0xbe DW_TAG_structure_type
	.long	.Linfo_string179                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1bb:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	624                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c7:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1d3:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1df:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1eb:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x203:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	335                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x227:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	657                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x233:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	723                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x23f:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1495                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1609                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x257:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2448                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x263:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2797                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x270:0x5 DW_TAG_pointer_type
	.long	629                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x275:0xb DW_TAG_typedef
	.long	640                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x280:0x5 DW_TAG_structure_type
	.long	.Linfo_string18                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                              # Abbrev [11] 0x285:0x7 DW_TAG_base_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x28c:0x5 DW_TAG_pointer_type
	.long	396                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x291:0x5 DW_TAG_pointer_type
	.long	662                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x296:0xb DW_TAG_typedef
	.long	673                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2a1:0x2d DW_TAG_structure_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2a9:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b5:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c1:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	718                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2ce:0x5 DW_TAG_pointer_type
	.long	673                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2d3:0x5 DW_TAG_pointer_type
	.long	728                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2d8:0xb DW_TAG_typedef
	.long	739                             # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2e3:0x2d DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2eb:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	784                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2f7:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1490                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x303:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1490                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x310:0x5 DW_TAG_pointer_type
	.long	789                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x315:0xb DW_TAG_typedef
	.long	800                             # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x320:0x51 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x328:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x334:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x340:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x34c:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x358:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x364:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x371:0x5 DW_TAG_pointer_type
	.long	645                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x376:0x5 DW_TAG_pointer_type
	.long	891                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x37b:0xc9 DW_TAG_structure_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x383:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x38f:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x39b:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3a7:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b3:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3bf:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3cb:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1092                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d7:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1146                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e3:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1207                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ef:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1280                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3fb:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	657                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x407:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1358                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x413:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x41f:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	652                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x42b:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x437:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	886                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x444:0x5 DW_TAG_pointer_type
	.long	1097                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x449:0xb DW_TAG_typedef
	.long	1108                            # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x454:0x21 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x45c:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x468:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1141                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x475:0x5 DW_TAG_pointer_type
	.long	1108                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x47a:0x5 DW_TAG_pointer_type
	.long	1151                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x47f:0xb DW_TAG_typedef
	.long	1162                            # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x48a:0x2d DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x492:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49e:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4aa:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	881                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4b7:0x5 DW_TAG_pointer_type
	.long	1212                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4bc:0xb DW_TAG_typedef
	.long	1223                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4c7:0x39 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4cf:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4db:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e7:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1280                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f3:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1358                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x500:0x5 DW_TAG_pointer_type
	.long	1285                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x505:0xb DW_TAG_typedef
	.long	1296                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x510:0x39 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x518:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x524:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x530:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x53c:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x549:0x5 DW_TAG_pointer_type
	.long	1296                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x54e:0x5 DW_TAG_pointer_type
	.long	1363                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x553:0xb DW_TAG_typedef
	.long	1374                            # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x55e:0x39 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x566:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x572:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x57e:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58a:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1431                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x597:0x5 DW_TAG_pointer_type
	.long	1374                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x59c:0x5 DW_TAG_pointer_type
	.long	1441                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5a1:0xb DW_TAG_typedef
	.long	1452                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5ac:0x21 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b4:0xc DW_TAG_member
	.long	.Linfo_string5                  # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5c0:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1485                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5cd:0x5 DW_TAG_pointer_type
	.long	1452                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5d2:0x5 DW_TAG_pointer_type
	.long	739                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5d7:0x5 DW_TAG_pointer_type
	.long	1500                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5dc:0xb DW_TAG_typedef
	.long	1511                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5e7:0x5d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5ef:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5fb:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x607:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x613:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	396                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x61f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x62b:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1604                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x637:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	1604                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x644:0x5 DW_TAG_pointer_type
	.long	1511                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x649:0x56 DW_TAG_structure_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x651:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1629                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x65d:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x661:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1695                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x66d:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1718                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x67a:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2395                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x686:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x692:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2442                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x69f:0xb DW_TAG_typedef
	.long	1706                            # DW_AT_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6aa:0x5 DW_TAG_pointer_type
	.long	1711                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6af:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x6b0:0x5 DW_TAG_formal_parameter
	.long	645                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6b6:0x5 DW_TAG_pointer_type
	.long	1723                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6bb:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x6bc:0x5 DW_TAG_formal_parameter
	.long	645                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6c1:0x5 DW_TAG_formal_parameter
	.long	1740                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x6c6:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6cc:0x5 DW_TAG_pointer_type
	.long	1745                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6d1:0xb DW_TAG_typedef
	.long	1756                            # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x6dc:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6e0:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6ec:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6f8:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x704:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x710:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1820                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x71c:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x720:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	2267                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x72c:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1848                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x738:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x73c:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2286                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x748:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2297                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x755:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	1889                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x761:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x765:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x771:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x77d:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2315                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x78a:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	1942                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x796:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x79a:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2286                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7a6:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2297                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7b2:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2315                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7bf:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1995                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7cb:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7cf:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	2286                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7db:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2297                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7e7:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7f3:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2359                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ff:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2359                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x80c:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2072                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x818:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x81c:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x828:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2377                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x834:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2112                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x840:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x844:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2128                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x850:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x854:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x860:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x86d:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2384                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x87b:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2183                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x887:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x88b:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2370                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x897:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8a4:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2224                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8b0:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8b4:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8c0:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8cc:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2308                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x8db:0xc DW_TAG_array_type
	.long	645                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x8e0:0x6 DW_TAG_subrange_type
	.long	2279                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x8e7:0x7 DW_TAG_base_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x8ee:0xb DW_TAG_typedef
	.long	645                             # DW_AT_type
	.long	.Linfo_string92                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8f9:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x904:0x7 DW_TAG_base_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x90b:0xb DW_TAG_typedef
	.long	2326                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x916:0x21 DW_TAG_union_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x91e:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x92a:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x937:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x942:0x7 DW_TAG_base_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x949:0x7 DW_TAG_base_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x950:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x95b:0xb DW_TAG_typedef
	.long	2406                            # DW_AT_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x966:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x96a:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2423                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x977:0xc DW_TAG_array_type
	.long	2435                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x97c:0x6 DW_TAG_subrange_type
	.long	2279                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x983:0x7 DW_TAG_base_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x98a:0x5 DW_TAG_pointer_type
	.long	2447                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x98f:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x990:0x5 DW_TAG_pointer_type
	.long	2453                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x995:0xbd DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x99d:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2642                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9a9:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2653                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9b5:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2664                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9c1:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2675                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9cd:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2297                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9d9:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2686                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9e5:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	645                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9f1:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2642                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9fd:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2697                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa09:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2708                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa15:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2719                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa21:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2730                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa2d:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2730                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa39:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2730                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa45:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2785                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa52:0xb DW_TAG_typedef
	.long	2435                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa5d:0xb DW_TAG_typedef
	.long	2435                            # DW_AT_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa68:0xb DW_TAG_typedef
	.long	2435                            # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa73:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa7e:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa89:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa94:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa9f:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xaaa:0x21 DW_TAG_structure_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xab2:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2763                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xabe:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2774                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xacb:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xad6:0xb DW_TAG_typedef
	.long	2370                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xae1:0xc DW_TAG_array_type
	.long	2774                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xae6:0x6 DW_TAG_subrange_type
	.long	2279                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaed:0x5 DW_TAG_pointer_type
	.long	2802                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xaf2:0x69 DW_TAG_structure_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xafa:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2907                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb06:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2907                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb12:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2907                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb1e:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2907                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb2a:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2918                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb36:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2936                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb42:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2948                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb4e:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2948                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb5b:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb66:0xb DW_TAG_typedef
	.long	2929                            # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb71:0x7 DW_TAG_base_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xb78:0xc DW_TAG_array_type
	.long	2918                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb7d:0x6 DW_TAG_subrange_type
	.long	2279                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb84:0xb DW_TAG_typedef
	.long	2308                            # DW_AT_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xb8f:0x5 DW_TAG_pointer_type
	.long	2964                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xb94:0xb DW_TAG_typedef
	.long	891                             # DW_AT_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/pwd.c"             # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=56
.Linfo_string3:
	.asciz	"get_oldpwd_attr"               # string offset=90
.Linfo_string4:
	.asciz	"get_oldpwd"                    # string offset=106
.Linfo_string5:
	.asciz	"name"                          # string offset=117
.Linfo_string6:
	.asciz	"char"                          # string offset=122
.Linfo_string7:
	.asciz	"value"                         # string offset=127
.Linfo_string8:
	.asciz	"next"                          # string offset=133
.Linfo_string9:
	.asciz	"s_env"                         # string offset=138
.Linfo_string10:
	.asciz	"t_env"                         # string offset=144
.Linfo_string11:
	.asciz	"get_env_pwd"                   # string offset=150
.Linfo_string12:
	.asciz	"pwd"                           # string offset=162
.Linfo_string13:
	.asciz	"oldpwd"                        # string offset=166
.Linfo_string14:
	.asciz	"env"                           # string offset=173
.Linfo_string15:
	.asciz	"index"                         # string offset=177
.Linfo_string16:
	.asciz	"minishell"                     # string offset=183
.Linfo_string17:
	.asciz	"dir"                           # string offset=193
.Linfo_string18:
	.asciz	"__dirstream"                   # string offset=197
.Linfo_string19:
	.asciz	"DIR"                           # string offset=209
.Linfo_string20:
	.asciz	"state"                         # string offset=213
.Linfo_string21:
	.asciz	"int"                           # string offset=219
.Linfo_string22:
	.asciz	"input"                         # string offset=223
.Linfo_string23:
	.asciz	"path"                          # string offset=229
.Linfo_string24:
	.asciz	"prompt"                        # string offset=234
.Linfo_string25:
	.asciz	"operator_nbr"                  # string offset=241
.Linfo_string26:
	.asciz	"exit_status"                   # string offset=254
.Linfo_string27:
	.asciz	"env_array"                     # string offset=266
.Linfo_string28:
	.asciz	"local"                         # string offset=276
.Linfo_string29:
	.asciz	"s_var"                         # string offset=282
.Linfo_string30:
	.asciz	"t_var"                         # string offset=288
.Linfo_string31:
	.asciz	"syntax_tree"                   # string offset=294
.Linfo_string32:
	.asciz	"node"                          # string offset=306
.Linfo_string33:
	.asciz	"id"                            # string offset=311
.Linfo_string34:
	.asciz	"type"                          # string offset=314
.Linfo_string35:
	.asciz	"pipe_fd"                       # string offset=319
.Linfo_string36:
	.asciz	"left"                          # string offset=327
.Linfo_string37:
	.asciz	"pid"                           # string offset=332
.Linfo_string38:
	.asciz	"wstatus"                       # string offset=336
.Linfo_string39:
	.asciz	"arg"                           # string offset=344
.Linfo_string40:
	.asciz	"s_arg"                         # string offset=348
.Linfo_string41:
	.asciz	"t_arg"                         # string offset=354
.Linfo_string42:
	.asciz	"pipe"                          # string offset=360
.Linfo_string43:
	.asciz	"to_close"                      # string offset=365
.Linfo_string44:
	.asciz	"write"                         # string offset=374
.Linfo_string45:
	.asciz	"read"                          # string offset=380
.Linfo_string46:
	.asciz	"s_pipe"                        # string offset=385
.Linfo_string47:
	.asciz	"t_pipe"                        # string offset=392
.Linfo_string48:
	.asciz	"redir"                         # string offset=399
.Linfo_string49:
	.asciz	"in_fd"                         # string offset=405
.Linfo_string50:
	.asciz	"out_fd"                        # string offset=411
.Linfo_string51:
	.asciz	"infile"                        # string offset=418
.Linfo_string52:
	.asciz	"fd"                            # string offset=425
.Linfo_string53:
	.asciz	"s_infile"                      # string offset=428
.Linfo_string54:
	.asciz	"t_infile"                      # string offset=437
.Linfo_string55:
	.asciz	"outfile"                       # string offset=446
.Linfo_string56:
	.asciz	"s_outfile"                     # string offset=454
.Linfo_string57:
	.asciz	"t_outfile"                     # string offset=464
.Linfo_string58:
	.asciz	"s_redir"                       # string offset=474
.Linfo_string59:
	.asciz	"t_redir"                       # string offset=482
.Linfo_string60:
	.asciz	"assign"                        # string offset=490
.Linfo_string61:
	.asciz	"expansion"                     # string offset=497
.Linfo_string62:
	.asciz	"s_expan"                       # string offset=507
.Linfo_string63:
	.asciz	"t_expan"                       # string offset=515
.Linfo_string64:
	.asciz	"arg_array"                     # string offset=523
.Linfo_string65:
	.asciz	"prev"                          # string offset=533
.Linfo_string66:
	.asciz	"s_cmd"                         # string offset=538
.Linfo_string67:
	.asciz	"right"                         # string offset=544
.Linfo_string68:
	.asciz	"s_ast_node"                    # string offset=550
.Linfo_string69:
	.asciz	"t_ast_node"                    # string offset=561
.Linfo_string70:
	.asciz	"s_ast"                         # string offset=572
.Linfo_string71:
	.asciz	"t_ast"                         # string offset=578
.Linfo_string72:
	.asciz	"token_stream"                  # string offset=584
.Linfo_string73:
	.asciz	"quote_nbr"                     # string offset=597
.Linfo_string74:
	.asciz	"length"                        # string offset=607
.Linfo_string75:
	.asciz	"lexeme"                        # string offset=614
.Linfo_string76:
	.asciz	"s_token"                       # string offset=621
.Linfo_string77:
	.asciz	"t_token"                       # string offset=629
.Linfo_string78:
	.asciz	"sighandler"                    # string offset=637
.Linfo_string79:
	.asciz	"__sigaction_handler"           # string offset=648
.Linfo_string80:
	.asciz	"sa_handler"                    # string offset=668
.Linfo_string81:
	.asciz	"__sighandler_t"                # string offset=679
.Linfo_string82:
	.asciz	"sa_sigaction"                  # string offset=694
.Linfo_string83:
	.asciz	"si_signo"                      # string offset=707
.Linfo_string84:
	.asciz	"si_errno"                      # string offset=716
.Linfo_string85:
	.asciz	"si_code"                       # string offset=725
.Linfo_string86:
	.asciz	"__pad0"                        # string offset=733
.Linfo_string87:
	.asciz	"_sifields"                     # string offset=740
.Linfo_string88:
	.asciz	"_pad"                          # string offset=750
.Linfo_string89:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=755
.Linfo_string90:
	.asciz	"_kill"                         # string offset=775
.Linfo_string91:
	.asciz	"si_pid"                        # string offset=781
.Linfo_string92:
	.asciz	"__pid_t"                       # string offset=788
.Linfo_string93:
	.asciz	"si_uid"                        # string offset=796
.Linfo_string94:
	.asciz	"unsigned int"                  # string offset=803
.Linfo_string95:
	.asciz	"__uid_t"                       # string offset=816
.Linfo_string96:
	.asciz	"_timer"                        # string offset=824
.Linfo_string97:
	.asciz	"si_tid"                        # string offset=831
.Linfo_string98:
	.asciz	"si_overrun"                    # string offset=838
.Linfo_string99:
	.asciz	"si_sigval"                     # string offset=849
.Linfo_string100:
	.asciz	"sival_int"                     # string offset=859
.Linfo_string101:
	.asciz	"sival_ptr"                     # string offset=869
.Linfo_string102:
	.asciz	"sigval"                        # string offset=879
.Linfo_string103:
	.asciz	"__sigval_t"                    # string offset=886
.Linfo_string104:
	.asciz	"_rt"                           # string offset=897
.Linfo_string105:
	.asciz	"_sigchld"                      # string offset=901
.Linfo_string106:
	.asciz	"si_status"                     # string offset=910
.Linfo_string107:
	.asciz	"si_utime"                      # string offset=920
.Linfo_string108:
	.asciz	"long int"                      # string offset=929
.Linfo_string109:
	.asciz	"__clock_t"                     # string offset=938
.Linfo_string110:
	.asciz	"si_stime"                      # string offset=948
.Linfo_string111:
	.asciz	"_sigfault"                     # string offset=957
.Linfo_string112:
	.asciz	"si_addr"                       # string offset=967
.Linfo_string113:
	.asciz	"si_addr_lsb"                   # string offset=975
.Linfo_string114:
	.asciz	"short"                         # string offset=987
.Linfo_string115:
	.asciz	"_bounds"                       # string offset=993
.Linfo_string116:
	.asciz	"_addr_bnd"                     # string offset=1001
.Linfo_string117:
	.asciz	"_lower"                        # string offset=1011
.Linfo_string118:
	.asciz	"_upper"                        # string offset=1018
.Linfo_string119:
	.asciz	"_pkey"                         # string offset=1025
.Linfo_string120:
	.asciz	"__uint32_t"                    # string offset=1031
.Linfo_string121:
	.asciz	"_sigpoll"                      # string offset=1042
.Linfo_string122:
	.asciz	"si_band"                       # string offset=1051
.Linfo_string123:
	.asciz	"si_fd"                         # string offset=1059
.Linfo_string124:
	.asciz	"_sigsys"                       # string offset=1065
.Linfo_string125:
	.asciz	"_call_addr"                    # string offset=1073
.Linfo_string126:
	.asciz	"_syscall"                      # string offset=1084
.Linfo_string127:
	.asciz	"_arch"                         # string offset=1093
.Linfo_string128:
	.asciz	"siginfo_t"                     # string offset=1099
.Linfo_string129:
	.asciz	"sa_mask"                       # string offset=1109
.Linfo_string130:
	.asciz	"__val"                         # string offset=1117
.Linfo_string131:
	.asciz	"long unsigned int"             # string offset=1123
.Linfo_string132:
	.asciz	"__sigset_t"                    # string offset=1141
.Linfo_string133:
	.asciz	"sa_flags"                      # string offset=1152
.Linfo_string134:
	.asciz	"sa_restorer"                   # string offset=1161
.Linfo_string135:
	.asciz	"sigaction"                     # string offset=1173
.Linfo_string136:
	.asciz	"statbuf"                       # string offset=1183
.Linfo_string137:
	.asciz	"st_dev"                        # string offset=1191
.Linfo_string138:
	.asciz	"__dev_t"                       # string offset=1198
.Linfo_string139:
	.asciz	"st_ino"                        # string offset=1206
.Linfo_string140:
	.asciz	"__ino_t"                       # string offset=1213
.Linfo_string141:
	.asciz	"st_nlink"                      # string offset=1221
.Linfo_string142:
	.asciz	"__nlink_t"                     # string offset=1230
.Linfo_string143:
	.asciz	"st_mode"                       # string offset=1240
.Linfo_string144:
	.asciz	"__mode_t"                      # string offset=1248
.Linfo_string145:
	.asciz	"st_uid"                        # string offset=1257
.Linfo_string146:
	.asciz	"st_gid"                        # string offset=1264
.Linfo_string147:
	.asciz	"__gid_t"                       # string offset=1271
.Linfo_string148:
	.asciz	"st_rdev"                       # string offset=1279
.Linfo_string149:
	.asciz	"st_size"                       # string offset=1287
.Linfo_string150:
	.asciz	"__off_t"                       # string offset=1295
.Linfo_string151:
	.asciz	"st_blksize"                    # string offset=1303
.Linfo_string152:
	.asciz	"__blksize_t"                   # string offset=1314
.Linfo_string153:
	.asciz	"st_blocks"                     # string offset=1326
.Linfo_string154:
	.asciz	"__blkcnt_t"                    # string offset=1336
.Linfo_string155:
	.asciz	"st_atim"                       # string offset=1347
.Linfo_string156:
	.asciz	"tv_sec"                        # string offset=1355
.Linfo_string157:
	.asciz	"__time_t"                      # string offset=1362
.Linfo_string158:
	.asciz	"tv_nsec"                       # string offset=1371
.Linfo_string159:
	.asciz	"__syscall_slong_t"             # string offset=1379
.Linfo_string160:
	.asciz	"timespec"                      # string offset=1397
.Linfo_string161:
	.asciz	"st_mtim"                       # string offset=1406
.Linfo_string162:
	.asciz	"st_ctim"                       # string offset=1414
.Linfo_string163:
	.asciz	"__glibc_reserved"              # string offset=1422
.Linfo_string164:
	.asciz	"stat"                          # string offset=1439
.Linfo_string165:
	.asciz	"term"                          # string offset=1444
.Linfo_string166:
	.asciz	"c_iflag"                       # string offset=1449
.Linfo_string167:
	.asciz	"tcflag_t"                      # string offset=1457
.Linfo_string168:
	.asciz	"c_oflag"                       # string offset=1466
.Linfo_string169:
	.asciz	"c_cflag"                       # string offset=1474
.Linfo_string170:
	.asciz	"c_lflag"                       # string offset=1482
.Linfo_string171:
	.asciz	"c_line"                        # string offset=1490
.Linfo_string172:
	.asciz	"unsigned char"                 # string offset=1497
.Linfo_string173:
	.asciz	"cc_t"                          # string offset=1511
.Linfo_string174:
	.asciz	"c_cc"                          # string offset=1516
.Linfo_string175:
	.asciz	"c_ispeed"                      # string offset=1521
.Linfo_string176:
	.asciz	"speed_t"                       # string offset=1530
.Linfo_string177:
	.asciz	"c_ospeed"                      # string offset=1538
.Linfo_string178:
	.asciz	"termios"                       # string offset=1547
.Linfo_string179:
	.asciz	"s_minishell"                   # string offset=1555
.Linfo_string180:
	.asciz	"t_minishell"                   # string offset=1567
.Linfo_string181:
	.asciz	"cmd"                           # string offset=1579
.Linfo_string182:
	.asciz	"t_cmd"                         # string offset=1583
.Linfo_string183:
	.asciz	"cwd"                           # string offset=1589
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_oldpwd_attr
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym ft_strlcpy
	.addrsig_sym free
	.addrsig_sym get_oldpwd
	.addrsig_sym ft_strncmp
	.addrsig_sym init_env_var_attr
	.addrsig_sym get_env_pwd
	.addrsig_sym __errno_location
	.addrsig_sym getcwd
	.addrsig_sym ft_strlen
	.addrsig_sym write
	.section	.debug_line,"",@progbits
.Lline_table_start0:
