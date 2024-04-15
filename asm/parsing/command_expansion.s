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
	.globl	expand_variable_in_lexeme       # -- Begin function expand_variable_in_lexeme
	.p2align	4, 0x90
	.type	expand_variable_in_lexeme,@function
expand_variable_in_lexeme:              # @expand_variable_in_lexeme
.Lfunc_begin1:
	.loc	1 31 0 is_stmt 1                # src/parsing/command_expansion.c:31:0
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
.Ltmp7:
	.loc	1 34 4 prologue_end             # src/parsing/command_expansion.c:34:4
	movq	$0, -48(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 35 10                         # src/parsing/command_expansion.c:35:10
	movq	-16(%rbp), %rax
	.loc	1 35 2 is_stmt 0                # src/parsing/command_expansion.c:35:2
	cmpb	$0, (%rax)
	je	.LBB1_9
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	1 37 8 is_stmt 1                # src/parsing/command_expansion.c:37:8
	movq	-16(%rbp), %rax
	.loc	1 37 7 is_stmt 0                # src/parsing/command_expansion.c:37:7
	movsbl	(%rax), %eax
	.loc	1 37 15                         # src/parsing/command_expansion.c:37:15
	cmpl	$36, %eax
	.loc	1 37 22                         # src/parsing/command_expansion.c:37:22
	jne	.LBB1_8
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 37 36                         # src/parsing/command_expansion.c:37:36
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	.loc	1 38 8 is_stmt 1                # src/parsing/command_expansion.c:38:8
	movq	-16(%rbp), %rax
	.loc	1 38 16 is_stmt 0               # src/parsing/command_expansion.c:38:16
	addq	$1, %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 38 31                         # src/parsing/command_expansion.c:38:31
	movq	-32(%rbp), %rdi
	.loc	1 38 21                         # src/parsing/command_expansion.c:38:21
	callq	ft_strlen
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
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
	movq	-40(%rbp), %rax
	.loc	1 40 4                          # src/parsing/command_expansion.c:40:4
	cmpb	$0, (%rax)
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
.Ltmp11:
	.loc	1 42 30 is_stmt 1               # src/parsing/command_expansion.c:42:30
	movq	-40(%rbp), %rax
	.loc	1 42 29 is_stmt 0               # src/parsing/command_expansion.c:42:29
	movb	(%rax), %dl
	.loc	1 42 7                          # src/parsing/command_expansion.c:42:7
	movq	-24(%rbp), %rax
	.loc	1 42 6                          # src/parsing/command_expansion.c:42:6
	movq	(%rax), %rax
	.loc	1 42 24                         # src/parsing/command_expansion.c:42:24
	movq	-48(%rbp), %rcx
	.loc	1 42 27                         # src/parsing/command_expansion.c:42:27
	movb	%dl, (%rax,%rcx)
	.loc	1 43 10 is_stmt 1               # src/parsing/command_expansion.c:43:10
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc	1 44 6                          # src/parsing/command_expansion.c:44:6
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp12:
	.loc	1 40 4                          # src/parsing/command_expansion.c:40:4
	jmp	.LBB1_5
.LBB1_7:
	.loc	1 46 12                         # src/parsing/command_expansion.c:46:12
	movq	-48(%rbp), %rax
	.loc	1 46 4 is_stmt 0                # src/parsing/command_expansion.c:46:4
	movq	%rax, -8(%rbp)
	jmp	.LBB1_10
.Ltmp13:
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 48 28 is_stmt 1               # src/parsing/command_expansion.c:48:28
	movq	-16(%rbp), %rax
	.loc	1 48 27 is_stmt 0               # src/parsing/command_expansion.c:48:27
	movb	(%rax), %dl
	.loc	1 48 5                          # src/parsing/command_expansion.c:48:5
	movq	-24(%rbp), %rax
	.loc	1 48 4                          # src/parsing/command_expansion.c:48:4
	movq	(%rax), %rax
	.loc	1 48 22                         # src/parsing/command_expansion.c:48:22
	movq	-48(%rbp), %rcx
	.loc	1 48 25                         # src/parsing/command_expansion.c:48:25
	movb	%dl, (%rax,%rcx)
	.loc	1 49 9 is_stmt 1                # src/parsing/command_expansion.c:49:9
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	.loc	1 50 4                          # src/parsing/command_expansion.c:50:4
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
.Ltmp14:
	.loc	1 35 2                          # src/parsing/command_expansion.c:35:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	1 52 10                         # src/parsing/command_expansion.c:52:10
	movq	-48(%rbp), %rax
	.loc	1 52 2 is_stmt 0                # src/parsing/command_expansion.c:52:2
	movq	%rax, -8(%rbp)
.LBB1_10:
	.loc	1 53 1 is_stmt 1                # src/parsing/command_expansion.c:53:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	expand_variable_in_lexeme, .Lfunc_end1-expand_variable_in_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	replace_expansion_name_by_value # -- Begin function replace_expansion_name_by_value
	.p2align	4, 0x90
	.type	replace_expansion_name_by_value,@function
replace_expansion_name_by_value:        # @replace_expansion_name_by_value
.Lfunc_begin2:
	.loc	1 57 0                          # src/parsing/command_expansion.c:57:0
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
	movq	%rcx, -32(%rbp)
.Ltmp16:
	.loc	1 77 4 prologue_end             # src/parsing/command_expansion.c:77:4
	movq	$0, -40(%rbp)
	.loc	1 78 32                         # src/parsing/command_expansion.c:78:32
	movq	-8(%rbp), %rdi
	.loc	1 78 40 is_stmt 0               # src/parsing/command_expansion.c:78:40
	movq	-16(%rbp), %rsi
	.loc	1 78 57                         # src/parsing/command_expansion.c:78:57
	movq	-32(%rbp), %rdx
	.loc	1 78 63                         # src/parsing/command_expansion.c:78:63
	movq	-24(%rbp), %rcx
	.loc	1 78 6                          # src/parsing/command_expansion.c:78:6
	callq	expand_variable_in_lexeme
	.loc	1 78 4                          # src/parsing/command_expansion.c:78:4
	movq	%rax, -40(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 79 10 is_stmt 1               # src/parsing/command_expansion.c:79:10
	movq	-8(%rbp), %rax
	.loc	1 79 9 is_stmt 0                # src/parsing/command_expansion.c:79:9
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	1 79 17                         # src/parsing/command_expansion.c:79:17
	je	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 79 20                         # src/parsing/command_expansion.c:79:20
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 79 34                         # src/parsing/command_expansion.c:79:34
	movq	-8(%rbp), %rdi
	.loc	1 79 24                         # src/parsing/command_expansion.c:79:24
	callq	ft_strlen
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 79 22                         # src/parsing/command_expansion.c:79:22
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	%rdx, %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	1 79 42                         # src/parsing/command_expansion.c:79:42
	jae	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 79 61                         # src/parsing/command_expansion.c:79:61
	movq	-32(%rbp), %rdi
	.loc	1 79 46                         # src/parsing/command_expansion.c:79:46
	callq	is_exit_status
	.loc	1 79 45                         # src/parsing/command_expansion.c:79:45
	xorb	$-1, %al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 0 45                          # src/parsing/command_expansion.c:0:45
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	1 79 2                          # src/parsing/command_expansion.c:79:2
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp17:
	.loc	1 81 28 is_stmt 1               # src/parsing/command_expansion.c:81:28
	movq	-8(%rbp), %rax
	.loc	1 81 27 is_stmt 0               # src/parsing/command_expansion.c:81:27
	movb	(%rax), %dl
	.loc	1 81 5                          # src/parsing/command_expansion.c:81:5
	movq	-16(%rbp), %rax
	.loc	1 81 4                          # src/parsing/command_expansion.c:81:4
	movq	(%rax), %rax
	.loc	1 81 22                         # src/parsing/command_expansion.c:81:22
	movq	-40(%rbp), %rcx
	.loc	1 81 25                         # src/parsing/command_expansion.c:81:25
	movb	%dl, (%rax,%rcx)
	.loc	1 82 9 is_stmt 1                # src/parsing/command_expansion.c:82:9
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	.loc	1 83 4                          # src/parsing/command_expansion.c:83:4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.Ltmp18:
	.loc	1 79 2                          # src/parsing/command_expansion.c:79:2
	jmp	.LBB2_1
.LBB2_6:
	.loc	1 85 4                          # src/parsing/command_expansion.c:85:4
	movq	-16(%rbp), %rax
	.loc	1 85 3 is_stmt 0                # src/parsing/command_expansion.c:85:3
	movq	(%rax), %rax
	.loc	1 85 21                         # src/parsing/command_expansion.c:85:21
	movq	-40(%rbp), %rcx
	.loc	1 85 24                         # src/parsing/command_expansion.c:85:24
	movb	$0, (%rax,%rcx)
	.loc	1 86 1 is_stmt 1                # src/parsing/command_expansion.c:86:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end2:
	.size	replace_expansion_name_by_value, .Lfunc_end2-replace_expansion_name_by_value
	.cfi_endproc
                                        # -- End function
	.globl	replace_variable_in_lexeme      # -- Begin function replace_variable_in_lexeme
	.p2align	4, 0x90
	.type	replace_variable_in_lexeme,@function
replace_variable_in_lexeme:             # @replace_variable_in_lexeme
.Lfunc_begin3:
	.loc	1 90 0                          # src/parsing/command_expansion.c:90:0
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
.Ltmp20:
	.loc	1 95 4 prologue_end             # src/parsing/command_expansion.c:95:4
	movl	$0, -28(%rbp)
	.loc	1 96 4                          # src/parsing/command_expansion.c:96:4
	movl	$0, -32(%rbp)
	.loc	1 97 6                          # src/parsing/command_expansion.c:97:6
	movl	$0, -36(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 98 9                          # src/parsing/command_expansion.c:98:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 98 2 is_stmt 0                # src/parsing/command_expansion.c:98:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB3_9
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp21:
	.loc	1 100 7 is_stmt 1               # src/parsing/command_expansion.c:100:7
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 100 17 is_stmt 0              # src/parsing/command_expansion.c:100:17
	cmpl	$36, %eax
	.loc	1 100 24                        # src/parsing/command_expansion.c:100:24
	jne	.LBB3_8
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 100 38                        # src/parsing/command_expansion.c:100:38
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 100 45                        # src/parsing/command_expansion.c:100:45
	movq	-8(%rbp), %rax
	.loc	1 100 52                        # src/parsing/command_expansion.c:100:52
	movl	-32(%rbp), %ecx
	.loc	1 100 54                        # src/parsing/command_expansion.c:100:54
	addl	$1, %ecx
	.loc	1 100 45                        # src/parsing/command_expansion.c:100:45
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 101 15 is_stmt 1              # src/parsing/command_expansion.c:101:15
	movq	-24(%rbp), %rdi
	.loc	1 101 5 is_stmt 0               # src/parsing/command_expansion.c:101:5
	callq	ft_strlen
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	.loc	1 100 27 is_stmt 1              # src/parsing/command_expansion.c:100:27
	callq	ft_strncmp
	.loc	1 101 22                        # src/parsing/command_expansion.c:101:22
	cmpl	$0, %eax
.Ltmp22:
	.loc	1 100 7                         # src/parsing/command_expansion.c:100:7
	jne	.LBB3_8
# %bb.4:
.Ltmp23:
	.loc	1 103 20                        # src/parsing/command_expansion.c:103:20
	movq	-24(%rbp), %rdi
	.loc	1 103 10 is_stmt 0              # src/parsing/command_expansion.c:103:10
	callq	ft_strlen
	.loc	1 103 28                        # src/parsing/command_expansion.c:103:28
	movslq	-32(%rbp), %rcx
	.loc	1 103 26                        # src/parsing/command_expansion.c:103:26
	addq	%rcx, %rax
	.loc	1 103 30                        # src/parsing/command_expansion.c:103:30
	addq	$1, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 103 8                         # src/parsing/command_expansion.c:103:8
	movl	%eax, -36(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 104 11 is_stmt 1              # src/parsing/command_expansion.c:104:11
	movl	-32(%rbp), %eax
	.loc	1 104 13 is_stmt 0              # src/parsing/command_expansion.c:104:13
	cmpl	-36(%rbp), %eax
	.loc	1 104 4                         # src/parsing/command_expansion.c:104:4
	jge	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	.loc	1 105 6 is_stmt 1               # src/parsing/command_expansion.c:105:6
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 104 4                         # src/parsing/command_expansion.c:104:4
	jmp	.LBB3_5
.LBB3_7:
	.loc	1 106 4                         # src/parsing/command_expansion.c:106:4
	jmp	.LBB3_9
.Ltmp24:
.LBB3_8:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	1 108 29                        # src/parsing/command_expansion.c:108:29
	movq	-8(%rbp), %rax
	.loc	1 108 37 is_stmt 0              # src/parsing/command_expansion.c:108:37
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	.loc	1 108 29                        # src/parsing/command_expansion.c:108:29
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 108 5                         # src/parsing/command_expansion.c:108:5
	movq	-16(%rbp), %rax
	.loc	1 108 4                         # src/parsing/command_expansion.c:108:4
	movq	(%rax), %rax
	.loc	1 108 23                        # src/parsing/command_expansion.c:108:23
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	.loc	1 108 3                         # src/parsing/command_expansion.c:108:3
	movslq	%ecx, %rcx
	.loc	1 108 27                        # src/parsing/command_expansion.c:108:27
	movb	%dl, (%rax,%rcx)
.Ltmp25:
	.loc	1 98 2 is_stmt 1                # src/parsing/command_expansion.c:98:2
	jmp	.LBB3_1
.LBB3_9:
	.loc	1 110 2                         # src/parsing/command_expansion.c:110:2
	jmp	.LBB3_10
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	.loc	1 110 9 is_stmt 0               # src/parsing/command_expansion.c:110:9
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 110 2                         # src/parsing/command_expansion.c:110:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=1
	.loc	1 111 29 is_stmt 1              # src/parsing/command_expansion.c:111:29
	movq	-8(%rbp), %rax
	.loc	1 111 37 is_stmt 0              # src/parsing/command_expansion.c:111:37
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -32(%rbp)
	.loc	1 111 29                        # src/parsing/command_expansion.c:111:29
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 111 5                         # src/parsing/command_expansion.c:111:5
	movq	-16(%rbp), %rax
	.loc	1 111 4                         # src/parsing/command_expansion.c:111:4
	movq	(%rax), %rax
	.loc	1 111 23                        # src/parsing/command_expansion.c:111:23
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -28(%rbp)
	.loc	1 111 3                         # src/parsing/command_expansion.c:111:3
	movslq	%ecx, %rcx
	.loc	1 111 27                        # src/parsing/command_expansion.c:111:27
	movb	%dl, (%rax,%rcx)
	.loc	1 110 2 is_stmt 1               # src/parsing/command_expansion.c:110:2
	jmp	.LBB3_10
.LBB3_12:
	.loc	1 112 4                         # src/parsing/command_expansion.c:112:4
	movq	-16(%rbp), %rax
	.loc	1 112 3 is_stmt 0               # src/parsing/command_expansion.c:112:3
	movq	(%rax), %rax
	.loc	1 112 2                         # src/parsing/command_expansion.c:112:2
	movslq	-28(%rbp), %rcx
	.loc	1 112 24                        # src/parsing/command_expansion.c:112:24
	movb	$0, (%rax,%rcx)
	.loc	1 113 1 is_stmt 1               # src/parsing/command_expansion.c:113:1
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end3:
	.size	replace_variable_in_lexeme, .Lfunc_end3-replace_variable_in_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	remove_expansion_name           # -- Begin function remove_expansion_name
	.p2align	4, 0x90
	.type	remove_expansion_name,@function
remove_expansion_name:                  # @remove_expansion_name
.Lfunc_begin4:
	.loc	1 116 0                         # src/parsing/command_expansion.c:116:0
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
.Ltmp27:
	.loc	1 143 29 prologue_end           # src/parsing/command_expansion.c:143:29
	movq	-8(%rbp), %rdi
	.loc	1 143 37 is_stmt 0              # src/parsing/command_expansion.c:143:37
	movq	-16(%rbp), %rsi
	.loc	1 143 54                        # src/parsing/command_expansion.c:143:54
	movq	-24(%rbp), %rdx
	.loc	1 143 2                         # src/parsing/command_expansion.c:143:2
	callq	replace_variable_in_lexeme
.Ltmp28:
	.loc	1 144 18 is_stmt 1              # src/parsing/command_expansion.c:144:18
	movq	-16(%rbp), %rax
	.loc	1 144 17 is_stmt 0              # src/parsing/command_expansion.c:144:17
	movq	(%rax), %rdi
	.loc	1 144 6                         # src/parsing/command_expansion.c:144:6
	callq	ft_strlen
	.loc	1 144 36                        # src/parsing/command_expansion.c:144:36
	cmpq	$0, %rax
	.loc	1 144 41                        # src/parsing/command_expansion.c:144:41
	jne	.LBB4_3
# %bb.1:
	.loc	1 144 54                        # src/parsing/command_expansion.c:144:54
	movq	-8(%rbp), %rdi
	.loc	1 144 44                        # src/parsing/command_expansion.c:144:44
	callq	ft_strlen
	.loc	1 144 62                        # src/parsing/command_expansion.c:144:62
	cmpq	$0, %rax
.Ltmp29:
	.loc	1 144 6                         # src/parsing/command_expansion.c:144:6
	jbe	.LBB4_3
# %bb.2:
.Ltmp30:
	.loc	1 146 10 is_stmt 1              # src/parsing/command_expansion.c:146:10
	movq	-16(%rbp), %rax
	.loc	1 146 9 is_stmt 0               # src/parsing/command_expansion.c:146:9
	movq	(%rax), %rdi
	.loc	1 146 3                         # src/parsing/command_expansion.c:146:3
	callq	free
	.loc	1 147 5 is_stmt 1               # src/parsing/command_expansion.c:147:5
	movq	-16(%rbp), %rax
	.loc	1 147 22 is_stmt 0              # src/parsing/command_expansion.c:147:22
	movq	$0, (%rax)
.Ltmp31:
.LBB4_3:
	.loc	1 149 1 is_stmt 1               # src/parsing/command_expansion.c:149:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp32:
.Lfunc_end4:
	.size	remove_expansion_name, .Lfunc_end4-remove_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	expand_lexeme_variable          # -- Begin function expand_lexeme_variable
	.p2align	4, 0x90
	.type	expand_lexeme_variable,@function
expand_lexeme_variable:                 # @expand_lexeme_variable
.Lfunc_begin5:
	.loc	1 152 0                         # src/parsing/command_expansion.c:152:0
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
.Ltmp33:
	.loc	1 156 21 prologue_end           # src/parsing/command_expansion.c:156:21
	movq	-16(%rbp), %rdi
	.loc	1 156 11 is_stmt 0              # src/parsing/command_expansion.c:156:11
	callq	ft_strlen
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 156 41                        # src/parsing/command_expansion.c:156:41
	movq	-24(%rbp), %rdi
	.loc	1 156 31                        # src/parsing/command_expansion.c:156:31
	callq	ft_strlen
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	.loc	1 156 29                        # src/parsing/command_expansion.c:156:29
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 156 9                         # src/parsing/command_expansion.c:156:9
	movl	%eax, -36(%rbp)
.Ltmp34:
	.loc	1 157 6 is_stmt 1               # src/parsing/command_expansion.c:157:6
	cmpq	$0, -32(%rbp)
.Ltmp35:
	.loc	1 157 6 is_stmt 0               # src/parsing/command_expansion.c:157:6
	je	.LBB5_2
# %bb.1:
.Ltmp36:
	.loc	1 158 23 is_stmt 1              # src/parsing/command_expansion.c:158:23
	movq	-32(%rbp), %rdi
	.loc	1 158 13 is_stmt 0              # src/parsing/command_expansion.c:158:13
	callq	ft_strlen
	movq	%rax, %rcx
	.loc	1 158 10                        # src/parsing/command_expansion.c:158:10
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
.Ltmp37:
.LBB5_2:
	.loc	1 159 27 is_stmt 1              # src/parsing/command_expansion.c:159:27
	movl	-36(%rbp), %eax
	.loc	1 159 34 is_stmt 0              # src/parsing/command_expansion.c:159:34
	addl	$1, %eax
	.loc	1 159 27                        # src/parsing/command_expansion.c:159:27
	movslq	%eax, %rdi
	.loc	1 159 20                        # src/parsing/command_expansion.c:159:20
	callq	malloc
	.loc	1 159 18                        # src/parsing/command_expansion.c:159:18
	movq	%rax, -48(%rbp)
.Ltmp38:
	.loc	1 160 7 is_stmt 1               # src/parsing/command_expansion.c:160:7
	cmpq	$0, -48(%rbp)
.Ltmp39:
	.loc	1 160 6 is_stmt 0               # src/parsing/command_expansion.c:160:6
	jne	.LBB5_4
# %bb.3:
.Ltmp40:
	.loc	1 161 11 is_stmt 1              # src/parsing/command_expansion.c:161:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 161 3 is_stmt 0               # src/parsing/command_expansion.c:161:3
	movq	$0, -8(%rbp)
	jmp	.LBB5_8
.Ltmp41:
.LBB5_4:
	.loc	1 162 6 is_stmt 1               # src/parsing/command_expansion.c:162:6
	cmpq	$0, -32(%rbp)
.Ltmp42:
	.loc	1 162 6 is_stmt 0               # src/parsing/command_expansion.c:162:6
	je	.LBB5_6
# %bb.5:
.Ltmp43:
	.loc	1 163 35 is_stmt 1              # src/parsing/command_expansion.c:163:35
	movq	-16(%rbp), %rdi
	.loc	1 163 61 is_stmt 0              # src/parsing/command_expansion.c:163:61
	movq	-32(%rbp), %rdx
	.loc	1 163 68                        # src/parsing/command_expansion.c:163:68
	movq	-24(%rbp), %rcx
	.loc	1 163 3                         # src/parsing/command_expansion.c:163:3
	leaq	-48(%rbp), %rsi
	callq	replace_expansion_name_by_value
	jmp	.LBB5_7
.LBB5_6:
	.loc	1 165 25 is_stmt 1              # src/parsing/command_expansion.c:165:25
	movq	-16(%rbp), %rdi
	.loc	1 165 51 is_stmt 0              # src/parsing/command_expansion.c:165:51
	movq	-24(%rbp), %rdx
	.loc	1 165 3                         # src/parsing/command_expansion.c:165:3
	leaq	-48(%rbp), %rsi
	callq	remove_expansion_name
.Ltmp44:
.LBB5_7:
	.loc	1 166 7 is_stmt 1               # src/parsing/command_expansion.c:166:7
	movq	-16(%rbp), %rdi
	.loc	1 166 2 is_stmt 0               # src/parsing/command_expansion.c:166:2
	callq	free
	.loc	1 167 10 is_stmt 1              # src/parsing/command_expansion.c:167:10
	movq	-48(%rbp), %rax
	.loc	1 167 2 is_stmt 0               # src/parsing/command_expansion.c:167:2
	movq	%rax, -8(%rbp)
.LBB5_8:
	.loc	1 168 1 is_stmt 1               # src/parsing/command_expansion.c:168:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp45:
.Lfunc_end5:
	.size	expand_lexeme_variable, .Lfunc_end5-expand_lexeme_variable
	.cfi_endproc
                                        # -- End function
	.globl	manage_expansion                # -- Begin function manage_expansion
	.p2align	4, 0x90
	.type	manage_expansion,@function
manage_expansion:                       # @manage_expansion
.Lfunc_begin6:
	.loc	1 171 0                         # src/parsing/command_expansion.c:171:0
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
.Ltmp46:
	.loc	1 176 8 prologue_end            # src/parsing/command_expansion.c:176:8
	movq	$0, -32(%rbp)
	.loc	1 177 16                        # src/parsing/command_expansion.c:177:16
	movq	-16(%rbp), %rax
	.loc	1 177 15 is_stmt 0              # src/parsing/command_expansion.c:177:15
	movq	(%rax), %rax
	.loc	1 177 24                        # src/parsing/command_expansion.c:177:24
	movq	24(%rax), %rax
	.loc	1 177 12                        # src/parsing/command_expansion.c:177:12
	movq	%rax, -48(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 178 2 is_stmt 1               # src/parsing/command_expansion.c:178:2
	cmpq	$0, -48(%rbp)
	je	.LBB6_9
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp47:
	.loc	1 180 31                        # src/parsing/command_expansion.c:180:31
	movq	-24(%rbp), %rdi
	.loc	1 180 36 is_stmt 0              # src/parsing/command_expansion.c:180:36
	movq	-48(%rbp), %rax
	.loc	1 180 47                        # src/parsing/command_expansion.c:180:47
	movq	(%rax), %rsi
	.loc	1 180 11                        # src/parsing/command_expansion.c:180:11
	callq	get_expansion_value
	.loc	1 180 9                         # src/parsing/command_expansion.c:180:9
	movq	%rax, -32(%rbp)
.Ltmp48:
	.loc	1 181 34 is_stmt 1              # src/parsing/command_expansion.c:181:34
	movq	-32(%rbp), %rdi
	.loc	1 181 7 is_stmt 0               # src/parsing/command_expansion.c:181:7
	callq	is_expansion_stored_in_env
.Ltmp49:
	.loc	1 181 7                         # src/parsing/command_expansion.c:181:7
	testb	$1, %al
	jne	.LBB6_3
	jmp	.LBB6_4
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp50:
	.loc	1 182 48 is_stmt 1              # src/parsing/command_expansion.c:182:48
	movq	-16(%rbp), %rax
	.loc	1 182 47 is_stmt 0              # src/parsing/command_expansion.c:182:47
	movq	(%rax), %rax
	.loc	1 182 56                        # src/parsing/command_expansion.c:182:56
	movq	16(%rax), %rdi
	.loc	1 183 6 is_stmt 1               # src/parsing/command_expansion.c:183:6
	movq	-48(%rbp), %rax
	.loc	1 183 17 is_stmt 0              # src/parsing/command_expansion.c:183:17
	movq	(%rax), %rsi
	.loc	1 183 23                        # src/parsing/command_expansion.c:183:23
	movq	-32(%rbp), %rdx
	.loc	1 182 23 is_stmt 1              # src/parsing/command_expansion.c:182:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 182 6 is_stmt 0               # src/parsing/command_expansion.c:182:6
	movq	-16(%rbp), %rax
	.loc	1 182 5                         # src/parsing/command_expansion.c:182:5
	movq	(%rax), %rax
	.loc	1 182 21                        # src/parsing/command_expansion.c:182:21
	movq	%rcx, 16(%rax)
	.loc	1 182 4                         # src/parsing/command_expansion.c:182:4
	jmp	.LBB6_8
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp51:
	.loc	1 184 27 is_stmt 1              # src/parsing/command_expansion.c:184:27
	movq	-48(%rbp), %rax
	.loc	1 184 38 is_stmt 0              # src/parsing/command_expansion.c:184:38
	movq	(%rax), %rdi
	.loc	1 184 12                        # src/parsing/command_expansion.c:184:12
	callq	is_exit_status
.Ltmp52:
	.loc	1 184 12                        # src/parsing/command_expansion.c:184:12
	testb	$1, %al
	jne	.LBB6_5
	jmp	.LBB6_6
.LBB6_5:                                #   in Loop: Header=BB6_1 Depth=1
.Ltmp53:
	.loc	1 186 31 is_stmt 1              # src/parsing/command_expansion.c:186:31
	movq	-8(%rbp), %rax
	.loc	1 186 42 is_stmt 0              # src/parsing/command_expansion.c:186:42
	movl	44(%rax), %edi
	.loc	1 186 23                        # src/parsing/command_expansion.c:186:23
	callq	ft_itoa
	.loc	1 186 21                        # src/parsing/command_expansion.c:186:21
	movq	%rax, -40(%rbp)
	.loc	1 187 48 is_stmt 1              # src/parsing/command_expansion.c:187:48
	movq	-16(%rbp), %rax
	.loc	1 187 47 is_stmt 0              # src/parsing/command_expansion.c:187:47
	movq	(%rax), %rax
	.loc	1 187 56                        # src/parsing/command_expansion.c:187:56
	movq	16(%rax), %rdi
	.loc	1 188 6 is_stmt 1               # src/parsing/command_expansion.c:188:6
	movq	-48(%rbp), %rax
	.loc	1 188 17 is_stmt 0              # src/parsing/command_expansion.c:188:17
	movq	(%rax), %rsi
	.loc	1 188 23                        # src/parsing/command_expansion.c:188:23
	movq	-40(%rbp), %rdx
	.loc	1 187 23 is_stmt 1              # src/parsing/command_expansion.c:187:23
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 187 6 is_stmt 0               # src/parsing/command_expansion.c:187:6
	movq	-16(%rbp), %rax
	.loc	1 187 5                         # src/parsing/command_expansion.c:187:5
	movq	(%rax), %rax
	.loc	1 187 21                        # src/parsing/command_expansion.c:187:21
	movq	%rcx, 16(%rax)
	.loc	1 189 9 is_stmt 1               # src/parsing/command_expansion.c:189:9
	movq	-40(%rbp), %rdi
	.loc	1 189 4 is_stmt 0               # src/parsing/command_expansion.c:189:4
	callq	free
	.loc	1 190 3 is_stmt 1               # src/parsing/command_expansion.c:190:3
	jmp	.LBB6_7
.Ltmp54:
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 192 48                        # src/parsing/command_expansion.c:192:48
	movq	-16(%rbp), %rax
	.loc	1 192 47 is_stmt 0              # src/parsing/command_expansion.c:192:47
	movq	(%rax), %rax
	.loc	1 192 56                        # src/parsing/command_expansion.c:192:56
	movq	16(%rax), %rdi
	.loc	1 193 6 is_stmt 1               # src/parsing/command_expansion.c:193:6
	movq	-48(%rbp), %rax
	.loc	1 193 17 is_stmt 0              # src/parsing/command_expansion.c:193:17
	movq	(%rax), %rsi
	.loc	1 192 23 is_stmt 1              # src/parsing/command_expansion.c:192:23
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	expand_lexeme_variable
	movq	%rax, %rcx
	.loc	1 192 6 is_stmt 0               # src/parsing/command_expansion.c:192:6
	movq	-16(%rbp), %rax
	.loc	1 192 5                         # src/parsing/command_expansion.c:192:5
	movq	(%rax), %rax
	.loc	1 192 21                        # src/parsing/command_expansion.c:192:21
	movq	%rcx, 16(%rax)
.Ltmp55:
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 0 21                          # src/parsing/command_expansion.c:0:21
	jmp	.LBB6_8
.LBB6_8:                                #   in Loop: Header=BB6_1 Depth=1
	.loc	1 194 15 is_stmt 1              # src/parsing/command_expansion.c:194:15
	movq	-48(%rbp), %rax
	.loc	1 194 26 is_stmt 0              # src/parsing/command_expansion.c:194:26
	movq	8(%rax), %rax
	.loc	1 194 13                        # src/parsing/command_expansion.c:194:13
	movq	%rax, -48(%rbp)
.Ltmp56:
	.loc	1 178 2 is_stmt 1               # src/parsing/command_expansion.c:178:2
	jmp	.LBB6_1
.LBB6_9:
	.loc	1 196 1                         # src/parsing/command_expansion.c:196:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp57:
.Lfunc_end6:
	.size	manage_expansion, .Lfunc_end6-manage_expansion
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
	.file	3 "/mnt/nfs/homes/cboukhal/minishell" "src/parsing/../../include/minishell.h"
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
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	1                               # Abbrev [1] 0xb:0xcea DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	671                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	701                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x52:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x60:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x6f:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	683                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x88:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x96:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xc0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xcf:0x5c DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xe4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	55                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xf2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x100:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x11c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	683                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x12b:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x140:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x14e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	88                              # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x15c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.long	772                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x16a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.long	782                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x178:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	782                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x186:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.long	782                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x195:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x1aa:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1b8:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	767                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1c6:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x1d5:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	671                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x1ee:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1fc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x20a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x218:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	153                             # DW_AT_decl_line
	.long	782                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x226:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x235:0x6a DW_TAG_subprogram
	.quad	.Lfunc_begin6                   # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x24a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	789                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x258:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string187                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	3311                            # DW_AT_type
	.byte	4                               # Abbrev [4] 0x266:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.long	701                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x274:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x282:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string188                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.long	671                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x290:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string70                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	174                             # DW_AT_decl_line
	.long	1795                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x29f:0x5 DW_TAG_pointer_type
	.long	676                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2a4:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x2ab:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2b6:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x2c2:0xb DW_TAG_typedef
	.long	717                             # DW_AT_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2cd:0x2d DW_TAG_structure_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	762                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2fa:0x5 DW_TAG_pointer_type
	.long	717                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2ff:0x5 DW_TAG_pointer_type
	.long	671                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x304:0x5 DW_TAG_pointer_type
	.long	777                             # DW_AT_type
	.byte	12                              # Abbrev [12] 0x309:0x5 DW_TAG_const_type
	.long	676                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x30e:0x7 DW_TAG_base_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x315:0x5 DW_TAG_pointer_type
	.long	794                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x31a:0xb DW_TAG_typedef
	.long	805                             # DW_AT_type
	.long	.Linfo_string186                # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x325:0xbe DW_TAG_structure_type
	.long	.Linfo_string185                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x32e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	995                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x33a:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x346:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x352:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x35e:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x36a:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x376:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x382:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x38e:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x39a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1016                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3a6:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	1082                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3b2:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1854                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3be:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1968                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3ca:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2800                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x3d6:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3149                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3e3:0x5 DW_TAG_pointer_type
	.long	1000                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3e8:0xb DW_TAG_typedef
	.long	1011                            # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x3f3:0x5 DW_TAG_structure_type
	.long	.Linfo_string28                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x3f8:0x5 DW_TAG_pointer_type
	.long	1021                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x3fd:0xb DW_TAG_typedef
	.long	1032                            # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x408:0x2d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x410:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x41c:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x428:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1077                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x435:0x5 DW_TAG_pointer_type
	.long	1032                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x43a:0x5 DW_TAG_pointer_type
	.long	1087                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x43f:0xb DW_TAG_typedef
	.long	1098                            # DW_AT_type
	.long	.Linfo_string80                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x44a:0x2d DW_TAG_structure_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x452:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1143                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1849                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x46a:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1849                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x477:0x5 DW_TAG_pointer_type
	.long	1148                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x47c:0xb DW_TAG_typedef
	.long	1159                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x487:0x51 DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x48f:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4a7:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	1240                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4b3:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4bf:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	1245                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4cb:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	1245                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4d8:0x5 DW_TAG_pointer_type
	.long	782                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4dd:0x5 DW_TAG_pointer_type
	.long	1250                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x4e2:0xc9 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x4ea:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x4f6:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x502:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x50e:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x51a:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x526:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x532:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1451                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x53e:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1505                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x54a:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1566                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x556:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1639                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x562:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	1016                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x56e:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1717                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x57a:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1795                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x586:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	767                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x592:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1245                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x59e:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1245                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5ab:0x5 DW_TAG_pointer_type
	.long	1456                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5b0:0xb DW_TAG_typedef
	.long	1467                            # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5bb:0x21 DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5c3:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x5cf:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1500                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5dc:0x5 DW_TAG_pointer_type
	.long	1467                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5e1:0x5 DW_TAG_pointer_type
	.long	1510                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5e6:0xb DW_TAG_typedef
	.long	1521                            # DW_AT_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5f1:0x2d DW_TAG_structure_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x5f9:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1240                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x605:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1240                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x611:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1240                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x61e:0x5 DW_TAG_pointer_type
	.long	1571                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x623:0xb DW_TAG_typedef
	.long	1582                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x62e:0x39 DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x636:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x642:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x64e:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1639                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x65a:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1717                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x667:0x5 DW_TAG_pointer_type
	.long	1644                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x66c:0xb DW_TAG_typedef
	.long	1655                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x677:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x67f:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x68b:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x697:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6a3:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1712                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6b0:0x5 DW_TAG_pointer_type
	.long	1655                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x6b5:0x5 DW_TAG_pointer_type
	.long	1722                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x6ba:0xb DW_TAG_typedef
	.long	1733                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6c5:0x39 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x6cd:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6d9:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6e5:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x6f1:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1790                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x6fe:0x5 DW_TAG_pointer_type
	.long	1733                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x703:0x5 DW_TAG_pointer_type
	.long	1800                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x708:0xb DW_TAG_typedef
	.long	1811                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x713:0x21 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x71b:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x727:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1844                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x734:0x5 DW_TAG_pointer_type
	.long	1811                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x739:0x5 DW_TAG_pointer_type
	.long	1098                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x73e:0x5 DW_TAG_pointer_type
	.long	1859                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x743:0xb DW_TAG_typedef
	.long	1870                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x74e:0x5d DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x756:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x762:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x76e:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x77a:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x786:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1795                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x792:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x79e:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x7ab:0x5 DW_TAG_pointer_type
	.long	1870                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x7b0:0x56 DW_TAG_structure_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7b8:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1988                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x7c4:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x7c8:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	2054                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7d4:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	2077                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x7e1:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2754                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7ed:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x7f9:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2794                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x806:0xb DW_TAG_typedef
	.long	2065                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	5                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x811:0x5 DW_TAG_pointer_type
	.long	2070                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x816:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x817:0x5 DW_TAG_formal_parameter
	.long	782                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x81d:0x5 DW_TAG_pointer_type
	.long	2082                            # DW_AT_type
	.byte	16                              # Abbrev [16] 0x822:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	17                              # Abbrev [17] 0x823:0x5 DW_TAG_formal_parameter
	.long	782                             # DW_AT_type
	.byte	17                              # Abbrev [17] 0x828:0x5 DW_TAG_formal_parameter
	.long	2099                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x82d:0x5 DW_TAG_formal_parameter
	.long	42                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x833:0x5 DW_TAG_pointer_type
	.long	2104                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x838:0xb DW_TAG_typedef
	.long	2115                            # DW_AT_type
	.long	.Linfo_string135                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0x843:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x847:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x853:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x85f:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x86b:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x877:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2179                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x883:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x887:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2626                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x893:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2207                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x89f:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8a3:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2645                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8af:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2656                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8bc:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	2248                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8c8:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x8cc:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8d8:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x8e4:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2674                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x8f1:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2301                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x8fd:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x901:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2645                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x90d:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2656                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x919:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	2674                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x926:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2354                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x932:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x936:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2645                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x942:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2656                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x94e:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x95a:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2718                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x966:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2718                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x973:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2431                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x97f:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x983:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x98f:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2736                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x99b:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	15                              # Abbrev [15] 0x9a7:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9ab:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2487                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x9b7:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9bb:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9c7:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9d4:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2743                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x9e2:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2542                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0x9ee:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9f2:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2729                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x9fe:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xa0b:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2583                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	18                              # Abbrev [18] 0xa17:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa1b:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa27:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa33:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2667                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xa42:0xc DW_TAG_array_type
	.long	782                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xa47:0x6 DW_TAG_subrange_type
	.long	2638                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0xa4e:0x7 DW_TAG_base_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	9                               # Abbrev [9] 0xa55:0xb DW_TAG_typedef
	.long	782                             # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa60:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string102                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa6b:0x7 DW_TAG_base_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xa72:0xb DW_TAG_typedef
	.long	2685                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0xa7d:0x21 DW_TAG_union_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa85:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xa91:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	42                              # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa9e:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string116                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xaa9:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0xab0:0x7 DW_TAG_base_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0xab7:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string127                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xac2:0xb DW_TAG_typedef
	.long	2765                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	10                              # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	18                              # Abbrev [18] 0xacd:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xad1:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2782                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0xade:0xc DW_TAG_array_type
	.long	694                             # DW_AT_type
	.byte	20                              # Abbrev [20] 0xae3:0x6 DW_TAG_subrange_type
	.long	2638                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xaea:0x5 DW_TAG_pointer_type
	.long	2799                            # DW_AT_type
	.byte	23                              # Abbrev [23] 0xaef:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0xaf0:0x5 DW_TAG_pointer_type
	.long	2805                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xaf5:0xbd DW_TAG_structure_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xafd:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2994                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb09:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	3005                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb15:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	3016                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb21:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	3027                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb2d:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2656                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb39:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	3038                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb45:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	782                             # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb51:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2994                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb5d:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	3049                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb69:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	3060                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb75:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	3071                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb81:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	3082                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb8d:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	3082                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xb99:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	3082                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xba5:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	3137                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xbb2:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbbd:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbc8:0xb DW_TAG_typedef
	.long	694                             # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbd3:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbde:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbe9:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbf4:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xbff:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xc0a:0x21 DW_TAG_structure_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	12                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc12:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	3115                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc1e:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	3126                            # DW_AT_type
	.byte	12                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xc2b:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xc36:0xb DW_TAG_typedef
	.long	2729                            # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xc41:0xc DW_TAG_array_type
	.long	3126                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xc46:0x6 DW_TAG_subrange_type
	.long	2638                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xc4d:0x5 DW_TAG_pointer_type
	.long	3154                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0xc52:0x69 DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	14                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc5a:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	3259                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc66:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3259                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc72:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3259                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc7e:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3259                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc8a:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	3270                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xc96:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3288                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xca2:0xc DW_TAG_member
	.long	.Linfo_string181                # DW_AT_name
	.long	3300                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0xcae:0xc DW_TAG_member
	.long	.Linfo_string183                # DW_AT_name
	.long	3300                            # DW_AT_type
	.byte	14                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xcbb:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xcc6:0xb DW_TAG_typedef
	.long	3281                            # DW_AT_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xcd1:0x7 DW_TAG_base_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	19                              # Abbrev [19] 0xcd8:0xc DW_TAG_array_type
	.long	3270                            # DW_AT_type
	.byte	20                              # Abbrev [20] 0xcdd:0x6 DW_TAG_subrange_type
	.long	2638                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xce4:0xb DW_TAG_typedef
	.long	2667                            # DW_AT_type
	.long	.Linfo_string182                # DW_AT_name
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xcef:0x5 DW_TAG_pointer_type
	.long	1854                            # DW_AT_type
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
	.asciz	"expand_variable_in_lexeme"     # string offset=129
.Linfo_string6:
	.asciz	"long unsigned int"             # string offset=155
.Linfo_string7:
	.asciz	"size_t"                        # string offset=173
.Linfo_string8:
	.asciz	"replace_expansion_name_by_value" # string offset=180
.Linfo_string9:
	.asciz	"replace_variable_in_lexeme"    # string offset=212
.Linfo_string10:
	.asciz	"remove_expansion_name"         # string offset=239
.Linfo_string11:
	.asciz	"expand_lexeme_variable"        # string offset=261
.Linfo_string12:
	.asciz	"manage_expansion"              # string offset=284
.Linfo_string13:
	.asciz	"env"                           # string offset=301
.Linfo_string14:
	.asciz	"name"                          # string offset=305
.Linfo_string15:
	.asciz	"value"                         # string offset=310
.Linfo_string16:
	.asciz	"next"                          # string offset=316
.Linfo_string17:
	.asciz	"s_env"                         # string offset=321
.Linfo_string18:
	.asciz	"t_env"                         # string offset=327
.Linfo_string19:
	.asciz	"lexeme"                        # string offset=333
.Linfo_string20:
	.asciz	"lexeme_expanded"               # string offset=340
.Linfo_string21:
	.asciz	"i"                             # string offset=356
.Linfo_string22:
	.asciz	"int"                           # string offset=358
.Linfo_string23:
	.asciz	"j"                             # string offset=362
.Linfo_string24:
	.asciz	"len"                           # string offset=364
.Linfo_string25:
	.asciz	"length"                        # string offset=368
.Linfo_string26:
	.asciz	"minishell"                     # string offset=375
.Linfo_string27:
	.asciz	"dir"                           # string offset=385
.Linfo_string28:
	.asciz	"__dirstream"                   # string offset=389
.Linfo_string29:
	.asciz	"DIR"                           # string offset=401
.Linfo_string30:
	.asciz	"state"                         # string offset=405
.Linfo_string31:
	.asciz	"input"                         # string offset=411
.Linfo_string32:
	.asciz	"path"                          # string offset=417
.Linfo_string33:
	.asciz	"prompt"                        # string offset=422
.Linfo_string34:
	.asciz	"operator_nbr"                  # string offset=429
.Linfo_string35:
	.asciz	"exit_status"                   # string offset=442
.Linfo_string36:
	.asciz	"env_array"                     # string offset=454
.Linfo_string37:
	.asciz	"local"                         # string offset=464
.Linfo_string38:
	.asciz	"s_var"                         # string offset=470
.Linfo_string39:
	.asciz	"t_var"                         # string offset=476
.Linfo_string40:
	.asciz	"syntax_tree"                   # string offset=482
.Linfo_string41:
	.asciz	"node"                          # string offset=494
.Linfo_string42:
	.asciz	"id"                            # string offset=499
.Linfo_string43:
	.asciz	"type"                          # string offset=502
.Linfo_string44:
	.asciz	"pipe_fd"                       # string offset=507
.Linfo_string45:
	.asciz	"left"                          # string offset=515
.Linfo_string46:
	.asciz	"pid"                           # string offset=520
.Linfo_string47:
	.asciz	"wstatus"                       # string offset=524
.Linfo_string48:
	.asciz	"arg"                           # string offset=532
.Linfo_string49:
	.asciz	"s_arg"                         # string offset=536
.Linfo_string50:
	.asciz	"t_arg"                         # string offset=542
.Linfo_string51:
	.asciz	"pipe"                          # string offset=548
.Linfo_string52:
	.asciz	"to_close"                      # string offset=553
.Linfo_string53:
	.asciz	"write"                         # string offset=562
.Linfo_string54:
	.asciz	"read"                          # string offset=568
.Linfo_string55:
	.asciz	"s_pipe"                        # string offset=573
.Linfo_string56:
	.asciz	"t_pipe"                        # string offset=580
.Linfo_string57:
	.asciz	"redir"                         # string offset=587
.Linfo_string58:
	.asciz	"in_fd"                         # string offset=593
.Linfo_string59:
	.asciz	"out_fd"                        # string offset=599
.Linfo_string60:
	.asciz	"infile"                        # string offset=606
.Linfo_string61:
	.asciz	"fd"                            # string offset=613
.Linfo_string62:
	.asciz	"s_infile"                      # string offset=616
.Linfo_string63:
	.asciz	"t_infile"                      # string offset=625
.Linfo_string64:
	.asciz	"outfile"                       # string offset=634
.Linfo_string65:
	.asciz	"s_outfile"                     # string offset=642
.Linfo_string66:
	.asciz	"t_outfile"                     # string offset=652
.Linfo_string67:
	.asciz	"s_redir"                       # string offset=662
.Linfo_string68:
	.asciz	"t_redir"                       # string offset=670
.Linfo_string69:
	.asciz	"assign"                        # string offset=678
.Linfo_string70:
	.asciz	"expansion"                     # string offset=685
.Linfo_string71:
	.asciz	"s_expan"                       # string offset=695
.Linfo_string72:
	.asciz	"t_expan"                       # string offset=703
.Linfo_string73:
	.asciz	"arg_array"                     # string offset=711
.Linfo_string74:
	.asciz	"prev"                          # string offset=721
.Linfo_string75:
	.asciz	"s_cmd"                         # string offset=726
.Linfo_string76:
	.asciz	"right"                         # string offset=732
.Linfo_string77:
	.asciz	"s_ast_node"                    # string offset=738
.Linfo_string78:
	.asciz	"t_ast_node"                    # string offset=749
.Linfo_string79:
	.asciz	"s_ast"                         # string offset=760
.Linfo_string80:
	.asciz	"t_ast"                         # string offset=766
.Linfo_string81:
	.asciz	"token_stream"                  # string offset=772
.Linfo_string82:
	.asciz	"quote_nbr"                     # string offset=785
.Linfo_string83:
	.asciz	"s_token"                       # string offset=795
.Linfo_string84:
	.asciz	"t_token"                       # string offset=803
.Linfo_string85:
	.asciz	"sighandler"                    # string offset=811
.Linfo_string86:
	.asciz	"__sigaction_handler"           # string offset=822
.Linfo_string87:
	.asciz	"sa_handler"                    # string offset=842
.Linfo_string88:
	.asciz	"__sighandler_t"                # string offset=853
.Linfo_string89:
	.asciz	"sa_sigaction"                  # string offset=868
.Linfo_string90:
	.asciz	"si_signo"                      # string offset=881
.Linfo_string91:
	.asciz	"si_errno"                      # string offset=890
.Linfo_string92:
	.asciz	"si_code"                       # string offset=899
.Linfo_string93:
	.asciz	"__pad0"                        # string offset=907
.Linfo_string94:
	.asciz	"_sifields"                     # string offset=914
.Linfo_string95:
	.asciz	"_pad"                          # string offset=924
.Linfo_string96:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=929
.Linfo_string97:
	.asciz	"_kill"                         # string offset=949
.Linfo_string98:
	.asciz	"si_pid"                        # string offset=955
.Linfo_string99:
	.asciz	"__pid_t"                       # string offset=962
.Linfo_string100:
	.asciz	"si_uid"                        # string offset=970
.Linfo_string101:
	.asciz	"unsigned int"                  # string offset=977
.Linfo_string102:
	.asciz	"__uid_t"                       # string offset=990
.Linfo_string103:
	.asciz	"_timer"                        # string offset=998
.Linfo_string104:
	.asciz	"si_tid"                        # string offset=1005
.Linfo_string105:
	.asciz	"si_overrun"                    # string offset=1012
.Linfo_string106:
	.asciz	"si_sigval"                     # string offset=1023
.Linfo_string107:
	.asciz	"sival_int"                     # string offset=1033
.Linfo_string108:
	.asciz	"sival_ptr"                     # string offset=1043
.Linfo_string109:
	.asciz	"sigval"                        # string offset=1053
.Linfo_string110:
	.asciz	"__sigval_t"                    # string offset=1060
.Linfo_string111:
	.asciz	"_rt"                           # string offset=1071
.Linfo_string112:
	.asciz	"_sigchld"                      # string offset=1075
.Linfo_string113:
	.asciz	"si_status"                     # string offset=1084
.Linfo_string114:
	.asciz	"si_utime"                      # string offset=1094
.Linfo_string115:
	.asciz	"long int"                      # string offset=1103
.Linfo_string116:
	.asciz	"__clock_t"                     # string offset=1112
.Linfo_string117:
	.asciz	"si_stime"                      # string offset=1122
.Linfo_string118:
	.asciz	"_sigfault"                     # string offset=1131
.Linfo_string119:
	.asciz	"si_addr"                       # string offset=1141
.Linfo_string120:
	.asciz	"si_addr_lsb"                   # string offset=1149
.Linfo_string121:
	.asciz	"short"                         # string offset=1161
.Linfo_string122:
	.asciz	"_bounds"                       # string offset=1167
.Linfo_string123:
	.asciz	"_addr_bnd"                     # string offset=1175
.Linfo_string124:
	.asciz	"_lower"                        # string offset=1185
.Linfo_string125:
	.asciz	"_upper"                        # string offset=1192
.Linfo_string126:
	.asciz	"_pkey"                         # string offset=1199
.Linfo_string127:
	.asciz	"__uint32_t"                    # string offset=1205
.Linfo_string128:
	.asciz	"_sigpoll"                      # string offset=1216
.Linfo_string129:
	.asciz	"si_band"                       # string offset=1225
.Linfo_string130:
	.asciz	"si_fd"                         # string offset=1233
.Linfo_string131:
	.asciz	"_sigsys"                       # string offset=1239
.Linfo_string132:
	.asciz	"_call_addr"                    # string offset=1247
.Linfo_string133:
	.asciz	"_syscall"                      # string offset=1258
.Linfo_string134:
	.asciz	"_arch"                         # string offset=1267
.Linfo_string135:
	.asciz	"siginfo_t"                     # string offset=1273
.Linfo_string136:
	.asciz	"sa_mask"                       # string offset=1283
.Linfo_string137:
	.asciz	"__val"                         # string offset=1291
.Linfo_string138:
	.asciz	"__sigset_t"                    # string offset=1297
.Linfo_string139:
	.asciz	"sa_flags"                      # string offset=1308
.Linfo_string140:
	.asciz	"sa_restorer"                   # string offset=1317
.Linfo_string141:
	.asciz	"sigaction"                     # string offset=1329
.Linfo_string142:
	.asciz	"statbuf"                       # string offset=1339
.Linfo_string143:
	.asciz	"st_dev"                        # string offset=1347
.Linfo_string144:
	.asciz	"__dev_t"                       # string offset=1354
.Linfo_string145:
	.asciz	"st_ino"                        # string offset=1362
.Linfo_string146:
	.asciz	"__ino_t"                       # string offset=1369
.Linfo_string147:
	.asciz	"st_nlink"                      # string offset=1377
.Linfo_string148:
	.asciz	"__nlink_t"                     # string offset=1386
.Linfo_string149:
	.asciz	"st_mode"                       # string offset=1396
.Linfo_string150:
	.asciz	"__mode_t"                      # string offset=1404
.Linfo_string151:
	.asciz	"st_uid"                        # string offset=1413
.Linfo_string152:
	.asciz	"st_gid"                        # string offset=1420
.Linfo_string153:
	.asciz	"__gid_t"                       # string offset=1427
.Linfo_string154:
	.asciz	"st_rdev"                       # string offset=1435
.Linfo_string155:
	.asciz	"st_size"                       # string offset=1443
.Linfo_string156:
	.asciz	"__off_t"                       # string offset=1451
.Linfo_string157:
	.asciz	"st_blksize"                    # string offset=1459
.Linfo_string158:
	.asciz	"__blksize_t"                   # string offset=1470
.Linfo_string159:
	.asciz	"st_blocks"                     # string offset=1482
.Linfo_string160:
	.asciz	"__blkcnt_t"                    # string offset=1492
.Linfo_string161:
	.asciz	"st_atim"                       # string offset=1503
.Linfo_string162:
	.asciz	"tv_sec"                        # string offset=1511
.Linfo_string163:
	.asciz	"__time_t"                      # string offset=1518
.Linfo_string164:
	.asciz	"tv_nsec"                       # string offset=1527
.Linfo_string165:
	.asciz	"__syscall_slong_t"             # string offset=1535
.Linfo_string166:
	.asciz	"timespec"                      # string offset=1553
.Linfo_string167:
	.asciz	"st_mtim"                       # string offset=1562
.Linfo_string168:
	.asciz	"st_ctim"                       # string offset=1570
.Linfo_string169:
	.asciz	"__glibc_reserved"              # string offset=1578
.Linfo_string170:
	.asciz	"stat"                          # string offset=1595
.Linfo_string171:
	.asciz	"term"                          # string offset=1600
.Linfo_string172:
	.asciz	"c_iflag"                       # string offset=1605
.Linfo_string173:
	.asciz	"tcflag_t"                      # string offset=1613
.Linfo_string174:
	.asciz	"c_oflag"                       # string offset=1622
.Linfo_string175:
	.asciz	"c_cflag"                       # string offset=1630
.Linfo_string176:
	.asciz	"c_lflag"                       # string offset=1638
.Linfo_string177:
	.asciz	"c_line"                        # string offset=1646
.Linfo_string178:
	.asciz	"unsigned char"                 # string offset=1653
.Linfo_string179:
	.asciz	"cc_t"                          # string offset=1667
.Linfo_string180:
	.asciz	"c_cc"                          # string offset=1672
.Linfo_string181:
	.asciz	"c_ispeed"                      # string offset=1677
.Linfo_string182:
	.asciz	"speed_t"                       # string offset=1686
.Linfo_string183:
	.asciz	"c_ospeed"                      # string offset=1694
.Linfo_string184:
	.asciz	"termios"                       # string offset=1703
.Linfo_string185:
	.asciz	"s_minishell"                   # string offset=1711
.Linfo_string186:
	.asciz	"t_minishell"                   # string offset=1723
.Linfo_string187:
	.asciz	"token"                         # string offset=1735
.Linfo_string188:
	.asciz	"last_exit_status"              # string offset=1741
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_expansion_value
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strlen
	.addrsig_sym ft_strdup
	.addrsig_sym expand_variable_in_lexeme
	.addrsig_sym replace_expansion_name_by_value
	.addrsig_sym is_exit_status
	.addrsig_sym replace_variable_in_lexeme
	.addrsig_sym remove_expansion_name
	.addrsig_sym free
	.addrsig_sym expand_lexeme_variable
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym is_expansion_stored_in_env
	.addrsig_sym ft_itoa
	.section	.debug_line,"",@progbits
.Lline_table_start0:
