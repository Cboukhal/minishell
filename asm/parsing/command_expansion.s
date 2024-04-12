	.text
	.file	"command_expansion.c"
	.globl	get_expansion_value             # -- Begin function get_expansion_value
	.p2align	4, 0x90
	.type	get_expansion_value,@function
get_expansion_value:                    # @get_expansion_value
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/parsing/command_expansion.c"
	.loc	1 16 0                          # src/parsing/command_expansion.c:16:0
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
.Ltmp0:
	.loc	1 19 8 prologue_end             # src/parsing/command_expansion.c:19:8
	movq	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 2                          # src/parsing/command_expansion.c:20:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 22 18                         # src/parsing/command_expansion.c:22:18
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	.loc	1 22 24 is_stmt 0               # src/parsing/command_expansion.c:22:24
	movq	-8(%rbp), %rax
	.loc	1 22 29                         # src/parsing/command_expansion.c:22:29
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	.loc	1 22 45                         # src/parsing/command_expansion.c:22:45
	movq	-16(%rbp), %rdi
	.loc	1 22 35                         # src/parsing/command_expansion.c:22:35
	callq	ft_strlen
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 22 7                          # src/parsing/command_expansion.c:22:7
	callq	ft_strncmp
	.loc	1 22 52                         # src/parsing/command_expansion.c:22:52
	cmpl	$0, %eax
.Ltmp2:
	.loc	1 22 7                          # src/parsing/command_expansion.c:22:7
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp3:
	.loc	1 23 22 is_stmt 1               # src/parsing/command_expansion.c:23:22
	movq	-8(%rbp), %rax
	.loc	1 23 27 is_stmt 0               # src/parsing/command_expansion.c:23:27
	movq	8(%rax), %rdi
	.loc	1 23 12                         # src/parsing/command_expansion.c:23:12
	callq	ft_strdup
	.loc	1 23 10                         # src/parsing/command_expansion.c:23:10
	movq	%rax, -24(%rbp)
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 24 9 is_stmt 1                # src/parsing/command_expansion.c:24:9
	movq	-8(%rbp), %rax
	.loc	1 24 14 is_stmt 0               # src/parsing/command_expansion.c:24:14
	movq	16(%rax), %rax
	.loc	1 24 7                          # src/parsing/command_expansion.c:24:7
	movq	%rax, -8(%rbp)
.Ltmp5:
	.loc	1 20 2 is_stmt 1                # src/parsing/command_expansion.c:20:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	1 26 10                         # src/parsing/command_expansion.c:26:10
	movq	-24(%rbp), %rax
	.loc	1 26 2 is_stmt 0                # src/parsing/command_expansion.c:26:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	get_expansion_value, .Lfunc_end0-get_expansion_value
	.cfi_endproc
                                        # -- End function
	.globl	replace_expansion_name_by_value # -- Begin function replace_expansion_name_by_value
	.p2align	4, 0x90
	.type	replace_expansion_name_by_value,@function
replace_expansion_name_by_value:        # @replace_expansion_name_by_value
.Lfunc_begin1:
	.loc	1 31 0 is_stmt 1                # src/parsing/command_expansion.c:31:0
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
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
.Ltmp7:
	.loc	1 34 4 prologue_end             # src/parsing/command_expansion.c:34:4
	movq	$0, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 35 10                         # src/parsing/command_expansion.c:35:10
	movq	-8(%rbp), %rax
	.loc	1 35 2 is_stmt 0                # src/parsing/command_expansion.c:35:2
	cmpb	$0, (%rax)
	je	.LBB1_9
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	1 37 8 is_stmt 1                # src/parsing/command_expansion.c:37:8
	movq	-8(%rbp), %rax
	.loc	1 37 7 is_stmt 0                # src/parsing/command_expansion.c:37:7
	movsbl	(%rax), %eax
	.loc	1 37 15                         # src/parsing/command_expansion.c:37:15
	cmpl	$36, %eax
	.loc	1 37 22                         # src/parsing/command_expansion.c:37:22
	jne	.LBB1_8
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 37 36                         # src/parsing/command_expansion.c:37:36
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 38 8 is_stmt 1                # src/parsing/command_expansion.c:38:8
	movq	-8(%rbp), %rax
	.loc	1 38 16 is_stmt 0               # src/parsing/command_expansion.c:38:16
	addq	$1, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 38 31                         # src/parsing/command_expansion.c:38:31
	movq	-32(%rbp), %rdi
	.loc	1 38 21                         # src/parsing/command_expansion.c:38:21
	callq	ft_strlen
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 37 25 is_stmt 1               # src/parsing/command_expansion.c:37:25
	callq	ft_strncmp
	.loc	1 38 38                         # src/parsing/command_expansion.c:38:38
	cmpl	$0, %eax
.Ltmp9:
	.loc	1 37 7                          # src/parsing/command_expansion.c:37:7
	jne	.LBB1_8
# %bb.4:
.Ltmp10:
	.loc	1 40 4                          # src/parsing/command_expansion.c:40:4
	jmp	.LBB1_5
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 40 12 is_stmt 0               # src/parsing/command_expansion.c:40:12
	movq	-24(%rbp), %rax
	.loc	1 40 4                          # src/parsing/command_expansion.c:40:4
	cmpb	$0, (%rax)
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
.Ltmp11:
	.loc	1 42 30 is_stmt 1               # src/parsing/command_expansion.c:42:30
	movq	-24(%rbp), %rax
	.loc	1 42 29 is_stmt 0               # src/parsing/command_expansion.c:42:29
	movb	(%rax), %dl
	.loc	1 42 7                          # src/parsing/command_expansion.c:42:7
	movq	-16(%rbp), %rax
	.loc	1 42 6                          # src/parsing/command_expansion.c:42:6
	movq	(%rax), %rax
	.loc	1 42 24                         # src/parsing/command_expansion.c:42:24
	movq	-40(%rbp), %rcx
	.loc	1 42 27                         # src/parsing/command_expansion.c:42:27
	movb	%dl, (%rax,%rcx)
	.loc	1 43 10 is_stmt 1               # src/parsing/command_expansion.c:43:10
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc	1 44 6                          # src/parsing/command_expansion.c:44:6
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.Ltmp12:
	.loc	1 40 4                          # src/parsing/command_expansion.c:40:4
	jmp	.LBB1_5
.LBB1_7:
	.loc	1 46 4                          # src/parsing/command_expansion.c:46:4
	jmp	.LBB1_9
.Ltmp13:
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 48 28                         # src/parsing/command_expansion.c:48:28
	movq	-8(%rbp), %rax
	.loc	1 48 27 is_stmt 0               # src/parsing/command_expansion.c:48:27
	movb	(%rax), %dl
	.loc	1 48 5                          # src/parsing/command_expansion.c:48:5
	movq	-16(%rbp), %rax
	.loc	1 48 4                          # src/parsing/command_expansion.c:48:4
	movq	(%rax), %rax
	.loc	1 48 22                         # src/parsing/command_expansion.c:48:22
	movq	-40(%rbp), %rcx
	.loc	1 48 25                         # src/parsing/command_expansion.c:48:25
	movb	%dl, (%rax,%rcx)
	.loc	1 49 9 is_stmt 1                # src/parsing/command_expansion.c:49:9
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc	1 50 4                          # src/parsing/command_expansion.c:50:4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.Ltmp14:
	.loc	1 35 2                          # src/parsing/command_expansion.c:35:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	1 52 2                          # src/parsing/command_expansion.c:52:2
	jmp	.LBB1_10
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 52 10 is_stmt 0               # src/parsing/command_expansion.c:52:10
	movq	-8(%rbp), %rax
	.loc	1 52 9                          # src/parsing/command_expansion.c:52:9
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -57(%rbp)                  # 1-byte Spill
	.loc	1 52 17                         # src/parsing/command_expansion.c:52:17
	je	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	.loc	1 52 20                         # src/parsing/command_expansion.c:52:20
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	.loc	1 52 34                         # src/parsing/command_expansion.c:52:34
	movq	-8(%rbp), %rdi
	.loc	1 52 24                         # src/parsing/command_expansion.c:52:24
	callq	ft_strlen
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 52 22                         # src/parsing/command_expansion.c:52:22
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -57(%rbp)                  # 1-byte Spill
	.loc	1 52 42                         # src/parsing/command_expansion.c:52:42
	jae	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_10 Depth=1
	.loc	1 52 61                         # src/parsing/command_expansion.c:52:61
	movq	-32(%rbp), %rdi
	.loc	1 52 46                         # src/parsing/command_expansion.c:52:46
	callq	is_exit_status
	.loc	1 52 45                         # src/parsing/command_expansion.c:52:45
	xorb	$-1, %al
	movb	%al, -57(%rbp)                  # 1-byte Spill
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=1
	.loc	1 0 45                          # src/parsing/command_expansion.c:0:45
	movb	-57(%rbp), %al                  # 1-byte Reload
	.loc	1 52 2                          # src/parsing/command_expansion.c:52:2
	testb	$1, %al
	jne	.LBB1_14
	jmp	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_10 Depth=1
.Ltmp15:
	.loc	1 54 28 is_stmt 1               # src/parsing/command_expansion.c:54:28
	movq	-8(%rbp), %rax
	.loc	1 54 27 is_stmt 0               # src/parsing/command_expansion.c:54:27
	movb	(%rax), %dl
	.loc	1 54 5                          # src/parsing/command_expansion.c:54:5
	movq	-16(%rbp), %rax
	.loc	1 54 4                          # src/parsing/command_expansion.c:54:4
	movq	(%rax), %rax
	.loc	1 54 22                         # src/parsing/command_expansion.c:54:22
	movq	-40(%rbp), %rcx
	.loc	1 54 25                         # src/parsing/command_expansion.c:54:25
	movb	%dl, (%rax,%rcx)
	.loc	1 55 9 is_stmt 1                # src/parsing/command_expansion.c:55:9
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc	1 56 4                          # src/parsing/command_expansion.c:56:4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.Ltmp16:
	.loc	1 52 2                          # src/parsing/command_expansion.c:52:2
	jmp	.LBB1_10
.LBB1_15:
	.loc	1 58 4                          # src/parsing/command_expansion.c:58:4
	movq	-16(%rbp), %rax
	.loc	1 58 3 is_stmt 0                # src/parsing/command_expansion.c:58:3
	movq	(%rax), %rax
	.loc	1 58 21                         # src/parsing/command_expansion.c:58:21
	movq	-40(%rbp), %rcx
	.loc	1 58 24                         # src/parsing/command_expansion.c:58:24
	movb	$0, (%rax,%rcx)
	.loc	1 59 1 is_stmt 1                # src/parsing/command_expansion.c:59:1
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end1:
	.size	replace_expansion_name_by_value, .Lfunc_end1-replace_expansion_name_by_value
	.cfi_endproc
                                        # -- End function
	.globl	remove_expansion_name           # -- Begin function remove_expansion_name
	.p2align	4, 0x90
	.type	remove_expansion_name,@function
remove_expansion_name:                  # @remove_expansion_name
.Lfunc_begin2:
	.loc	1 62 0                          # src/parsing/command_expansion.c:62:0
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
.Ltmp18:
	.loc	1 67 4 prologue_end             # src/parsing/command_expansion.c:67:4
	movl	$0, -36(%rbp)
	.loc	1 68 4                          # src/parsing/command_expansion.c:68:4
	movl	$0, -32(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 69 9                          # src/parsing/command_expansion.c:69:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 69 2 is_stmt 0                # src/parsing/command_expansion.c:69:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp19:
	.loc	1 71 7 is_stmt 1                # src/parsing/command_expansion.c:71:7
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 71 17 is_stmt 0               # src/parsing/command_expansion.c:71:17
	cmpl	$36, %eax
	.loc	1 71 24                         # src/parsing/command_expansion.c:71:24
	jne	.LBB2_8
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 71 38                         # src/parsing/command_expansion.c:71:38
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 71 47                         # src/parsing/command_expansion.c:71:47
	movq	-8(%rbp), %rax
	.loc	1 71 55                         # src/parsing/command_expansion.c:71:55
	addq	$1, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 72 15 is_stmt 1               # src/parsing/command_expansion.c:72:15
	movq	-24(%rbp), %rdi
	.loc	1 72 5 is_stmt 0                # src/parsing/command_expansion.c:72:5
	callq	ft_strlen
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 71 27 is_stmt 1               # src/parsing/command_expansion.c:71:27
	callq	ft_strncmp
	.loc	1 72 22                         # src/parsing/command_expansion.c:72:22
	cmpl	$0, %eax
.Ltmp20:
	.loc	1 71 7                          # src/parsing/command_expansion.c:71:7
	jne	.LBB2_8
# %bb.4:
.Ltmp21:
	.loc	1 74 20                         # src/parsing/command_expansion.c:74:20
	movq	-24(%rbp), %rdi
	.loc	1 74 10 is_stmt 0               # src/parsing/command_expansion.c:74:10
	callq	ft_strlen
	.loc	1 74 28                         # src/parsing/command_expansion.c:74:28
	movslq	-32(%rbp), %rcx
	.loc	1 74 26                         # src/parsing/command_expansion.c:74:26
	addq	%rcx, %rax
	.loc	1 74 30                         # src/parsing/command_expansion.c:74:30
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 74 8                          # src/parsing/command_expansion.c:74:8
	movl	%eax, -28(%rbp)
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 75 11 is_stmt 1               # src/parsing/command_expansion.c:75:11
	movl	-32(%rbp), %eax
	.loc	1 75 13 is_stmt 0               # src/parsing/command_expansion.c:75:13
	cmpl	-28(%rbp), %eax
	.loc	1 75 4                          # src/parsing/command_expansion.c:75:4
	jge	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	.loc	1 76 6 is_stmt 1                # src/parsing/command_expansion.c:76:6
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 75 4                          # src/parsing/command_expansion.c:75:4
	jmp	.LBB2_5
.LBB2_7:
	.loc	1 77 4                          # src/parsing/command_expansion.c:77:4
	jmp	.LBB2_9
.Ltmp22:
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 79 27                         # src/parsing/command_expansion.c:79:27
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 79 5 is_stmt 0                # src/parsing/command_expansion.c:79:5
	movq	-16(%rbp), %rax
	.loc	1 79 4                          # src/parsing/command_expansion.c:79:4
	movq	(%rax), %rax
	.loc	1 79 3                          # src/parsing/command_expansion.c:79:3
	movslq	-36(%rbp), %rcx
	.loc	1 79 25                         # src/parsing/command_expansion.c:79:25
	movb	%dl, (%rax,%rcx)
	.loc	1 80 4 is_stmt 1                # src/parsing/command_expansion.c:80:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 81 4                          # src/parsing/command_expansion.c:81:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.Ltmp23:
	.loc	1 69 2                          # src/parsing/command_expansion.c:69:2
	jmp	.LBB2_1
.LBB2_9:
	.loc	1 83 2                          # src/parsing/command_expansion.c:83:2
	jmp	.LBB2_10
.LBB2_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 83 9 is_stmt 0                # src/parsing/command_expansion.c:83:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 83 2                          # src/parsing/command_expansion.c:83:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=1
.Ltmp24:
	.loc	1 85 27 is_stmt 1               # src/parsing/command_expansion.c:85:27
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 85 5 is_stmt 0                # src/parsing/command_expansion.c:85:5
	movq	-16(%rbp), %rax
	.loc	1 85 4                          # src/parsing/command_expansion.c:85:4
	movq	(%rax), %rax
	.loc	1 85 3                          # src/parsing/command_expansion.c:85:3
	movslq	-36(%rbp), %rcx
	.loc	1 85 25                         # src/parsing/command_expansion.c:85:25
	movb	%dl, (%rax,%rcx)
	.loc	1 86 4 is_stmt 1                # src/parsing/command_expansion.c:86:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 87 4                          # src/parsing/command_expansion.c:87:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.Ltmp25:
	.loc	1 83 2                          # src/parsing/command_expansion.c:83:2
	jmp	.LBB2_10
.LBB2_12:
	.loc	1 89 4                          # src/parsing/command_expansion.c:89:4
	movq	-16(%rbp), %rax
	.loc	1 89 3 is_stmt 0                # src/parsing/command_expansion.c:89:3
	movq	(%rax), %rax
	.loc	1 89 2                          # src/parsing/command_expansion.c:89:2
	movslq	-36(%rbp), %rcx
	.loc	1 89 24                         # src/parsing/command_expansion.c:89:24
	movb	$0, (%rax,%rcx)
.Ltmp26:
	.loc	1 90 18 is_stmt 1               # src/parsing/command_expansion.c:90:18
	movq	-16(%rbp), %rax
	.loc	1 90 17 is_stmt 0               # src/parsing/command_expansion.c:90:17
	movq	(%rax), %rdi
	.loc	1 90 6                          # src/parsing/command_expansion.c:90:6
	callq	ft_strlen
	.loc	1 90 36                         # src/parsing/command_expansion.c:90:36
	cmpq	$0, %rax
	.loc	1 90 41                         # src/parsing/command_expansion.c:90:41
	jne	.LBB2_15
# %bb.13:
	.loc	1 90 54                         # src/parsing/command_expansion.c:90:54
	movq	-8(%rbp), %rdi
	.loc	1 90 44                         # src/parsing/command_expansion.c:90:44
	callq	ft_strlen
	.loc	1 90 62                         # src/parsing/command_expansion.c:90:62
	cmpq	$0, %rax
.Ltmp27:
	.loc	1 90 6                          # src/parsing/command_expansion.c:90:6
	jbe	.LBB2_15
# %bb.14:
.Ltmp28:
	.loc	1 92 10 is_stmt 1               # src/parsing/command_expansion.c:92:10
	movq	-16(%rbp), %rax
	.loc	1 92 9 is_stmt 0                # src/parsing/command_expansion.c:92:9
	movq	(%rax), %rdi
	.loc	1 92 3                          # src/parsing/command_expansion.c:92:3
	callq	free
	.loc	1 93 5 is_stmt 1                # src/parsing/command_expansion.c:93:5
	movq	-16(%rbp), %rax
	.loc	1 93 22 is_stmt 0               # src/parsing/command_expansion.c:93:22
	movq	$0, (%rax)
.Ltmp29:
.LBB2_15:
	.loc	1 95 1 is_stmt 1                # src/parsing/command_expansion.c:95:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp30:
.Lfunc_end2:
	.size	remove_expansion_name, .Lfunc_end2-remove_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	expand_lexeme_variable          # -- Begin function expand_lexeme_variable
	.p2align	4, 0x90
	.type	expand_lexeme_variable,@function
expand_lexeme_variable:                 # @expand_lexeme_variable
.Lfunc_begin3:
	.loc	1 98 0                          # src/parsing/command_expansion.c:98:0
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
.Ltmp31:
	.loc	1 102 21 prologue_end           # src/parsing/command_expansion.c:102:21
	movq	-16(%rbp), %rdi
	.loc	1 102 11 is_stmt 0              # src/parsing/command_expansion.c:102:11
	callq	ft_strlen
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 102 41                        # src/parsing/command_expansion.c:102:41
	movq	-24(%rbp), %rdi
	.loc	1 102 31                        # src/parsing/command_expansion.c:102:31
	callq	ft_strlen
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	.loc	1 102 29                        # src/parsing/command_expansion.c:102:29
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 102 9                         # src/parsing/command_expansion.c:102:9
	movl	%eax, -36(%rbp)
.Ltmp32:
	.loc	1 103 6 is_stmt 1               # src/parsing/command_expansion.c:103:6
	cmpq	$0, -32(%rbp)
.Ltmp33:
	.loc	1 103 6 is_stmt 0               # src/parsing/command_expansion.c:103:6
	je	.LBB3_2
# %bb.1:
.Ltmp34:
	.loc	1 104 23 is_stmt 1              # src/parsing/command_expansion.c:104:23
	movq	-32(%rbp), %rdi
	.loc	1 104 13 is_stmt 0              # src/parsing/command_expansion.c:104:13
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	1 104 10                        # src/parsing/command_expansion.c:104:10
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
.Ltmp35:
.LBB3_2:
	.loc	1 105 27 is_stmt 1              # src/parsing/command_expansion.c:105:27
	movl	-36(%rbp), %eax
	.loc	1 105 34 is_stmt 0              # src/parsing/command_expansion.c:105:34
	addl	$1, %eax
	.loc	1 105 27                        # src/parsing/command_expansion.c:105:27
	movslq	%eax, %rdi
	.loc	1 105 20                        # src/parsing/command_expansion.c:105:20
	callq	malloc
	.loc	1 105 18                        # src/parsing/command_expansion.c:105:18
	movq	%rax, -48(%rbp)
.Ltmp36:
	.loc	1 106 7 is_stmt 1               # src/parsing/command_expansion.c:106:7
	cmpq	$0, -48(%rbp)
.Ltmp37:
	.loc	1 106 6 is_stmt 0               # src/parsing/command_expansion.c:106:6
	jne	.LBB3_4
# %bb.3:
.Ltmp38:
	.loc	1 107 11 is_stmt 1              # src/parsing/command_expansion.c:107:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 107 3 is_stmt 0               # src/parsing/command_expansion.c:107:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_8
.Ltmp39:
.LBB3_4:
	.loc	1 108 6 is_stmt 1               # src/parsing/command_expansion.c:108:6
	cmpq	$0, -32(%rbp)
.Ltmp40:
	.loc	1 108 6 is_stmt 0               # src/parsing/command_expansion.c:108:6
	je	.LBB3_6
# %bb.5:
.Ltmp41:
	.loc	1 109 35 is_stmt 1              # src/parsing/command_expansion.c:109:35
	movq	-16(%rbp), %rdi
	.loc	1 109 61 is_stmt 0              # src/parsing/command_expansion.c:109:61
	movq	-32(%rbp), %rdx
	.loc	1 109 68                        # src/parsing/command_expansion.c:109:68
	movq	-24(%rbp), %rcx
	.loc	1 109 3                         # src/parsing/command_expansion.c:109:3
	leaq	-48(%rbp), %rsi
	callq	replace_expansion_name_by_value
	jmp	.LBB3_7
.LBB3_6:
	.loc	1 111 25 is_stmt 1              # src/parsing/command_expansion.c:111:25
	movq	-16(%rbp), %rdi
	.loc	1 111 51 is_stmt 0              # src/parsing/command_expansion.c:111:51
	movq	-24(%rbp), %rdx
	.loc	1 111 3                         # src/parsing/command_expansion.c:111:3
	leaq	-48(%rbp), %rsi
	callq	remove_expansion_name
.Ltmp42:
.LBB3_7:
	.loc	1 112 7 is_stmt 1               # src/parsing/command_expansion.c:112:7
	movq	-16(%rbp), %rdi
	.loc	1 112 2 is_stmt 0               # src/parsing/command_expansion.c:112:2
	callq	free
	.loc	1 113 10 is_stmt 1              # src/parsing/command_expansion.c:113:10
	movq	-48(%rbp), %rax
	.loc	1 113 2 is_stmt 0               # src/parsing/command_expansion.c:113:2
	movq	%rax, -8(%rbp)
.LBB3_8:
	.loc	1 114 1 is_stmt 1               # src/parsing/command_expansion.c:114:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp43:
.Lfunc_end3:
	.size	expand_lexeme_variable, .Lfunc_end3-expand_lexeme_variable
	.cfi_endproc
                                        # -- End function
	.globl	manage_expansion                # -- Begin function manage_expansion
	.p2align	4, 0x90
	.type	manage_expansion,@function
manage_expansion:                       # @manage_expansion
.Lfunc_begin4:
	.loc	1 117 0                         # src/parsing/command_expansion.c:117:0
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
.Ltmp44:
	.loc	1 122 8 prologue_end            # src/parsing/command_expansion.c:122:8
	movq	$0, -32(%rbp)
	.loc	1 123 16                        # src/parsing/command_expansion.c:123:16
	movq	-16(%rbp), %rax
	.loc	1 123 15 is_stmt 0              # src/parsing/command_expansion.c:123:15
	movq	(%rax), %rax
	.loc	1 123 24                        # src/parsing/command_expansion.c:123:24
	movq	24(%rax), %rax
	.loc	1 123 12                        # src/parsing/command_expansion.c:123:12
	movq	%rax, -48(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 124 2 is_stmt 1               # src/parsing/command_expansion.c:124:2
	cmpq	$0, -48(%rbp)
	je	.LBB4_9
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp45:
	.loc	1 126 31                        # src/parsing/command_expansion.c:126:31
	movq	-24(%rbp), %rdi
	.loc	1 126 36 is_stmt 0              # src/parsing/command_expansion.c:126:36
	movq	-48(%rbp), %rax
	.loc	1 126 47                        # src/parsing/command_expansion.c:126:47
	movq	(%rax), %rsi
	.loc	1 126 11                        # src/parsing/command_expansion.c:126:11
	callq	get_expansion_value
	.loc	1 126 9                         # src/parsing/command_expansion.c:126:9
	movq	%rax, -32(%rbp)
.Ltmp46:
	.loc	1 127 34 is_stmt 1              # src/parsing/command_expansion.c:127:34
	movq	-32(%rbp), %rdi
	.loc	1 127 7 is_stmt 0               # src/parsing/command_expansion.c:127:7
	callq	is_expansion_stored_in_env
.Ltmp47:
	.loc	1 127 7                         # src/parsing/command_expansion.c:127:7
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp48:
	.loc	1 128 48 is_stmt 1              # src/parsing/command_expansion.c:128:48
	movq	-16(%rbp), %rax
	.loc	1 128 47 is_stmt 0              # src/parsing/command_expansion.c:128:47
	movq	(%rax), %rax
	.loc	1 128 56                        # src/parsing/command_expansion.c:128:56
	movq	16(%rax), %rdi
	.loc	1 129 6 is_stmt 1               # src/parsing/command_expansion.c:129:6
	movq	-48(%rbp), %rax
	.loc	1 129 17 is_stmt 0              # src/parsing/command_expansion.c:129:17
	movq	(%rax), %rsi
	.loc	1 129 23                        # src/parsing/command_expansion.c:129:23
	movq	-32(%rbp), %rdx
	.loc	1 128 23 is_stmt 1              # src/parsing/command_expansion.c:128:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 128 6 is_stmt 0               # src/parsing/command_expansion.c:128:6
	movq	-16(%rbp), %rax
	.loc	1 128 5                         # src/parsing/command_expansion.c:128:5
	movq	(%rax), %rax
	.loc	1 128 21                        # src/parsing/command_expansion.c:128:21
	movq	%rcx, 16(%rax)
	.loc	1 128 4                         # src/parsing/command_expansion.c:128:4
	jmp	.LBB4_8
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp49:
	.loc	1 130 27 is_stmt 1              # src/parsing/command_expansion.c:130:27
	movq	-48(%rbp), %rax
	.loc	1 130 38 is_stmt 0              # src/parsing/command_expansion.c:130:38
	movq	(%rax), %rdi
	.loc	1 130 12                        # src/parsing/command_expansion.c:130:12
	callq	is_exit_status
.Ltmp50:
	.loc	1 130 12                        # src/parsing/command_expansion.c:130:12
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp51:
	.loc	1 132 31 is_stmt 1              # src/parsing/command_expansion.c:132:31
	movq	-8(%rbp), %rax
	.loc	1 132 42 is_stmt 0              # src/parsing/command_expansion.c:132:42
	movl	44(%rax), %edi
	.loc	1 132 23                        # src/parsing/command_expansion.c:132:23
	callq	ft_itoa
	.loc	1 132 21                        # src/parsing/command_expansion.c:132:21
	movq	%rax, -40(%rbp)
	.loc	1 133 48 is_stmt 1              # src/parsing/command_expansion.c:133:48
	movq	-16(%rbp), %rax
	.loc	1 133 47 is_stmt 0              # src/parsing/command_expansion.c:133:47
	movq	(%rax), %rax
	.loc	1 133 56                        # src/parsing/command_expansion.c:133:56
	movq	16(%rax), %rdi
	.loc	1 134 6 is_stmt 1               # src/parsing/command_expansion.c:134:6
	movq	-48(%rbp), %rax
	.loc	1 134 17 is_stmt 0              # src/parsing/command_expansion.c:134:17
	movq	(%rax), %rsi
	.loc	1 134 23                        # src/parsing/command_expansion.c:134:23
	movq	-40(%rbp), %rdx
	.loc	1 133 23 is_stmt 1              # src/parsing/command_expansion.c:133:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 133 6 is_stmt 0               # src/parsing/command_expansion.c:133:6
	movq	-16(%rbp), %rax
	.loc	1 133 5                         # src/parsing/command_expansion.c:133:5
	movq	(%rax), %rax
	.loc	1 133 21                        # src/parsing/command_expansion.c:133:21
	movq	%rcx, 16(%rax)
	.loc	1 135 9 is_stmt 1               # src/parsing/command_expansion.c:135:9
	movq	-40(%rbp), %rdi
	.loc	1 135 4 is_stmt 0               # src/parsing/command_expansion.c:135:4
	callq	free
	.loc	1 136 3 is_stmt 1               # src/parsing/command_expansion.c:136:3
	jmp	.LBB4_7
.Ltmp52:
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 138 48                        # src/parsing/command_expansion.c:138:48
	movq	-16(%rbp), %rax
	.loc	1 138 47 is_stmt 0              # src/parsing/command_expansion.c:138:47
	movq	(%rax), %rax
	.loc	1 138 56                        # src/parsing/command_expansion.c:138:56
	movq	16(%rax), %rdi
	.loc	1 139 6 is_stmt 1               # src/parsing/command_expansion.c:139:6
	movq	-48(%rbp), %rax
	.loc	1 139 17 is_stmt 0              # src/parsing/command_expansion.c:139:17
	movq	(%rax), %rsi
	.loc	1 138 23 is_stmt 1              # src/parsing/command_expansion.c:138:23
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 138 6 is_stmt 0               # src/parsing/command_expansion.c:138:6
	movq	-16(%rbp), %rax
	.loc	1 138 5                         # src/parsing/command_expansion.c:138:5
	movq	(%rax), %rax
	.loc	1 138 21                        # src/parsing/command_expansion.c:138:21
	movq	%rcx, 16(%rax)
.Ltmp53:
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 0 21                          # src/parsing/command_expansion.c:0:21
	jmp	.LBB4_8
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 140 15 is_stmt 1              # src/parsing/command_expansion.c:140:15
	movq	-48(%rbp), %rax
	.loc	1 140 26 is_stmt 0              # src/parsing/command_expansion.c:140:26
	movq	8(%rax), %rax
	.loc	1 140 13                        # src/parsing/command_expansion.c:140:13
	movq	%rax, -48(%rbp)
.Ltmp54:
	.loc	1 124 2 is_stmt 1               # src/parsing/command_expansion.c:124:2
	jmp	.LBB4_1
.LBB4_9:
	.loc	1 142 1                         # src/parsing/command_expansion.c:142:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp55:
.Lfunc_end4:
	.size	manage_expansion, .Lfunc_end4-manage_expansion
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/parsing/../../include/minishell.h"
	.file	3 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc40 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x60:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x6f:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	589                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xae:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xbc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xcb:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xe0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	589                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x10a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x118:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	64                              # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x126:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x135:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	511                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x14e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x15c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x16a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x178:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.long	612                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x186:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x195:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x1aa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	619                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1b8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	3141                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.long	523                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1d4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1e2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string186                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.long	511                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1f0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.long	1625                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1ff:0x5 DW_TAG_pointer_type
	.long	516                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x204:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x20b:0x5 DW_TAG_pointer_type
	.long	528                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x210:0xb DW_TAG_typedef
	.long	539                             # DW_AT_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x21b:0x2d DW_TAG_structure_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x223:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x22f:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x23b:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	584                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x248:0x5 DW_TAG_pointer_type
	.long	539                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x24d:0x5 DW_TAG_pointer_type
	.long	511                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x252:0xb DW_TAG_typedef
	.long	605                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x25d:0x7 DW_TAG_base_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x264:0x7 DW_TAG_base_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x26b:0x5 DW_TAG_pointer_type
	.long	624                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x270:0xb DW_TAG_typedef
	.long	635                             # DW_AT_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x27b:0xbe DW_TAG_structure_type
	.long	.Linfo_string183                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x284:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	825                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x290:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x29c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2a8:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2b4:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2c0:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2cc:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2d8:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e4:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	523                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2f0:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	846                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2fc:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	912                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x308:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1684                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x314:0xc DW_TAG_member
	.long	.Linfo_string83                 # DW_AT_name
	.long	1798                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x320:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2630                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x32c:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2979                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x339:0x5 DW_TAG_pointer_type
	.long	830                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x33e:0xb DW_TAG_typedef
	.long	841                             # DW_AT_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x349:0x5 DW_TAG_structure_type
	.long	.Linfo_string26                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x34e:0x5 DW_TAG_pointer_type
	.long	851                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x353:0xb DW_TAG_typedef
	.long	862                             # DW_AT_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x35e:0x2d DW_TAG_structure_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x366:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x372:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x37e:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	907                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x38b:0x5 DW_TAG_pointer_type
	.long	862                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x390:0x5 DW_TAG_pointer_type
	.long	917                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x395:0xb DW_TAG_typedef
	.long	928                             # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3a0:0x2d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3a8:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	973                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b4:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1679                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3c0:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1679                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3cd:0x5 DW_TAG_pointer_type
	.long	978                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3d2:0xb DW_TAG_typedef
	.long	989                             # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3dd:0x51 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3e5:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3f1:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3fd:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1070                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x409:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x415:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	1075                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x421:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1075                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x42e:0x5 DW_TAG_pointer_type
	.long	612                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x433:0x5 DW_TAG_pointer_type
	.long	1080                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x438:0xc9 DW_TAG_structure_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x440:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x44c:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x458:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x464:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x470:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x47c:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x488:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	1281                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x494:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1335                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a0:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	1396                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4ac:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1469                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b8:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	846                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4c4:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4d0:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1625                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4dc:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	589                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4e8:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1075                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f4:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1075                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x501:0x5 DW_TAG_pointer_type
	.long	1286                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x506:0xb DW_TAG_typedef
	.long	1297                            # DW_AT_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x511:0x21 DW_TAG_structure_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x519:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x525:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1330                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x532:0x5 DW_TAG_pointer_type
	.long	1297                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x537:0x5 DW_TAG_pointer_type
	.long	1340                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x53c:0xb DW_TAG_typedef
	.long	1351                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x547:0x2d DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x54f:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1070                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x55b:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1070                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x567:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1070                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x574:0x5 DW_TAG_pointer_type
	.long	1401                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x579:0xb DW_TAG_typedef
	.long	1412                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x584:0x39 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x58c:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x598:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5a4:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1469                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5b0:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1547                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5bd:0x5 DW_TAG_pointer_type
	.long	1474                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5c2:0xb DW_TAG_typedef
	.long	1485                            # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5cd:0x39 DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5d5:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5e1:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5ed:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5f9:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1542                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x606:0x5 DW_TAG_pointer_type
	.long	1485                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x60b:0x5 DW_TAG_pointer_type
	.long	1552                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x610:0xb DW_TAG_typedef
	.long	1563                            # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x61b:0x39 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x623:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x62f:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x63b:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x647:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1620                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x654:0x5 DW_TAG_pointer_type
	.long	1563                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x659:0x5 DW_TAG_pointer_type
	.long	1630                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x65e:0xb DW_TAG_typedef
	.long	1641                            # DW_AT_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x669:0x21 DW_TAG_structure_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x671:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x67d:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1674                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x68a:0x5 DW_TAG_pointer_type
	.long	1641                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x68f:0x5 DW_TAG_pointer_type
	.long	928                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x694:0x5 DW_TAG_pointer_type
	.long	1689                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x699:0xb DW_TAG_typedef
	.long	1700                            # DW_AT_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6a4:0x5d DW_TAG_structure_type
	.long	.Linfo_string81                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6ac:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6b8:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6c4:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6d0:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	511                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6dc:0xc DW_TAG_member
	.long	.Linfo_string68                 # DW_AT_name
	.long	1625                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6e8:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	1793                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6f4:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	1793                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x701:0x5 DW_TAG_pointer_type
	.long	1700                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x706:0x56 DW_TAG_structure_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x70e:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1818                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x71a:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x71e:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1884                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x72a:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1907                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x737:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2584                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x743:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x74f:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2624                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x75c:0xb DW_TAG_typedef
	.long	1895                            # DW_AT_type
	.long	.Linfo_string86                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x767:0x5 DW_TAG_pointer_type
	.long	1900                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x76c:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x76d:0x5 DW_TAG_formal_parameter
	.long	612                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x773:0x5 DW_TAG_pointer_type
	.long	1912                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x778:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	16                              # Abbrev [16] 0x779:0x5 DW_TAG_formal_parameter
	.long	612                             # DW_AT_type
	.byte	16                              # Abbrev [16] 0x77e:0x5 DW_TAG_formal_parameter
	.long	1929                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x783:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x789:0x5 DW_TAG_pointer_type
	.long	1934                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x78e:0xb DW_TAG_typedef
	.long	1945                            # DW_AT_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0x799:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x79d:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7a9:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7b5:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7c1:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7cd:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	2009                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x7d9:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7dd:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2456                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7e9:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2037                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x7f5:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7f9:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x805:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x812:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2078                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x81e:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x822:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x82e:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x83a:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2504                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x847:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2131                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x853:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x857:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x863:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x86f:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2504                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x87c:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2184                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x888:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x88c:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2475                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x898:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8a4:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8b0:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8bc:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2548                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8c9:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2261                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x8d5:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8d9:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8e5:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2566                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8f1:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2301                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	14                              # Abbrev [14] 0x8fd:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x901:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2317                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x90d:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x911:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x91d:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x92a:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2573                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x938:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2372                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x944:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x948:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2559                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x954:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x961:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2413                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	17                              # Abbrev [17] 0x96d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x971:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x97d:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x989:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	2497                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0x998:0xc DW_TAG_array_type
	.long	612                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0x99d:0x6 DW_TAG_subrange_type
	.long	2468                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x9a4:0x7 DW_TAG_base_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0x9ab:0xb DW_TAG_typedef
	.long	612                             # DW_AT_type
	.long	.Linfo_string97                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x9b6:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9c1:0x7 DW_TAG_base_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x9c8:0xb DW_TAG_typedef
	.long	2515                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x9d3:0x21 DW_TAG_union_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9db:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9e7:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x9f4:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9ff:0x7 DW_TAG_base_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xa06:0x7 DW_TAG_base_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa0d:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string125                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa18:0xb DW_TAG_typedef
	.long	2595                            # DW_AT_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xa23:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa27:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2612                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	18                              # Abbrev [18] 0xa34:0xc DW_TAG_array_type
	.long	605                             # DW_AT_type
	.byte	19                              # Abbrev [19] 0xa39:0x6 DW_TAG_subrange_type
	.long	2468                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa40:0x5 DW_TAG_pointer_type
	.long	2629                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0xa45:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0xa46:0x5 DW_TAG_pointer_type
	.long	2635                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xa4b:0xbd DW_TAG_structure_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa53:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2824                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa5f:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2835                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa6b:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2846                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa77:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2857                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa83:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2486                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa8f:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2868                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa9b:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	612                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaa7:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2824                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xab3:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2879                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xabf:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2890                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xacb:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2901                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xad7:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2912                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xae3:0xc DW_TAG_member
	.long	.Linfo_string165                # DW_AT_name
	.long	2912                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xaef:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2912                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xafb:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2967                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb08:0xb DW_TAG_typedef
	.long	605                             # DW_AT_type
	.long	.Linfo_string142                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb13:0xb DW_TAG_typedef
	.long	605                             # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb1e:0xb DW_TAG_typedef
	.long	605                             # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb29:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb34:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb3f:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string154                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb4a:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb55:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xb60:0x21 DW_TAG_structure_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb68:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2945                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb74:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2956                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xb81:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xb8c:0xb DW_TAG_typedef
	.long	2559                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xb97:0xc DW_TAG_array_type
	.long	2956                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xb9c:0x6 DW_TAG_subrange_type
	.long	2468                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xba3:0x5 DW_TAG_pointer_type
	.long	2984                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xba8:0x69 DW_TAG_structure_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	14                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbb0:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbbc:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbc8:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbd4:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3089                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbe0:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3100                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbec:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	3118                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xbf8:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	3130                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc04:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	3130                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc11:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string171                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc1c:0xb DW_TAG_typedef
	.long	3111                            # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xc27:0x7 DW_TAG_base_type
	.long	.Linfo_string176                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	18                              # Abbrev [18] 0xc2e:0xc DW_TAG_array_type
	.long	3100                            # DW_AT_type
	.byte	19                              # Abbrev [19] 0xc33:0x6 DW_TAG_subrange_type
	.long	2468                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc3a:0xb DW_TAG_typedef
	.long	2497                            # DW_AT_type
	.long	.Linfo_string180                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xc45:0x5 DW_TAG_pointer_type
	.long	1684                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_expansion.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=70
.Linfo_string3:
	.asciz	"get_expansion_value"           # string offset=104
.Linfo_string4:
	.asciz	"char"                          # string offset=124
.Linfo_string5:
	.asciz	"replace_expansion_name_by_value" # string offset=129
.Linfo_string6:
	.asciz	"remove_expansion_name"         # string offset=161
.Linfo_string7:
	.asciz	"expand_lexeme_variable"        # string offset=183
.Linfo_string8:
	.asciz	"manage_expansion"              # string offset=206
.Linfo_string9:
	.asciz	"env"                           # string offset=223
.Linfo_string10:
	.asciz	"name"                          # string offset=227
.Linfo_string11:
	.asciz	"value"                         # string offset=232
.Linfo_string12:
	.asciz	"next"                          # string offset=238
.Linfo_string13:
	.asciz	"s_env"                         # string offset=243
.Linfo_string14:
	.asciz	"t_env"                         # string offset=249
.Linfo_string15:
	.asciz	"lexeme"                        # string offset=255
.Linfo_string16:
	.asciz	"lexeme_expanded"               # string offset=262
.Linfo_string17:
	.asciz	"i"                             # string offset=278
.Linfo_string18:
	.asciz	"long unsigned int"             # string offset=280
.Linfo_string19:
	.asciz	"size_t"                        # string offset=298
.Linfo_string20:
	.asciz	"len"                           # string offset=305
.Linfo_string21:
	.asciz	"int"                           # string offset=309
.Linfo_string22:
	.asciz	"j"                             # string offset=313
.Linfo_string23:
	.asciz	"length"                        # string offset=315
.Linfo_string24:
	.asciz	"minishell"                     # string offset=322
.Linfo_string25:
	.asciz	"dir"                           # string offset=332
.Linfo_string26:
	.asciz	"__dirstream"                   # string offset=336
.Linfo_string27:
	.asciz	"DIR"                           # string offset=348
.Linfo_string28:
	.asciz	"state"                         # string offset=352
.Linfo_string29:
	.asciz	"input"                         # string offset=358
.Linfo_string30:
	.asciz	"path"                          # string offset=364
.Linfo_string31:
	.asciz	"prompt"                        # string offset=369
.Linfo_string32:
	.asciz	"operator_nbr"                  # string offset=376
.Linfo_string33:
	.asciz	"exit_status"                   # string offset=389
.Linfo_string34:
	.asciz	"env_array"                     # string offset=401
.Linfo_string35:
	.asciz	"local"                         # string offset=411
.Linfo_string36:
	.asciz	"s_var"                         # string offset=417
.Linfo_string37:
	.asciz	"t_var"                         # string offset=423
.Linfo_string38:
	.asciz	"syntax_tree"                   # string offset=429
.Linfo_string39:
	.asciz	"node"                          # string offset=441
.Linfo_string40:
	.asciz	"id"                            # string offset=446
.Linfo_string41:
	.asciz	"type"                          # string offset=449
.Linfo_string42:
	.asciz	"pipe_fd"                       # string offset=454
.Linfo_string43:
	.asciz	"left"                          # string offset=462
.Linfo_string44:
	.asciz	"pid"                           # string offset=467
.Linfo_string45:
	.asciz	"wstatus"                       # string offset=471
.Linfo_string46:
	.asciz	"arg"                           # string offset=479
.Linfo_string47:
	.asciz	"s_arg"                         # string offset=483
.Linfo_string48:
	.asciz	"t_arg"                         # string offset=489
.Linfo_string49:
	.asciz	"pipe"                          # string offset=495
.Linfo_string50:
	.asciz	"to_close"                      # string offset=500
.Linfo_string51:
	.asciz	"write"                         # string offset=509
.Linfo_string52:
	.asciz	"read"                          # string offset=515
.Linfo_string53:
	.asciz	"s_pipe"                        # string offset=520
.Linfo_string54:
	.asciz	"t_pipe"                        # string offset=527
.Linfo_string55:
	.asciz	"redir"                         # string offset=534
.Linfo_string56:
	.asciz	"in_fd"                         # string offset=540
.Linfo_string57:
	.asciz	"out_fd"                        # string offset=546
.Linfo_string58:
	.asciz	"infile"                        # string offset=553
.Linfo_string59:
	.asciz	"fd"                            # string offset=560
.Linfo_string60:
	.asciz	"s_infile"                      # string offset=563
.Linfo_string61:
	.asciz	"t_infile"                      # string offset=572
.Linfo_string62:
	.asciz	"outfile"                       # string offset=581
.Linfo_string63:
	.asciz	"s_outfile"                     # string offset=589
.Linfo_string64:
	.asciz	"t_outfile"                     # string offset=599
.Linfo_string65:
	.asciz	"s_redir"                       # string offset=609
.Linfo_string66:
	.asciz	"t_redir"                       # string offset=617
.Linfo_string67:
	.asciz	"assign"                        # string offset=625
.Linfo_string68:
	.asciz	"expansion"                     # string offset=632
.Linfo_string69:
	.asciz	"s_expan"                       # string offset=642
.Linfo_string70:
	.asciz	"t_expan"                       # string offset=650
.Linfo_string71:
	.asciz	"arg_array"                     # string offset=658
.Linfo_string72:
	.asciz	"prev"                          # string offset=668
.Linfo_string73:
	.asciz	"s_cmd"                         # string offset=673
.Linfo_string74:
	.asciz	"right"                         # string offset=679
.Linfo_string75:
	.asciz	"s_ast_node"                    # string offset=685
.Linfo_string76:
	.asciz	"t_ast_node"                    # string offset=696
.Linfo_string77:
	.asciz	"s_ast"                         # string offset=707
.Linfo_string78:
	.asciz	"t_ast"                         # string offset=713
.Linfo_string79:
	.asciz	"token_stream"                  # string offset=719
.Linfo_string80:
	.asciz	"quote_nbr"                     # string offset=732
.Linfo_string81:
	.asciz	"s_token"                       # string offset=742
.Linfo_string82:
	.asciz	"t_token"                       # string offset=750
.Linfo_string83:
	.asciz	"sighandler"                    # string offset=758
.Linfo_string84:
	.asciz	"__sigaction_handler"           # string offset=769
.Linfo_string85:
	.asciz	"sa_handler"                    # string offset=789
.Linfo_string86:
	.asciz	"__sighandler_t"                # string offset=800
.Linfo_string87:
	.asciz	"sa_sigaction"                  # string offset=815
.Linfo_string88:
	.asciz	"si_signo"                      # string offset=828
.Linfo_string89:
	.asciz	"si_errno"                      # string offset=837
.Linfo_string90:
	.asciz	"si_code"                       # string offset=846
.Linfo_string91:
	.asciz	"__pad0"                        # string offset=854
.Linfo_string92:
	.asciz	"_sifields"                     # string offset=861
.Linfo_string93:
	.asciz	"_pad"                          # string offset=871
.Linfo_string94:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=876
.Linfo_string95:
	.asciz	"_kill"                         # string offset=896
.Linfo_string96:
	.asciz	"si_pid"                        # string offset=902
.Linfo_string97:
	.asciz	"__pid_t"                       # string offset=909
.Linfo_string98:
	.asciz	"si_uid"                        # string offset=917
.Linfo_string99:
	.asciz	"unsigned int"                  # string offset=924
.Linfo_string100:
	.asciz	"__uid_t"                       # string offset=937
.Linfo_string101:
	.asciz	"_timer"                        # string offset=945
.Linfo_string102:
	.asciz	"si_tid"                        # string offset=952
.Linfo_string103:
	.asciz	"si_overrun"                    # string offset=959
.Linfo_string104:
	.asciz	"si_sigval"                     # string offset=970
.Linfo_string105:
	.asciz	"sival_int"                     # string offset=980
.Linfo_string106:
	.asciz	"sival_ptr"                     # string offset=990
.Linfo_string107:
	.asciz	"sigval"                        # string offset=1000
.Linfo_string108:
	.asciz	"__sigval_t"                    # string offset=1007
.Linfo_string109:
	.asciz	"_rt"                           # string offset=1018
.Linfo_string110:
	.asciz	"_sigchld"                      # string offset=1022
.Linfo_string111:
	.asciz	"si_status"                     # string offset=1031
.Linfo_string112:
	.asciz	"si_utime"                      # string offset=1041
.Linfo_string113:
	.asciz	"long int"                      # string offset=1050
.Linfo_string114:
	.asciz	"__clock_t"                     # string offset=1059
.Linfo_string115:
	.asciz	"si_stime"                      # string offset=1069
.Linfo_string116:
	.asciz	"_sigfault"                     # string offset=1078
.Linfo_string117:
	.asciz	"si_addr"                       # string offset=1088
.Linfo_string118:
	.asciz	"si_addr_lsb"                   # string offset=1096
.Linfo_string119:
	.asciz	"short"                         # string offset=1108
.Linfo_string120:
	.asciz	"_bounds"                       # string offset=1114
.Linfo_string121:
	.asciz	"_addr_bnd"                     # string offset=1122
.Linfo_string122:
	.asciz	"_lower"                        # string offset=1132
.Linfo_string123:
	.asciz	"_upper"                        # string offset=1139
.Linfo_string124:
	.asciz	"_pkey"                         # string offset=1146
.Linfo_string125:
	.asciz	"__uint32_t"                    # string offset=1152
.Linfo_string126:
	.asciz	"_sigpoll"                      # string offset=1163
.Linfo_string127:
	.asciz	"si_band"                       # string offset=1172
.Linfo_string128:
	.asciz	"si_fd"                         # string offset=1180
.Linfo_string129:
	.asciz	"_sigsys"                       # string offset=1186
.Linfo_string130:
	.asciz	"_call_addr"                    # string offset=1194
.Linfo_string131:
	.asciz	"_syscall"                      # string offset=1205
.Linfo_string132:
	.asciz	"_arch"                         # string offset=1214
.Linfo_string133:
	.asciz	"siginfo_t"                     # string offset=1220
.Linfo_string134:
	.asciz	"sa_mask"                       # string offset=1230
.Linfo_string135:
	.asciz	"__val"                         # string offset=1238
.Linfo_string136:
	.asciz	"__sigset_t"                    # string offset=1244
.Linfo_string137:
	.asciz	"sa_flags"                      # string offset=1255
.Linfo_string138:
	.asciz	"sa_restorer"                   # string offset=1264
.Linfo_string139:
	.asciz	"sigaction"                     # string offset=1276
.Linfo_string140:
	.asciz	"statbuf"                       # string offset=1286
.Linfo_string141:
	.asciz	"st_dev"                        # string offset=1294
.Linfo_string142:
	.asciz	"__dev_t"                       # string offset=1301
.Linfo_string143:
	.asciz	"st_ino"                        # string offset=1309
.Linfo_string144:
	.asciz	"__ino_t"                       # string offset=1316
.Linfo_string145:
	.asciz	"st_nlink"                      # string offset=1324
.Linfo_string146:
	.asciz	"__nlink_t"                     # string offset=1333
.Linfo_string147:
	.asciz	"st_mode"                       # string offset=1343
.Linfo_string148:
	.asciz	"__mode_t"                      # string offset=1351
.Linfo_string149:
	.asciz	"st_uid"                        # string offset=1360
.Linfo_string150:
	.asciz	"st_gid"                        # string offset=1367
.Linfo_string151:
	.asciz	"__gid_t"                       # string offset=1374
.Linfo_string152:
	.asciz	"st_rdev"                       # string offset=1382
.Linfo_string153:
	.asciz	"st_size"                       # string offset=1390
.Linfo_string154:
	.asciz	"__off_t"                       # string offset=1398
.Linfo_string155:
	.asciz	"st_blksize"                    # string offset=1406
.Linfo_string156:
	.asciz	"__blksize_t"                   # string offset=1417
.Linfo_string157:
	.asciz	"st_blocks"                     # string offset=1429
.Linfo_string158:
	.asciz	"__blkcnt_t"                    # string offset=1439
.Linfo_string159:
	.asciz	"st_atim"                       # string offset=1450
.Linfo_string160:
	.asciz	"tv_sec"                        # string offset=1458
.Linfo_string161:
	.asciz	"__time_t"                      # string offset=1465
.Linfo_string162:
	.asciz	"tv_nsec"                       # string offset=1474
.Linfo_string163:
	.asciz	"__syscall_slong_t"             # string offset=1482
.Linfo_string164:
	.asciz	"timespec"                      # string offset=1500
.Linfo_string165:
	.asciz	"st_mtim"                       # string offset=1509
.Linfo_string166:
	.asciz	"st_ctim"                       # string offset=1517
.Linfo_string167:
	.asciz	"__glibc_reserved"              # string offset=1525
.Linfo_string168:
	.asciz	"stat"                          # string offset=1542
.Linfo_string169:
	.asciz	"term"                          # string offset=1547
.Linfo_string170:
	.asciz	"c_iflag"                       # string offset=1552
.Linfo_string171:
	.asciz	"tcflag_t"                      # string offset=1560
.Linfo_string172:
	.asciz	"c_oflag"                       # string offset=1569
.Linfo_string173:
	.asciz	"c_cflag"                       # string offset=1577
.Linfo_string174:
	.asciz	"c_lflag"                       # string offset=1585
.Linfo_string175:
	.asciz	"c_line"                        # string offset=1593
.Linfo_string176:
	.asciz	"unsigned char"                 # string offset=1600
.Linfo_string177:
	.asciz	"cc_t"                          # string offset=1614
.Linfo_string178:
	.asciz	"c_cc"                          # string offset=1619
.Linfo_string179:
	.asciz	"c_ispeed"                      # string offset=1624
.Linfo_string180:
	.asciz	"speed_t"                       # string offset=1633
.Linfo_string181:
	.asciz	"c_ospeed"                      # string offset=1641
.Linfo_string182:
	.asciz	"termios"                       # string offset=1650
.Linfo_string183:
	.asciz	"s_minishell"                   # string offset=1658
.Linfo_string184:
	.asciz	"t_minishell"                   # string offset=1670
.Linfo_string185:
	.asciz	"token"                         # string offset=1682
.Linfo_string186:
	.asciz	"last_exit_status"              # string offset=1688
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_expansion_value
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym ft_strdup
	.addrsig_sym replace_expansion_name_by_value
	.addrsig_sym is_exit_status
	.addrsig_sym remove_expansion_name
	.addrsig_sym free
	.addrsig_sym expand_lexeme_variable
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym is_expansion_stored_in_env
	.addrsig_sym ft_itoa
	.section	.debug_line,"",@progbits
.Lline_table_start0:
