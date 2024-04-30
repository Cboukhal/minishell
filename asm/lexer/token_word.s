	.text
	.file	"token_word.c"
	.globl	get_word_length                 # -- Begin function get_word_length
	.p2align	4, 0x90
	.type	get_word_length,@function
get_word_length:                        # @get_word_length
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/token_word.c"
	.loc	1 16 0                          # src/lexer/token_word.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	1 19 4 prologue_end             # src/lexer/token_word.c:19:4
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/lexer/token_word.c:20:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -21(%rbp)                  # 1-byte Spill
	.loc	1 20 18 is_stmt 0               # src/lexer/token_word.c:20:18
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 20 21                         # src/lexer/token_word.c:20:21
	callq	__errno_location
	movq	%rax, %rcx
	.loc	1 20 27                         # src/lexer/token_word.c:20:27
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -21(%rbp)                  # 1-byte Spill
	.loc	1 21 3 is_stmt 1                # src/lexer/token_word.c:21:3
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 21 23 is_stmt 0               # src/lexer/token_word.c:21:23
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 21 6                          # src/lexer/token_word.c:21:6
	movsbl	(%rax,%rcx), %edi
	callq	is_metacharacter
	andb	$1, %al
	movzbl	%al, %eax
	.loc	1 21 33                         # src/lexer/token_word.c:21:33
	cmpl	$0, %eax
	sete	%al
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 33                          # src/lexer/token_word.c:0:33
	movb	-21(%rbp), %al                  # 1-byte Reload
	.loc	1 20 2 is_stmt 1                # src/lexer/token_word.c:20:2
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_10
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 23 16                         # src/lexer/token_word.c:23:16
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	1 23 7 is_stmt 0                # src/lexer/token_word.c:23:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp2:
	.loc	1 23 7                          # src/lexer/token_word.c:23:7
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp3:
	.loc	1 24 20 is_stmt 1               # src/lexer/token_word.c:24:20
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 24 9 is_stmt 0                # src/lexer/token_word.c:24:9
	callq	add_quote
	.loc	1 24 6                          # src/lexer/token_word.c:24:6
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
.Ltmp4:
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 25 9 is_stmt 1                # src/lexer/token_word.c:25:9
	cmpl	$-1, -20(%rbp)
.Ltmp5:
	.loc	1 25 7 is_stmt 0                # src/lexer/token_word.c:25:7
	jne	.LBB0_9
# %bb.8:
.Ltmp6:
	.loc	1 26 4 is_stmt 1                # src/lexer/token_word.c:26:4
	movl	$-1, -4(%rbp)
	jmp	.LBB0_11
.Ltmp7:
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 27 4                          # src/lexer/token_word.c:27:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp8:
	.loc	1 20 2                          # src/lexer/token_word.c:20:2
	jmp	.LBB0_1
.LBB0_10:
	.loc	1 29 10                         # src/lexer/token_word.c:29:10
	movl	-20(%rbp), %eax
	.loc	1 29 2 is_stmt 0                # src/lexer/token_word.c:29:2
	movl	%eax, -4(%rbp)
.LBB0_11:
	.loc	1 30 1 is_stmt 1                # src/lexer/token_word.c:30:1
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	get_word_length, .Lfunc_end0-get_word_length
	.cfi_endproc
                                        # -- End function
	.globl	extract_lexeme_from_input       # -- Begin function extract_lexeme_from_input
	.p2align	4, 0x90
	.type	extract_lexeme_from_input,@function
extract_lexeme_from_input:              # @extract_lexeme_from_input
.Lfunc_begin1:
	.loc	1 34 0                          # src/lexer/token_word.c:34:0
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
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
.Ltmp10:
	.loc	1 40 4 prologue_end             # src/lexer/token_word.c:40:4
	movl	$0, -28(%rbp)
	.loc	1 41 4                          # src/lexer/token_word.c:41:4
	movl	$0, -32(%rbp)
	.loc	1 42 8                          # src/lexer/token_word.c:42:8
	movb	$0, -33(%rbp)
	.loc	1 43 15                         # src/lexer/token_word.c:43:15
	movl	$0, -40(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 44 9                          # src/lexer/token_word.c:44:9
	movl	-28(%rbp), %eax
	.loc	1 44 13 is_stmt 0               # src/lexer/token_word.c:44:13
	movl	-20(%rbp), %ecx
	.loc	1 44 20                         # src/lexer/token_word.c:44:20
	subl	-24(%rbp), %ecx
	.loc	1 44 11                         # src/lexer/token_word.c:44:11
	cmpl	%ecx, %eax
	.loc	1 44 2                          # src/lexer/token_word.c:44:2
	jge	.LBB1_9
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp11:
	.loc	1 46 16 is_stmt 1               # src/lexer/token_word.c:46:16
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 46 7 is_stmt 0                # src/lexer/token_word.c:46:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp12:
	.loc	1 46 7                          # src/lexer/token_word.c:46:7
	testb	$1, %al
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp13:
	.loc	1 47 22 is_stmt 1               # src/lexer/token_word.c:47:22
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 47 9 is_stmt 0                # src/lexer/token_word.c:47:9
	leaq	-33(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	movsbl	(%rax,%rcx), %edi
	callq	remove_quote
	.loc	1 47 6                          # src/lexer/token_word.c:47:6
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.Ltmp14:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 48 20 is_stmt 1               # src/lexer/token_word.c:48:20
	cmpl	$0, -40(%rbp)
	.loc	1 48 25 is_stmt 0               # src/lexer/token_word.c:48:25
	jne	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 48 37                         # src/lexer/token_word.c:48:37
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	1 48 28                         # src/lexer/token_word.c:48:28
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp15:
	.loc	1 48 7                          # src/lexer/token_word.c:48:7
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp16:
	.loc	1 50 5 is_stmt 1                # src/lexer/token_word.c:50:5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 51 4                          # src/lexer/token_word.c:51:4
	jmp	.LBB1_1
.Ltmp17:
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 54 18                         # src/lexer/token_word.c:54:18
	movq	-8(%rbp), %rax
	.loc	1 54 25 is_stmt 0               # src/lexer/token_word.c:54:25
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	.loc	1 54 18                         # src/lexer/token_word.c:54:18
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	.loc	1 54 4                          # src/lexer/token_word.c:54:4
	movq	-16(%rbp), %rax
	.loc	1 54 12                         # src/lexer/token_word.c:54:12
	movl	-32(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -32(%rbp)
	.loc	1 54 4                          # src/lexer/token_word.c:54:4
	movslq	%ecx, %rcx
	.loc	1 54 16                         # src/lexer/token_word.c:54:16
	movb	%dl, (%rax,%rcx)
.Ltmp18:
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 44 2 is_stmt 1                # src/lexer/token_word.c:44:2
	jmp	.LBB1_1
.LBB1_9:
	.loc	1 56 2                          # src/lexer/token_word.c:56:2
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	1 56 12 is_stmt 0               # src/lexer/token_word.c:56:12
	movb	$0, (%rax,%rcx)
	.loc	1 57 1 is_stmt 1                # src/lexer/token_word.c:57:1
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp19:
.Lfunc_end1:
	.size	extract_lexeme_from_input, .Lfunc_end1-extract_lexeme_from_input
	.cfi_endproc
                                        # -- End function
	.globl	get_word_lexeme                 # -- Begin function get_word_lexeme
	.p2align	4, 0x90
	.type	get_word_lexeme,@function
get_word_lexeme:                        # @get_word_lexeme
.Lfunc_begin2:
	.loc	1 60 0                          # src/lexer/token_word.c:60:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
.Ltmp20:
	.loc	1 63 18 prologue_end            # src/lexer/token_word.c:63:18
	movl	-20(%rbp), %eax
	.loc	1 63 25 is_stmt 0               # src/lexer/token_word.c:63:25
	subl	-24(%rbp), %eax
	.loc	1 63 37                         # src/lexer/token_word.c:63:37
	addl	$1, %eax
	.loc	1 63 18                         # src/lexer/token_word.c:63:18
	movslq	%eax, %rdi
	.loc	1 63 11                         # src/lexer/token_word.c:63:11
	callq	malloc
	.loc	1 63 9                          # src/lexer/token_word.c:63:9
	movq	%rax, -32(%rbp)
.Ltmp21:
	.loc	1 64 7 is_stmt 1                # src/lexer/token_word.c:64:7
	cmpq	$0, -32(%rbp)
.Ltmp22:
	.loc	1 64 6 is_stmt 0                # src/lexer/token_word.c:64:6
	jne	.LBB2_2
# %bb.1:
.Ltmp23:
	.loc	1 65 11 is_stmt 1               # src/lexer/token_word.c:65:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 65 3 is_stmt 0                # src/lexer/token_word.c:65:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_3
.Ltmp24:
.LBB2_2:
	.loc	1 66 28 is_stmt 1               # src/lexer/token_word.c:66:28
	movq	-16(%rbp), %rdi
	.loc	1 66 35 is_stmt 0               # src/lexer/token_word.c:66:35
	movq	-32(%rbp), %rsi
	.loc	1 66 43                         # src/lexer/token_word.c:66:43
	movl	-20(%rbp), %edx
	.loc	1 66 51                         # src/lexer/token_word.c:66:51
	movl	-24(%rbp), %ecx
	.loc	1 66 2                          # src/lexer/token_word.c:66:2
	callq	extract_lexeme_from_input
	.loc	1 67 10 is_stmt 1               # src/lexer/token_word.c:67:10
	movq	-32(%rbp), %rax
	.loc	1 67 2 is_stmt 0                # src/lexer/token_word.c:67:2
	movq	%rax, -8(%rbp)
.LBB2_3:
	.loc	1 68 1 is_stmt 1                # src/lexer/token_word.c:68:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end2:
	.size	get_word_lexeme, .Lfunc_end2-get_word_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	is_empty_within_two_quote       # -- Begin function is_empty_within_two_quote
	.p2align	4, 0x90
	.type	is_empty_within_two_quote,@function
is_empty_within_two_quote:              # @is_empty_within_two_quote
.Lfunc_begin3:
	.loc	1 71 0                          # src/lexer/token_word.c:71:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp26:
	.loc	1 72 6 prologue_end             # src/lexer/token_word.c:72:6
	movl	-8(%rbp), %eax
	.loc	1 72 15 is_stmt 0               # src/lexer/token_word.c:72:15
	movl	-12(%rbp), %ecx
	.loc	1 72 25                         # src/lexer/token_word.c:72:25
	shll	$1, %ecx
	.loc	1 72 13                         # src/lexer/token_word.c:72:13
	subl	%ecx, %eax
	.loc	1 72 29                         # src/lexer/token_word.c:72:29
	cmpl	$0, %eax
.Ltmp27:
	.loc	1 72 6                          # src/lexer/token_word.c:72:6
	jne	.LBB3_2
# %bb.1:
.Ltmp28:
	.loc	1 73 3 is_stmt 1                # src/lexer/token_word.c:73:3
	movb	$1, -1(%rbp)
	jmp	.LBB3_3
.Ltmp29:
.LBB3_2:
	.loc	1 74 2                          # src/lexer/token_word.c:74:2
	movb	$0, -1(%rbp)
.LBB3_3:
	.loc	1 75 1                          # src/lexer/token_word.c:75:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp30:
.Lfunc_end3:
	.size	is_empty_within_two_quote, .Lfunc_end3-is_empty_within_two_quote
	.cfi_endproc
                                        # -- End function
	.globl	get_word_token                  # -- Begin function get_word_token
	.p2align	4, 0x90
	.type	get_word_token,@function
get_word_token:                         # @get_word_token
.Lfunc_begin4:
	.loc	1 78 0                          # src/lexer/token_word.c:78:0
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
.Ltmp31:
	.loc	1 79 42 prologue_end            # src/lexer/token_word.c:79:42
	movq	-8(%rbp), %rdi
	.loc	1 79 22 is_stmt 0               # src/lexer/token_word.c:79:22
	callq	get_token_quote_nbr
	movl	%eax, %ecx
	.loc	1 79 4                          # src/lexer/token_word.c:79:4
	movq	-16(%rbp), %rax
	.loc	1 79 3                          # src/lexer/token_word.c:79:3
	movq	(%rax), %rax
	.loc	1 79 20                         # src/lexer/token_word.c:79:20
	movl	%ecx, 4(%rax)
.Ltmp32:
	.loc	1 80 6 is_stmt 1                # src/lexer/token_word.c:80:6
	callq	__errno_location
	.loc	1 80 12 is_stmt 0               # src/lexer/token_word.c:80:12
	cmpl	$0, (%rax)
	.loc	1 80 17                         # src/lexer/token_word.c:80:17
	jne	.LBB4_6
# %bb.1:
	.loc	1 80 22                         # src/lexer/token_word.c:80:22
	movq	-16(%rbp), %rax
	.loc	1 80 21                         # src/lexer/token_word.c:80:21
	movq	(%rax), %rax
	.loc	1 80 38                         # src/lexer/token_word.c:80:38
	cmpl	$-1, 4(%rax)
.Ltmp33:
	.loc	1 80 6                          # src/lexer/token_word.c:80:6
	je	.LBB4_6
# %bb.2:
.Ltmp34:
	.loc	1 82 36 is_stmt 1               # src/lexer/token_word.c:82:36
	movq	-8(%rbp), %rdi
	.loc	1 82 20 is_stmt 0               # src/lexer/token_word.c:82:20
	callq	get_word_length
	movl	%eax, %ecx
	.loc	1 82 5                          # src/lexer/token_word.c:82:5
	movq	-16(%rbp), %rax
	.loc	1 82 4                          # src/lexer/token_word.c:82:4
	movq	(%rax), %rax
	.loc	1 82 18                         # src/lexer/token_word.c:82:18
	movl	%ecx, 8(%rax)
.Ltmp35:
	.loc	1 83 35 is_stmt 1               # src/lexer/token_word.c:83:35
	movq	-16(%rbp), %rax
	.loc	1 83 34 is_stmt 0               # src/lexer/token_word.c:83:34
	movq	(%rax), %rax
	.loc	1 83 41                         # src/lexer/token_word.c:83:41
	movl	8(%rax), %edi
	.loc	1 83 51                         # src/lexer/token_word.c:83:51
	movq	-16(%rbp), %rax
	.loc	1 83 50                         # src/lexer/token_word.c:83:50
	movq	(%rax), %rax
	.loc	1 83 57                         # src/lexer/token_word.c:83:57
	movl	4(%rax), %esi
	.loc	1 83 7                          # src/lexer/token_word.c:83:7
	callq	is_empty_within_two_quote
.Ltmp36:
	.loc	1 83 7                          # src/lexer/token_word.c:83:7
	testb	$1, %al
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:
.Ltmp37:
	.loc	1 84 6 is_stmt 1                # src/lexer/token_word.c:84:6
	movq	-16(%rbp), %rax
	.loc	1 84 5 is_stmt 0                # src/lexer/token_word.c:84:5
	movq	(%rax), %rax
	.loc	1 84 19                         # src/lexer/token_word.c:84:19
	movq	$0, 16(%rax)
	.loc	1 84 4                          # src/lexer/token_word.c:84:4
	jmp	.LBB4_5
.LBB4_4:
.Ltmp38:
	.loc	1 87 37 is_stmt 1               # src/lexer/token_word.c:87:37
	movq	-8(%rbp), %rdi
	.loc	1 88 8                          # src/lexer/token_word.c:88:8
	movq	-16(%rbp), %rax
	.loc	1 88 7 is_stmt 0                # src/lexer/token_word.c:88:7
	movq	(%rax), %rax
	.loc	1 88 14                         # src/lexer/token_word.c:88:14
	movl	8(%rax), %esi
	.loc	1 88 24                         # src/lexer/token_word.c:88:24
	movq	-16(%rbp), %rax
	.loc	1 88 23                         # src/lexer/token_word.c:88:23
	movq	(%rax), %rax
	.loc	1 88 30                         # src/lexer/token_word.c:88:30
	movl	4(%rax), %edx
	.loc	1 87 21 is_stmt 1               # src/lexer/token_word.c:87:21
	callq	get_word_lexeme
	movq	%rax, %rcx
	.loc	1 87 6 is_stmt 0                # src/lexer/token_word.c:87:6
	movq	-16(%rbp), %rax
	.loc	1 87 5                          # src/lexer/token_word.c:87:5
	movq	(%rax), %rax
	.loc	1 87 19                         # src/lexer/token_word.c:87:19
	movq	%rcx, 16(%rax)
	.loc	1 89 44 is_stmt 1               # src/lexer/token_word.c:89:44
	movq	-8(%rbp), %rdi
	.loc	1 89 53 is_stmt 0               # src/lexer/token_word.c:89:53
	movq	-16(%rbp), %rax
	.loc	1 89 52                         # src/lexer/token_word.c:89:52
	movq	(%rax), %rax
	.loc	1 89 59                         # src/lexer/token_word.c:89:59
	movl	8(%rax), %esi
	.loc	1 89 24                         # src/lexer/token_word.c:89:24
	callq	get_token_expansion
	movq	%rax, %rcx
	.loc	1 89 6                          # src/lexer/token_word.c:89:6
	movq	-16(%rbp), %rax
	.loc	1 89 5                          # src/lexer/token_word.c:89:5
	movq	(%rax), %rax
	.loc	1 89 22                         # src/lexer/token_word.c:89:22
	movq	%rcx, 24(%rax)
.Ltmp39:
.LBB4_5:
	.loc	1 91 2 is_stmt 1                # src/lexer/token_word.c:91:2
	jmp	.LBB4_6
.Ltmp40:
.LBB4_6:
	.loc	1 92 1                          # src/lexer/token_word.c:92:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp41:
.Lfunc_end4:
	.size	get_word_token, .Lfunc_end4-get_word_token
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x268 DW_TAG_compile_unit
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
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	417                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x61:0x86 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x76:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	443                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x84:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x92:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xa0:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xae:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xbc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xca:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	95
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	429                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xd8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe7:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	424                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x100:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x11c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x12a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x139:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	436                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x152:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x160:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	417                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x16f:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x184:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	424                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x192:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	77                              # DW_AT_decl_line
	.long	453                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1a1:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1a8:0x5 DW_TAG_pointer_type
	.long	429                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1ad:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1b4:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1bb:0x5 DW_TAG_pointer_type
	.long	448                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1c0:0x5 DW_TAG_const_type
	.long	429                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1c5:0x5 DW_TAG_pointer_type
	.long	458                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1ca:0x5 DW_TAG_pointer_type
	.long	463                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1cf:0xb DW_TAG_typedef
	.long	474                             # DW_AT_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1da:0x5d DW_TAG_structure_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1e2:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	417                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ee:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	417                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1fa:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	417                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x206:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	424                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x212:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	567                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x21e:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x22a:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	621                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x237:0x5 DW_TAG_pointer_type
	.long	572                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x23c:0xb DW_TAG_typedef
	.long	583                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x247:0x21 DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x24f:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	424                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x25b:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	616                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x268:0x5 DW_TAG_pointer_type
	.long	583                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x26d:0x5 DW_TAG_pointer_type
	.long	474                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token_word.c"        # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=61
.Linfo_string3:
	.asciz	"get_word_length"               # string offset=130
.Linfo_string4:
	.asciz	"int"                           # string offset=146
.Linfo_string5:
	.asciz	"extract_lexeme_from_input"     # string offset=150
.Linfo_string6:
	.asciz	"get_word_lexeme"               # string offset=176
.Linfo_string7:
	.asciz	"char"                          # string offset=192
.Linfo_string8:
	.asciz	"is_empty_within_two_quote"     # string offset=197
.Linfo_string9:
	.asciz	"_Bool"                         # string offset=223
.Linfo_string10:
	.asciz	"get_word_token"                # string offset=229
.Linfo_string11:
	.asciz	"input"                         # string offset=244
.Linfo_string12:
	.asciz	"i"                             # string offset=250
.Linfo_string13:
	.asciz	"lexeme"                        # string offset=252
.Linfo_string14:
	.asciz	"length"                        # string offset=259
.Linfo_string15:
	.asciz	"quote_nbr"                     # string offset=266
.Linfo_string16:
	.asciz	"j"                             # string offset=276
.Linfo_string17:
	.asciz	"quote"                         # string offset=278
.Linfo_string18:
	.asciz	"second_quote"                  # string offset=284
.Linfo_string19:
	.asciz	"new"                           # string offset=297
.Linfo_string20:
	.asciz	"type"                          # string offset=301
.Linfo_string21:
	.asciz	"expansion"                     # string offset=306
.Linfo_string22:
	.asciz	"name"                          # string offset=316
.Linfo_string23:
	.asciz	"next"                          # string offset=321
.Linfo_string24:
	.asciz	"s_expan"                       # string offset=326
.Linfo_string25:
	.asciz	"t_expan"                       # string offset=334
.Linfo_string26:
	.asciz	"prev"                          # string offset=342
.Linfo_string27:
	.asciz	"s_token"                       # string offset=347
.Linfo_string28:
	.asciz	"t_token"                       # string offset=355
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_word_length
	.addrsig_sym __errno_location
	.addrsig_sym is_metacharacter
	.addrsig_sym is_quote
	.addrsig_sym add_quote
	.addrsig_sym extract_lexeme_from_input
	.addrsig_sym remove_quote
	.addrsig_sym get_word_lexeme
	.addrsig_sym malloc
	.addrsig_sym perror
	.addrsig_sym is_empty_within_two_quote
	.addrsig_sym get_token_quote_nbr
	.addrsig_sym get_token_expansion
	.section	.debug_line,"",@progbits
.Lline_table_start0:
