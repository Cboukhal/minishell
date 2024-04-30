	.text
	.file	"echo.c"
	.globl	start_n                         # -- Begin function start_n
	.p2align	4, 0x90
	.type	start_n,@function
start_n:                                # @start_n
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/echo.c"
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
	subq	$80, %rsp
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
	.loc	1 98 36 is_stmt 0               # src/builtin/echo.c:98:36
	movl	44(%rax), %edi
	.loc	1 98 17                         # src/builtin/echo.c:98:17
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
	.loc	1 101 2 is_stmt 1               # src/builtin/echo.c:101:2
	jmp	.LBB3_7
.Ltmp25:
.LBB3_2:
	.loc	1 102 11                        # src/builtin/echo.c:102:11
	movq	-16(%rbp), %rax
	movsbl	(%rax), %eax
	.loc	1 102 18 is_stmt 0              # src/builtin/echo.c:102:18
	cmpl	$126, %eax
	.loc	1 102 25                        # src/builtin/echo.c:102:25
	jne	.LBB3_5
# %bb.3:
	.loc	1 102 28                        # src/builtin/echo.c:102:28
	movq	-16(%rbp), %rax
	movsbl	1(%rax), %eax
	.loc	1 102 35                        # src/builtin/echo.c:102:35
	cmpl	$0, %eax
.Ltmp26:
	.loc	1 102 11                        # src/builtin/echo.c:102:11
	jne	.LBB3_5
# %bb.4:
.Ltmp27:
	.loc	1 103 13 is_stmt 1              # src/builtin/echo.c:103:13
	movq	-16(%rbp), %rdi
	.loc	1 103 18 is_stmt 0              # src/builtin/echo.c:103:18
	movl	-20(%rbp), %esi
	.loc	1 103 3                         # src/builtin/echo.c:103:3
	callq	echo_home
	jmp	.LBB3_6
.LBB3_5:
	.loc	1 105 9 is_stmt 1               # src/builtin/echo.c:105:9
	movl	-20(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	.loc	1 105 13 is_stmt 0              # src/builtin/echo.c:105:13
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 105 28                        # src/builtin/echo.c:105:28
	movq	-16(%rbp), %rdi
	.loc	1 105 18                        # src/builtin/echo.c:105:18
	callq	ft_strlen
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 105 3                         # src/builtin/echo.c:105:3
	callq	write
.Ltmp28:
.LBB3_6:
	.loc	1 0 3                           # src/builtin/echo.c:0:3
	jmp	.LBB3_7
.LBB3_7:
	.loc	1 106 1 is_stmt 1               # src/builtin/echo.c:106:1
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp29:
.Lfunc_end3:
	.size	handle_special_arguments, .Lfunc_end3-handle_special_arguments
	.cfi_endproc
                                        # -- End function
	.globl	echo                            # -- Begin function echo
	.p2align	4, 0x90
	.type	echo,@function
echo:                                   # @echo
.Lfunc_begin4:
	.loc	1 109 0                         # src/builtin/echo.c:109:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp30:
	.loc	1 116 5 prologue_end            # src/builtin/echo.c:116:5
	movl	$1, -24(%rbp)
.Ltmp31:
	.loc	1 117 6                         # src/builtin/echo.c:117:6
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 117 16 is_stmt 0              # src/builtin/echo.c:117:16
	je	.LBB4_3
# %bb.1:
	.loc	1 117 19                        # src/builtin/echo.c:117:19
	movq	-16(%rbp), %rax
	.loc	1 117 24                        # src/builtin/echo.c:117:24
	movq	40(%rax), %rax
	.loc	1 117 19                        # src/builtin/echo.c:117:19
	cmpq	$0, 8(%rax)
.Ltmp32:
	.loc	1 117 6                         # src/builtin/echo.c:117:6
	je	.LBB4_3
# %bb.2:
.Ltmp33:
	.loc	1 118 8 is_stmt 1               # src/builtin/echo.c:118:8
	movq	-16(%rbp), %rax
	.loc	1 118 13 is_stmt 0              # src/builtin/echo.c:118:13
	movq	40(%rax), %rax
	.loc	1 118 19                        # src/builtin/echo.c:118:19
	movq	8(%rax), %rax
	.loc	1 118 8                         # src/builtin/echo.c:118:8
	movl	4(%rax), %eax
	.loc	1 118 6                         # src/builtin/echo.c:118:6
	movl	%eax, -24(%rbp)
.Ltmp34:
.LBB4_3:
	.loc	1 119 4 is_stmt 1               # src/builtin/echo.c:119:4
	movl	$1, -20(%rbp)
	.loc	1 120 11                        # src/builtin/echo.c:120:11
	movl	$1, -28(%rbp)
	.loc	1 121 12                        # src/builtin/echo.c:121:12
	movq	$0, -40(%rbp)
	.loc	1 122 11                        # src/builtin/echo.c:122:11
	movq	$0, -48(%rbp)
	.loc	1 123 18                        # src/builtin/echo.c:123:18
	movq	-16(%rbp), %rdi
	.loc	1 123 2 is_stmt 0               # src/builtin/echo.c:123:2
	leaq	-20(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	handle_option_n
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	.loc	1 124 9 is_stmt 1               # src/builtin/echo.c:124:9
	movq	-16(%rbp), %rax
	.loc	1 124 14 is_stmt 0              # src/builtin/echo.c:124:14
	movq	88(%rax), %rax
	.loc	1 124 9                         # src/builtin/echo.c:124:9
	movslq	-20(%rbp), %rcx
	.loc	1 124 27                        # src/builtin/echo.c:124:27
	cmpq	$0, (%rax,%rcx,8)
	.loc	1 124 2                         # src/builtin/echo.c:124:2
	je	.LBB4_11
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
.Ltmp35:
	.loc	1 126 3 is_stmt 1               # src/builtin/echo.c:126:3
	jmp	.LBB4_6
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 126 10 is_stmt 0              # src/builtin/echo.c:126:10
	movq	-16(%rbp), %rax
	.loc	1 126 15                        # src/builtin/echo.c:126:15
	movq	88(%rax), %rax
	.loc	1 126 10                        # src/builtin/echo.c:126:10
	movslq	-20(%rbp), %rcx
	.loc	1 126 28                        # src/builtin/echo.c:126:28
	cmpq	$0, (%rax,%rcx,8)
	.loc	1 126 3                         # src/builtin/echo.c:126:3
	jne	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=2
	.loc	1 127 5 is_stmt 1               # src/builtin/echo.c:127:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 126 3                         # src/builtin/echo.c:126:3
	jmp	.LBB4_6
.LBB4_8:                                #   in Loop: Header=BB4_4 Depth=1
	.loc	1 128 28                        # src/builtin/echo.c:128:28
	movq	-8(%rbp), %rdi
	.loc	1 128 39 is_stmt 0              # src/builtin/echo.c:128:39
	movq	-16(%rbp), %rax
	.loc	1 128 44                        # src/builtin/echo.c:128:44
	movq	88(%rax), %rax
	.loc	1 128 39                        # src/builtin/echo.c:128:39
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 128 58                        # src/builtin/echo.c:128:58
	movl	-24(%rbp), %edx
	.loc	1 128 3                         # src/builtin/echo.c:128:3
	callq	handle_special_arguments
	.loc	1 129 4 is_stmt 1               # src/builtin/echo.c:129:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp36:
	.loc	1 130 7                         # src/builtin/echo.c:130:7
	movq	-16(%rbp), %rax
	.loc	1 130 12 is_stmt 0              # src/builtin/echo.c:130:12
	movq	88(%rax), %rax
	.loc	1 130 7                         # src/builtin/echo.c:130:7
	movslq	-20(%rbp), %rcx
	.loc	1 130 25                        # src/builtin/echo.c:130:25
	cmpq	$0, (%rax,%rcx,8)
.Ltmp37:
	.loc	1 130 7                         # src/builtin/echo.c:130:7
	je	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_4 Depth=1
.Ltmp38:
	.loc	1 131 10 is_stmt 1              # src/builtin/echo.c:131:10
	movl	-24(%rbp), %edi
	.loc	1 131 4 is_stmt 0               # src/builtin/echo.c:131:4
	movabsq	$.L.str.3, %rsi
	movl	$1, %edx
	callq	write
.Ltmp39:
.LBB4_10:                               #   in Loop: Header=BB4_4 Depth=1
	.loc	1 124 2 is_stmt 1               # src/builtin/echo.c:124:2
	jmp	.LBB4_4
.LBB4_11:
.Ltmp40:
	.loc	1 133 6                         # src/builtin/echo.c:133:6
	cmpl	$0, -28(%rbp)
.Ltmp41:
	.loc	1 133 6 is_stmt 0               # src/builtin/echo.c:133:6
	je	.LBB4_13
# %bb.12:
.Ltmp42:
	.loc	1 134 9 is_stmt 1               # src/builtin/echo.c:134:9
	movl	-24(%rbp), %edi
	.loc	1 134 3 is_stmt 0               # src/builtin/echo.c:134:3
	movabsq	$.L.str.4, %rsi
	movl	$1, %edx
	callq	write
.Ltmp43:
.LBB4_13:
	.loc	1 135 1 is_stmt 1               # src/builtin/echo.c:135:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp44:
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
	.asciz	" "
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\n"
	.size	.L.str.4, 2

	.file	2 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
	.file	3 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/../../include/minishell.h"
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
	.byte	1                               # Abbrev [1] 0xb:0xc12 DW_TAG_compile_unit
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
	.long	437                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	461                             # DW_AT_type
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
	.long	479                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	823                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	823                             # DW_AT_type
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
	.long	703                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xc4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	78                              # DW_AT_decl_line
	.long	696                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	80                              # DW_AT_decl_line
	.long	703                             # DW_AT_type
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
	.long	1187                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x104:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	703                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x112:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	696                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x120:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	703                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x12e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	703                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13d:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x152:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	1187                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x160:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x16e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	696                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x17c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	696                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x18a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	696                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x198:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.long	703                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1a6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	703                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1b5:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1bc:0x5 DW_TAG_pointer_type
	.long	449                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c1:0x5 DW_TAG_const_type
	.long	454                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1c6:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1cd:0xb DW_TAG_typedef
	.long	472                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1d8:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1df:0x5 DW_TAG_pointer_type
	.long	484                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1e4:0xb DW_TAG_typedef
	.long	495                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ef:0xc9 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1f7:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x203:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x20f:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x21b:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x227:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x233:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x23f:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	708                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x24b:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x257:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	828                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x263:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x26f:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x27b:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	979                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x287:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1123                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x293:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1177                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x29f:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2ab:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2b8:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x2bf:0x5 DW_TAG_pointer_type
	.long	454                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c4:0x5 DW_TAG_pointer_type
	.long	713                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c9:0xb DW_TAG_typedef
	.long	724                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2d4:0x21 DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2dc:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x2e8:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	757                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x2f5:0x5 DW_TAG_pointer_type
	.long	724                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2fa:0x5 DW_TAG_pointer_type
	.long	767                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2ff:0xb DW_TAG_typedef
	.long	778                             # DW_AT_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x30a:0x2d DW_TAG_structure_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x312:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	823                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x31e:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	823                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x32a:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	823                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x337:0x5 DW_TAG_pointer_type
	.long	696                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x33c:0x5 DW_TAG_pointer_type
	.long	833                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x341:0xb DW_TAG_typedef
	.long	844                             # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x34c:0x39 DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x354:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x360:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x36c:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	901                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x378:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	979                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x385:0x5 DW_TAG_pointer_type
	.long	906                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x38a:0xb DW_TAG_typedef
	.long	917                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x395:0x39 DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x39d:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3a9:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3b5:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3c1:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	974                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x3ce:0x5 DW_TAG_pointer_type
	.long	917                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3d3:0x5 DW_TAG_pointer_type
	.long	984                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3d8:0xb DW_TAG_typedef
	.long	995                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3e3:0x39 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x3f7:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x403:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x40f:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1052                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x41c:0x5 DW_TAG_pointer_type
	.long	995                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x421:0x5 DW_TAG_pointer_type
	.long	1062                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x426:0xb DW_TAG_typedef
	.long	1073                            # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x431:0x2d DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x439:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x445:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x451:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1118                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x45e:0x5 DW_TAG_pointer_type
	.long	1073                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x463:0x5 DW_TAG_pointer_type
	.long	1128                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x468:0xb DW_TAG_typedef
	.long	1139                            # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x473:0x21 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x47b:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x487:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1172                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x494:0x5 DW_TAG_pointer_type
	.long	1139                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x499:0x5 DW_TAG_pointer_type
	.long	703                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x49e:0x5 DW_TAG_pointer_type
	.long	495                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4a3:0x5 DW_TAG_pointer_type
	.long	1192                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4a8:0xb DW_TAG_typedef
	.long	1203                            # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x4b3:0xbe DW_TAG_structure_type
	.long	.Linfo_string185                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4bc:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1393                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4c8:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4d4:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4e0:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	1177                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4ec:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x4f8:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x504:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x510:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	1177                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x51c:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1414                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x528:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1057                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x534:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x540:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1643                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x54c:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1757                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x558:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2589                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x564:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2938                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x571:0x5 DW_TAG_pointer_type
	.long	1398                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x576:0xb DW_TAG_typedef
	.long	1409                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x581:0x5 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	8                               # Abbrev [8] 0x586:0x5 DW_TAG_pointer_type
	.long	1419                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x58b:0xb DW_TAG_typedef
	.long	1430                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x596:0x2d DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5aa:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5b6:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1475                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x5c3:0x5 DW_TAG_pointer_type
	.long	1430                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5c8:0x5 DW_TAG_pointer_type
	.long	1485                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x5cd:0xb DW_TAG_typedef
	.long	1496                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5d8:0x2d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x5e0:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1541                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5ec:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1638                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x5f8:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1638                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x605:0x5 DW_TAG_pointer_type
	.long	1546                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x60a:0xb DW_TAG_typedef
	.long	1557                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x615:0x51 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x61d:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x629:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x635:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	823                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x641:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x64d:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x659:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x666:0x5 DW_TAG_pointer_type
	.long	1496                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x66b:0x5 DW_TAG_pointer_type
	.long	1648                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x670:0xb DW_TAG_typedef
	.long	1659                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x67b:0x5d DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x683:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x68f:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x69b:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	703                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1123                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1752                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x6cb:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	1752                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6d8:0x5 DW_TAG_pointer_type
	.long	1659                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6dd:0x56 DW_TAG_structure_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6e5:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1777                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x6f1:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x6f5:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1843                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x701:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1866                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x70e:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2543                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x71a:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x726:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2583                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x733:0xb DW_TAG_typedef
	.long	1854                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x73e:0x5 DW_TAG_pointer_type
	.long	1859                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x743:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x744:0x5 DW_TAG_formal_parameter
	.long	696                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x74a:0x5 DW_TAG_pointer_type
	.long	1871                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x74f:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x750:0x5 DW_TAG_formal_parameter
	.long	696                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x755:0x5 DW_TAG_formal_parameter
	.long	1888                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x75a:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x760:0x5 DW_TAG_pointer_type
	.long	1893                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x765:0xb DW_TAG_typedef
	.long	1904                            # DW_AT_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x770:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x774:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x780:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x78c:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x798:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7a4:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1968                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7b0:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7b4:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2415                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7c0:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1996                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7cc:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7d0:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2434                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x7dc:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2445                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x7e9:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2037                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x7f5:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x7f9:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x805:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x811:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2463                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x81e:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2090                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x82a:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x82e:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2434                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x83a:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2445                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x846:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2463                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x853:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2143                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x85f:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x863:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2434                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x86f:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2445                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x87b:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x887:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2507                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x893:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2507                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x8a0:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2220                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8ac:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8b0:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8bc:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2525                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8c8:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2260                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x8d4:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8d8:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2276                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8e4:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x8e8:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x8f4:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x901:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2532                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x90f:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2331                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x91b:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x91f:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2518                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x92b:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	12                              # Abbrev [12] 0x938:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2372                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x944:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x948:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x954:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x960:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2456                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x96f:0xc DW_TAG_array_type
	.long	696                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0x974:0x6 DW_TAG_subrange_type
	.long	2427                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x97b:0x7 DW_TAG_base_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	10                              # Abbrev [10] 0x982:0xb DW_TAG_typedef
	.long	696                             # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x98d:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x998:0x7 DW_TAG_base_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x99f:0xb DW_TAG_typedef
	.long	2474                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x9aa:0x21 DW_TAG_union_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9b2:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x9be:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x9cb:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x9d6:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9dd:0x7 DW_TAG_base_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x9e4:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9ef:0xb DW_TAG_typedef
	.long	2554                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x9fa:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x9fe:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2571                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa0b:0xc DW_TAG_array_type
	.long	472                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa10:0x6 DW_TAG_subrange_type
	.long	2427                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa17:0x5 DW_TAG_pointer_type
	.long	2588                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xa1c:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	8                               # Abbrev [8] 0xa1d:0x5 DW_TAG_pointer_type
	.long	2594                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xa22:0xbd DW_TAG_structure_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xa2a:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2783                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa36:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2794                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa42:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2805                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa4e:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2816                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa5a:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2445                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa66:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2827                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa72:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	696                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa7e:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2783                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa8a:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2838                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xa96:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2849                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaa2:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2860                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaae:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xaba:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xac6:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2871                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xad2:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2926                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xadf:0xb DW_TAG_typedef
	.long	472                             # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaea:0xb DW_TAG_typedef
	.long	472                             # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaf5:0xb DW_TAG_typedef
	.long	472                             # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb00:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb0b:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb16:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb21:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb2c:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb37:0x21 DW_TAG_structure_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb3f:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2904                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb4b:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xb58:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb63:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xb6e:0xc DW_TAG_array_type
	.long	2915                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xb73:0x6 DW_TAG_subrange_type
	.long	2427                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb7a:0x5 DW_TAG_pointer_type
	.long	2943                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0xb7f:0x69 DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	14                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0xb87:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	3048                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb93:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3048                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xb9f:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3048                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbab:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3048                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbb7:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	3059                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbc3:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3077                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbcf:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0xbdb:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbe8:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xbf3:0xb DW_TAG_typedef
	.long	3070                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xbfe:0x7 DW_TAG_base_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xc05:0xc DW_TAG_array_type
	.long	3059                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc0a:0x6 DW_TAG_subrange_type
	.long	2427                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xc11:0xb DW_TAG_typedef
	.long	2456                            # DW_AT_type
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
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=57
.Linfo_string3:
	.asciz	"start_n"                       # string offset=126
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=134
.Linfo_string5:
	.asciz	"handle_option_n"               # string offset=140
.Linfo_string6:
	.asciz	"echo_home"                     # string offset=156
.Linfo_string7:
	.asciz	"handle_special_arguments"      # string offset=166
.Linfo_string8:
	.asciz	"echo"                          # string offset=191
.Linfo_string9:
	.asciz	"arg"                           # string offset=196
.Linfo_string10:
	.asciz	"char"                          # string offset=200
.Linfo_string11:
	.asciz	"i"                             # string offset=205
.Linfo_string12:
	.asciz	"long unsigned int"             # string offset=207
.Linfo_string13:
	.asciz	"size_t"                        # string offset=225
.Linfo_string14:
	.asciz	"cmd"                           # string offset=232
.Linfo_string15:
	.asciz	"id"                            # string offset=236
.Linfo_string16:
	.asciz	"int"                           # string offset=239
.Linfo_string17:
	.asciz	"pid"                           # string offset=243
.Linfo_string18:
	.asciz	"type"                          # string offset=247
.Linfo_string19:
	.asciz	"wstatus"                       # string offset=252
.Linfo_string20:
	.asciz	"name"                          # string offset=260
.Linfo_string21:
	.asciz	"path"                          # string offset=265
.Linfo_string22:
	.asciz	"value"                         # string offset=270
.Linfo_string23:
	.asciz	"next"                          # string offset=276
.Linfo_string24:
	.asciz	"s_arg"                         # string offset=281
.Linfo_string25:
	.asciz	"t_arg"                         # string offset=287
.Linfo_string26:
	.asciz	"pipe"                          # string offset=293
.Linfo_string27:
	.asciz	"to_close"                      # string offset=298
.Linfo_string28:
	.asciz	"write"                         # string offset=307
.Linfo_string29:
	.asciz	"read"                          # string offset=313
.Linfo_string30:
	.asciz	"s_pipe"                        # string offset=318
.Linfo_string31:
	.asciz	"t_pipe"                        # string offset=325
.Linfo_string32:
	.asciz	"redir"                         # string offset=332
.Linfo_string33:
	.asciz	"in_fd"                         # string offset=338
.Linfo_string34:
	.asciz	"out_fd"                        # string offset=344
.Linfo_string35:
	.asciz	"infile"                        # string offset=351
.Linfo_string36:
	.asciz	"fd"                            # string offset=358
.Linfo_string37:
	.asciz	"s_infile"                      # string offset=361
.Linfo_string38:
	.asciz	"t_infile"                      # string offset=370
.Linfo_string39:
	.asciz	"outfile"                       # string offset=379
.Linfo_string40:
	.asciz	"s_outfile"                     # string offset=387
.Linfo_string41:
	.asciz	"t_outfile"                     # string offset=397
.Linfo_string42:
	.asciz	"s_redir"                       # string offset=407
.Linfo_string43:
	.asciz	"t_redir"                       # string offset=415
.Linfo_string44:
	.asciz	"assign"                        # string offset=423
.Linfo_string45:
	.asciz	"s_var"                         # string offset=430
.Linfo_string46:
	.asciz	"t_var"                         # string offset=436
.Linfo_string47:
	.asciz	"expansion"                     # string offset=442
.Linfo_string48:
	.asciz	"s_expan"                       # string offset=452
.Linfo_string49:
	.asciz	"t_expan"                       # string offset=460
.Linfo_string50:
	.asciz	"arg_array"                     # string offset=468
.Linfo_string51:
	.asciz	"prev"                          # string offset=478
.Linfo_string52:
	.asciz	"s_cmd"                         # string offset=483
.Linfo_string53:
	.asciz	"t_cmd"                         # string offset=489
.Linfo_string54:
	.asciz	"new_line"                      # string offset=495
.Linfo_string55:
	.asciz	"home_dir"                      # string offset=504
.Linfo_string56:
	.asciz	"minishell"                     # string offset=513
.Linfo_string57:
	.asciz	"dir"                           # string offset=523
.Linfo_string58:
	.asciz	"__dirstream"                   # string offset=527
.Linfo_string59:
	.asciz	"DIR"                           # string offset=539
.Linfo_string60:
	.asciz	"state"                         # string offset=543
.Linfo_string61:
	.asciz	"input"                         # string offset=549
.Linfo_string62:
	.asciz	"prompt"                        # string offset=555
.Linfo_string63:
	.asciz	"operator_nbr"                  # string offset=562
.Linfo_string64:
	.asciz	"exit_status"                   # string offset=575
.Linfo_string65:
	.asciz	"env_array"                     # string offset=587
.Linfo_string66:
	.asciz	"env"                           # string offset=597
.Linfo_string67:
	.asciz	"s_env"                         # string offset=601
.Linfo_string68:
	.asciz	"t_env"                         # string offset=607
.Linfo_string69:
	.asciz	"local"                         # string offset=613
.Linfo_string70:
	.asciz	"syntax_tree"                   # string offset=619
.Linfo_string71:
	.asciz	"node"                          # string offset=631
.Linfo_string72:
	.asciz	"pipe_fd"                       # string offset=636
.Linfo_string73:
	.asciz	"left"                          # string offset=644
.Linfo_string74:
	.asciz	"right"                         # string offset=649
.Linfo_string75:
	.asciz	"s_ast_node"                    # string offset=655
.Linfo_string76:
	.asciz	"t_ast_node"                    # string offset=666
.Linfo_string77:
	.asciz	"s_ast"                         # string offset=677
.Linfo_string78:
	.asciz	"t_ast"                         # string offset=683
.Linfo_string79:
	.asciz	"token_stream"                  # string offset=689
.Linfo_string80:
	.asciz	"quote_nbr"                     # string offset=702
.Linfo_string81:
	.asciz	"length"                        # string offset=712
.Linfo_string82:
	.asciz	"lexeme"                        # string offset=719
.Linfo_string83:
	.asciz	"s_token"                       # string offset=726
.Linfo_string84:
	.asciz	"t_token"                       # string offset=734
.Linfo_string85:
	.asciz	"sighandler"                    # string offset=742
.Linfo_string86:
	.asciz	"__sigaction_handler"           # string offset=753
.Linfo_string87:
	.asciz	"sa_handler"                    # string offset=773
.Linfo_string88:
	.asciz	"__sighandler_t"                # string offset=784
.Linfo_string89:
	.asciz	"sa_sigaction"                  # string offset=799
.Linfo_string90:
	.asciz	"si_signo"                      # string offset=812
.Linfo_string91:
	.asciz	"si_errno"                      # string offset=821
.Linfo_string92:
	.asciz	"si_code"                       # string offset=830
.Linfo_string93:
	.asciz	"__pad0"                        # string offset=838
.Linfo_string94:
	.asciz	"_sifields"                     # string offset=845
.Linfo_string95:
	.asciz	"_pad"                          # string offset=855
.Linfo_string96:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=860
.Linfo_string97:
	.asciz	"_kill"                         # string offset=880
.Linfo_string98:
	.asciz	"si_pid"                        # string offset=886
.Linfo_string99:
	.asciz	"__pid_t"                       # string offset=893
.Linfo_string100:
	.asciz	"si_uid"                        # string offset=901
.Linfo_string101:
	.asciz	"unsigned int"                  # string offset=908
.Linfo_string102:
	.asciz	"__uid_t"                       # string offset=921
.Linfo_string103:
	.asciz	"_timer"                        # string offset=929
.Linfo_string104:
	.asciz	"si_tid"                        # string offset=936
.Linfo_string105:
	.asciz	"si_overrun"                    # string offset=943
.Linfo_string106:
	.asciz	"si_sigval"                     # string offset=954
.Linfo_string107:
	.asciz	"sival_int"                     # string offset=964
.Linfo_string108:
	.asciz	"sival_ptr"                     # string offset=974
.Linfo_string109:
	.asciz	"sigval"                        # string offset=984
.Linfo_string110:
	.asciz	"__sigval_t"                    # string offset=991
.Linfo_string111:
	.asciz	"_rt"                           # string offset=1002
.Linfo_string112:
	.asciz	"_sigchld"                      # string offset=1006
.Linfo_string113:
	.asciz	"si_status"                     # string offset=1015
.Linfo_string114:
	.asciz	"si_utime"                      # string offset=1025
.Linfo_string115:
	.asciz	"long int"                      # string offset=1034
.Linfo_string116:
	.asciz	"__clock_t"                     # string offset=1043
.Linfo_string117:
	.asciz	"si_stime"                      # string offset=1053
.Linfo_string118:
	.asciz	"_sigfault"                     # string offset=1062
.Linfo_string119:
	.asciz	"si_addr"                       # string offset=1072
.Linfo_string120:
	.asciz	"si_addr_lsb"                   # string offset=1080
.Linfo_string121:
	.asciz	"short"                         # string offset=1092
.Linfo_string122:
	.asciz	"_bounds"                       # string offset=1098
.Linfo_string123:
	.asciz	"_addr_bnd"                     # string offset=1106
.Linfo_string124:
	.asciz	"_lower"                        # string offset=1116
.Linfo_string125:
	.asciz	"_upper"                        # string offset=1123
.Linfo_string126:
	.asciz	"_pkey"                         # string offset=1130
.Linfo_string127:
	.asciz	"__uint32_t"                    # string offset=1136
.Linfo_string128:
	.asciz	"_sigpoll"                      # string offset=1147
.Linfo_string129:
	.asciz	"si_band"                       # string offset=1156
.Linfo_string130:
	.asciz	"si_fd"                         # string offset=1164
.Linfo_string131:
	.asciz	"_sigsys"                       # string offset=1170
.Linfo_string132:
	.asciz	"_call_addr"                    # string offset=1178
.Linfo_string133:
	.asciz	"_syscall"                      # string offset=1189
.Linfo_string134:
	.asciz	"_arch"                         # string offset=1198
.Linfo_string135:
	.asciz	"siginfo_t"                     # string offset=1204
.Linfo_string136:
	.asciz	"sa_mask"                       # string offset=1214
.Linfo_string137:
	.asciz	"__val"                         # string offset=1222
.Linfo_string138:
	.asciz	"__sigset_t"                    # string offset=1228
.Linfo_string139:
	.asciz	"sa_flags"                      # string offset=1239
.Linfo_string140:
	.asciz	"sa_restorer"                   # string offset=1248
.Linfo_string141:
	.asciz	"sigaction"                     # string offset=1260
.Linfo_string142:
	.asciz	"statbuf"                       # string offset=1270
.Linfo_string143:
	.asciz	"st_dev"                        # string offset=1278
.Linfo_string144:
	.asciz	"__dev_t"                       # string offset=1285
.Linfo_string145:
	.asciz	"st_ino"                        # string offset=1293
.Linfo_string146:
	.asciz	"__ino_t"                       # string offset=1300
.Linfo_string147:
	.asciz	"st_nlink"                      # string offset=1308
.Linfo_string148:
	.asciz	"__nlink_t"                     # string offset=1317
.Linfo_string149:
	.asciz	"st_mode"                       # string offset=1327
.Linfo_string150:
	.asciz	"__mode_t"                      # string offset=1335
.Linfo_string151:
	.asciz	"st_uid"                        # string offset=1344
.Linfo_string152:
	.asciz	"st_gid"                        # string offset=1351
.Linfo_string153:
	.asciz	"__gid_t"                       # string offset=1358
.Linfo_string154:
	.asciz	"st_rdev"                       # string offset=1366
.Linfo_string155:
	.asciz	"st_size"                       # string offset=1374
.Linfo_string156:
	.asciz	"__off_t"                       # string offset=1382
.Linfo_string157:
	.asciz	"st_blksize"                    # string offset=1390
.Linfo_string158:
	.asciz	"__blksize_t"                   # string offset=1401
.Linfo_string159:
	.asciz	"st_blocks"                     # string offset=1413
.Linfo_string160:
	.asciz	"__blkcnt_t"                    # string offset=1423
.Linfo_string161:
	.asciz	"st_atim"                       # string offset=1434
.Linfo_string162:
	.asciz	"tv_sec"                        # string offset=1442
.Linfo_string163:
	.asciz	"__time_t"                      # string offset=1449
.Linfo_string164:
	.asciz	"tv_nsec"                       # string offset=1458
.Linfo_string165:
	.asciz	"__syscall_slong_t"             # string offset=1466
.Linfo_string166:
	.asciz	"timespec"                      # string offset=1484
.Linfo_string167:
	.asciz	"st_mtim"                       # string offset=1493
.Linfo_string168:
	.asciz	"st_ctim"                       # string offset=1501
.Linfo_string169:
	.asciz	"__glibc_reserved"              # string offset=1509
.Linfo_string170:
	.asciz	"stat"                          # string offset=1526
.Linfo_string171:
	.asciz	"term"                          # string offset=1531
.Linfo_string172:
	.asciz	"c_iflag"                       # string offset=1536
.Linfo_string173:
	.asciz	"tcflag_t"                      # string offset=1544
.Linfo_string174:
	.asciz	"c_oflag"                       # string offset=1553
.Linfo_string175:
	.asciz	"c_cflag"                       # string offset=1561
.Linfo_string176:
	.asciz	"c_lflag"                       # string offset=1569
.Linfo_string177:
	.asciz	"c_line"                        # string offset=1577
.Linfo_string178:
	.asciz	"unsigned char"                 # string offset=1584
.Linfo_string179:
	.asciz	"cc_t"                          # string offset=1598
.Linfo_string180:
	.asciz	"c_cc"                          # string offset=1603
.Linfo_string181:
	.asciz	"c_ispeed"                      # string offset=1608
.Linfo_string182:
	.asciz	"speed_t"                       # string offset=1617
.Linfo_string183:
	.asciz	"c_ospeed"                      # string offset=1625
.Linfo_string184:
	.asciz	"termios"                       # string offset=1634
.Linfo_string185:
	.asciz	"s_minishell"                   # string offset=1642
.Linfo_string186:
	.asciz	"t_minishell"                   # string offset=1654
.Linfo_string187:
	.asciz	"env_value"                     # string offset=1666
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
	.addrsig_sym handle_special_arguments
	.addrsig_sym ft_strcmp
	.addrsig_sym ft_itoa
	.addrsig_sym free
	.section	.debug_line,"",@progbits
.Lline_table_start0:
