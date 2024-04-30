	.text
	.file	"token_expansion.c"
	.globl	is_next_char_valid              # -- Begin function is_next_char_valid
	.p2align	4, 0x90
	.type	is_next_char_valid,@function
is_next_char_valid:                     # @is_next_char_valid
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/token_expansion.c"
	.loc	1 16 0                          # src/lexer/token_expansion.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -2(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/lexer/token_expansion.c:17:6
	movsbl	-2(%rbp), %eax
	.loc	1 17 8 is_stmt 0                # src/lexer/token_expansion.c:17:8
	cmpl	$0, %eax
	.loc	1 17 16                         # src/lexer/token_expansion.c:17:16
	je	.LBB0_5
# %bb.1:
	.loc	1 17 19                         # src/lexer/token_expansion.c:17:19
	movsbl	-2(%rbp), %eax
	.loc	1 17 21                         # src/lexer/token_expansion.c:17:21
	cmpl	$36, %eax
	.loc	1 17 28                         # src/lexer/token_expansion.c:17:28
	je	.LBB0_5
# %bb.2:
	.loc	1 17 31                         # src/lexer/token_expansion.c:17:31
	movsbl	-2(%rbp), %edi
	callq	is_blank
	.loc	1 18 3 is_stmt 1                # src/lexer/token_expansion.c:18:3
	testb	$1, %al
	jne	.LBB0_5
# %bb.3:
	.loc	1 18 6 is_stmt 0                # src/lexer/token_expansion.c:18:6
	movsbl	-2(%rbp), %edi
	callq	is_quote
	.loc	1 18 18                         # src/lexer/token_expansion.c:18:18
	testb	$1, %al
	jne	.LBB0_5
# %bb.4:
	.loc	1 18 21                         # src/lexer/token_expansion.c:18:21
	movsbl	-2(%rbp), %eax
	.loc	1 18 23                         # src/lexer/token_expansion.c:18:23
	cmpl	$61, %eax
.Ltmp1:
	.loc	1 17 6 is_stmt 1                # src/lexer/token_expansion.c:17:6
	jne	.LBB0_6
.LBB0_5:
.Ltmp2:
	.loc	1 19 3                          # src/lexer/token_expansion.c:19:3
	movb	$0, -1(%rbp)
	jmp	.LBB0_7
.Ltmp3:
.LBB0_6:
	.loc	1 20 2                          # src/lexer/token_expansion.c:20:2
	movb	$1, -1(%rbp)
.LBB0_7:
	.loc	1 21 1                          # src/lexer/token_expansion.c:21:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_next_char_valid, .Lfunc_end0-is_next_char_valid
	.cfi_endproc
                                        # -- End function
	.globl	get_expansion_name_length       # -- Begin function get_expansion_name_length
	.p2align	4, 0x90
	.type	get_expansion_name_length,@function
get_expansion_name_length:              # @get_expansion_name_length
.Lfunc_begin1:
	.loc	1 24 0                          # src/lexer/token_expansion.c:24:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp5:
	.loc	1 27 4 prologue_end             # src/lexer/token_expansion.c:27:4
	movl	$0, -20(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 28 9                          # src/lexer/token_expansion.c:28:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 28 2 is_stmt 0                # src/lexer/token_expansion.c:28:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_8
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp6:
	.loc	1 30 16 is_stmt 1               # src/lexer/token_expansion.c:30:16
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 30 7 is_stmt 0                # src/lexer/token_expansion.c:30:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
	.loc	1 30 27                         # src/lexer/token_expansion.c:30:27
	testb	$1, %al
	jne	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 30 47                         # src/lexer/token_expansion.c:30:47
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 30 30                         # src/lexer/token_expansion.c:30:30
	movsbl	(%rax,%rcx), %edi
	callq	is_metacharacter
	.loc	1 31 4 is_stmt 1                # src/lexer/token_expansion.c:31:4
	testb	$1, %al
	jne	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 31 7 is_stmt 0                # src/lexer/token_expansion.c:31:7
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 31 17                         # src/lexer/token_expansion.c:31:17
	cmpl	$61, %eax
	.loc	1 31 24                         # src/lexer/token_expansion.c:31:24
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 31 27                         # src/lexer/token_expansion.c:31:27
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 31 37                         # src/lexer/token_expansion.c:31:37
	cmpl	$36, %eax
.Ltmp7:
	.loc	1 30 7 is_stmt 1                # src/lexer/token_expansion.c:30:7
	jne	.LBB1_7
.LBB1_6:
.Ltmp8:
	.loc	1 32 12                         # src/lexer/token_expansion.c:32:12
	movl	-20(%rbp), %eax
	.loc	1 32 4 is_stmt 0                # src/lexer/token_expansion.c:32:4
	movl	%eax, -4(%rbp)
	jmp	.LBB1_9
.Ltmp9:
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 33 4 is_stmt 1                # src/lexer/token_expansion.c:33:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp10:
	.loc	1 28 2                          # src/lexer/token_expansion.c:28:2
	jmp	.LBB1_1
.LBB1_8:
	.loc	1 35 10                         # src/lexer/token_expansion.c:35:10
	movl	-20(%rbp), %eax
	.loc	1 35 2 is_stmt 0                # src/lexer/token_expansion.c:35:2
	movl	%eax, -4(%rbp)
.LBB1_9:
	.loc	1 36 1 is_stmt 1                # src/lexer/token_expansion.c:36:1
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	get_expansion_name_length, .Lfunc_end1-get_expansion_name_length
	.cfi_endproc
                                        # -- End function
	.globl	extract_expansion_name          # -- Begin function extract_expansion_name
	.p2align	4, 0x90
	.type	extract_expansion_name,@function
extract_expansion_name:                 # @extract_expansion_name
.Lfunc_begin2:
	.loc	1 39 0                          # src/lexer/token_expansion.c:39:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp12:
	.loc	1 44 4 prologue_end             # src/lexer/token_expansion.c:44:4
	movl	$0, -20(%rbp)
	.loc	1 45 37                         # src/lexer/token_expansion.c:45:37
	movq	-16(%rbp), %rdi
	.loc	1 45 11 is_stmt 0               # src/lexer/token_expansion.c:45:11
	callq	get_expansion_name_length
	.loc	1 45 9                          # src/lexer/token_expansion.c:45:9
	movl	%eax, -24(%rbp)
.Ltmp13:
	.loc	1 46 13 is_stmt 1               # src/lexer/token_expansion.c:46:13
	cmpl	$0, -24(%rbp)
.Ltmp14:
	.loc	1 46 6 is_stmt 0                # src/lexer/token_expansion.c:46:6
	jne	.LBB2_2
# %bb.1:
.Ltmp15:
	.loc	1 47 3 is_stmt 1                # src/lexer/token_expansion.c:47:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_6
.Ltmp16:
.LBB2_2:
	.loc	1 48 16                         # src/lexer/token_expansion.c:48:16
	movl	-24(%rbp), %eax
	.loc	1 48 23 is_stmt 0               # src/lexer/token_expansion.c:48:23
	addl	$1, %eax
	.loc	1 48 16                         # src/lexer/token_expansion.c:48:16
	movslq	%eax, %rdi
	.loc	1 48 9                          # src/lexer/token_expansion.c:48:9
	callq	malloc
	.loc	1 48 7                          # src/lexer/token_expansion.c:48:7
	movq	%rax, -32(%rbp)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 49 9 is_stmt 1                # src/lexer/token_expansion.c:49:9
	movl	-20(%rbp), %eax
	.loc	1 49 11 is_stmt 0               # src/lexer/token_expansion.c:49:11
	cmpl	-24(%rbp), %eax
	.loc	1 49 2                          # src/lexer/token_expansion.c:49:2
	jge	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
.Ltmp17:
	.loc	1 51 13 is_stmt 1               # src/lexer/token_expansion.c:51:13
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 51 3 is_stmt 0                # src/lexer/token_expansion.c:51:3
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 51 11                         # src/lexer/token_expansion.c:51:11
	movb	%dl, (%rax,%rcx)
	.loc	1 52 4 is_stmt 1                # src/lexer/token_expansion.c:52:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp18:
	.loc	1 49 2                          # src/lexer/token_expansion.c:49:2
	jmp	.LBB2_3
.LBB2_5:
	.loc	1 54 2                          # src/lexer/token_expansion.c:54:2
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 54 10 is_stmt 0               # src/lexer/token_expansion.c:54:10
	movb	$0, (%rax,%rcx)
	.loc	1 55 10 is_stmt 1               # src/lexer/token_expansion.c:55:10
	movq	-32(%rbp), %rax
	.loc	1 55 2 is_stmt 0                # src/lexer/token_expansion.c:55:2
	movq	%rax, -8(%rbp)
.LBB2_6:
	.loc	1 56 1 is_stmt 1                # src/lexer/token_expansion.c:56:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end2:
	.size	extract_expansion_name, .Lfunc_end2-extract_expansion_name
	.cfi_endproc
                                        # -- End function
	.globl	extract_expansion               # -- Begin function extract_expansion
	.p2align	4, 0x90
	.type	extract_expansion,@function
extract_expansion:                      # @extract_expansion
.Lfunc_begin3:
	.loc	1 59 0                          # src/lexer/token_expansion.c:59:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp20:
	.loc	1 62 14 prologue_end            # src/lexer/token_expansion.c:62:14
	movl	$16, %edi
	callq	malloc
	.loc	1 62 12 is_stmt 0               # src/lexer/token_expansion.c:62:12
	movq	%rax, -24(%rbp)
.Ltmp21:
	.loc	1 63 7 is_stmt 1                # src/lexer/token_expansion.c:63:7
	cmpq	$0, -24(%rbp)
.Ltmp22:
	.loc	1 63 6 is_stmt 0                # src/lexer/token_expansion.c:63:6
	jne	.LBB3_2
# %bb.1:
.Ltmp23:
	.loc	1 64 11 is_stmt 1               # src/lexer/token_expansion.c:64:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 64 3 is_stmt 0                # src/lexer/token_expansion.c:64:3
	movq	$0, -8(%rbp)
	jmp	.LBB3_3
.Ltmp24:
.LBB3_2:
	.loc	1 65 2 is_stmt 1                # src/lexer/token_expansion.c:65:2
	movq	-24(%rbp), %rax
	.loc	1 65 18 is_stmt 0               # src/lexer/token_expansion.c:65:18
	movq	$0, 8(%rax)
	.loc	1 66 43 is_stmt 1               # src/lexer/token_expansion.c:66:43
	movq	-16(%rbp), %rdi
	.loc	1 66 20 is_stmt 0               # src/lexer/token_expansion.c:66:20
	callq	extract_expansion_name
	movq	%rax, %rcx
	.loc	1 66 2                          # src/lexer/token_expansion.c:66:2
	movq	-24(%rbp), %rax
	.loc	1 66 18                         # src/lexer/token_expansion.c:66:18
	movq	%rcx, (%rax)
	.loc	1 67 10 is_stmt 1               # src/lexer/token_expansion.c:67:10
	movq	-24(%rbp), %rax
	.loc	1 67 2 is_stmt 0                # src/lexer/token_expansion.c:67:2
	movq	%rax, -8(%rbp)
.LBB3_3:
	.loc	1 68 1 is_stmt 1                # src/lexer/token_expansion.c:68:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end3:
	.size	extract_expansion, .Lfunc_end3-extract_expansion
	.cfi_endproc
                                        # -- End function
	.globl	get_token_expansion             # -- Begin function get_token_expansion
	.p2align	4, 0x90
	.type	get_token_expansion,@function
get_token_expansion:                    # @get_token_expansion
.Lfunc_begin4:
	.loc	1 71 0                          # src/lexer/token_expansion.c:71:0
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
.Ltmp26:
	.loc	1 77 4 prologue_end             # src/lexer/token_expansion.c:77:4
	movl	$0, -16(%rbp)
	.loc	1 78 12                         # src/lexer/token_expansion.c:78:12
	movq	$0, -24(%rbp)
	.loc	1 79 13                         # src/lexer/token_expansion.c:79:13
	movq	$0, -32(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 80 9                          # src/lexer/token_expansion.c:80:9
	movl	-16(%rbp), %ecx
	.loc	1 80 11 is_stmt 0               # src/lexer/token_expansion.c:80:11
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-12(%rbp), %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	.loc	1 80 20                         # src/lexer/token_expansion.c:80:20
	jge	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 80 23                         # src/lexer/token_expansion.c:80:23
	callq	__errno_location
	.loc	1 80 29                         # src/lexer/token_expansion.c:80:29
	cmpl	$0, (%rax)
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 0 29                          # src/lexer/token_expansion.c:0:29
	movb	-41(%rbp), %al                  # 1-byte Reload
	.loc	1 80 2                          # src/lexer/token_expansion.c:80:2
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_13
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp27:
	.loc	1 82 7 is_stmt 1                # src/lexer/token_expansion.c:82:7
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 82 17 is_stmt 0               # src/lexer/token_expansion.c:82:17
	cmpl	$39, %eax
.Ltmp28:
	.loc	1 82 7                          # src/lexer/token_expansion.c:82:7
	jne	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp29:
	.loc	1 83 21 is_stmt 1               # src/lexer/token_expansion.c:83:21
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 83 9 is_stmt 0                # src/lexer/token_expansion.c:83:9
	movl	$39, %esi
	callq	skip_quote
	.loc	1 83 6                          # src/lexer/token_expansion.c:83:6
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.Ltmp30:
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 84 7 is_stmt 1                # src/lexer/token_expansion.c:84:7
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 84 17 is_stmt 0               # src/lexer/token_expansion.c:84:17
	cmpl	$36, %eax
	.loc	1 84 24                         # src/lexer/token_expansion.c:84:24
	jne	.LBB4_12
# %bb.7:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 84 46                         # src/lexer/token_expansion.c:84:46
	movq	-8(%rbp), %rax
	.loc	1 84 53                         # src/lexer/token_expansion.c:84:53
	movl	-16(%rbp), %ecx
	.loc	1 84 55                         # src/lexer/token_expansion.c:84:55
	addl	$1, %ecx
	.loc	1 84 46                         # src/lexer/token_expansion.c:84:46
	movslq	%ecx, %rcx
	.loc	1 84 27                         # src/lexer/token_expansion.c:84:27
	movsbl	(%rax,%rcx), %edi
	callq	is_next_char_valid
.Ltmp31:
	.loc	1 84 7                          # src/lexer/token_expansion.c:84:7
	testb	$1, %al
	jne	.LBB4_8
	jmp	.LBB4_12
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp32:
	.loc	1 86 5 is_stmt 1                # src/lexer/token_expansion.c:86:5
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	1 87 35                         # src/lexer/token_expansion.c:87:35
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 87 16 is_stmt 0               # src/lexer/token_expansion.c:87:16
	callq	extract_expansion
	.loc	1 87 14                         # src/lexer/token_expansion.c:87:14
	movq	%rax, -24(%rbp)
.Ltmp33:
	.loc	1 88 9 is_stmt 1                # src/lexer/token_expansion.c:88:9
	cmpq	$0, -32(%rbp)
.Ltmp34:
	.loc	1 88 8 is_stmt 0                # src/lexer/token_expansion.c:88:8
	jne	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp35:
	.loc	1 89 18 is_stmt 1               # src/lexer/token_expansion.c:89:18
	movq	-24(%rbp), %rax
	.loc	1 89 16 is_stmt 0               # src/lexer/token_expansion.c:89:16
	movq	%rax, -32(%rbp)
	.loc	1 89 5                          # src/lexer/token_expansion.c:89:5
	jmp	.LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	1 91 25 is_stmt 1               # src/lexer/token_expansion.c:91:25
	movq	-24(%rbp), %rcx
	.loc	1 91 5 is_stmt 0                # src/lexer/token_expansion.c:91:5
	movq	-40(%rbp), %rax
	.loc	1 91 23                         # src/lexer/token_expansion.c:91:23
	movq	%rcx, 8(%rax)
.Ltmp36:
.LBB4_11:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	1 92 18 is_stmt 1               # src/lexer/token_expansion.c:92:18
	movq	-24(%rbp), %rax
	.loc	1 92 16 is_stmt 0               # src/lexer/token_expansion.c:92:16
	movq	%rax, -40(%rbp)
.Ltmp37:
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	.loc	1 94 4 is_stmt 1                # src/lexer/token_expansion.c:94:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.Ltmp38:
	.loc	1 80 2                          # src/lexer/token_expansion.c:80:2
	jmp	.LBB4_1
.LBB4_13:
	.loc	1 96 10                         # src/lexer/token_expansion.c:96:10
	movq	-32(%rbp), %rax
	.loc	1 96 2 is_stmt 0                # src/lexer/token_expansion.c:96:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp39:
.Lfunc_end4:
	.size	get_token_expansion, .Lfunc_end4-get_token_expansion
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/../../include/minishell.h"
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1c5 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	383                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	126
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	402                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x53:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	390                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x6c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x7a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x89:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	397                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xa2:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb0:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xbe:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xcc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xdb:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	409                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0xf4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x102:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	409                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x111:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	409                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x12a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	397                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x138:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x146:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	390                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x154:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.long	409                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x162:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	409                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x170:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.long	409                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x17f:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x186:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x18d:0x5 DW_TAG_pointer_type
	.long	402                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x192:0x7 DW_TAG_base_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x199:0x5 DW_TAG_pointer_type
	.long	414                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x19e:0xb DW_TAG_typedef
	.long	425                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1a9:0x21 DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1b1:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	397                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1bd:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	458                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1ca:0x5 DW_TAG_pointer_type
	.long	425                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token_expansion.c"   # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=66
.Linfo_string3:
	.asciz	"is_next_char_valid"            # string offset=135
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=154
.Linfo_string5:
	.asciz	"get_expansion_name_length"     # string offset=160
.Linfo_string6:
	.asciz	"int"                           # string offset=186
.Linfo_string7:
	.asciz	"extract_expansion_name"        # string offset=190
.Linfo_string8:
	.asciz	"char"                          # string offset=213
.Linfo_string9:
	.asciz	"extract_expansion"             # string offset=218
.Linfo_string10:
	.asciz	"name"                          # string offset=236
.Linfo_string11:
	.asciz	"next"                          # string offset=241
.Linfo_string12:
	.asciz	"s_expan"                       # string offset=246
.Linfo_string13:
	.asciz	"t_expan"                       # string offset=254
.Linfo_string14:
	.asciz	"get_token_expansion"           # string offset=262
.Linfo_string15:
	.asciz	"c"                             # string offset=282
.Linfo_string16:
	.asciz	"lexeme"                        # string offset=284
.Linfo_string17:
	.asciz	"i"                             # string offset=291
.Linfo_string18:
	.asciz	"length"                        # string offset=293
.Linfo_string19:
	.asciz	"expan_new"                     # string offset=300
.Linfo_string20:
	.asciz	"expan_list"                    # string offset=310
.Linfo_string21:
	.asciz	"expan_index"                   # string offset=321
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_next_char_valid
	.addrsig_sym is_blank
	.addrsig_sym is_quote
	.addrsig_sym get_expansion_name_length
	.addrsig_sym is_metacharacter
	.addrsig_sym extract_expansion_name
	.addrsig_sym malloc
	.addrsig_sym extract_expansion
	.addrsig_sym perror
	.addrsig_sym __errno_location
	.addrsig_sym skip_quote
	.section	.debug_line,"",@progbits
.Lline_table_start0:
