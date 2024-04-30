	.text
	.file	"export.c"
	.globl	print_export                    # -- Begin function print_export
	.p2align	4, 0x90
	.type	print_export,@function
print_export:                           # @print_export
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/export.c"
	.loc	1 46 0                          # src/builtin/export.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp0:
	.loc	1 47 2 prologue_end             # src/builtin/export.c:47:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 49 9                          # src/builtin/export.c:49:9
	movl	-12(%rbp), %edi
	.loc	1 49 3 is_stmt 0                # src/builtin/export.c:49:3
	movabsq	$.L.str, %rsi
	movl	$11, %edx
	callq	write
	.loc	1 50 9 is_stmt 1                # src/builtin/export.c:50:9
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	.loc	1 50 13 is_stmt 0               # src/builtin/export.c:50:13
	movq	-8(%rbp), %rax
	.loc	1 50 18                         # src/builtin/export.c:50:18
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 50 34                         # src/builtin/export.c:50:34
	movq	-8(%rbp), %rax
	.loc	1 50 39                         # src/builtin/export.c:50:39
	movq	(%rax), %rdi
	.loc	1 50 24                         # src/builtin/export.c:50:24
	callq	ft_strlen
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 50 3                          # src/builtin/export.c:50:3
	callq	write
	.loc	1 51 9 is_stmt 1                # src/builtin/export.c:51:9
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	.loc	1 51 13 is_stmt 0               # src/builtin/export.c:51:13
	movq	-8(%rbp), %rax
	.loc	1 51 18                         # src/builtin/export.c:51:18
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	.loc	1 51 35                         # src/builtin/export.c:51:35
	movq	-8(%rbp), %rax
	.loc	1 51 40                         # src/builtin/export.c:51:40
	movq	8(%rax), %rdi
	.loc	1 51 25                         # src/builtin/export.c:51:25
	callq	ft_strlen
	movl	-28(%rbp), %edi                 # 4-byte Reload
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 51 3                          # src/builtin/export.c:51:3
	callq	write
	.loc	1 52 3 is_stmt 1                # src/builtin/export.c:52:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 53 9                          # src/builtin/export.c:53:9
	movq	-8(%rbp), %rax
	.loc	1 53 14 is_stmt 0               # src/builtin/export.c:53:14
	movq	16(%rax), %rax
	.loc	1 53 7                          # src/builtin/export.c:53:7
	movq	%rax, -8(%rbp)
.Ltmp2:
	.loc	1 47 2 is_stmt 1                # src/builtin/export.c:47:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 55 1                          # src/builtin/export.c:55:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	print_export, .Lfunc_end0-print_export
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_variable               # -- Begin function is_valid_variable
	.p2align	4, 0x90
	.type	is_valid_variable,@function
is_valid_variable:                      # @is_valid_variable
.Lfunc_begin1:
	.loc	1 58 0                          # src/builtin/export.c:58:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp4:
	.loc	1 61 18 prologue_end            # src/builtin/export.c:61:18
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	.loc	1 61 7 is_stmt 0                # src/builtin/export.c:61:7
	callq	ft_isalpha
	cmpl	$0, %eax
	.loc	1 61 26                         # src/builtin/export.c:61:26
	jne	.LBB1_3
# %bb.1:
	.loc	1 61 29                         # src/builtin/export.c:61:29
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	.loc	1 61 36                         # src/builtin/export.c:61:36
	cmpl	$95, %eax
.Ltmp5:
	.loc	1 61 6                          # src/builtin/export.c:61:6
	je	.LBB1_3
# %bb.2:
.Ltmp6:
	.loc	1 63 61 is_stmt 1               # src/builtin/export.c:63:61
	movq	-24(%rbp), %rsi
	.loc	1 63 3 is_stmt 0                # src/builtin/export.c:63:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 64 3 is_stmt 1                # src/builtin/export.c:64:3
	movq	-16(%rbp), %rax
	.loc	1 64 26 is_stmt 0               # src/builtin/export.c:64:26
	movl	$1, 44(%rax)
	.loc	1 65 3 is_stmt 1                # src/builtin/export.c:65:3
	movb	$0, -1(%rbp)
	jmp	.LBB1_18
.Ltmp7:
.LBB1_3:
	.loc	1 67 4                          # src/builtin/export.c:67:4
	movl	$0, -28(%rbp)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	.loc	1 68 9                          # src/builtin/export.c:68:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -29(%rbp)                  # 1-byte Spill
	.loc	1 68 16 is_stmt 0               # src/builtin/export.c:68:16
	je	.LBB1_8
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	.loc	1 68 31                         # src/builtin/export.c:68:31
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	.loc	1 68 20                         # src/builtin/export.c:68:20
	callq	ft_isalnum
	movl	%eax, %ecx
	movb	$1, %al
	cmpl	$0, %ecx
	movb	%al, -30(%rbp)                  # 1-byte Spill
	.loc	1 68 39                         # src/builtin/export.c:68:39
	jne	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	.loc	1 68 42                         # src/builtin/export.c:68:42
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 68 49                         # src/builtin/export.c:68:49
	cmpl	$95, %eax
	sete	%al
	movb	%al, -30(%rbp)                  # 1-byte Spill
.LBB1_7:                                #   in Loop: Header=BB1_4 Depth=1
	.loc	1 0 49                          # src/builtin/export.c:0:49
	movb	-30(%rbp), %al                  # 1-byte Reload
	movb	%al, -29(%rbp)                  # 1-byte Spill
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	movb	-29(%rbp), %al                  # 1-byte Reload
	.loc	1 68 2                          # src/builtin/export.c:68:2
	testb	$1, %al
	jne	.LBB1_9
	jmp	.LBB1_14
.LBB1_9:                                #   in Loop: Header=BB1_4 Depth=1
.Ltmp8:
	.loc	1 70 4 is_stmt 1                # src/builtin/export.c:70:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp9:
	.loc	1 71 8                          # src/builtin/export.c:71:8
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 15 is_stmt 0               # src/builtin/export.c:71:15
	cmpl	$43, %eax
	.loc	1 71 22                         # src/builtin/export.c:71:22
	jne	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_4 Depth=1
	.loc	1 71 25                         # src/builtin/export.c:71:25
	movq	-24(%rbp), %rax
	.loc	1 71 29                         # src/builtin/export.c:71:29
	movl	-28(%rbp), %ecx
	.loc	1 71 31                         # src/builtin/export.c:71:31
	addl	$1, %ecx
	.loc	1 71 25                         # src/builtin/export.c:71:25
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 36                         # src/builtin/export.c:71:36
	cmpl	$61, %eax
	.loc	1 71 44                         # src/builtin/export.c:71:44
	je	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_4 Depth=1
	.loc	1 71 47                         # src/builtin/export.c:71:47
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 54                         # src/builtin/export.c:71:54
	cmpl	$61, %eax
.Ltmp10:
	.loc	1 71 7                          # src/builtin/export.c:71:7
	jne	.LBB1_13
.LBB1_12:
.Ltmp11:
	.loc	1 72 4 is_stmt 1                # src/builtin/export.c:72:4
	movb	$1, -1(%rbp)
	jmp	.LBB1_18
.Ltmp12:
.LBB1_13:                               #   in Loop: Header=BB1_4 Depth=1
	.loc	1 68 2                          # src/builtin/export.c:68:2
	jmp	.LBB1_4
.LBB1_14:
.Ltmp13:
	.loc	1 74 6                          # src/builtin/export.c:74:6
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 74 13 is_stmt 0               # src/builtin/export.c:74:13
	cmpl	$0, %eax
	.loc	1 74 21                         # src/builtin/export.c:74:21
	je	.LBB1_17
# %bb.15:
	.loc	1 74 24                         # src/builtin/export.c:74:24
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 74 31                         # src/builtin/export.c:74:31
	cmpl	$61, %eax
.Ltmp14:
	.loc	1 74 6                          # src/builtin/export.c:74:6
	je	.LBB1_17
# %bb.16:
.Ltmp15:
	.loc	1 76 61 is_stmt 1               # src/builtin/export.c:76:61
	movq	-24(%rbp), %rsi
	.loc	1 76 3 is_stmt 0                # src/builtin/export.c:76:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 77 3 is_stmt 1                # src/builtin/export.c:77:3
	movq	-16(%rbp), %rax
	.loc	1 77 26 is_stmt 0               # src/builtin/export.c:77:26
	movl	$1, 44(%rax)
.Ltmp16:
.LBB1_17:
	.loc	1 79 2 is_stmt 1                # src/builtin/export.c:79:2
	movb	$0, -1(%rbp)
.LBB1_18:
	.loc	1 80 1                          # src/builtin/export.c:80:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end1:
	.size	is_valid_variable, .Lfunc_end1-is_valid_variable
	.cfi_endproc
                                        # -- End function
	.globl	parse_export_arg                # -- Begin function parse_export_arg
	.p2align	4, 0x90
	.type	parse_export_arg,@function
parse_export_arg:                       # @parse_export_arg
.Lfunc_begin2:
	.loc	1 83 0                          # src/builtin/export.c:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp18:
	.loc	1 89 4 prologue_end             # src/builtin/export.c:89:4
	movl	$0, -20(%rbp)
	.loc	1 90 13                         # src/builtin/export.c:90:13
	movq	$0, -32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 91 9                          # src/builtin/export.c:91:9
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -49(%rbp)                  # 1-byte Spill
	.loc	1 91 22 is_stmt 0               # src/builtin/export.c:91:22
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 91 25                         # src/builtin/export.c:91:25
	callq	__errno_location
	.loc	1 91 31                         # src/builtin/export.c:91:31
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 31                          # src/builtin/export.c:0:31
	movb	-49(%rbp), %al                  # 1-byte Reload
	.loc	1 91 2                          # src/builtin/export.c:91:2
	testb	$1, %al
	jne	.LBB2_4
	jmp	.LBB2_11
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp19:
	.loc	1 93 26 is_stmt 1               # src/builtin/export.c:93:26
	movq	-8(%rbp), %rdi
	.loc	1 93 37 is_stmt 0               # src/builtin/export.c:93:37
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 93 8                          # src/builtin/export.c:93:8
	callq	is_valid_variable
.Ltmp20:
	.loc	1 93 7                          # src/builtin/export.c:93:7
	testb	$1, %al
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp21:
	.loc	1 94 6 is_stmt 1                # src/builtin/export.c:94:6
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	.loc	1 94 5 is_stmt 0                # src/builtin/export.c:94:5
	jmp	.LBB2_10
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp22:
	.loc	1 97 27 is_stmt 1               # src/builtin/export.c:97:27
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 97 10 is_stmt 0               # src/builtin/export.c:97:10
	callq	get_env_variable
	.loc	1 97 8                          # src/builtin/export.c:97:8
	movq	%rax, -48(%rbp)
.Ltmp23:
	.loc	1 98 9 is_stmt 1                # src/builtin/export.c:98:9
	cmpq	$0, -32(%rbp)
.Ltmp24:
	.loc	1 98 8 is_stmt 0                # src/builtin/export.c:98:8
	jne	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp25:
	.loc	1 99 18 is_stmt 1               # src/builtin/export.c:99:18
	movq	-48(%rbp), %rax
	.loc	1 99 16 is_stmt 0               # src/builtin/export.c:99:16
	movq	%rax, -32(%rbp)
	.loc	1 99 5                          # src/builtin/export.c:99:5
	jmp	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 101 19 is_stmt 1              # src/builtin/export.c:101:19
	movq	-48(%rbp), %rcx
	.loc	1 101 5 is_stmt 0               # src/builtin/export.c:101:5
	movq	-40(%rbp), %rax
	.loc	1 101 17                        # src/builtin/export.c:101:17
	movq	%rcx, 16(%rax)
.Ltmp26:
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 102 12 is_stmt 1              # src/builtin/export.c:102:12
	movq	-48(%rbp), %rax
	.loc	1 102 10 is_stmt 0              # src/builtin/export.c:102:10
	movq	%rax, -40(%rbp)
	.loc	1 103 5 is_stmt 1               # src/builtin/export.c:103:5
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp27:
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	.loc	1 91 2                          # src/builtin/export.c:91:2
	jmp	.LBB2_1
.LBB2_11:
	.loc	1 106 10                        # src/builtin/export.c:106:10
	movq	-32(%rbp), %rax
	.loc	1 106 2 is_stmt 0               # src/builtin/export.c:106:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp28:
.Lfunc_end2:
	.size	parse_export_arg, .Lfunc_end2-parse_export_arg
	.cfi_endproc
                                        # -- End function
	.globl	export                          # -- Begin function export
	.p2align	4, 0x90
	.type	export,@function
export:                                 # @export
.Lfunc_begin3:
	.loc	1 110 0 is_stmt 1               # src/builtin/export.c:110:0
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
	movq	%rdx, -24(%rbp)
.Ltmp29:
	.loc	1 116 4 prologue_end            # src/builtin/export.c:116:4
	movl	$0, -28(%rbp)
.Ltmp30:
	.loc	1 118 7                         # src/builtin/export.c:118:7
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
.Ltmp31:
	.loc	1 118 6 is_stmt 0               # src/builtin/export.c:118:6
	jne	.LBB3_2
# %bb.1:
.Ltmp32:
	.loc	1 119 3 is_stmt 1               # src/builtin/export.c:119:3
	jmp	.LBB3_14
.Ltmp33:
.LBB3_2:
	.loc	1 120 6                         # src/builtin/export.c:120:6
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 120 16 is_stmt 0              # src/builtin/export.c:120:16
	je	.LBB3_5
# %bb.3:
	.loc	1 120 19                        # src/builtin/export.c:120:19
	movq	-24(%rbp), %rax
	.loc	1 120 24                        # src/builtin/export.c:120:24
	movq	40(%rax), %rax
	.loc	1 120 19                        # src/builtin/export.c:120:19
	cmpq	$0, 8(%rax)
.Ltmp34:
	.loc	1 120 6                         # src/builtin/export.c:120:6
	je	.LBB3_5
# %bb.4:
.Ltmp35:
	.loc	1 121 8 is_stmt 1               # src/builtin/export.c:121:8
	movq	-24(%rbp), %rax
	.loc	1 121 13 is_stmt 0              # src/builtin/export.c:121:13
	movq	40(%rax), %rax
	.loc	1 121 19                        # src/builtin/export.c:121:19
	movq	8(%rax), %rax
	.loc	1 121 8                         # src/builtin/export.c:121:8
	movl	4(%rax), %eax
	.loc	1 121 6                         # src/builtin/export.c:121:6
	movl	%eax, -32(%rbp)
	.loc	1 121 3                         # src/builtin/export.c:121:3
	jmp	.LBB3_6
.LBB3_5:
	.loc	1 123 6 is_stmt 1               # src/builtin/export.c:123:6
	movl	$1, -32(%rbp)
.Ltmp36:
.LBB3_6:
	.loc	1 124 24                        # src/builtin/export.c:124:24
	movq	-24(%rbp), %rax
	.loc	1 124 29 is_stmt 0              # src/builtin/export.c:124:29
	movq	88(%rax), %rdi
	.loc	1 124 12                        # src/builtin/export.c:124:12
	callq	cmd_arg_nbr
	.loc	1 124 10                        # src/builtin/export.c:124:10
	movl	%eax, -36(%rbp)
.Ltmp37:
	.loc	1 125 14 is_stmt 1              # src/builtin/export.c:125:14
	cmpl	$1, -36(%rbp)
.Ltmp38:
	.loc	1 125 6 is_stmt 0               # src/builtin/export.c:125:6
	jne	.LBB3_8
# %bb.7:
.Ltmp39:
	.loc	1 126 18 is_stmt 1              # src/builtin/export.c:126:18
	movq	-16(%rbp), %rax
	.loc	1 126 17 is_stmt 0              # src/builtin/export.c:126:17
	movq	(%rax), %rdi
	.loc	1 126 24                        # src/builtin/export.c:126:24
	movl	-32(%rbp), %esi
	.loc	1 126 3                         # src/builtin/export.c:126:3
	callq	print_export
	jmp	.LBB3_14
.LBB3_8:
.Ltmp40:
	.loc	1 127 19 is_stmt 1              # src/builtin/export.c:127:19
	cmpl	$1, -36(%rbp)
.Ltmp41:
	.loc	1 127 11 is_stmt 0              # src/builtin/export.c:127:11
	jle	.LBB3_13
# %bb.9:
.Ltmp42:
	.loc	1 129 3 is_stmt 1               # src/builtin/export.c:129:3
	jmp	.LBB3_10
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 129 10 is_stmt 0              # src/builtin/export.c:129:10
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 129 14                        # src/builtin/export.c:129:14
	cmpl	-36(%rbp), %eax
	.loc	1 129 3                         # src/builtin/export.c:129:3
	jge	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	.loc	1 130 19 is_stmt 1              # src/builtin/export.c:130:19
	movq	-16(%rbp), %rdi
	.loc	1 130 24 is_stmt 0              # src/builtin/export.c:130:24
	movq	-24(%rbp), %rax
	.loc	1 130 29                        # src/builtin/export.c:130:29
	movq	88(%rax), %rax
	.loc	1 130 24                        # src/builtin/export.c:130:24
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 130 4                         # src/builtin/export.c:130:4
	callq	unset_variable
	.loc	1 129 3 is_stmt 1               # src/builtin/export.c:129:3
	jmp	.LBB3_10
.LBB3_12:
	.loc	1 131 30                        # src/builtin/export.c:131:30
	movq	-8(%rbp), %rdi
	.loc	1 131 42 is_stmt 0              # src/builtin/export.c:131:42
	movq	-24(%rbp), %rax
	.loc	1 131 47                        # src/builtin/export.c:131:47
	movq	88(%rax), %rsi
	.loc	1 131 42                        # src/builtin/export.c:131:42
	addq	$8, %rsi
	.loc	1 131 13                        # src/builtin/export.c:131:13
	callq	parse_export_arg
	.loc	1 131 11                        # src/builtin/export.c:131:11
	movq	%rax, -48(%rbp)
	.loc	1 132 35 is_stmt 1              # src/builtin/export.c:132:35
	movq	-16(%rbp), %rsi
	.loc	1 132 3 is_stmt 0               # src/builtin/export.c:132:3
	leaq	-48(%rbp), %rdi
	callq	add_new_var_to_env
.Ltmp43:
.LBB3_13:
	.loc	1 0 3                           # src/builtin/export.c:0:3
	jmp	.LBB3_14
.LBB3_14:
	.loc	1 134 1 is_stmt 1               # src/builtin/export.c:134:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp44:
.Lfunc_end3:
	.size	export, .Lfunc_end3-export
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declare -x "
	.size	.L.str, 12

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"bash: export: `%s': not a valid identifier\n"
	.size	.L.str.2, 44

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/builtin/../../include/minishell.h"
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
	.byte	3                               # Abbreviation Code
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
	.byte	4                               # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
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
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
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
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	1                               # Abbrev [1] 0xb:0xbd4 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x4d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5c:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	390                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x75:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x83:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	458                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x91:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string180                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa0:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	397                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xb9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0xc7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	709                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string180                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string181                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xff:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x10e:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x123:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	482                             # DW_AT_type
	.byte	3                               # Abbrev [3] 0x131:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	3017                            # DW_AT_type
	.byte	3                               # Abbrev [3] 0x13f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string184                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	3022                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x14d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string180                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x15b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x169:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string186                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.long	475                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x177:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x186:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x18d:0x5 DW_TAG_pointer_type
	.long	402                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x192:0xb DW_TAG_typedef
	.long	413                             # DW_AT_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x19d:0x2d DW_TAG_structure_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1a5:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b1:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1bd:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	470                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1ca:0x5 DW_TAG_pointer_type
	.long	463                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1cf:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1d6:0x5 DW_TAG_pointer_type
	.long	413                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1db:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1e2:0x5 DW_TAG_pointer_type
	.long	487                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1e7:0xb DW_TAG_typedef
	.long	498                             # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1f2:0xbe DW_TAG_structure_type
	.long	.Linfo_string178                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1fb:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	688                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x207:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x213:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x21f:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x22b:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x237:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x243:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x24f:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x25b:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	397                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x267:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	714                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x273:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	780                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x27f:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1552                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x28b:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	1666                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x297:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2506                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2a3:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2855                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2b0:0x5 DW_TAG_pointer_type
	.long	693                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b5:0xb DW_TAG_typedef
	.long	704                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2c0:0x5 DW_TAG_structure_type
	.long	.Linfo_string19                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x2c5:0x5 DW_TAG_pointer_type
	.long	458                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2ca:0x5 DW_TAG_pointer_type
	.long	719                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2cf:0xb DW_TAG_typedef
	.long	730                             # DW_AT_type
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2da:0x2d DW_TAG_structure_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2e2:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ee:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2fa:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	775                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x307:0x5 DW_TAG_pointer_type
	.long	730                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x30c:0x5 DW_TAG_pointer_type
	.long	785                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x311:0xb DW_TAG_typedef
	.long	796                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x31c:0x2d DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x324:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	841                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x330:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x33c:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x349:0x5 DW_TAG_pointer_type
	.long	846                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x34e:0xb DW_TAG_typedef
	.long	857                             # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x359:0x51 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x361:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x36d:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x379:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	938                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x385:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x391:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x39d:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3aa:0x5 DW_TAG_pointer_type
	.long	475                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3af:0x5 DW_TAG_pointer_type
	.long	948                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3b4:0xc9 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3bc:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c8:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3e0:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ec:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f8:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x404:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1149                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x410:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1203                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x41c:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1264                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x428:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1337                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x434:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	714                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x440:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1415                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x44c:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1493                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x458:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	709                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x464:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x470:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	943                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x47d:0x5 DW_TAG_pointer_type
	.long	1154                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x482:0xb DW_TAG_typedef
	.long	1165                            # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x48d:0x21 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x495:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a1:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1198                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4ae:0x5 DW_TAG_pointer_type
	.long	1165                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4b3:0x5 DW_TAG_pointer_type
	.long	1208                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b8:0xb DW_TAG_typedef
	.long	1219                            # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4c3:0x2d DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4cb:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	938                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d7:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	938                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e3:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	938                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4f0:0x5 DW_TAG_pointer_type
	.long	1269                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4f5:0xb DW_TAG_typedef
	.long	1280                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x500:0x39 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x508:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x514:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x520:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1337                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x52c:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1415                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x539:0x5 DW_TAG_pointer_type
	.long	1342                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x53e:0xb DW_TAG_typedef
	.long	1353                            # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x549:0x39 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x551:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x55d:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x569:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x575:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1410                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x582:0x5 DW_TAG_pointer_type
	.long	1353                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x587:0x5 DW_TAG_pointer_type
	.long	1420                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x58c:0xb DW_TAG_typedef
	.long	1431                            # DW_AT_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x597:0x39 DW_TAG_structure_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x59f:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5ab:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5b7:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5c3:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1488                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5d0:0x5 DW_TAG_pointer_type
	.long	1431                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5d5:0x5 DW_TAG_pointer_type
	.long	1498                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5da:0xb DW_TAG_typedef
	.long	1509                            # DW_AT_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5e5:0x21 DW_TAG_structure_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5ed:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f9:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1542                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x606:0x5 DW_TAG_pointer_type
	.long	1509                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x60b:0x5 DW_TAG_pointer_type
	.long	796                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x610:0x5 DW_TAG_pointer_type
	.long	1557                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x615:0xb DW_TAG_typedef
	.long	1568                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x620:0x5d DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x628:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x634:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x640:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x64c:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x658:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1493                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x664:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1661                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x670:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	1661                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x67d:0x5 DW_TAG_pointer_type
	.long	1568                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x682:0x56 DW_TAG_structure_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x68a:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1686                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x696:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x69a:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1752                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6a6:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1775                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2453                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6bf:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6cb:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	2500                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x6d8:0xb DW_TAG_typedef
	.long	1763                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x6e3:0x5 DW_TAG_pointer_type
	.long	1768                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6e8:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x6e9:0x5 DW_TAG_formal_parameter
	.long	475                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6ef:0x5 DW_TAG_pointer_type
	.long	1780                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x6f4:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x6f5:0x5 DW_TAG_formal_parameter
	.long	475                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6fa:0x5 DW_TAG_formal_parameter
	.long	1797                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x6ff:0x5 DW_TAG_formal_parameter
	.long	2416                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x705:0x5 DW_TAG_pointer_type
	.long	1802                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x70a:0xb DW_TAG_typedef
	.long	1813                            # DW_AT_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x715:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x719:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x725:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x731:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x73d:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x749:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1877                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x755:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x759:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	2324                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x765:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1905                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x771:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x775:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	2343                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x781:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x78e:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	1946                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x79a:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x79e:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7aa:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7b6:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2372                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7c3:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	1999                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7cf:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7d3:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	2343                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7df:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7eb:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2372                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7f8:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2052                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x804:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x808:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	2343                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x814:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x820:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82c:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2417                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x838:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2417                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x845:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2129                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x851:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x855:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x861:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2435                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x86d:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2169                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x879:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x87d:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2185                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x889:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x88d:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x899:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8a6:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2442                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8b4:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2240                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x8c0:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2428                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8dd:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2281                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x8e9:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8ed:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8f9:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x905:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2365                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x914:0xc DW_TAG_array_type
	.long	475                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x919:0x6 DW_TAG_subrange_type
	.long	2336                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x920:0x7 DW_TAG_base_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x927:0xb DW_TAG_typedef
	.long	475                             # DW_AT_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x932:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x93d:0x7 DW_TAG_base_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x944:0xb DW_TAG_typedef
	.long	2383                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x94f:0x21 DW_TAG_union_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x957:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x963:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2416                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x970:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x971:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x97c:0x7 DW_TAG_base_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x983:0x7 DW_TAG_base_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x98a:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x995:0xb DW_TAG_typedef
	.long	2464                            # DW_AT_type
	.long	.Linfo_string131                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x9a0:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9a4:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2481                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x9b1:0xc DW_TAG_array_type
	.long	2493                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x9b6:0x6 DW_TAG_subrange_type
	.long	2336                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x9bd:0x7 DW_TAG_base_type
	.long	.Linfo_string130                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9c4:0x5 DW_TAG_pointer_type
	.long	2505                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9c9:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x9ca:0x5 DW_TAG_pointer_type
	.long	2511                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x9cf:0xbd DW_TAG_structure_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9d7:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2700                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9e3:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2711                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9ef:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2722                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9fb:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2733                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa07:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa13:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2744                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa1f:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa2b:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2700                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa37:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2755                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa43:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2766                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa4f:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2777                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa5b:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2788                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa67:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2788                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa73:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2788                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa7f:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2843                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa8c:0xb DW_TAG_typedef
	.long	2493                            # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa97:0xb DW_TAG_typedef
	.long	2493                            # DW_AT_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaa2:0xb DW_TAG_typedef
	.long	2493                            # DW_AT_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaad:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xab8:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xac3:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xace:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xad9:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xae4:0x21 DW_TAG_structure_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xaec:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2821                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaf8:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2832                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb05:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb10:0xb DW_TAG_typedef
	.long	2428                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xb1b:0xc DW_TAG_array_type
	.long	2832                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb20:0x6 DW_TAG_subrange_type
	.long	2336                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb27:0x5 DW_TAG_pointer_type
	.long	2860                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb2c:0x69 DW_TAG_structure_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb34:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2965                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb40:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2965                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb4c:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2965                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb58:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2965                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb64:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2976                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb70:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	2994                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb7c:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3006                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb88:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3006                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb95:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xba0:0xb DW_TAG_typedef
	.long	2987                            # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0xbab:0x7 DW_TAG_base_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xbb2:0xc DW_TAG_array_type
	.long	2976                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xbb7:0x6 DW_TAG_subrange_type
	.long	2336                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xbbe:0xb DW_TAG_typedef
	.long	2365                            # DW_AT_type
	.long	.Linfo_string175                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xbc9:0x5 DW_TAG_pointer_type
	.long	397                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xbce:0x5 DW_TAG_pointer_type
	.long	3027                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbd3:0xb DW_TAG_typedef
	.long	948                             # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/builtin/export.c"          # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=59
.Linfo_string3:
	.asciz	"print_export"                  # string offset=128
.Linfo_string4:
	.asciz	"is_valid_variable"             # string offset=141
.Linfo_string5:
	.asciz	"_Bool"                         # string offset=159
.Linfo_string6:
	.asciz	"parse_export_arg"              # string offset=165
.Linfo_string7:
	.asciz	"name"                          # string offset=182
.Linfo_string8:
	.asciz	"char"                          # string offset=187
.Linfo_string9:
	.asciz	"value"                         # string offset=192
.Linfo_string10:
	.asciz	"next"                          # string offset=198
.Linfo_string11:
	.asciz	"s_env"                         # string offset=203
.Linfo_string12:
	.asciz	"t_env"                         # string offset=209
.Linfo_string13:
	.asciz	"export"                        # string offset=215
.Linfo_string14:
	.asciz	"env"                           # string offset=222
.Linfo_string15:
	.asciz	"fd"                            # string offset=226
.Linfo_string16:
	.asciz	"int"                           # string offset=229
.Linfo_string17:
	.asciz	"minishell"                     # string offset=233
.Linfo_string18:
	.asciz	"dir"                           # string offset=243
.Linfo_string19:
	.asciz	"__dirstream"                   # string offset=247
.Linfo_string20:
	.asciz	"DIR"                           # string offset=259
.Linfo_string21:
	.asciz	"state"                         # string offset=263
.Linfo_string22:
	.asciz	"input"                         # string offset=269
.Linfo_string23:
	.asciz	"path"                          # string offset=275
.Linfo_string24:
	.asciz	"prompt"                        # string offset=280
.Linfo_string25:
	.asciz	"operator_nbr"                  # string offset=287
.Linfo_string26:
	.asciz	"exit_status"                   # string offset=300
.Linfo_string27:
	.asciz	"env_array"                     # string offset=312
.Linfo_string28:
	.asciz	"local"                         # string offset=322
.Linfo_string29:
	.asciz	"s_var"                         # string offset=328
.Linfo_string30:
	.asciz	"t_var"                         # string offset=334
.Linfo_string31:
	.asciz	"syntax_tree"                   # string offset=340
.Linfo_string32:
	.asciz	"node"                          # string offset=352
.Linfo_string33:
	.asciz	"id"                            # string offset=357
.Linfo_string34:
	.asciz	"type"                          # string offset=360
.Linfo_string35:
	.asciz	"pipe_fd"                       # string offset=365
.Linfo_string36:
	.asciz	"left"                          # string offset=373
.Linfo_string37:
	.asciz	"pid"                           # string offset=378
.Linfo_string38:
	.asciz	"wstatus"                       # string offset=382
.Linfo_string39:
	.asciz	"arg"                           # string offset=390
.Linfo_string40:
	.asciz	"s_arg"                         # string offset=394
.Linfo_string41:
	.asciz	"t_arg"                         # string offset=400
.Linfo_string42:
	.asciz	"pipe"                          # string offset=406
.Linfo_string43:
	.asciz	"to_close"                      # string offset=411
.Linfo_string44:
	.asciz	"write"                         # string offset=420
.Linfo_string45:
	.asciz	"read"                          # string offset=426
.Linfo_string46:
	.asciz	"s_pipe"                        # string offset=431
.Linfo_string47:
	.asciz	"t_pipe"                        # string offset=438
.Linfo_string48:
	.asciz	"redir"                         # string offset=445
.Linfo_string49:
	.asciz	"in_fd"                         # string offset=451
.Linfo_string50:
	.asciz	"out_fd"                        # string offset=457
.Linfo_string51:
	.asciz	"infile"                        # string offset=464
.Linfo_string52:
	.asciz	"s_infile"                      # string offset=471
.Linfo_string53:
	.asciz	"t_infile"                      # string offset=480
.Linfo_string54:
	.asciz	"outfile"                       # string offset=489
.Linfo_string55:
	.asciz	"s_outfile"                     # string offset=497
.Linfo_string56:
	.asciz	"t_outfile"                     # string offset=507
.Linfo_string57:
	.asciz	"s_redir"                       # string offset=517
.Linfo_string58:
	.asciz	"t_redir"                       # string offset=525
.Linfo_string59:
	.asciz	"assign"                        # string offset=533
.Linfo_string60:
	.asciz	"expansion"                     # string offset=540
.Linfo_string61:
	.asciz	"s_expan"                       # string offset=550
.Linfo_string62:
	.asciz	"t_expan"                       # string offset=558
.Linfo_string63:
	.asciz	"arg_array"                     # string offset=566
.Linfo_string64:
	.asciz	"prev"                          # string offset=576
.Linfo_string65:
	.asciz	"s_cmd"                         # string offset=581
.Linfo_string66:
	.asciz	"right"                         # string offset=587
.Linfo_string67:
	.asciz	"s_ast_node"                    # string offset=593
.Linfo_string68:
	.asciz	"t_ast_node"                    # string offset=604
.Linfo_string69:
	.asciz	"s_ast"                         # string offset=615
.Linfo_string70:
	.asciz	"t_ast"                         # string offset=621
.Linfo_string71:
	.asciz	"token_stream"                  # string offset=627
.Linfo_string72:
	.asciz	"quote_nbr"                     # string offset=640
.Linfo_string73:
	.asciz	"length"                        # string offset=650
.Linfo_string74:
	.asciz	"lexeme"                        # string offset=657
.Linfo_string75:
	.asciz	"s_token"                       # string offset=664
.Linfo_string76:
	.asciz	"t_token"                       # string offset=672
.Linfo_string77:
	.asciz	"sighandler"                    # string offset=680
.Linfo_string78:
	.asciz	"__sigaction_handler"           # string offset=691
.Linfo_string79:
	.asciz	"sa_handler"                    # string offset=711
.Linfo_string80:
	.asciz	"__sighandler_t"                # string offset=722
.Linfo_string81:
	.asciz	"sa_sigaction"                  # string offset=737
.Linfo_string82:
	.asciz	"si_signo"                      # string offset=750
.Linfo_string83:
	.asciz	"si_errno"                      # string offset=759
.Linfo_string84:
	.asciz	"si_code"                       # string offset=768
.Linfo_string85:
	.asciz	"__pad0"                        # string offset=776
.Linfo_string86:
	.asciz	"_sifields"                     # string offset=783
.Linfo_string87:
	.asciz	"_pad"                          # string offset=793
.Linfo_string88:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=798
.Linfo_string89:
	.asciz	"_kill"                         # string offset=818
.Linfo_string90:
	.asciz	"si_pid"                        # string offset=824
.Linfo_string91:
	.asciz	"__pid_t"                       # string offset=831
.Linfo_string92:
	.asciz	"si_uid"                        # string offset=839
.Linfo_string93:
	.asciz	"unsigned int"                  # string offset=846
.Linfo_string94:
	.asciz	"__uid_t"                       # string offset=859
.Linfo_string95:
	.asciz	"_timer"                        # string offset=867
.Linfo_string96:
	.asciz	"si_tid"                        # string offset=874
.Linfo_string97:
	.asciz	"si_overrun"                    # string offset=881
.Linfo_string98:
	.asciz	"si_sigval"                     # string offset=892
.Linfo_string99:
	.asciz	"sival_int"                     # string offset=902
.Linfo_string100:
	.asciz	"sival_ptr"                     # string offset=912
.Linfo_string101:
	.asciz	"sigval"                        # string offset=922
.Linfo_string102:
	.asciz	"__sigval_t"                    # string offset=929
.Linfo_string103:
	.asciz	"_rt"                           # string offset=940
.Linfo_string104:
	.asciz	"_sigchld"                      # string offset=944
.Linfo_string105:
	.asciz	"si_status"                     # string offset=953
.Linfo_string106:
	.asciz	"si_utime"                      # string offset=963
.Linfo_string107:
	.asciz	"long int"                      # string offset=972
.Linfo_string108:
	.asciz	"__clock_t"                     # string offset=981
.Linfo_string109:
	.asciz	"si_stime"                      # string offset=991
.Linfo_string110:
	.asciz	"_sigfault"                     # string offset=1000
.Linfo_string111:
	.asciz	"si_addr"                       # string offset=1010
.Linfo_string112:
	.asciz	"si_addr_lsb"                   # string offset=1018
.Linfo_string113:
	.asciz	"short"                         # string offset=1030
.Linfo_string114:
	.asciz	"_bounds"                       # string offset=1036
.Linfo_string115:
	.asciz	"_addr_bnd"                     # string offset=1044
.Linfo_string116:
	.asciz	"_lower"                        # string offset=1054
.Linfo_string117:
	.asciz	"_upper"                        # string offset=1061
.Linfo_string118:
	.asciz	"_pkey"                         # string offset=1068
.Linfo_string119:
	.asciz	"__uint32_t"                    # string offset=1074
.Linfo_string120:
	.asciz	"_sigpoll"                      # string offset=1085
.Linfo_string121:
	.asciz	"si_band"                       # string offset=1094
.Linfo_string122:
	.asciz	"si_fd"                         # string offset=1102
.Linfo_string123:
	.asciz	"_sigsys"                       # string offset=1108
.Linfo_string124:
	.asciz	"_call_addr"                    # string offset=1116
.Linfo_string125:
	.asciz	"_syscall"                      # string offset=1127
.Linfo_string126:
	.asciz	"_arch"                         # string offset=1136
.Linfo_string127:
	.asciz	"siginfo_t"                     # string offset=1142
.Linfo_string128:
	.asciz	"sa_mask"                       # string offset=1152
.Linfo_string129:
	.asciz	"__val"                         # string offset=1160
.Linfo_string130:
	.asciz	"long unsigned int"             # string offset=1166
.Linfo_string131:
	.asciz	"__sigset_t"                    # string offset=1184
.Linfo_string132:
	.asciz	"sa_flags"                      # string offset=1195
.Linfo_string133:
	.asciz	"sa_restorer"                   # string offset=1204
.Linfo_string134:
	.asciz	"sigaction"                     # string offset=1216
.Linfo_string135:
	.asciz	"statbuf"                       # string offset=1226
.Linfo_string136:
	.asciz	"st_dev"                        # string offset=1234
.Linfo_string137:
	.asciz	"__dev_t"                       # string offset=1241
.Linfo_string138:
	.asciz	"st_ino"                        # string offset=1249
.Linfo_string139:
	.asciz	"__ino_t"                       # string offset=1256
.Linfo_string140:
	.asciz	"st_nlink"                      # string offset=1264
.Linfo_string141:
	.asciz	"__nlink_t"                     # string offset=1273
.Linfo_string142:
	.asciz	"st_mode"                       # string offset=1283
.Linfo_string143:
	.asciz	"__mode_t"                      # string offset=1291
.Linfo_string144:
	.asciz	"st_uid"                        # string offset=1300
.Linfo_string145:
	.asciz	"st_gid"                        # string offset=1307
.Linfo_string146:
	.asciz	"__gid_t"                       # string offset=1314
.Linfo_string147:
	.asciz	"st_rdev"                       # string offset=1322
.Linfo_string148:
	.asciz	"st_size"                       # string offset=1330
.Linfo_string149:
	.asciz	"__off_t"                       # string offset=1338
.Linfo_string150:
	.asciz	"st_blksize"                    # string offset=1346
.Linfo_string151:
	.asciz	"__blksize_t"                   # string offset=1357
.Linfo_string152:
	.asciz	"st_blocks"                     # string offset=1369
.Linfo_string153:
	.asciz	"__blkcnt_t"                    # string offset=1379
.Linfo_string154:
	.asciz	"st_atim"                       # string offset=1390
.Linfo_string155:
	.asciz	"tv_sec"                        # string offset=1398
.Linfo_string156:
	.asciz	"__time_t"                      # string offset=1405
.Linfo_string157:
	.asciz	"tv_nsec"                       # string offset=1414
.Linfo_string158:
	.asciz	"__syscall_slong_t"             # string offset=1422
.Linfo_string159:
	.asciz	"timespec"                      # string offset=1440
.Linfo_string160:
	.asciz	"st_mtim"                       # string offset=1449
.Linfo_string161:
	.asciz	"st_ctim"                       # string offset=1457
.Linfo_string162:
	.asciz	"__glibc_reserved"              # string offset=1465
.Linfo_string163:
	.asciz	"stat"                          # string offset=1482
.Linfo_string164:
	.asciz	"term"                          # string offset=1487
.Linfo_string165:
	.asciz	"c_iflag"                       # string offset=1492
.Linfo_string166:
	.asciz	"tcflag_t"                      # string offset=1500
.Linfo_string167:
	.asciz	"c_oflag"                       # string offset=1509
.Linfo_string168:
	.asciz	"c_cflag"                       # string offset=1517
.Linfo_string169:
	.asciz	"c_lflag"                       # string offset=1525
.Linfo_string170:
	.asciz	"c_line"                        # string offset=1533
.Linfo_string171:
	.asciz	"unsigned char"                 # string offset=1540
.Linfo_string172:
	.asciz	"cc_t"                          # string offset=1554
.Linfo_string173:
	.asciz	"c_cc"                          # string offset=1559
.Linfo_string174:
	.asciz	"c_ispeed"                      # string offset=1564
.Linfo_string175:
	.asciz	"speed_t"                       # string offset=1573
.Linfo_string176:
	.asciz	"c_ospeed"                      # string offset=1581
.Linfo_string177:
	.asciz	"termios"                       # string offset=1590
.Linfo_string178:
	.asciz	"s_minishell"                   # string offset=1598
.Linfo_string179:
	.asciz	"t_minishell"                   # string offset=1610
.Linfo_string180:
	.asciz	"i"                             # string offset=1622
.Linfo_string181:
	.asciz	"export_arg"                    # string offset=1624
.Linfo_string182:
	.asciz	"index"                         # string offset=1635
.Linfo_string183:
	.asciz	"new"                           # string offset=1641
.Linfo_string184:
	.asciz	"cmd"                           # string offset=1645
.Linfo_string185:
	.asciz	"t_cmd"                         # string offset=1649
.Linfo_string186:
	.asciz	"arg_nbr"                       # string offset=1655
.Linfo_string187:
	.asciz	"new_var"                       # string offset=1663
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym print_export
	.addrsig_sym write
	.addrsig_sym ft_strlen
	.addrsig_sym printf
	.addrsig_sym is_valid_variable
	.addrsig_sym ft_isalpha
	.addrsig_sym ft_printf
	.addrsig_sym ft_isalnum
	.addrsig_sym parse_export_arg
	.addrsig_sym __errno_location
	.addrsig_sym get_env_variable
	.addrsig_sym cmd_arg_nbr
	.addrsig_sym unset_variable
	.addrsig_sym add_new_var_to_env
	.section	.debug_line,"",@progbits
.Lline_table_start0:
