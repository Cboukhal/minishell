	.text
	.file	"expand_variable.c"
	.globl	expand_variable_in_lexeme       # -- Begin function expand_variable_in_lexeme
	.p2align	4, 0x90
	.type	expand_variable_in_lexeme,@function
expand_variable_in_lexeme:              # @expand_variable_in_lexeme
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/expand_variable.c"
	.loc	1 17 0                          # src/parsing/expand_variable.c:17:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
.Ltmp0:
	.loc	1 20 4 prologue_end             # src/parsing/expand_variable.c:20:4
	movq	$0, -48(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 21 10                         # src/parsing/expand_variable.c:21:10
	movq	-16(%rbp), %rax
	.loc	1 21 2 is_stmt 0                # src/parsing/expand_variable.c:21:2
	cmpb	$0, (%rax)
	je	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 23 8 is_stmt 1                # src/parsing/expand_variable.c:23:8
	movq	-16(%rbp), %rax
	.loc	1 23 7 is_stmt 0                # src/parsing/expand_variable.c:23:7
	movsbl	(%rax), %eax
	.loc	1 23 15                         # src/parsing/expand_variable.c:23:15
	cmpl	$36, %eax
	.loc	1 23 22                         # src/parsing/expand_variable.c:23:22
	jne	.LBB0_8
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 23 36                         # src/parsing/expand_variable.c:23:36
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 24 8 is_stmt 1                # src/parsing/expand_variable.c:24:8
	movq	-16(%rbp), %rax
	.loc	1 24 16 is_stmt 0               # src/parsing/expand_variable.c:24:16
	addq	$1, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 24 31                         # src/parsing/expand_variable.c:24:31
	movq	-32(%rbp), %rdi
	.loc	1 24 21                         # src/parsing/expand_variable.c:24:21
	callq	ft_strlen
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 23 25 is_stmt 1               # src/parsing/expand_variable.c:23:25
	callq	ft_strncmp
	.loc	1 24 38                         # src/parsing/expand_variable.c:24:38
	cmpl	$0, %eax
.Ltmp2:
	.loc	1 23 7                          # src/parsing/expand_variable.c:23:7
	jne	.LBB0_8
# %bb.4:
.Ltmp3:
	.loc	1 26 4                          # src/parsing/expand_variable.c:26:4
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 26 12 is_stmt 0               # src/parsing/expand_variable.c:26:12
	movq	-40(%rbp), %rax
	.loc	1 26 4                          # src/parsing/expand_variable.c:26:4
	cmpb	$0, (%rax)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
.Ltmp4:
	.loc	1 28 30 is_stmt 1               # src/parsing/expand_variable.c:28:30
	movq	-40(%rbp), %rax
	.loc	1 28 29 is_stmt 0               # src/parsing/expand_variable.c:28:29
	movb	(%rax), %dl
	.loc	1 28 7                          # src/parsing/expand_variable.c:28:7
	movq	-24(%rbp), %rax
	.loc	1 28 6                          # src/parsing/expand_variable.c:28:6
	movq	(%rax), %rax
	.loc	1 28 24                         # src/parsing/expand_variable.c:28:24
	movq	-48(%rbp), %rcx
	.loc	1 28 27                         # src/parsing/expand_variable.c:28:27
	movb	%dl, (%rax,%rcx)
	.loc	1 29 10 is_stmt 1               # src/parsing/expand_variable.c:29:10
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc	1 30 6                          # src/parsing/expand_variable.c:30:6
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp5:
	.loc	1 26 4                          # src/parsing/expand_variable.c:26:4
	jmp	.LBB0_5
.LBB0_7:
	.loc	1 32 12                         # src/parsing/expand_variable.c:32:12
	movq	-48(%rbp), %rax
	.loc	1 32 4 is_stmt 0                # src/parsing/expand_variable.c:32:4
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.Ltmp6:
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 34 28 is_stmt 1               # src/parsing/expand_variable.c:34:28
	movq	-16(%rbp), %rax
	.loc	1 34 27 is_stmt 0               # src/parsing/expand_variable.c:34:27
	movb	(%rax), %dl
	.loc	1 34 5                          # src/parsing/expand_variable.c:34:5
	movq	-24(%rbp), %rax
	.loc	1 34 4                          # src/parsing/expand_variable.c:34:4
	movq	(%rax), %rax
	.loc	1 34 22                         # src/parsing/expand_variable.c:34:22
	movq	-48(%rbp), %rcx
	.loc	1 34 25                         # src/parsing/expand_variable.c:34:25
	movb	%dl, (%rax,%rcx)
	.loc	1 35 9 is_stmt 1                # src/parsing/expand_variable.c:35:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc	1 36 4                          # src/parsing/expand_variable.c:36:4
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp7:
	.loc	1 21 2                          # src/parsing/expand_variable.c:21:2
	jmp	.LBB0_1
.LBB0_9:
	.loc	1 38 10                         # src/parsing/expand_variable.c:38:10
	movq	-48(%rbp), %rax
	.loc	1 38 2 is_stmt 0                # src/parsing/expand_variable.c:38:2
	movq	%rax, -8(%rbp)
.LBB0_10:
	.loc	1 39 1 is_stmt 1                # src/parsing/expand_variable.c:39:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp8:
.Lfunc_end0:
	.size	expand_variable_in_lexeme, .Lfunc_end0-expand_variable_in_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	replace_variable_in_lexeme      # -- Begin function replace_variable_in_lexeme
	.p2align	4, 0x90
	.type	replace_variable_in_lexeme,@function
replace_variable_in_lexeme:             # @replace_variable_in_lexeme
.Lfunc_begin1:
	.loc	1 43 0                          # src/parsing/expand_variable.c:43:0
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
	movq	%rdx, -24(%rbp)
.Ltmp9:
	.loc	1 48 4 prologue_end             # src/parsing/expand_variable.c:48:4
	movl	$0, -28(%rbp)
	.loc	1 49 4                          # src/parsing/expand_variable.c:49:4
	movl	$0, -32(%rbp)
	.loc	1 50 6                          # src/parsing/expand_variable.c:50:6
	movl	$0, -36(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 51 9                          # src/parsing/expand_variable.c:51:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 51 2 is_stmt 0                # src/parsing/expand_variable.c:51:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_9
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp10:
	.loc	1 53 7 is_stmt 1                # src/parsing/expand_variable.c:53:7
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 53 17 is_stmt 0               # src/parsing/expand_variable.c:53:17
	cmpl	$36, %eax
	.loc	1 53 24                         # src/parsing/expand_variable.c:53:24
	jne	.LBB1_8
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 53 38                         # src/parsing/expand_variable.c:53:38
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 53 45                         # src/parsing/expand_variable.c:53:45
	movq	-8(%rbp), %rax
	.loc	1 53 52                         # src/parsing/expand_variable.c:53:52
	movl	-32(%rbp), %ecx
	.loc	1 53 54                         # src/parsing/expand_variable.c:53:54
	addl	$1, %ecx
	.loc	1 53 45                         # src/parsing/expand_variable.c:53:45
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 54 15 is_stmt 1               # src/parsing/expand_variable.c:54:15
	movq	-24(%rbp), %rdi
	.loc	1 54 5 is_stmt 0                # src/parsing/expand_variable.c:54:5
	callq	ft_strlen
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 53 27 is_stmt 1               # src/parsing/expand_variable.c:53:27
	callq	ft_strncmp
	.loc	1 54 22                         # src/parsing/expand_variable.c:54:22
	cmpl	$0, %eax
.Ltmp11:
	.loc	1 53 7                          # src/parsing/expand_variable.c:53:7
	jne	.LBB1_8
# %bb.4:
.Ltmp12:
	.loc	1 56 20                         # src/parsing/expand_variable.c:56:20
	movq	-24(%rbp), %rdi
	.loc	1 56 10 is_stmt 0               # src/parsing/expand_variable.c:56:10
	callq	ft_strlen
	.loc	1 56 28                         # src/parsing/expand_variable.c:56:28
	movslq	-32(%rbp), %rcx
	.loc	1 56 26                         # src/parsing/expand_variable.c:56:26
	addq	%rcx, %rax
	.loc	1 56 30                         # src/parsing/expand_variable.c:56:30
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 56 8                          # src/parsing/expand_variable.c:56:8
	movl	%eax, -36(%rbp)
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 57 11 is_stmt 1               # src/parsing/expand_variable.c:57:11
	movl	-32(%rbp), %eax
	.loc	1 57 13 is_stmt 0               # src/parsing/expand_variable.c:57:13
	cmpl	-36(%rbp), %eax
	.loc	1 57 4                          # src/parsing/expand_variable.c:57:4
	jge	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	.loc	1 58 6 is_stmt 1                # src/parsing/expand_variable.c:58:6
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 57 4                          # src/parsing/expand_variable.c:57:4
	jmp	.LBB1_5
.LBB1_7:
	.loc	1 59 4                          # src/parsing/expand_variable.c:59:4
	jmp	.LBB1_9
.Ltmp13:
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 61 29                         # src/parsing/expand_variable.c:61:29
	movq	-8(%rbp), %rax
	.loc	1 61 37 is_stmt 0               # src/parsing/expand_variable.c:61:37
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	.loc	1 61 29                         # src/parsing/expand_variable.c:61:29
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 61 5                          # src/parsing/expand_variable.c:61:5
	movq	-16(%rbp), %rax
	.loc	1 61 4                          # src/parsing/expand_variable.c:61:4
	movq	(%rax), %rax
	.loc	1 61 23                         # src/parsing/expand_variable.c:61:23
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	.loc	1 61 3                          # src/parsing/expand_variable.c:61:3
	movslq	%ecx, %rcx
	.loc	1 61 27                         # src/parsing/expand_variable.c:61:27
	movb	%dl, (%rax,%rcx)
.Ltmp14:
	.loc	1 51 2 is_stmt 1                # src/parsing/expand_variable.c:51:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	1 63 2                          # src/parsing/expand_variable.c:63:2
	jmp	.LBB1_10
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 63 9 is_stmt 0                # src/parsing/expand_variable.c:63:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 63 2                          # src/parsing/expand_variable.c:63:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	.loc	1 64 29 is_stmt 1               # src/parsing/expand_variable.c:64:29
	movq	-8(%rbp), %rax
	.loc	1 64 37 is_stmt 0               # src/parsing/expand_variable.c:64:37
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	.loc	1 64 29                         # src/parsing/expand_variable.c:64:29
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 64 5                          # src/parsing/expand_variable.c:64:5
	movq	-16(%rbp), %rax
	.loc	1 64 4                          # src/parsing/expand_variable.c:64:4
	movq	(%rax), %rax
	.loc	1 64 23                         # src/parsing/expand_variable.c:64:23
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	.loc	1 64 3                          # src/parsing/expand_variable.c:64:3
	movslq	%ecx, %rcx
	.loc	1 64 27                         # src/parsing/expand_variable.c:64:27
	movb	%dl, (%rax,%rcx)
	.loc	1 63 2 is_stmt 1                # src/parsing/expand_variable.c:63:2
	jmp	.LBB1_10
.LBB1_12:
	.loc	1 65 4                          # src/parsing/expand_variable.c:65:4
	movq	-16(%rbp), %rax
	.loc	1 65 3 is_stmt 0                # src/parsing/expand_variable.c:65:3
	movq	(%rax), %rax
	.loc	1 65 2                          # src/parsing/expand_variable.c:65:2
	movslq	-28(%rbp), %rcx
	.loc	1 65 24                         # src/parsing/expand_variable.c:65:24
	movb	$0, (%rax,%rcx)
	.loc	1 66 1 is_stmt 1                # src/parsing/expand_variable.c:66:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	replace_variable_in_lexeme, .Lfunc_end1-replace_variable_in_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	replace_expansion_name_by_value # -- Begin function replace_expansion_name_by_value
	.p2align	4, 0x90
	.type	replace_expansion_name_by_value,@function
replace_expansion_name_by_value:        # @replace_expansion_name_by_value
.Lfunc_begin2:
	.loc	1 70 0                          # src/parsing/expand_variable.c:70:0
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
	movq	%rcx, -32(%rbp)
.Ltmp16:
	.loc	1 73 32 prologue_end            # src/parsing/expand_variable.c:73:32
	movq	-8(%rbp), %rdi
	.loc	1 73 40 is_stmt 0               # src/parsing/expand_variable.c:73:40
	movq	-16(%rbp), %rsi
	.loc	1 73 57                         # src/parsing/expand_variable.c:73:57
	movq	-32(%rbp), %rdx
	.loc	1 73 63                         # src/parsing/expand_variable.c:73:63
	movq	-24(%rbp), %rcx
	.loc	1 73 6                          # src/parsing/expand_variable.c:73:6
	callq	expand_variable_in_lexeme
	.loc	1 73 4                          # src/parsing/expand_variable.c:73:4
	movq	%rax, -40(%rbp)
	.loc	1 74 4 is_stmt 1                # src/parsing/expand_variable.c:74:4
	movq	-16(%rbp), %rax
	.loc	1 74 3 is_stmt 0                # src/parsing/expand_variable.c:74:3
	movq	(%rax), %rax
	.loc	1 74 21                         # src/parsing/expand_variable.c:74:21
	movq	-40(%rbp), %rcx
	.loc	1 74 24                         # src/parsing/expand_variable.c:74:24
	movb	$0, (%rax,%rcx)
	.loc	1 75 1 is_stmt 1                # src/parsing/expand_variable.c:75:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end2:
	.size	replace_expansion_name_by_value, .Lfunc_end2-replace_expansion_name_by_value
	.cfi_endproc
                                        # -- End function
	.globl	remove_expansion_name           # -- Begin function remove_expansion_name
	.p2align	4, 0x90
	.type	remove_expansion_name,@function
remove_expansion_name:                  # @remove_expansion_name
.Lfunc_begin3:
	.loc	1 78 0                          # src/parsing/expand_variable.c:78:0
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
.Ltmp18:
	.loc	1 79 29 prologue_end            # src/parsing/expand_variable.c:79:29
	movq	-8(%rbp), %rdi
	.loc	1 79 37 is_stmt 0               # src/parsing/expand_variable.c:79:37
	movq	-16(%rbp), %rsi
	.loc	1 79 54                         # src/parsing/expand_variable.c:79:54
	movq	-24(%rbp), %rdx
	.loc	1 79 2                          # src/parsing/expand_variable.c:79:2
	callq	replace_variable_in_lexeme
.Ltmp19:
	.loc	1 80 18 is_stmt 1               # src/parsing/expand_variable.c:80:18
	movq	-16(%rbp), %rax
	.loc	1 80 17 is_stmt 0               # src/parsing/expand_variable.c:80:17
	movq	(%rax), %rdi
	.loc	1 80 6                          # src/parsing/expand_variable.c:80:6
	callq	ft_strlen
	.loc	1 80 36                         # src/parsing/expand_variable.c:80:36
	cmpq	$0, %rax
	.loc	1 80 41                         # src/parsing/expand_variable.c:80:41
	jne	.LBB3_3
# %bb.1:
	.loc	1 80 54                         # src/parsing/expand_variable.c:80:54
	movq	-8(%rbp), %rdi
	.loc	1 80 44                         # src/parsing/expand_variable.c:80:44
	callq	ft_strlen
	.loc	1 80 62                         # src/parsing/expand_variable.c:80:62
	cmpq	$0, %rax
.Ltmp20:
	.loc	1 80 6                          # src/parsing/expand_variable.c:80:6
	jbe	.LBB3_3
# %bb.2:
.Ltmp21:
	.loc	1 82 10 is_stmt 1               # src/parsing/expand_variable.c:82:10
	movq	-16(%rbp), %rax
	.loc	1 82 9 is_stmt 0                # src/parsing/expand_variable.c:82:9
	movq	(%rax), %rdi
	.loc	1 82 3                          # src/parsing/expand_variable.c:82:3
	callq	free
	.loc	1 83 5 is_stmt 1                # src/parsing/expand_variable.c:83:5
	movq	-16(%rbp), %rax
	.loc	1 83 22 is_stmt 0               # src/parsing/expand_variable.c:83:22
	movq	$0, (%rax)
.Ltmp22:
.LBB3_3:
	.loc	1 85 1 is_stmt 1                # src/parsing/expand_variable.c:85:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end3:
	.size	remove_expansion_name, .Lfunc_end3-remove_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	expand_lexeme_variable          # -- Begin function expand_lexeme_variable
	.p2align	4, 0x90
	.type	expand_lexeme_variable,@function
expand_lexeme_variable:                 # @expand_lexeme_variable
.Lfunc_begin4:
	.loc	1 88 0                          # src/parsing/expand_variable.c:88:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
.Ltmp24:
	.loc	1 92 21 prologue_end            # src/parsing/expand_variable.c:92:21
	movq	-16(%rbp), %rdi
	.loc	1 92 11 is_stmt 0               # src/parsing/expand_variable.c:92:11
	callq	ft_strlen
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 92 41                         # src/parsing/expand_variable.c:92:41
	movq	-24(%rbp), %rdi
	.loc	1 92 31                         # src/parsing/expand_variable.c:92:31
	callq	ft_strlen
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	.loc	1 92 29                         # src/parsing/expand_variable.c:92:29
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 92 9                          # src/parsing/expand_variable.c:92:9
	movl	%eax, -36(%rbp)
.Ltmp25:
	.loc	1 93 6 is_stmt 1                # src/parsing/expand_variable.c:93:6
	cmpq	$0, -32(%rbp)
.Ltmp26:
	.loc	1 93 6 is_stmt 0                # src/parsing/expand_variable.c:93:6
	je	.LBB4_2
# %bb.1:
.Ltmp27:
	.loc	1 94 23 is_stmt 1               # src/parsing/expand_variable.c:94:23
	movq	-32(%rbp), %rdi
	.loc	1 94 13 is_stmt 0               # src/parsing/expand_variable.c:94:13
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	1 94 10                         # src/parsing/expand_variable.c:94:10
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
.Ltmp28:
.LBB4_2:
	.loc	1 95 27 is_stmt 1               # src/parsing/expand_variable.c:95:27
	movl	-36(%rbp), %eax
	.loc	1 95 34 is_stmt 0               # src/parsing/expand_variable.c:95:34
	addl	$1, %eax
	.loc	1 95 27                         # src/parsing/expand_variable.c:95:27
	movslq	%eax, %rdi
	.loc	1 95 20                         # src/parsing/expand_variable.c:95:20
	callq	malloc
	.loc	1 95 18                         # src/parsing/expand_variable.c:95:18
	movq	%rax, -48(%rbp)
.Ltmp29:
	.loc	1 96 7 is_stmt 1                # src/parsing/expand_variable.c:96:7
	cmpq	$0, -48(%rbp)
.Ltmp30:
	.loc	1 96 6 is_stmt 0                # src/parsing/expand_variable.c:96:6
	jne	.LBB4_4
# %bb.3:
.Ltmp31:
	.loc	1 97 11 is_stmt 1               # src/parsing/expand_variable.c:97:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 97 3 is_stmt 0                # src/parsing/expand_variable.c:97:3
	movq	$0, -8(%rbp)
	jmp	.LBB4_8
.Ltmp32:
.LBB4_4:
	.loc	1 98 6 is_stmt 1                # src/parsing/expand_variable.c:98:6
	cmpq	$0, -32(%rbp)
.Ltmp33:
	.loc	1 98 6 is_stmt 0                # src/parsing/expand_variable.c:98:6
	je	.LBB4_6
# %bb.5:
.Ltmp34:
	.loc	1 99 35 is_stmt 1               # src/parsing/expand_variable.c:99:35
	movq	-16(%rbp), %rdi
	.loc	1 99 61 is_stmt 0               # src/parsing/expand_variable.c:99:61
	movq	-32(%rbp), %rdx
	.loc	1 99 68                         # src/parsing/expand_variable.c:99:68
	movq	-24(%rbp), %rcx
	.loc	1 99 3                          # src/parsing/expand_variable.c:99:3
	leaq	-48(%rbp), %rsi
	callq	replace_expansion_name_by_value
	jmp	.LBB4_7
.LBB4_6:
	.loc	1 101 25 is_stmt 1              # src/parsing/expand_variable.c:101:25
	movq	-16(%rbp), %rdi
	.loc	1 101 51 is_stmt 0              # src/parsing/expand_variable.c:101:51
	movq	-24(%rbp), %rdx
	.loc	1 101 3                         # src/parsing/expand_variable.c:101:3
	leaq	-48(%rbp), %rsi
	callq	remove_expansion_name
.Ltmp35:
.LBB4_7:
	.loc	1 102 7 is_stmt 1               # src/parsing/expand_variable.c:102:7
	movq	-16(%rbp), %rdi
	.loc	1 102 2 is_stmt 0               # src/parsing/expand_variable.c:102:2
	callq	free
	.loc	1 103 10 is_stmt 1              # src/parsing/expand_variable.c:103:10
	movq	-48(%rbp), %rax
	.loc	1 103 2 is_stmt 0               # src/parsing/expand_variable.c:103:2
	movq	%rax, -8(%rbp)
.LBB4_8:
	.loc	1 104 1 is_stmt 1               # src/parsing/expand_variable.c:104:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp36:
.Lfunc_end4:
	.size	expand_lexeme_variable, .Lfunc_end4-expand_lexeme_variable
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	1                               # Abbrev [1] 0xb:0x21b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	497                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x60:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x6e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	497                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x8b:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xa0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	532                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xca:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	542                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	542                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	542                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xf5:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x10a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x118:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x126:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x134:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	69                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x142:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.long	497                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x151:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x166:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x174:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	527                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x182:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x191:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	515                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x1aa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1b8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1d4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	542                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1e2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	90                              # DW_AT_decl_line
	.long	515                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1f1:0xb DW_TAG_typedef
	.long	508                             # DW_AT_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1fc:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x203:0x5 DW_TAG_pointer_type
	.long	520                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x208:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x20f:0x5 DW_TAG_pointer_type
	.long	515                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x214:0x5 DW_TAG_pointer_type
	.long	537                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x219:0x5 DW_TAG_const_type
	.long	520                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x21e:0x7 DW_TAG_base_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/expand_variable.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=68
.Linfo_string3:
	.asciz	"expand_variable_in_lexeme"     # string offset=137
.Linfo_string4:
	.asciz	"long unsigned int"             # string offset=163
.Linfo_string5:
	.asciz	"size_t"                        # string offset=181
.Linfo_string6:
	.asciz	"replace_variable_in_lexeme"    # string offset=188
.Linfo_string7:
	.asciz	"replace_expansion_name_by_value" # string offset=215
.Linfo_string8:
	.asciz	"remove_expansion_name"         # string offset=247
.Linfo_string9:
	.asciz	"expand_lexeme_variable"        # string offset=269
.Linfo_string10:
	.asciz	"char"                          # string offset=292
.Linfo_string11:
	.asciz	"lexeme"                        # string offset=297
.Linfo_string12:
	.asciz	"lexeme_expanded"               # string offset=304
.Linfo_string13:
	.asciz	"name"                          # string offset=320
.Linfo_string14:
	.asciz	"value"                         # string offset=325
.Linfo_string15:
	.asciz	"i"                             # string offset=331
.Linfo_string16:
	.asciz	"int"                           # string offset=333
.Linfo_string17:
	.asciz	"j"                             # string offset=337
.Linfo_string18:
	.asciz	"len"                           # string offset=339
.Linfo_string19:
	.asciz	"length"                        # string offset=343
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym expand_variable_in_lexeme
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym replace_variable_in_lexeme
	.addrsig_sym replace_expansion_name_by_value
	.addrsig_sym remove_expansion_name
	.addrsig_sym free
	.addrsig_sym malloc
	.addrsig_sym perror
	.section	.debug_line,"",@progbits
.Lline_table_start0:
