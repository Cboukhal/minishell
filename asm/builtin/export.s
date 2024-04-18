	.text
	.file	"export.c"
	.globl	get_last_env_variable           # -- Begin function get_last_env_variable
	.p2align	4, 0x90
	.type	get_last_env_variable,@function
get_last_env_variable:                  # @get_last_env_variable
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/export.c"
	.loc	1 32 0                          # src/builtin/export.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 35 10 prologue_end            # src/builtin/export.c:35:10
	movq	-8(%rbp), %rax
	.loc	1 35 8 is_stmt 0                # src/builtin/export.c:35:8
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 36 2 is_stmt 1                # src/builtin/export.c:36:2
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 38 7                          # src/builtin/export.c:38:7
	movq	-16(%rbp), %rax
	.loc	1 38 19 is_stmt 0               # src/builtin/export.c:38:19
	cmpq	$0, 16(%rax)
.Ltmp2:
	.loc	1 38 7                          # src/builtin/export.c:38:7
	jne	.LBB0_4
# %bb.3:
.Ltmp3:
	.loc	1 39 4 is_stmt 1                # src/builtin/export.c:39:4
	jmp	.LBB0_5
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 40 11                         # src/builtin/export.c:40:11
	movq	-16(%rbp), %rax
	.loc	1 40 18 is_stmt 0               # src/builtin/export.c:40:18
	movq	16(%rax), %rax
	.loc	1 40 9                          # src/builtin/export.c:40:9
	movq	%rax, -16(%rbp)
.Ltmp5:
	.loc	1 36 2 is_stmt 1                # src/builtin/export.c:36:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 42 10                         # src/builtin/export.c:42:10
	movq	-16(%rbp), %rax
	.loc	1 42 2 is_stmt 0                # src/builtin/export.c:42:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_last_env_variable, .Lfunc_end0-get_last_env_variable
	.cfi_endproc
                                        # -- End function
	.globl	print_export                    # -- Begin function print_export
	.p2align	4, 0x90
	.type	print_export,@function
print_export:                           # @print_export
.Lfunc_begin1:
	.loc	1 46 0 is_stmt 1                # src/builtin/export.c:46:0
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
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp7:
	.loc	1 47 2 prologue_end             # src/builtin/export.c:47:2
	cmpq	$0, -8(%rbp)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
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
.Ltmp9:
	.loc	1 47 2 is_stmt 1                # src/builtin/export.c:47:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 55 1                          # src/builtin/export.c:55:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	print_export, .Lfunc_end1-print_export
	.cfi_endproc
                                        # -- End function
	.globl	is_valid_variable               # -- Begin function is_valid_variable
	.p2align	4, 0x90
	.type	is_valid_variable,@function
is_valid_variable:                      # @is_valid_variable
.Lfunc_begin2:
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
.Ltmp11:
	.loc	1 61 18 prologue_end            # src/builtin/export.c:61:18
	movq	-24(%rbp), %rax
	movsbl	(%rax), %edi
	.loc	1 61 7 is_stmt 0                # src/builtin/export.c:61:7
	callq	ft_isalpha
	cmpl	$0, %eax
	.loc	1 61 26                         # src/builtin/export.c:61:26
	jne	.LBB2_3
# %bb.1:
	.loc	1 61 29                         # src/builtin/export.c:61:29
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	.loc	1 61 36                         # src/builtin/export.c:61:36
	cmpl	$95, %eax
.Ltmp12:
	.loc	1 61 6                          # src/builtin/export.c:61:6
	je	.LBB2_3
# %bb.2:
.Ltmp13:
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
	jmp	.LBB2_18
.Ltmp14:
.LBB2_3:
	.loc	1 67 4                          # src/builtin/export.c:67:4
	movl	$0, -28(%rbp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	.loc	1 68 9                          # src/builtin/export.c:68:9
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -29(%rbp)                  # 1-byte Spill
	.loc	1 68 16 is_stmt 0               # src/builtin/export.c:68:16
	je	.LBB2_8
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
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
	jne	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	.loc	1 68 42                         # src/builtin/export.c:68:42
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 68 49                         # src/builtin/export.c:68:49
	cmpl	$95, %eax
	sete	%al
	movb	%al, -30(%rbp)                  # 1-byte Spill
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	.loc	1 0 49                          # src/builtin/export.c:0:49
	movb	-30(%rbp), %al                  # 1-byte Reload
	movb	%al, -29(%rbp)                  # 1-byte Spill
.LBB2_8:                                #   in Loop: Header=BB2_4 Depth=1
	movb	-29(%rbp), %al                  # 1-byte Reload
	.loc	1 68 2                          # src/builtin/export.c:68:2
	testb	$1, %al
	jne	.LBB2_9
	jmp	.LBB2_14
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
.Ltmp15:
	.loc	1 70 4 is_stmt 1                # src/builtin/export.c:70:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp16:
	.loc	1 71 8                          # src/builtin/export.c:71:8
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 15 is_stmt 0               # src/builtin/export.c:71:15
	cmpl	$43, %eax
	.loc	1 71 22                         # src/builtin/export.c:71:22
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_4 Depth=1
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
	je	.LBB2_12
.LBB2_11:                               #   in Loop: Header=BB2_4 Depth=1
	.loc	1 71 47                         # src/builtin/export.c:71:47
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 54                         # src/builtin/export.c:71:54
	cmpl	$61, %eax
.Ltmp17:
	.loc	1 71 7                          # src/builtin/export.c:71:7
	jne	.LBB2_13
.LBB2_12:
.Ltmp18:
	.loc	1 72 4 is_stmt 1                # src/builtin/export.c:72:4
	movb	$1, -1(%rbp)
	jmp	.LBB2_18
.Ltmp19:
.LBB2_13:                               #   in Loop: Header=BB2_4 Depth=1
	.loc	1 68 2                          # src/builtin/export.c:68:2
	jmp	.LBB2_4
.LBB2_14:
.Ltmp20:
	.loc	1 74 6                          # src/builtin/export.c:74:6
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 74 13 is_stmt 0               # src/builtin/export.c:74:13
	cmpl	$0, %eax
	.loc	1 74 21                         # src/builtin/export.c:74:21
	je	.LBB2_17
# %bb.15:
	.loc	1 74 24                         # src/builtin/export.c:74:24
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 74 31                         # src/builtin/export.c:74:31
	cmpl	$61, %eax
.Ltmp21:
	.loc	1 74 6                          # src/builtin/export.c:74:6
	je	.LBB2_17
# %bb.16:
.Ltmp22:
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
.Ltmp23:
.LBB2_17:
	.loc	1 79 2 is_stmt 1                # src/builtin/export.c:79:2
	movb	$0, -1(%rbp)
.LBB2_18:
	.loc	1 80 1                          # src/builtin/export.c:80:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp24:
.Lfunc_end2:
	.size	is_valid_variable, .Lfunc_end2-is_valid_variable
	.cfi_endproc
                                        # -- End function
	.globl	parse_export_arg                # -- Begin function parse_export_arg
	.p2align	4, 0x90
	.type	parse_export_arg,@function
parse_export_arg:                       # @parse_export_arg
.Lfunc_begin3:
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
.Ltmp25:
	.loc	1 89 4 prologue_end             # src/builtin/export.c:89:4
	movl	$0, -20(%rbp)
	.loc	1 90 13                         # src/builtin/export.c:90:13
	movq	$0, -32(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 91 9                          # src/builtin/export.c:91:9
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx,%rdx,8)
	movb	%al, -49(%rbp)                  # 1-byte Spill
	.loc	1 91 22 is_stmt 0               # src/builtin/export.c:91:22
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 91 25                         # src/builtin/export.c:91:25
	callq	__errno_location
	.loc	1 91 31                         # src/builtin/export.c:91:31
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 0 31                          # src/builtin/export.c:0:31
	movb	-49(%rbp), %al                  # 1-byte Reload
	.loc	1 91 2                          # src/builtin/export.c:91:2
	testb	$1, %al
	jne	.LBB3_4
	jmp	.LBB3_10
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp26:
	.loc	1 93 26 is_stmt 1               # src/builtin/export.c:93:26
	movq	-8(%rbp), %rdi
	.loc	1 93 37 is_stmt 0               # src/builtin/export.c:93:37
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 93 8                          # src/builtin/export.c:93:8
	callq	is_valid_variable
.Ltmp27:
	.loc	1 93 7                          # src/builtin/export.c:93:7
	testb	$1, %al
	jne	.LBB3_6
# %bb.5:
.Ltmp28:
	.loc	1 94 4 is_stmt 1                # src/builtin/export.c:94:4
	jmp	.LBB3_10
.Ltmp29:
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 95 26                         # src/builtin/export.c:95:26
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 95 9 is_stmt 0                # src/builtin/export.c:95:9
	callq	get_env_variable
	.loc	1 95 7                          # src/builtin/export.c:95:7
	movq	%rax, -48(%rbp)
.Ltmp30:
	.loc	1 96 8 is_stmt 1                # src/builtin/export.c:96:8
	cmpq	$0, -32(%rbp)
.Ltmp31:
	.loc	1 96 7 is_stmt 0                # src/builtin/export.c:96:7
	jne	.LBB3_8
# %bb.7:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp32:
	.loc	1 97 17 is_stmt 1               # src/builtin/export.c:97:17
	movq	-48(%rbp), %rax
	.loc	1 97 15 is_stmt 0               # src/builtin/export.c:97:15
	movq	%rax, -32(%rbp)
	.loc	1 97 4                          # src/builtin/export.c:97:4
	jmp	.LBB3_9
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 99 18 is_stmt 1               # src/builtin/export.c:99:18
	movq	-48(%rbp), %rcx
	.loc	1 99 4 is_stmt 0                # src/builtin/export.c:99:4
	movq	-40(%rbp), %rax
	.loc	1 99 16                         # src/builtin/export.c:99:16
	movq	%rcx, 16(%rax)
.Ltmp33:
.LBB3_9:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 100 11 is_stmt 1              # src/builtin/export.c:100:11
	movq	-48(%rbp), %rax
	.loc	1 100 9 is_stmt 0               # src/builtin/export.c:100:9
	movq	%rax, -40(%rbp)
	.loc	1 101 4 is_stmt 1               # src/builtin/export.c:101:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp34:
	.loc	1 91 2                          # src/builtin/export.c:91:2
	jmp	.LBB3_1
.LBB3_10:
	.loc	1 103 10                        # src/builtin/export.c:103:10
	movq	-32(%rbp), %rax
	.loc	1 103 2 is_stmt 0               # src/builtin/export.c:103:2
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end3:
	.size	parse_export_arg, .Lfunc_end3-parse_export_arg
	.cfi_endproc
                                        # -- End function
	.globl	export                          # -- Begin function export
	.p2align	4, 0x90
	.type	export,@function
export:                                 # @export
.Lfunc_begin4:
	.loc	1 107 0 is_stmt 1               # src/builtin/export.c:107:0
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
.Ltmp36:
	.loc	1 113 4 prologue_end            # src/builtin/export.c:113:4
	movl	$0, -28(%rbp)
.Ltmp37:
	.loc	1 115 7                         # src/builtin/export.c:115:7
	movq	-24(%rbp), %rax
	cmpq	$0, 88(%rax)
.Ltmp38:
	.loc	1 115 6 is_stmt 0               # src/builtin/export.c:115:6
	jne	.LBB4_2
# %bb.1:
.Ltmp39:
	.loc	1 116 3 is_stmt 1               # src/builtin/export.c:116:3
	jmp	.LBB4_11
.Ltmp40:
.LBB4_2:
	.loc	1 117 6                         # src/builtin/export.c:117:6
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	.loc	1 117 16 is_stmt 0              # src/builtin/export.c:117:16
	je	.LBB4_5
# %bb.3:
	.loc	1 117 19                        # src/builtin/export.c:117:19
	movq	-24(%rbp), %rax
	.loc	1 117 24                        # src/builtin/export.c:117:24
	movq	40(%rax), %rax
	.loc	1 117 19                        # src/builtin/export.c:117:19
	cmpq	$0, 8(%rax)
.Ltmp41:
	.loc	1 117 6                         # src/builtin/export.c:117:6
	je	.LBB4_5
# %bb.4:
.Ltmp42:
	.loc	1 118 8 is_stmt 1               # src/builtin/export.c:118:8
	movq	-24(%rbp), %rax
	.loc	1 118 13 is_stmt 0              # src/builtin/export.c:118:13
	movq	40(%rax), %rax
	.loc	1 118 19                        # src/builtin/export.c:118:19
	movq	8(%rax), %rax
	.loc	1 118 8                         # src/builtin/export.c:118:8
	movl	4(%rax), %eax
	.loc	1 118 6                         # src/builtin/export.c:118:6
	movl	%eax, -32(%rbp)
	.loc	1 118 3                         # src/builtin/export.c:118:3
	jmp	.LBB4_6
.LBB4_5:
	.loc	1 120 6 is_stmt 1               # src/builtin/export.c:120:6
	movl	$1, -32(%rbp)
.Ltmp43:
.LBB4_6:
	.loc	1 121 24                        # src/builtin/export.c:121:24
	movq	-24(%rbp), %rax
	.loc	1 121 29 is_stmt 0              # src/builtin/export.c:121:29
	movq	88(%rax), %rdi
	.loc	1 121 12                        # src/builtin/export.c:121:12
	callq	cmd_arg_nbr
	.loc	1 121 10                        # src/builtin/export.c:121:10
	movl	%eax, -36(%rbp)
.Ltmp44:
	.loc	1 122 14 is_stmt 1              # src/builtin/export.c:122:14
	cmpl	$1, -36(%rbp)
.Ltmp45:
	.loc	1 122 6 is_stmt 0               # src/builtin/export.c:122:6
	jne	.LBB4_8
# %bb.7:
.Ltmp46:
	.loc	1 123 18 is_stmt 1              # src/builtin/export.c:123:18
	movq	-16(%rbp), %rax
	.loc	1 123 17 is_stmt 0              # src/builtin/export.c:123:17
	movq	(%rax), %rdi
	.loc	1 123 24                        # src/builtin/export.c:123:24
	movl	-32(%rbp), %esi
	.loc	1 123 3                         # src/builtin/export.c:123:3
	callq	print_export
	jmp	.LBB4_11
.LBB4_8:
.Ltmp47:
	.loc	1 124 19 is_stmt 1              # src/builtin/export.c:124:19
	cmpl	$1, -36(%rbp)
.Ltmp48:
	.loc	1 124 11 is_stmt 0              # src/builtin/export.c:124:11
	jle	.LBB4_10
# %bb.9:
.Ltmp49:
	.loc	1 126 18 is_stmt 1              # src/builtin/export.c:126:18
	movq	-16(%rbp), %rdi
	.loc	1 126 23 is_stmt 0              # src/builtin/export.c:126:23
	movq	-24(%rbp), %rax
	.loc	1 126 28                        # src/builtin/export.c:126:28
	movq	88(%rax), %rax
	.loc	1 126 23                        # src/builtin/export.c:126:23
	movq	8(%rax), %rsi
	.loc	1 126 3                         # src/builtin/export.c:126:3
	callq	unset_variable
	.loc	1 127 30 is_stmt 1              # src/builtin/export.c:127:30
	movq	-8(%rbp), %rdi
	.loc	1 127 42 is_stmt 0              # src/builtin/export.c:127:42
	movq	-24(%rbp), %rax
	.loc	1 127 47                        # src/builtin/export.c:127:47
	movq	88(%rax), %rsi
	.loc	1 127 42                        # src/builtin/export.c:127:42
	addq	$8, %rsi
	.loc	1 127 13                        # src/builtin/export.c:127:13
	callq	parse_export_arg
	.loc	1 127 11                        # src/builtin/export.c:127:11
	movq	%rax, -48(%rbp)
	.loc	1 128 35 is_stmt 1              # src/builtin/export.c:128:35
	movq	-16(%rbp), %rsi
	.loc	1 128 3 is_stmt 0               # src/builtin/export.c:128:3
	leaq	-48(%rbp), %rdi
	callq	add_new_var_to_env
.Ltmp50:
.LBB4_10:
	.loc	1 0 3                           # src/builtin/export.c:0:3
	jmp	.LBB4_11
.LBB4_11:
	.loc	1 130 1 is_stmt 1               # src/builtin/export.c:130:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp51:
.Lfunc_end4:
	.size	export, .Lfunc_end4-export
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

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/builtin/../../include/minishell.h"
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
	.byte	1                               # Abbrev [1] 0xb:0xc0a DW_TAG_compile_unit
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
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x61:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x93:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	523                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xac:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xba:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.long	506                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xd7:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	445                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xf0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfe:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	764                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x10c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x11a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x128:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x136:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string184                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x145:0x78 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x15a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	537                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x168:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	3071                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x176:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	106                             # DW_AT_decl_line
	.long	3076                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x184:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string182                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x192:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1a0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	530                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1ae:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string188                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	445                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1bd:0x5 DW_TAG_pointer_type
	.long	450                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1c2:0xb DW_TAG_typedef
	.long	461                             # DW_AT_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1cd:0x2d DW_TAG_structure_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1d5:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1e1:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ed:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	518                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1fa:0x5 DW_TAG_pointer_type
	.long	511                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1ff:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x206:0x5 DW_TAG_pointer_type
	.long	461                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x20b:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x212:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x219:0x5 DW_TAG_pointer_type
	.long	542                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x21e:0xb DW_TAG_typedef
	.long	553                             # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x229:0xbe DW_TAG_structure_type
	.long	.Linfo_string180                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x232:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	743                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x23e:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x24a:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x256:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	764                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x262:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x27a:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x286:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	764                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x292:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	445                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x29e:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	769                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2aa:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	835                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b6:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1607                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2c2:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1721                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ce:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2560                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2da:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2909                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2e7:0x5 DW_TAG_pointer_type
	.long	748                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2ec:0xb DW_TAG_typedef
	.long	759                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2f7:0x5 DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x2fc:0x5 DW_TAG_pointer_type
	.long	506                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x301:0x5 DW_TAG_pointer_type
	.long	774                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x306:0xb DW_TAG_typedef
	.long	785                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x311:0x2d DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x319:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x325:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x331:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	830                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x33e:0x5 DW_TAG_pointer_type
	.long	785                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x343:0x5 DW_TAG_pointer_type
	.long	840                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x348:0xb DW_TAG_typedef
	.long	851                             # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x353:0x2d DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x35b:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	896                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x367:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1602                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x373:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1602                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x380:0x5 DW_TAG_pointer_type
	.long	901                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x385:0xb DW_TAG_typedef
	.long	912                             # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x390:0x51 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x398:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3a4:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b0:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3bc:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c8:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	998                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d4:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	998                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3e1:0x5 DW_TAG_pointer_type
	.long	530                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3e6:0x5 DW_TAG_pointer_type
	.long	1003                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3eb:0xc9 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3f3:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3ff:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x40b:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x417:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x423:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x42f:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x43b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1204                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x447:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1258                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x453:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1319                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45f:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1392                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x46b:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	769                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x477:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1470                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x483:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1548                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48f:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	764                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	998                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a7:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	998                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4b4:0x5 DW_TAG_pointer_type
	.long	1209                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4b9:0xb DW_TAG_typedef
	.long	1220                            # DW_AT_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4c4:0x21 DW_TAG_structure_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4cc:0xc DW_TAG_member
	.long	.Linfo_string6                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4d8:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1253                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4e5:0x5 DW_TAG_pointer_type
	.long	1220                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4ea:0x5 DW_TAG_pointer_type
	.long	1263                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4ef:0xb DW_TAG_typedef
	.long	1274                            # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4fa:0x2d DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x502:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x51a:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	993                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x527:0x5 DW_TAG_pointer_type
	.long	1324                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x52c:0xb DW_TAG_typedef
	.long	1335                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x537:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x53f:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x54b:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x557:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1392                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x563:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1470                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x570:0x5 DW_TAG_pointer_type
	.long	1397                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x575:0xb DW_TAG_typedef
	.long	1408                            # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x580:0x39 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x588:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x594:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5a0:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5ac:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1465                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5b9:0x5 DW_TAG_pointer_type
	.long	1408                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5be:0x5 DW_TAG_pointer_type
	.long	1475                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5c3:0xb DW_TAG_typedef
	.long	1486                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5ce:0x39 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5d6:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5e2:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5ee:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5fa:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1543                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x607:0x5 DW_TAG_pointer_type
	.long	1486                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x60c:0x5 DW_TAG_pointer_type
	.long	1553                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x611:0xb DW_TAG_typedef
	.long	1564                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x61c:0x21 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x624:0xc DW_TAG_member
	.long	.Linfo_string4                  # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x630:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1597                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x63d:0x5 DW_TAG_pointer_type
	.long	1564                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x642:0x5 DW_TAG_pointer_type
	.long	851                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x647:0x5 DW_TAG_pointer_type
	.long	1612                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x64c:0xb DW_TAG_typedef
	.long	1623                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x657:0x5d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x65f:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x66b:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x677:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x683:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	506                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x68f:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1548                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x69b:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1716                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string7                  # DW_AT_name
	.long	1716                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6b4:0x5 DW_TAG_pointer_type
	.long	1623                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6b9:0x56 DW_TAG_structure_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6c1:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1741                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x6cd:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6d1:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1807                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6dd:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1830                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6ea:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2507                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6f6:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x702:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2554                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x70f:0xb DW_TAG_typedef
	.long	1818                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x71a:0x5 DW_TAG_pointer_type
	.long	1823                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x71f:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x720:0x5 DW_TAG_formal_parameter
	.long	530                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x726:0x5 DW_TAG_pointer_type
	.long	1835                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x72b:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x72c:0x5 DW_TAG_formal_parameter
	.long	530                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x731:0x5 DW_TAG_formal_parameter
	.long	1852                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x736:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x73c:0x5 DW_TAG_pointer_type
	.long	1857                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x741:0xb DW_TAG_typedef
	.long	1868                            # DW_AT_type
	.long	.Linfo_string129                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x74c:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x750:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x75c:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x768:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x774:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x780:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1932                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x78c:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x790:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2379                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x79c:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	1960                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7a8:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7ac:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2398                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7b8:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2409                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7c5:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2001                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7d1:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7d5:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7e1:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7ed:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2427                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7fa:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2054                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x806:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x80a:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2398                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x816:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2409                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x822:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2427                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x82f:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2107                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x83b:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x83f:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2398                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x84b:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2409                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x857:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x863:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x86f:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x87c:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x888:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x898:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2489                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8a4:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2224                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8b0:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8b4:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2240                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8c0:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8c4:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8d0:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8dd:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2496                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x8eb:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2295                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8f7:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8fb:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2482                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x907:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x914:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2336                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x920:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x924:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x930:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x93c:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2420                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x94b:0xc DW_TAG_array_type
	.long	530                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x950:0x6 DW_TAG_subrange_type
	.long	2391                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x957:0x7 DW_TAG_base_type
	.long	.Linfo_string90                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x95e:0xb DW_TAG_typedef
	.long	530                             # DW_AT_type
	.long	.Linfo_string93                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x969:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x974:0x7 DW_TAG_base_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x97b:0xb DW_TAG_typedef
	.long	2438                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x986:0x21 DW_TAG_union_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x98e:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99a:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9a7:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9b2:0x7 DW_TAG_base_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0x9b9:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x9c0:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9cb:0xb DW_TAG_typedef
	.long	2518                            # DW_AT_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x9d6:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x9da:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2535                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x9e7:0xc DW_TAG_array_type
	.long	2547                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0x9ec:0x6 DW_TAG_subrange_type
	.long	2391                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9f3:0x7 DW_TAG_base_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x9fa:0x5 DW_TAG_pointer_type
	.long	2559                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x9ff:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0xa00:0x5 DW_TAG_pointer_type
	.long	2565                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa05:0xbd DW_TAG_structure_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa0d:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2754                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa19:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2765                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa25:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2776                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa31:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2787                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa3d:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2409                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa49:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2798                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa55:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	530                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa61:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2754                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa6d:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2809                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa79:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2820                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa85:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2831                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa91:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa9d:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaa9:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2842                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xab5:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2897                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xac2:0xb DW_TAG_typedef
	.long	2547                            # DW_AT_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xacd:0xb DW_TAG_typedef
	.long	2547                            # DW_AT_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xad8:0xb DW_TAG_typedef
	.long	2547                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xae3:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaee:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaf9:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb04:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb0f:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb1a:0x21 DW_TAG_structure_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb22:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2875                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb2e:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2886                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb3b:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb46:0xb DW_TAG_typedef
	.long	2482                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb51:0xc DW_TAG_array_type
	.long	2886                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb56:0x6 DW_TAG_subrange_type
	.long	2391                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xb5d:0x5 DW_TAG_pointer_type
	.long	2914                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xb62:0x69 DW_TAG_structure_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb6a:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	3019                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb76:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	3019                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb82:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	3019                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb8e:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3019                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb9a:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	3030                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xba6:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3048                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbb2:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3060                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xbbe:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3060                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xbcb:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xbd6:0xb DW_TAG_typedef
	.long	3041                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbe1:0x7 DW_TAG_base_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xbe8:0xc DW_TAG_array_type
	.long	3030                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xbed:0x6 DW_TAG_subrange_type
	.long	2391                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xbf4:0xb DW_TAG_typedef
	.long	2420                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xbff:0x5 DW_TAG_pointer_type
	.long	445                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xc04:0x5 DW_TAG_pointer_type
	.long	3081                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xc09:0xb DW_TAG_typedef
	.long	1003                            # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
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
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=59
.Linfo_string3:
	.asciz	"get_last_env_variable"         # string offset=117
.Linfo_string4:
	.asciz	"name"                          # string offset=139
.Linfo_string5:
	.asciz	"char"                          # string offset=144
.Linfo_string6:
	.asciz	"value"                         # string offset=149
.Linfo_string7:
	.asciz	"next"                          # string offset=155
.Linfo_string8:
	.asciz	"s_env"                         # string offset=160
.Linfo_string9:
	.asciz	"t_env"                         # string offset=166
.Linfo_string10:
	.asciz	"print_export"                  # string offset=172
.Linfo_string11:
	.asciz	"is_valid_variable"             # string offset=185
.Linfo_string12:
	.asciz	"_Bool"                         # string offset=203
.Linfo_string13:
	.asciz	"parse_export_arg"              # string offset=209
.Linfo_string14:
	.asciz	"export"                        # string offset=226
.Linfo_string15:
	.asciz	"env"                           # string offset=233
.Linfo_string16:
	.asciz	"index"                         # string offset=237
.Linfo_string17:
	.asciz	"fd"                            # string offset=243
.Linfo_string18:
	.asciz	"int"                           # string offset=246
.Linfo_string19:
	.asciz	"minishell"                     # string offset=250
.Linfo_string20:
	.asciz	"dir"                           # string offset=260
.Linfo_string21:
	.asciz	"__dirstream"                   # string offset=264
.Linfo_string22:
	.asciz	"DIR"                           # string offset=276
.Linfo_string23:
	.asciz	"state"                         # string offset=280
.Linfo_string24:
	.asciz	"input"                         # string offset=286
.Linfo_string25:
	.asciz	"path"                          # string offset=292
.Linfo_string26:
	.asciz	"prompt"                        # string offset=297
.Linfo_string27:
	.asciz	"operator_nbr"                  # string offset=304
.Linfo_string28:
	.asciz	"exit_status"                   # string offset=317
.Linfo_string29:
	.asciz	"env_array"                     # string offset=329
.Linfo_string30:
	.asciz	"local"                         # string offset=339
.Linfo_string31:
	.asciz	"s_var"                         # string offset=345
.Linfo_string32:
	.asciz	"t_var"                         # string offset=351
.Linfo_string33:
	.asciz	"syntax_tree"                   # string offset=357
.Linfo_string34:
	.asciz	"node"                          # string offset=369
.Linfo_string35:
	.asciz	"id"                            # string offset=374
.Linfo_string36:
	.asciz	"type"                          # string offset=377
.Linfo_string37:
	.asciz	"pipe_fd"                       # string offset=382
.Linfo_string38:
	.asciz	"left"                          # string offset=390
.Linfo_string39:
	.asciz	"pid"                           # string offset=395
.Linfo_string40:
	.asciz	"wstatus"                       # string offset=399
.Linfo_string41:
	.asciz	"arg"                           # string offset=407
.Linfo_string42:
	.asciz	"s_arg"                         # string offset=411
.Linfo_string43:
	.asciz	"t_arg"                         # string offset=417
.Linfo_string44:
	.asciz	"pipe"                          # string offset=423
.Linfo_string45:
	.asciz	"to_close"                      # string offset=428
.Linfo_string46:
	.asciz	"write"                         # string offset=437
.Linfo_string47:
	.asciz	"read"                          # string offset=443
.Linfo_string48:
	.asciz	"s_pipe"                        # string offset=448
.Linfo_string49:
	.asciz	"t_pipe"                        # string offset=455
.Linfo_string50:
	.asciz	"redir"                         # string offset=462
.Linfo_string51:
	.asciz	"in_fd"                         # string offset=468
.Linfo_string52:
	.asciz	"out_fd"                        # string offset=474
.Linfo_string53:
	.asciz	"infile"                        # string offset=481
.Linfo_string54:
	.asciz	"s_infile"                      # string offset=488
.Linfo_string55:
	.asciz	"t_infile"                      # string offset=497
.Linfo_string56:
	.asciz	"outfile"                       # string offset=506
.Linfo_string57:
	.asciz	"s_outfile"                     # string offset=514
.Linfo_string58:
	.asciz	"t_outfile"                     # string offset=524
.Linfo_string59:
	.asciz	"s_redir"                       # string offset=534
.Linfo_string60:
	.asciz	"t_redir"                       # string offset=542
.Linfo_string61:
	.asciz	"assign"                        # string offset=550
.Linfo_string62:
	.asciz	"expansion"                     # string offset=557
.Linfo_string63:
	.asciz	"s_expan"                       # string offset=567
.Linfo_string64:
	.asciz	"t_expan"                       # string offset=575
.Linfo_string65:
	.asciz	"arg_array"                     # string offset=583
.Linfo_string66:
	.asciz	"prev"                          # string offset=593
.Linfo_string67:
	.asciz	"s_cmd"                         # string offset=598
.Linfo_string68:
	.asciz	"right"                         # string offset=604
.Linfo_string69:
	.asciz	"s_ast_node"                    # string offset=610
.Linfo_string70:
	.asciz	"t_ast_node"                    # string offset=621
.Linfo_string71:
	.asciz	"s_ast"                         # string offset=632
.Linfo_string72:
	.asciz	"t_ast"                         # string offset=638
.Linfo_string73:
	.asciz	"token_stream"                  # string offset=644
.Linfo_string74:
	.asciz	"quote_nbr"                     # string offset=657
.Linfo_string75:
	.asciz	"length"                        # string offset=667
.Linfo_string76:
	.asciz	"lexeme"                        # string offset=674
.Linfo_string77:
	.asciz	"s_token"                       # string offset=681
.Linfo_string78:
	.asciz	"t_token"                       # string offset=689
.Linfo_string79:
	.asciz	"sighandler"                    # string offset=697
.Linfo_string80:
	.asciz	"__sigaction_handler"           # string offset=708
.Linfo_string81:
	.asciz	"sa_handler"                    # string offset=728
.Linfo_string82:
	.asciz	"__sighandler_t"                # string offset=739
.Linfo_string83:
	.asciz	"sa_sigaction"                  # string offset=754
.Linfo_string84:
	.asciz	"si_signo"                      # string offset=767
.Linfo_string85:
	.asciz	"si_errno"                      # string offset=776
.Linfo_string86:
	.asciz	"si_code"                       # string offset=785
.Linfo_string87:
	.asciz	"__pad0"                        # string offset=793
.Linfo_string88:
	.asciz	"_sifields"                     # string offset=800
.Linfo_string89:
	.asciz	"_pad"                          # string offset=810
.Linfo_string90:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=815
.Linfo_string91:
	.asciz	"_kill"                         # string offset=835
.Linfo_string92:
	.asciz	"si_pid"                        # string offset=841
.Linfo_string93:
	.asciz	"__pid_t"                       # string offset=848
.Linfo_string94:
	.asciz	"si_uid"                        # string offset=856
.Linfo_string95:
	.asciz	"unsigned int"                  # string offset=863
.Linfo_string96:
	.asciz	"__uid_t"                       # string offset=876
.Linfo_string97:
	.asciz	"_timer"                        # string offset=884
.Linfo_string98:
	.asciz	"si_tid"                        # string offset=891
.Linfo_string99:
	.asciz	"si_overrun"                    # string offset=898
.Linfo_string100:
	.asciz	"si_sigval"                     # string offset=909
.Linfo_string101:
	.asciz	"sival_int"                     # string offset=919
.Linfo_string102:
	.asciz	"sival_ptr"                     # string offset=929
.Linfo_string103:
	.asciz	"sigval"                        # string offset=939
.Linfo_string104:
	.asciz	"__sigval_t"                    # string offset=946
.Linfo_string105:
	.asciz	"_rt"                           # string offset=957
.Linfo_string106:
	.asciz	"_sigchld"                      # string offset=961
.Linfo_string107:
	.asciz	"si_status"                     # string offset=970
.Linfo_string108:
	.asciz	"si_utime"                      # string offset=980
.Linfo_string109:
	.asciz	"long int"                      # string offset=989
.Linfo_string110:
	.asciz	"__clock_t"                     # string offset=998
.Linfo_string111:
	.asciz	"si_stime"                      # string offset=1008
.Linfo_string112:
	.asciz	"_sigfault"                     # string offset=1017
.Linfo_string113:
	.asciz	"si_addr"                       # string offset=1027
.Linfo_string114:
	.asciz	"si_addr_lsb"                   # string offset=1035
.Linfo_string115:
	.asciz	"short"                         # string offset=1047
.Linfo_string116:
	.asciz	"_bounds"                       # string offset=1053
.Linfo_string117:
	.asciz	"_addr_bnd"                     # string offset=1061
.Linfo_string118:
	.asciz	"_lower"                        # string offset=1071
.Linfo_string119:
	.asciz	"_upper"                        # string offset=1078
.Linfo_string120:
	.asciz	"_pkey"                         # string offset=1085
.Linfo_string121:
	.asciz	"__uint32_t"                    # string offset=1091
.Linfo_string122:
	.asciz	"_sigpoll"                      # string offset=1102
.Linfo_string123:
	.asciz	"si_band"                       # string offset=1111
.Linfo_string124:
	.asciz	"si_fd"                         # string offset=1119
.Linfo_string125:
	.asciz	"_sigsys"                       # string offset=1125
.Linfo_string126:
	.asciz	"_call_addr"                    # string offset=1133
.Linfo_string127:
	.asciz	"_syscall"                      # string offset=1144
.Linfo_string128:
	.asciz	"_arch"                         # string offset=1153
.Linfo_string129:
	.asciz	"siginfo_t"                     # string offset=1159
.Linfo_string130:
	.asciz	"sa_mask"                       # string offset=1169
.Linfo_string131:
	.asciz	"__val"                         # string offset=1177
.Linfo_string132:
	.asciz	"long unsigned int"             # string offset=1183
.Linfo_string133:
	.asciz	"__sigset_t"                    # string offset=1201
.Linfo_string134:
	.asciz	"sa_flags"                      # string offset=1212
.Linfo_string135:
	.asciz	"sa_restorer"                   # string offset=1221
.Linfo_string136:
	.asciz	"sigaction"                     # string offset=1233
.Linfo_string137:
	.asciz	"statbuf"                       # string offset=1243
.Linfo_string138:
	.asciz	"st_dev"                        # string offset=1251
.Linfo_string139:
	.asciz	"__dev_t"                       # string offset=1258
.Linfo_string140:
	.asciz	"st_ino"                        # string offset=1266
.Linfo_string141:
	.asciz	"__ino_t"                       # string offset=1273
.Linfo_string142:
	.asciz	"st_nlink"                      # string offset=1281
.Linfo_string143:
	.asciz	"__nlink_t"                     # string offset=1290
.Linfo_string144:
	.asciz	"st_mode"                       # string offset=1300
.Linfo_string145:
	.asciz	"__mode_t"                      # string offset=1308
.Linfo_string146:
	.asciz	"st_uid"                        # string offset=1317
.Linfo_string147:
	.asciz	"st_gid"                        # string offset=1324
.Linfo_string148:
	.asciz	"__gid_t"                       # string offset=1331
.Linfo_string149:
	.asciz	"st_rdev"                       # string offset=1339
.Linfo_string150:
	.asciz	"st_size"                       # string offset=1347
.Linfo_string151:
	.asciz	"__off_t"                       # string offset=1355
.Linfo_string152:
	.asciz	"st_blksize"                    # string offset=1363
.Linfo_string153:
	.asciz	"__blksize_t"                   # string offset=1374
.Linfo_string154:
	.asciz	"st_blocks"                     # string offset=1386
.Linfo_string155:
	.asciz	"__blkcnt_t"                    # string offset=1396
.Linfo_string156:
	.asciz	"st_atim"                       # string offset=1407
.Linfo_string157:
	.asciz	"tv_sec"                        # string offset=1415
.Linfo_string158:
	.asciz	"__time_t"                      # string offset=1422
.Linfo_string159:
	.asciz	"tv_nsec"                       # string offset=1431
.Linfo_string160:
	.asciz	"__syscall_slong_t"             # string offset=1439
.Linfo_string161:
	.asciz	"timespec"                      # string offset=1457
.Linfo_string162:
	.asciz	"st_mtim"                       # string offset=1466
.Linfo_string163:
	.asciz	"st_ctim"                       # string offset=1474
.Linfo_string164:
	.asciz	"__glibc_reserved"              # string offset=1482
.Linfo_string165:
	.asciz	"stat"                          # string offset=1499
.Linfo_string166:
	.asciz	"term"                          # string offset=1504
.Linfo_string167:
	.asciz	"c_iflag"                       # string offset=1509
.Linfo_string168:
	.asciz	"tcflag_t"                      # string offset=1517
.Linfo_string169:
	.asciz	"c_oflag"                       # string offset=1526
.Linfo_string170:
	.asciz	"c_cflag"                       # string offset=1534
.Linfo_string171:
	.asciz	"c_lflag"                       # string offset=1542
.Linfo_string172:
	.asciz	"c_line"                        # string offset=1550
.Linfo_string173:
	.asciz	"unsigned char"                 # string offset=1557
.Linfo_string174:
	.asciz	"cc_t"                          # string offset=1571
.Linfo_string175:
	.asciz	"c_cc"                          # string offset=1576
.Linfo_string176:
	.asciz	"c_ispeed"                      # string offset=1581
.Linfo_string177:
	.asciz	"speed_t"                       # string offset=1590
.Linfo_string178:
	.asciz	"c_ospeed"                      # string offset=1598
.Linfo_string179:
	.asciz	"termios"                       # string offset=1607
.Linfo_string180:
	.asciz	"s_minishell"                   # string offset=1615
.Linfo_string181:
	.asciz	"t_minishell"                   # string offset=1627
.Linfo_string182:
	.asciz	"i"                             # string offset=1639
.Linfo_string183:
	.asciz	"export_arg"                    # string offset=1641
.Linfo_string184:
	.asciz	"new"                           # string offset=1652
.Linfo_string185:
	.asciz	"cmd"                           # string offset=1656
.Linfo_string186:
	.asciz	"t_cmd"                         # string offset=1660
.Linfo_string187:
	.asciz	"arg_nbr"                       # string offset=1666
.Linfo_string188:
	.asciz	"new_var"                       # string offset=1674
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
