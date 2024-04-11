	.text
	.file	"echo.c"
	.globl	start_n                         # -- Begin function start_n
	.p2align	4, 0x90
	.type	start_n,@function
start_n:                                # @start_n
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/builtin/echo.c"
	.loc	1 54 0                          # src/builtin/echo.c:54:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	1 57 4 prologue_end             # src/builtin/echo.c:57:4
	movq	$2, -24(%rbp)
.Ltmp1:
	.loc	1 58 17                         # src/builtin/echo.c:58:17
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 58 28 is_stmt 0               # src/builtin/echo.c:58:28
	movabsq	$.L.str, %rdi
	callq	ft_strlen
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 58 6                          # src/builtin/echo.c:58:6
	movabsq	$.L.str, %rsi
	callq	ft_strncmp
	.loc	1 58 45                         # src/builtin/echo.c:58:45
	cmpl	$0, %eax
.Ltmp2:
	.loc	1 58 6                          # src/builtin/echo.c:58:6
	je	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	1 59 3 is_stmt 1                # src/builtin/echo.c:59:3
	movb	$0, -1(%rbp)
	jmp	.LBB0_8
.Ltmp4:
.LBB0_2:
	.loc	1 60 2                          # src/builtin/echo.c:60:2
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 60 9 is_stmt 0                # src/builtin/echo.c:60:9
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 60 20                         # src/builtin/echo.c:60:20
	movq	-16(%rbp), %rdi
	.loc	1 60 13                         # src/builtin/echo.c:60:13
	callq	strlen
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	.loc	1 60 11                         # src/builtin/echo.c:60:11
	cmpq	%rcx, %rax
	.loc	1 60 2                          # src/builtin/echo.c:60:2
	jae	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp5:
	.loc	1 62 7 is_stmt 1                # src/builtin/echo.c:62:7
	movq	-16(%rbp), %rax
	.loc	1 62 11 is_stmt 0               # src/builtin/echo.c:62:11
	movq	-24(%rbp), %rcx
	.loc	1 62 7                          # src/builtin/echo.c:62:7
	movsbl	(%rax,%rcx), %eax
	.loc	1 62 14                         # src/builtin/echo.c:62:14
	cmpl	$110, %eax
.Ltmp6:
	.loc	1 62 7                          # src/builtin/echo.c:62:7
	je	.LBB0_6
# %bb.5:
.Ltmp7:
	.loc	1 63 4 is_stmt 1                # src/builtin/echo.c:63:4
	movb	$0, -1(%rbp)
	jmp	.LBB0_8
.Ltmp8:
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	.loc	1 64 4                          # src/builtin/echo.c:64:4
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.Ltmp9:
	.loc	1 60 2                          # src/builtin/echo.c:60:2
	jmp	.LBB0_3
.LBB0_7:
	.loc	1 66 2                          # src/builtin/echo.c:66:2
	movb	$1, -1(%rbp)
.LBB0_8:
	.loc	1 67 1                          # src/builtin/echo.c:67:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end0:
	.size	start_n, .Lfunc_end0-start_n
	.cfi_endproc
                                        # -- End function
	.globl	handle_option_n                 # -- Begin function handle_option_n
	.p2align	4, 0x90
	.type	handle_option_n,@function
handle_option_n:                        # @handle_option_n
.Lfunc_begin1:
	.loc	1 70 0                          # src/builtin/echo.c:70:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp11:
	.loc	1 71 9 prologue_end             # src/builtin/echo.c:71:9
	movq	-8(%rbp), %rax
	.loc	1 71 14 is_stmt 0               # src/builtin/echo.c:71:14
	movq	88(%rax), %rcx
	.loc	1 71 25                         # src/builtin/echo.c:71:25
	movq	-16(%rbp), %rax
	.loc	1 71 9                          # src/builtin/echo.c:71:9
	movslq	(%rax), %rdx
	.loc	1 71 28                         # src/builtin/echo.c:71:28
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	1 71 36                         # src/builtin/echo.c:71:36
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 71 47                         # src/builtin/echo.c:71:47
	movq	-8(%rbp), %rax
	.loc	1 71 52                         # src/builtin/echo.c:71:52
	movq	88(%rax), %rax
	.loc	1 71 63                         # src/builtin/echo.c:71:63
	movq	-16(%rbp), %rcx
	.loc	1 71 47                         # src/builtin/echo.c:71:47
	movslq	(%rcx), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 71 39                         # src/builtin/echo.c:71:39
	callq	start_n
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 0 39                          # src/builtin/echo.c:0:39
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	1 71 2                          # src/builtin/echo.c:71:2
	testb	$1, %al
	jne	.LBB1_4
	jmp	.LBB1_5
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp12:
	.loc	1 73 4 is_stmt 1                # src/builtin/echo.c:73:4
	movq	-24(%rbp), %rax
	.loc	1 73 13 is_stmt 0               # src/builtin/echo.c:73:13
	movl	$0, (%rax)
	.loc	1 74 5 is_stmt 1                # src/builtin/echo.c:74:5
	movq	-16(%rbp), %rax
	.loc	1 74 7 is_stmt 0                # src/builtin/echo.c:74:7
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.Ltmp13:
	.loc	1 71 2 is_stmt 1                # src/builtin/echo.c:71:2
	jmp	.LBB1_1
.LBB1_5:
	.loc	1 76 1                          # src/builtin/echo.c:76:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.Lfunc_end1:
	.size	handle_option_n, .Lfunc_end1-handle_option_n
	.cfi_endproc
                                        # -- End function
	.globl	echo_home                       # -- Begin function echo_home
	.p2align	4, 0x90
	.type	echo_home,@function
echo_home:                              # @echo_home
.Lfunc_begin2:
	.loc	1 79 0                          # src/builtin/echo.c:79:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp15:
	.loc	1 82 13 prologue_end            # src/builtin/echo.c:82:13
	movabsq	$.L.str.1, %rdi
	callq	getenv
	.loc	1 82 11 is_stmt 0               # src/builtin/echo.c:82:11
	movq	%rax, -24(%rbp)
.Ltmp16:
	.loc	1 83 15 is_stmt 1               # src/builtin/echo.c:83:15
	cmpq	$0, -24(%rbp)
.Ltmp17:
	.loc	1 83 6 is_stmt 0                # src/builtin/echo.c:83:6
	je	.LBB2_2
# %bb.1:
.Ltmp18:
	.loc	1 85 9 is_stmt 1                # src/builtin/echo.c:85:9
	movl	-12(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	.loc	1 85 13 is_stmt 0               # src/builtin/echo.c:85:13
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 85 33                         # src/builtin/echo.c:85:33
	movq	-24(%rbp), %rdi
	.loc	1 85 23                         # src/builtin/echo.c:85:23
	callq	ft_strlen
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 85 3                          # src/builtin/echo.c:85:3
	callq	write
	.loc	1 86 9 is_stmt 1                # src/builtin/echo.c:86:9
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	.loc	1 86 13 is_stmt 0               # src/builtin/echo.c:86:13
	movq	-8(%rbp), %rax
	.loc	1 86 17                         # src/builtin/echo.c:86:17
	addq	$1, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 86 32                         # src/builtin/echo.c:86:32
	movq	-8(%rbp), %rdi
	.loc	1 86 36                         # src/builtin/echo.c:86:36
	addq	$1, %rdi
	.loc	1 86 22                         # src/builtin/echo.c:86:22
	callq	ft_strlen
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 86 3                          # src/builtin/echo.c:86:3
	callq	write
.Ltmp19:
.LBB2_2:
	.loc	1 88 1 is_stmt 1                # src/builtin/echo.c:88:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp20:
.Lfunc_end2:
	.size	echo_home, .Lfunc_end2-echo_home
	.cfi_endproc
                                        # -- End function
	.globl	handle_special_arguments        # -- Begin function handle_special_arguments
	.p2align	4, 0x90
	.type	handle_special_arguments,@function
handle_special_arguments:               # @handle_special_arguments
.Lfunc_begin3:
	.loc	1 91 0                          # src/builtin/echo.c:91:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
.Ltmp21:
	.loc	1 95 12 prologue_end            # src/builtin/echo.c:95:12
	movq	$0, -40(%rbp)
.Ltmp22:
	.loc	1 96 16                         # src/builtin/echo.c:96:16
	movq	-16(%rbp), %rdi
	.loc	1 96 6 is_stmt 0                # src/builtin/echo.c:96:6
	movabsq	$.L.str.2, %rsi
	callq	ft_strcmp
	.loc	1 96 27                         # src/builtin/echo.c:96:27
	cmpl	$0, %eax
.Ltmp23:
	.loc	1 96 6                          # src/builtin/echo.c:96:6
	jne	.LBB3_2
# %bb.1:
.Ltmp24:
	.loc	1 98 25 is_stmt 1               # src/builtin/echo.c:98:25
	movq	-8(%rbp), %rax
	movzbl	44(%rax), %edi
	.loc	1 98 17 is_stmt 0               # src/builtin/echo.c:98:17
	callq	ft_itoa
	.loc	1 98 15                         # src/builtin/echo.c:98:15
	movq	%rax, -32(%rbp)
	.loc	1 99 9 is_stmt 1                # src/builtin/echo.c:99:9
	movl	-20(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	.loc	1 99 13 is_stmt 0               # src/builtin/echo.c:99:13
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 99 36                         # src/builtin/echo.c:99:36
	movq	-32(%rbp), %rdi
	.loc	1 99 26                         # src/builtin/echo.c:99:26
	callq	ft_strlen
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 99 3                          # src/builtin/echo.c:99:3
	callq	write
	.loc	1 100 8 is_stmt 1               # src/builtin/echo.c:100:8
	movq	-32(%rbp), %rdi
	.loc	1 100 3 is_stmt 0               # src/builtin/echo.c:100:3
	callq	free
.Ltmp25:
.LBB3_2:
	.loc	1 102 17 is_stmt 1              # src/builtin/echo.c:102:17
	movq	-16(%rbp), %rdi
	.loc	1 102 7 is_stmt 0               # src/builtin/echo.c:102:7
	movabsq	$.L.str.3, %rsi
	callq	ft_strcmp
	.loc	1 102 27                        # src/builtin/echo.c:102:27
	cmpl	$0, %eax
	.loc	1 102 33                        # src/builtin/echo.c:102:33
	jne	.LBB3_7
# %bb.3:
	.loc	1 102 46                        # src/builtin/echo.c:102:46
	movq	-16(%rbp), %rdi
	.loc	1 102 36                        # src/builtin/echo.c:102:36
	callq	ft_strlen
	.loc	1 102 51                        # src/builtin/echo.c:102:51
	cmpq	$1, %rax
.Ltmp26:
	.loc	1 102 6                         # src/builtin/echo.c:102:6
	je	.LBB3_7
# %bb.4:
.Ltmp27:
	.loc	1 104 22 is_stmt 1              # src/builtin/echo.c:104:22
	movq	-16(%rbp), %rdi
	.loc	1 104 26 is_stmt 0              # src/builtin/echo.c:104:26
	addq	$1, %rdi
	.loc	1 104 15                        # src/builtin/echo.c:104:15
	callq	getenv
	.loc	1 104 13                        # src/builtin/echo.c:104:13
	movq	%rax, -40(%rbp)
.Ltmp28:
	.loc	1 105 17 is_stmt 1              # src/builtin/echo.c:105:17
	cmpq	$0, -40(%rbp)
.Ltmp29:
	.loc	1 105 7 is_stmt 0               # src/builtin/echo.c:105:7
	je	.LBB3_6
# %bb.5:
.Ltmp30:
	.loc	1 106 10 is_stmt 1              # src/builtin/echo.c:106:10
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	.loc	1 106 14 is_stmt 0              # src/builtin/echo.c:106:14
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 106 35                        # src/builtin/echo.c:106:35
	movq	-40(%rbp), %rdi
	.loc	1 106 25                        # src/builtin/echo.c:106:25
	callq	ft_strlen
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 106 4                         # src/builtin/echo.c:106:4
	callq	write
.Ltmp31:
.LBB3_6:
	.loc	1 107 2 is_stmt 1               # src/builtin/echo.c:107:2
	jmp	.LBB3_12
.Ltmp32:
.LBB3_7:
	.loc	1 108 11                        # src/builtin/echo.c:108:11
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	.loc	1 108 18 is_stmt 0              # src/builtin/echo.c:108:18
	cmpl	$126, %eax
	.loc	1 108 25                        # src/builtin/echo.c:108:25
	jne	.LBB3_10
# %bb.8:
	.loc	1 108 28                        # src/builtin/echo.c:108:28
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	.loc	1 108 35                        # src/builtin/echo.c:108:35
	cmpl	$0, %eax
.Ltmp33:
	.loc	1 108 11                        # src/builtin/echo.c:108:11
	jne	.LBB3_10
# %bb.9:
.Ltmp34:
	.loc	1 109 13 is_stmt 1              # src/builtin/echo.c:109:13
	movq	-16(%rbp), %rdi
	.loc	1 109 18 is_stmt 0              # src/builtin/echo.c:109:18
	movl	-20(%rbp), %esi
	.loc	1 109 3                         # src/builtin/echo.c:109:3
	callq	echo_home
	jmp	.LBB3_11
.LBB3_10:
	.loc	1 111 9 is_stmt 1               # src/builtin/echo.c:111:9
	movl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	.loc	1 111 13 is_stmt 0              # src/builtin/echo.c:111:13
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	.loc	1 111 28                        # src/builtin/echo.c:111:28
	movq	-16(%rbp), %rdi
	.loc	1 111 18                        # src/builtin/echo.c:111:18
	callq	ft_strlen
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 111 3                         # src/builtin/echo.c:111:3
	callq	write
.Ltmp35:
.LBB3_11:
	.loc	1 0 3                           # src/builtin/echo.c:0:3
	jmp	.LBB3_12
.LBB3_12:
	.loc	1 112 1 is_stmt 1               # src/builtin/echo.c:112:1
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp36:
.Lfunc_end3:
	.size	handle_special_arguments, .Lfunc_end3-handle_special_arguments
	.cfi_endproc
                                        # -- End function
	.globl	echo                            # -- Begin function echo
	.p2align	4, 0x90
	.type	echo,@function
echo:                                   # @echo
.Lfunc_begin4:
	.loc	1 116 0                         # src/builtin/echo.c:116:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp37:
	.loc	1 123 6 prologue_end            # src/builtin/echo.c:123:6
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 123 16 is_stmt 0              # src/builtin/echo.c:123:16
	je	.LBB4_3
# %bb.1:
	.loc	1 123 19                        # src/builtin/echo.c:123:19
	movq	-8(%rbp), %rax
	.loc	1 123 24                        # src/builtin/echo.c:123:24
	movq	40(%rax), %rax
	.loc	1 123 19                        # src/builtin/echo.c:123:19
	cmpq	$0, 8(%rax)
.Ltmp38:
	.loc	1 123 6                         # src/builtin/echo.c:123:6
	je	.LBB4_3
# %bb.2:
.Ltmp39:
	.loc	1 124 8 is_stmt 1               # src/builtin/echo.c:124:8
	movq	-8(%rbp), %rax
	.loc	1 124 13 is_stmt 0              # src/builtin/echo.c:124:13
	movq	40(%rax), %rax
	.loc	1 124 19                        # src/builtin/echo.c:124:19
	movq	8(%rax), %rax
	.loc	1 124 8                         # src/builtin/echo.c:124:8
	movl	4(%rax), %eax
	.loc	1 124 6                         # src/builtin/echo.c:124:6
	movl	%eax, -16(%rbp)
	.loc	1 124 3                         # src/builtin/echo.c:124:3
	jmp	.LBB4_4
.LBB4_3:
	.loc	1 126 6 is_stmt 1               # src/builtin/echo.c:126:6
	movl	$1, -16(%rbp)
.Ltmp40:
.LBB4_4:
	.loc	1 127 4                         # src/builtin/echo.c:127:4
	movl	$1, -12(%rbp)
	.loc	1 128 11                        # src/builtin/echo.c:128:11
	movl	$1, -20(%rbp)
	.loc	1 129 12                        # src/builtin/echo.c:129:12
	movq	$0, -32(%rbp)
	.loc	1 130 11                        # src/builtin/echo.c:130:11
	movq	$0, -40(%rbp)
	.loc	1 131 18                        # src/builtin/echo.c:131:18
	movq	-8(%rbp), %rdi
	.loc	1 131 2 is_stmt 0               # src/builtin/echo.c:131:2
	leaq	-12(%rbp), %rsi
	leaq	-20(%rbp), %rdx
	callq	handle_option_n
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 132 9 is_stmt 1               # src/builtin/echo.c:132:9
	movq	-8(%rbp), %rax
	.loc	1 132 14 is_stmt 0              # src/builtin/echo.c:132:14
	movq	88(%rax), %rax
	.loc	1 132 9                         # src/builtin/echo.c:132:9
	movslq	-12(%rbp), %rcx
	.loc	1 132 27                        # src/builtin/echo.c:132:27
	cmpq	$0, (%rax,%rcx,8)
	.loc	1 132 2                         # src/builtin/echo.c:132:2
	je	.LBB4_9
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
.Ltmp41:
	.loc	1 135 4 is_stmt 1               # src/builtin/echo.c:135:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp42:
	.loc	1 136 7                         # src/builtin/echo.c:136:7
	movq	-8(%rbp), %rax
	.loc	1 136 12 is_stmt 0              # src/builtin/echo.c:136:12
	movq	88(%rax), %rax
	.loc	1 136 7                         # src/builtin/echo.c:136:7
	movslq	-12(%rbp), %rcx
	.loc	1 136 25                        # src/builtin/echo.c:136:25
	cmpq	$0, (%rax,%rcx,8)
.Ltmp43:
	.loc	1 136 7                         # src/builtin/echo.c:136:7
	je	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
.Ltmp44:
	.loc	1 137 10 is_stmt 1              # src/builtin/echo.c:137:10
	movl	-16(%rbp), %edi
	.loc	1 137 4 is_stmt 0               # src/builtin/echo.c:137:4
	movabsq	$.L.str.4, %rsi
	movl	$1, %edx
	callq	write
.Ltmp45:
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	.loc	1 132 2 is_stmt 1               # src/builtin/echo.c:132:2
	jmp	.LBB4_5
.LBB4_9:
.Ltmp46:
	.loc	1 139 6                         # src/builtin/echo.c:139:6
	cmpl	$0, -20(%rbp)
.Ltmp47:
	.loc	1 139 6 is_stmt 0               # src/builtin/echo.c:139:6
	je	.LBB4_11
# %bb.10:
.Ltmp48:
	.loc	1 140 9 is_stmt 1               # src/builtin/echo.c:140:9
	movl	-16(%rbp), %edi
	.loc	1 140 3 is_stmt 0               # src/builtin/echo.c:140:3
	movabsq	$.L.str.5, %rsi
	movl	$1, %edx
	callq	write
.Ltmp49:
.LBB4_11:
	.loc	1 141 1 is_stmt 1               # src/builtin/echo.c:141:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp50:
.Lfunc_end4:
	.size	echo, .Lfunc_end4-echo
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-n"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"HOME"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"$?"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"$"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" "
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.file	2 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
	.file	3 "/mnt/nfs/homes/cboukhal/42/minishell" "src/builtin/../../include/minishell.h"
	.file	4 "/usr/include" "dirent.h"
	.file	5 "/usr/include" "signal.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
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
	.byte	19                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
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
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc04 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	423                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	430                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	447                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x61:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	465                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	809                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	809                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xa1:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xb6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	682                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe1:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xf6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	1173                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x104:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x112:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	682                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x120:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x12e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13d:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x152:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	465                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x160:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.long	682                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x16e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	682                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x17c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	682                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x18a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x198:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.long	689                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1a7:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1ae:0x5 DW_TAG_pointer_type
	.long	435                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1b3:0x5 DW_TAG_const_type
	.long	440                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1b8:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1bf:0xb DW_TAG_typedef
	.long	458                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1ca:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1d1:0x5 DW_TAG_pointer_type
	.long	470                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1d6:0xb DW_TAG_typedef
	.long	481                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1e1:0xc9 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1e9:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1f5:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x201:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x20d:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x219:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x225:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x231:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	694                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23d:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	748                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x249:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	814                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x255:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x261:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1043                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26d:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x279:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1109                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x285:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1163                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x291:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1168                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29d:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1168                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2aa:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2b1:0x5 DW_TAG_pointer_type
	.long	440                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b6:0x5 DW_TAG_pointer_type
	.long	699                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2bb:0xb DW_TAG_typedef
	.long	710                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2c6:0x21 DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2ce:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2da:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	743                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2e7:0x5 DW_TAG_pointer_type
	.long	710                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2ec:0x5 DW_TAG_pointer_type
	.long	753                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2f1:0xb DW_TAG_typedef
	.long	764                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2fc:0x2d DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x304:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	809                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x310:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	809                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x31c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	809                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x329:0x5 DW_TAG_pointer_type
	.long	682                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x32e:0x5 DW_TAG_pointer_type
	.long	819                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x333:0xb DW_TAG_typedef
	.long	830                             # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x33e:0x39 DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x346:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x352:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x35e:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	887                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x36a:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x377:0x5 DW_TAG_pointer_type
	.long	892                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x37c:0xb DW_TAG_typedef
	.long	903                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x387:0x39 DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x38f:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x39b:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3a7:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3b3:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	960                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3c0:0x5 DW_TAG_pointer_type
	.long	903                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3c5:0x5 DW_TAG_pointer_type
	.long	970                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3ca:0xb DW_TAG_typedef
	.long	981                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3d5:0x39 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3dd:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3e9:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3f5:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x401:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1038                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x40e:0x5 DW_TAG_pointer_type
	.long	981                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x413:0x5 DW_TAG_pointer_type
	.long	1048                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x418:0xb DW_TAG_typedef
	.long	1059                            # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x423:0x2d DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x42b:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x437:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x443:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1104                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x450:0x5 DW_TAG_pointer_type
	.long	1059                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x455:0x5 DW_TAG_pointer_type
	.long	1114                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x45a:0xb DW_TAG_typedef
	.long	1125                            # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x465:0x21 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x46d:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x479:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1158                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x486:0x5 DW_TAG_pointer_type
	.long	1125                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x48b:0x5 DW_TAG_pointer_type
	.long	689                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x490:0x5 DW_TAG_pointer_type
	.long	481                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x495:0x5 DW_TAG_pointer_type
	.long	1178                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x49a:0xb DW_TAG_typedef
	.long	1189                            # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4a5:0xbe DW_TAG_structure_type
	.long	.Linfo_string185                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4ae:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1379                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ba:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4c6:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d2:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1163                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4de:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1400                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x502:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1163                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1407                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51a:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1043                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x526:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1473                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x532:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1636                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x53e:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1750                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54a:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2582                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x556:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2931                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x563:0x5 DW_TAG_pointer_type
	.long	1384                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x568:0xb DW_TAG_typedef
	.long	1395                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x573:0x5 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x578:0x7 DW_TAG_base_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x57f:0x5 DW_TAG_pointer_type
	.long	1412                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x584:0xb DW_TAG_typedef
	.long	1423                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x58f:0x2d DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x597:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5a3:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5af:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1468                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5bc:0x5 DW_TAG_pointer_type
	.long	1423                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5c1:0x5 DW_TAG_pointer_type
	.long	1478                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5c6:0xb DW_TAG_typedef
	.long	1489                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5d1:0x2d DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5d9:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1534                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1631                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1631                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5fe:0x5 DW_TAG_pointer_type
	.long	1539                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x603:0xb DW_TAG_typedef
	.long	1550                            # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x60e:0x51 DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x616:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x622:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x62e:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	809                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x63a:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x646:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1168                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x652:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	1168                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x65f:0x5 DW_TAG_pointer_type
	.long	1489                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x664:0x5 DW_TAG_pointer_type
	.long	1641                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x669:0xb DW_TAG_typedef
	.long	1652                            # DW_AT_type
	.long	.Linfo_string85                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x674:0x5d DW_TAG_structure_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x67c:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x688:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x694:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6a0:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	689                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6ac:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1109                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6b8:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1745                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6c4:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1745                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6d1:0x5 DW_TAG_pointer_type
	.long	1652                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6d6:0x56 DW_TAG_structure_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6de:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1770                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x6ea:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6ee:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1836                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6fa:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	1859                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x707:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2536                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x713:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x71f:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2576                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x72c:0xb DW_TAG_typedef
	.long	1847                            # DW_AT_type
	.long	.Linfo_string89                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x737:0x5 DW_TAG_pointer_type
	.long	1852                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x73c:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x73d:0x5 DW_TAG_formal_parameter
	.long	682                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x743:0x5 DW_TAG_pointer_type
	.long	1864                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x748:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x749:0x5 DW_TAG_formal_parameter
	.long	682                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x74e:0x5 DW_TAG_formal_parameter
	.long	1881                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x753:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x759:0x5 DW_TAG_pointer_type
	.long	1886                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x75e:0xb DW_TAG_typedef
	.long	1897                            # DW_AT_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x769:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x76d:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x779:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x785:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x791:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1961                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7a9:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7ad:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2408                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7b9:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	1989                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7c5:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7c9:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2427                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7d5:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2438                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7e2:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2030                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7ee:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7f2:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7fe:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x80a:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2456                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x817:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2083                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x823:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x827:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2427                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x833:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2438                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x83f:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2456                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x84c:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x858:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x85c:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2427                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x868:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2438                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x874:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x880:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2500                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2500                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x899:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2213                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8a5:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8a9:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8b5:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2518                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8c1:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2253                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x8cd:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8d1:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2269                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8dd:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8e1:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8ed:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8fa:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2525                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x908:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2324                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x914:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x918:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2511                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x924:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x931:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2365                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x93d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x941:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x94d:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x959:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2449                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x968:0xc DW_TAG_array_type
	.long	682                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x96d:0x6 DW_TAG_subrange_type
	.long	2420                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x974:0x7 DW_TAG_base_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x97b:0xb DW_TAG_typedef
	.long	682                             # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x986:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x991:0x7 DW_TAG_base_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x998:0xb DW_TAG_typedef
	.long	2467                            # DW_AT_type
	.long	.Linfo_string111                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9a3:0x21 DW_TAG_union_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9ab:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9b7:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x9c4:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string117                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x9cf:0x7 DW_TAG_base_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9d6:0x7 DW_TAG_base_type
	.long	.Linfo_string122                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x9dd:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string128                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9e8:0xb DW_TAG_typedef
	.long	2547                            # DW_AT_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x9f3:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9f7:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2564                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa04:0xc DW_TAG_array_type
	.long	458                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa09:0x6 DW_TAG_subrange_type
	.long	2420                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa10:0x5 DW_TAG_pointer_type
	.long	2581                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xa15:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0xa16:0x5 DW_TAG_pointer_type
	.long	2587                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa1b:0xbd DW_TAG_structure_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa23:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2776                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa2f:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2787                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa3b:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2798                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa47:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2809                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa53:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2438                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa5f:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2820                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa6b:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	682                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa77:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2776                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa83:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa8f:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa9b:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2853                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaa7:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xab3:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xabf:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2864                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xacb:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2919                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xad8:0xb DW_TAG_typedef
	.long	458                             # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xae3:0xb DW_TAG_typedef
	.long	458                             # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaee:0xb DW_TAG_typedef
	.long	458                             # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaf9:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb04:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb0f:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb1a:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb25:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb30:0x21 DW_TAG_structure_type
	.long	.Linfo_string167                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb38:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2897                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb44:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2908                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb51:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb5c:0xb DW_TAG_typedef
	.long	2511                            # DW_AT_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb67:0xc DW_TAG_array_type
	.long	2908                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xb6c:0x6 DW_TAG_subrange_type
	.long	2420                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb73:0x5 DW_TAG_pointer_type
	.long	2936                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xb78:0x69 DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	14                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb80:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3041                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb8c:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3041                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb98:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3041                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xba4:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	3041                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbb0:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3052                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbbc:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3063                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbc8:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	3075                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbd4:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3075                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbe1:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xbec:0xb DW_TAG_typedef
	.long	1400                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xbf7:0xc DW_TAG_array_type
	.long	3052                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xbfc:0x6 DW_TAG_subrange_type
	.long	2420                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc03:0xb DW_TAG_typedef
	.long	2449                            # DW_AT_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/echo.c"            # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=57
.Linfo_string3:
	.asciz	"start_n"                       # string offset=94
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=102
.Linfo_string5:
	.asciz	"handle_option_n"               # string offset=108
.Linfo_string6:
	.asciz	"echo_home"                     # string offset=124
.Linfo_string7:
	.asciz	"handle_special_arguments"      # string offset=134
.Linfo_string8:
	.asciz	"echo"                          # string offset=159
.Linfo_string9:
	.asciz	"arg"                           # string offset=164
.Linfo_string10:
	.asciz	"char"                          # string offset=168
.Linfo_string11:
	.asciz	"i"                             # string offset=173
.Linfo_string12:
	.asciz	"long unsigned int"             # string offset=175
.Linfo_string13:
	.asciz	"size_t"                        # string offset=193
.Linfo_string14:
	.asciz	"cmd"                           # string offset=200
.Linfo_string15:
	.asciz	"id"                            # string offset=204
.Linfo_string16:
	.asciz	"int"                           # string offset=207
.Linfo_string17:
	.asciz	"pid"                           # string offset=211
.Linfo_string18:
	.asciz	"type"                          # string offset=215
.Linfo_string19:
	.asciz	"wstatus"                       # string offset=220
.Linfo_string20:
	.asciz	"name"                          # string offset=228
.Linfo_string21:
	.asciz	"path"                          # string offset=233
.Linfo_string22:
	.asciz	"value"                         # string offset=238
.Linfo_string23:
	.asciz	"next"                          # string offset=244
.Linfo_string24:
	.asciz	"s_arg"                         # string offset=249
.Linfo_string25:
	.asciz	"t_arg"                         # string offset=255
.Linfo_string26:
	.asciz	"pipe"                          # string offset=261
.Linfo_string27:
	.asciz	"to_close"                      # string offset=266
.Linfo_string28:
	.asciz	"write"                         # string offset=275
.Linfo_string29:
	.asciz	"read"                          # string offset=281
.Linfo_string30:
	.asciz	"s_pipe"                        # string offset=286
.Linfo_string31:
	.asciz	"t_pipe"                        # string offset=293
.Linfo_string32:
	.asciz	"redir"                         # string offset=300
.Linfo_string33:
	.asciz	"in_fd"                         # string offset=306
.Linfo_string34:
	.asciz	"out_fd"                        # string offset=312
.Linfo_string35:
	.asciz	"infile"                        # string offset=319
.Linfo_string36:
	.asciz	"fd"                            # string offset=326
.Linfo_string37:
	.asciz	"s_infile"                      # string offset=329
.Linfo_string38:
	.asciz	"t_infile"                      # string offset=338
.Linfo_string39:
	.asciz	"outfile"                       # string offset=347
.Linfo_string40:
	.asciz	"s_outfile"                     # string offset=355
.Linfo_string41:
	.asciz	"t_outfile"                     # string offset=365
.Linfo_string42:
	.asciz	"s_redir"                       # string offset=375
.Linfo_string43:
	.asciz	"t_redir"                       # string offset=383
.Linfo_string44:
	.asciz	"assign"                        # string offset=391
.Linfo_string45:
	.asciz	"s_var"                         # string offset=398
.Linfo_string46:
	.asciz	"t_var"                         # string offset=404
.Linfo_string47:
	.asciz	"expansion"                     # string offset=410
.Linfo_string48:
	.asciz	"s_expan"                       # string offset=420
.Linfo_string49:
	.asciz	"t_expan"                       # string offset=428
.Linfo_string50:
	.asciz	"arg_array"                     # string offset=436
.Linfo_string51:
	.asciz	"prev"                          # string offset=446
.Linfo_string52:
	.asciz	"s_cmd"                         # string offset=451
.Linfo_string53:
	.asciz	"t_cmd"                         # string offset=457
.Linfo_string54:
	.asciz	"new_line"                      # string offset=463
.Linfo_string55:
	.asciz	"home_dir"                      # string offset=472
.Linfo_string56:
	.asciz	"minishell"                     # string offset=481
.Linfo_string57:
	.asciz	"dir"                           # string offset=491
.Linfo_string58:
	.asciz	"__dirstream"                   # string offset=495
.Linfo_string59:
	.asciz	"DIR"                           # string offset=507
.Linfo_string60:
	.asciz	"state"                         # string offset=511
.Linfo_string61:
	.asciz	"input"                         # string offset=517
.Linfo_string62:
	.asciz	"prompt"                        # string offset=523
.Linfo_string63:
	.asciz	"operator_nbr"                  # string offset=530
.Linfo_string64:
	.asciz	"exit_status"                   # string offset=543
.Linfo_string65:
	.asciz	"unsigned char"                 # string offset=555
.Linfo_string66:
	.asciz	"env_array"                     # string offset=569
.Linfo_string67:
	.asciz	"env"                           # string offset=579
.Linfo_string68:
	.asciz	"s_env"                         # string offset=583
.Linfo_string69:
	.asciz	"t_env"                         # string offset=589
.Linfo_string70:
	.asciz	"local"                         # string offset=595
.Linfo_string71:
	.asciz	"syntax_tree"                   # string offset=601
.Linfo_string72:
	.asciz	"node"                          # string offset=613
.Linfo_string73:
	.asciz	"pipe_fd"                       # string offset=618
.Linfo_string74:
	.asciz	"left"                          # string offset=626
.Linfo_string75:
	.asciz	"right"                         # string offset=631
.Linfo_string76:
	.asciz	"s_ast_node"                    # string offset=637
.Linfo_string77:
	.asciz	"t_ast_node"                    # string offset=648
.Linfo_string78:
	.asciz	"s_ast"                         # string offset=659
.Linfo_string79:
	.asciz	"t_ast"                         # string offset=665
.Linfo_string80:
	.asciz	"token_stream"                  # string offset=671
.Linfo_string81:
	.asciz	"quote_nbr"                     # string offset=684
.Linfo_string82:
	.asciz	"length"                        # string offset=694
.Linfo_string83:
	.asciz	"lexeme"                        # string offset=701
.Linfo_string84:
	.asciz	"s_token"                       # string offset=708
.Linfo_string85:
	.asciz	"t_token"                       # string offset=716
.Linfo_string86:
	.asciz	"sighandler"                    # string offset=724
.Linfo_string87:
	.asciz	"__sigaction_handler"           # string offset=735
.Linfo_string88:
	.asciz	"sa_handler"                    # string offset=755
.Linfo_string89:
	.asciz	"__sighandler_t"                # string offset=766
.Linfo_string90:
	.asciz	"sa_sigaction"                  # string offset=781
.Linfo_string91:
	.asciz	"si_signo"                      # string offset=794
.Linfo_string92:
	.asciz	"si_errno"                      # string offset=803
.Linfo_string93:
	.asciz	"si_code"                       # string offset=812
.Linfo_string94:
	.asciz	"__pad0"                        # string offset=820
.Linfo_string95:
	.asciz	"_sifields"                     # string offset=827
.Linfo_string96:
	.asciz	"_pad"                          # string offset=837
.Linfo_string97:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=842
.Linfo_string98:
	.asciz	"_kill"                         # string offset=862
.Linfo_string99:
	.asciz	"si_pid"                        # string offset=868
.Linfo_string100:
	.asciz	"__pid_t"                       # string offset=875
.Linfo_string101:
	.asciz	"si_uid"                        # string offset=883
.Linfo_string102:
	.asciz	"unsigned int"                  # string offset=890
.Linfo_string103:
	.asciz	"__uid_t"                       # string offset=903
.Linfo_string104:
	.asciz	"_timer"                        # string offset=911
.Linfo_string105:
	.asciz	"si_tid"                        # string offset=918
.Linfo_string106:
	.asciz	"si_overrun"                    # string offset=925
.Linfo_string107:
	.asciz	"si_sigval"                     # string offset=936
.Linfo_string108:
	.asciz	"sival_int"                     # string offset=946
.Linfo_string109:
	.asciz	"sival_ptr"                     # string offset=956
.Linfo_string110:
	.asciz	"sigval"                        # string offset=966
.Linfo_string111:
	.asciz	"__sigval_t"                    # string offset=973
.Linfo_string112:
	.asciz	"_rt"                           # string offset=984
.Linfo_string113:
	.asciz	"_sigchld"                      # string offset=988
.Linfo_string114:
	.asciz	"si_status"                     # string offset=997
.Linfo_string115:
	.asciz	"si_utime"                      # string offset=1007
.Linfo_string116:
	.asciz	"long int"                      # string offset=1016
.Linfo_string117:
	.asciz	"__clock_t"                     # string offset=1025
.Linfo_string118:
	.asciz	"si_stime"                      # string offset=1035
.Linfo_string119:
	.asciz	"_sigfault"                     # string offset=1044
.Linfo_string120:
	.asciz	"si_addr"                       # string offset=1054
.Linfo_string121:
	.asciz	"si_addr_lsb"                   # string offset=1062
.Linfo_string122:
	.asciz	"short"                         # string offset=1074
.Linfo_string123:
	.asciz	"_bounds"                       # string offset=1080
.Linfo_string124:
	.asciz	"_addr_bnd"                     # string offset=1088
.Linfo_string125:
	.asciz	"_lower"                        # string offset=1098
.Linfo_string126:
	.asciz	"_upper"                        # string offset=1105
.Linfo_string127:
	.asciz	"_pkey"                         # string offset=1112
.Linfo_string128:
	.asciz	"__uint32_t"                    # string offset=1118
.Linfo_string129:
	.asciz	"_sigpoll"                      # string offset=1129
.Linfo_string130:
	.asciz	"si_band"                       # string offset=1138
.Linfo_string131:
	.asciz	"si_fd"                         # string offset=1146
.Linfo_string132:
	.asciz	"_sigsys"                       # string offset=1152
.Linfo_string133:
	.asciz	"_call_addr"                    # string offset=1160
.Linfo_string134:
	.asciz	"_syscall"                      # string offset=1171
.Linfo_string135:
	.asciz	"_arch"                         # string offset=1180
.Linfo_string136:
	.asciz	"siginfo_t"                     # string offset=1186
.Linfo_string137:
	.asciz	"sa_mask"                       # string offset=1196
.Linfo_string138:
	.asciz	"__val"                         # string offset=1204
.Linfo_string139:
	.asciz	"__sigset_t"                    # string offset=1210
.Linfo_string140:
	.asciz	"sa_flags"                      # string offset=1221
.Linfo_string141:
	.asciz	"sa_restorer"                   # string offset=1230
.Linfo_string142:
	.asciz	"sigaction"                     # string offset=1242
.Linfo_string143:
	.asciz	"statbuf"                       # string offset=1252
.Linfo_string144:
	.asciz	"st_dev"                        # string offset=1260
.Linfo_string145:
	.asciz	"__dev_t"                       # string offset=1267
.Linfo_string146:
	.asciz	"st_ino"                        # string offset=1275
.Linfo_string147:
	.asciz	"__ino_t"                       # string offset=1282
.Linfo_string148:
	.asciz	"st_nlink"                      # string offset=1290
.Linfo_string149:
	.asciz	"__nlink_t"                     # string offset=1299
.Linfo_string150:
	.asciz	"st_mode"                       # string offset=1309
.Linfo_string151:
	.asciz	"__mode_t"                      # string offset=1317
.Linfo_string152:
	.asciz	"st_uid"                        # string offset=1326
.Linfo_string153:
	.asciz	"st_gid"                        # string offset=1333
.Linfo_string154:
	.asciz	"__gid_t"                       # string offset=1340
.Linfo_string155:
	.asciz	"st_rdev"                       # string offset=1348
.Linfo_string156:
	.asciz	"st_size"                       # string offset=1356
.Linfo_string157:
	.asciz	"__off_t"                       # string offset=1364
.Linfo_string158:
	.asciz	"st_blksize"                    # string offset=1372
.Linfo_string159:
	.asciz	"__blksize_t"                   # string offset=1383
.Linfo_string160:
	.asciz	"st_blocks"                     # string offset=1395
.Linfo_string161:
	.asciz	"__blkcnt_t"                    # string offset=1405
.Linfo_string162:
	.asciz	"st_atim"                       # string offset=1416
.Linfo_string163:
	.asciz	"tv_sec"                        # string offset=1424
.Linfo_string164:
	.asciz	"__time_t"                      # string offset=1431
.Linfo_string165:
	.asciz	"tv_nsec"                       # string offset=1440
.Linfo_string166:
	.asciz	"__syscall_slong_t"             # string offset=1448
.Linfo_string167:
	.asciz	"timespec"                      # string offset=1466
.Linfo_string168:
	.asciz	"st_mtim"                       # string offset=1475
.Linfo_string169:
	.asciz	"st_ctim"                       # string offset=1483
.Linfo_string170:
	.asciz	"__glibc_reserved"              # string offset=1491
.Linfo_string171:
	.asciz	"stat"                          # string offset=1508
.Linfo_string172:
	.asciz	"term"                          # string offset=1513
.Linfo_string173:
	.asciz	"c_iflag"                       # string offset=1518
.Linfo_string174:
	.asciz	"tcflag_t"                      # string offset=1526
.Linfo_string175:
	.asciz	"c_oflag"                       # string offset=1535
.Linfo_string176:
	.asciz	"c_cflag"                       # string offset=1543
.Linfo_string177:
	.asciz	"c_lflag"                       # string offset=1551
.Linfo_string178:
	.asciz	"c_line"                        # string offset=1559
.Linfo_string179:
	.asciz	"cc_t"                          # string offset=1566
.Linfo_string180:
	.asciz	"c_cc"                          # string offset=1571
.Linfo_string181:
	.asciz	"c_ispeed"                      # string offset=1576
.Linfo_string182:
	.asciz	"speed_t"                       # string offset=1585
.Linfo_string183:
	.asciz	"c_ospeed"                      # string offset=1593
.Linfo_string184:
	.asciz	"termios"                       # string offset=1602
.Linfo_string185:
	.asciz	"s_minishell"                   # string offset=1610
.Linfo_string186:
	.asciz	"t_minishell"                   # string offset=1622
.Linfo_string187:
	.asciz	"env_value"                     # string offset=1634
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_n
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym strlen
	.addrsig_sym handle_option_n
	.addrsig_sym echo_home
	.addrsig_sym getenv
	.addrsig_sym write
	.addrsig_sym ft_strcmp
	.addrsig_sym ft_itoa
	.addrsig_sym free
	.section	.debug_line,"",@progbits
.Lline_table_start0:
