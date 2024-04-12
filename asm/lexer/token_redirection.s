	.text
	.file	"token_redirection.c"
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/lexer/../../include/minishell.h"
	.globl	get_redirection_length          # -- Begin function get_redirection_length
	.p2align	4, 0x90
	.type	get_redirection_length,@function
get_redirection_length:                 # @get_redirection_length
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/lexer/token_redirection.c"
	.loc	2 16 0                          # src/lexer/token_redirection.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
.Ltmp0:
	.loc	2 19 11 prologue_end            # src/lexer/token_redirection.c:19:11
	cmpl	$9, -12(%rbp)
	.loc	2 19 22 is_stmt 0               # src/lexer/token_redirection.c:19:22
	je	.LBB0_2
# %bb.1:
	.loc	2 19 30                         # src/lexer/token_redirection.c:19:30
	cmpl	$11, -12(%rbp)
.Ltmp1:
	.loc	2 19 6                          # src/lexer/token_redirection.c:19:6
	jne	.LBB0_3
.LBB0_2:
.Ltmp2:
	.loc	2 20 5 is_stmt 1                # src/lexer/token_redirection.c:20:5
	movl	$2, -16(%rbp)
	.loc	2 20 3 is_stmt 0                # src/lexer/token_redirection.c:20:3
	jmp	.LBB0_4
.LBB0_3:
	.loc	2 22 5 is_stmt 1                # src/lexer/token_redirection.c:22:5
	movl	$1, -16(%rbp)
.Ltmp3:
.LBB0_4:
	.loc	2 23 2                          # src/lexer/token_redirection.c:23:2
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	.loc	2 23 9 is_stmt 0                # src/lexer/token_redirection.c:23:9
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -17(%rbp)                  # 1-byte Spill
	.loc	2 23 18                         # src/lexer/token_redirection.c:23:18
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 23 30                         # src/lexer/token_redirection.c:23:30
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	2 23 21                         # src/lexer/token_redirection.c:23:21
	movsbl	(%rax,%rcx), %edi
	callq	is_blank
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 23 40                         # src/lexer/token_redirection.c:23:40
	cmpl	$1, %eax
	sete	%al
	movb	%al, -17(%rbp)                  # 1-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 0 40                          # src/lexer/token_redirection.c:0:40
	movb	-17(%rbp), %al                  # 1-byte Reload
	.loc	2 23 2                          # src/lexer/token_redirection.c:23:2
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 24 4 is_stmt 1                # src/lexer/token_redirection.c:24:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	2 23 2                          # src/lexer/token_redirection.c:23:2
	jmp	.LBB0_5
.LBB0_9:
	.loc	2 25 2                          # src/lexer/token_redirection.c:25:2
	jmp	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	.loc	2 25 9 is_stmt 0                # src/lexer/token_redirection.c:25:9
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -18(%rbp)                  # 1-byte Spill
	.loc	2 25 18                         # src/lexer/token_redirection.c:25:18
	je	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	2 25 21                         # src/lexer/token_redirection.c:25:21
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 25 27                         # src/lexer/token_redirection.c:25:27
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -18(%rbp)                  # 1-byte Spill
	.loc	2 26 3 is_stmt 1                # src/lexer/token_redirection.c:26:3
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	2 26 23 is_stmt 0               # src/lexer/token_redirection.c:26:23
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	2 26 6                          # src/lexer/token_redirection.c:26:6
	movsbl	(%rax,%rcx), %edi
	callq	is_metacharacter
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 26 33                         # src/lexer/token_redirection.c:26:33
	cmpl	$0, %eax
	sete	%al
	movb	%al, -18(%rbp)                  # 1-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	2 0 33                          # src/lexer/token_redirection.c:0:33
	movb	-18(%rbp), %al                  # 1-byte Reload
	.loc	2 25 2 is_stmt 1                # src/lexer/token_redirection.c:25:2
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_17
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
.Ltmp4:
	.loc	2 28 16                         # src/lexer/token_redirection.c:28:16
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	.loc	2 28 7 is_stmt 0                # src/lexer/token_redirection.c:28:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp5:
	.loc	2 28 7                          # src/lexer/token_redirection.c:28:7
	testb	$1, %al
	jne	.LBB0_15
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
.Ltmp6:
	.loc	2 29 20 is_stmt 1               # src/lexer/token_redirection.c:29:20
	movq	-8(%rbp), %rdi
	movslq	-16(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 29 9 is_stmt 0                # src/lexer/token_redirection.c:29:9
	callq	add_quote
	.loc	2 29 6                          # src/lexer/token_redirection.c:29:6
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
.Ltmp7:
.LBB0_16:                               #   in Loop: Header=BB0_10 Depth=1
	.loc	2 30 4 is_stmt 1                # src/lexer/token_redirection.c:30:4
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.Ltmp8:
	.loc	2 25 2                          # src/lexer/token_redirection.c:25:2
	jmp	.LBB0_10
.LBB0_17:
	.loc	2 32 10                         # src/lexer/token_redirection.c:32:10
	movl	-16(%rbp), %eax
	.loc	2 32 2 is_stmt 0                # src/lexer/token_redirection.c:32:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	get_redirection_length, .Lfunc_end0-get_redirection_length
	.cfi_endproc
                                        # -- End function
	.globl	get_redirection_lexeme          # -- Begin function get_redirection_lexeme
	.p2align	4, 0x90
	.type	get_redirection_lexeme,@function
get_redirection_lexeme:                 # @get_redirection_lexeme
.Lfunc_begin1:
	.loc	2 36 0 is_stmt 1                # src/lexer/token_redirection.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
.Ltmp10:
	.loc	2 43 18 prologue_end            # src/lexer/token_redirection.c:43:18
	movl	-20(%rbp), %eax
	.loc	2 43 25 is_stmt 0               # src/lexer/token_redirection.c:43:25
	subl	-24(%rbp), %eax
	.loc	2 43 37                         # src/lexer/token_redirection.c:43:37
	addl	$1, %eax
	.loc	2 43 18                         # src/lexer/token_redirection.c:43:18
	movslq	%eax, %rdi
	.loc	2 43 11                         # src/lexer/token_redirection.c:43:11
	callq	malloc
	.loc	2 43 9                          # src/lexer/token_redirection.c:43:9
	movq	%rax, -48(%rbp)
.Ltmp11:
	.loc	2 44 7 is_stmt 1                # src/lexer/token_redirection.c:44:7
	cmpq	$0, -48(%rbp)
.Ltmp12:
	.loc	2 44 6 is_stmt 0                # src/lexer/token_redirection.c:44:6
	jne	.LBB1_2
# %bb.1:
.Ltmp13:
	.loc	2 45 3 is_stmt 1                # src/lexer/token_redirection.c:45:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_8
.Ltmp14:
.LBB1_2:
	.loc	2 46 4                          # src/lexer/token_redirection.c:46:4
	movl	$0, -28(%rbp)
	.loc	2 47 4                          # src/lexer/token_redirection.c:47:4
	movl	$0, -32(%rbp)
	.loc	2 48 8                          # src/lexer/token_redirection.c:48:8
	movb	$0, -33(%rbp)
	.loc	2 49 15                         # src/lexer/token_redirection.c:49:15
	movl	$0, -52(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	.loc	2 50 9                          # src/lexer/token_redirection.c:50:9
	movl	-32(%rbp), %eax
	.loc	2 50 13 is_stmt 0               # src/lexer/token_redirection.c:50:13
	movl	-20(%rbp), %ecx
	.loc	2 50 20                         # src/lexer/token_redirection.c:50:20
	subl	-24(%rbp), %ecx
	.loc	2 50 11                         # src/lexer/token_redirection.c:50:11
	cmpl	%ecx, %eax
	.loc	2 50 2                          # src/lexer/token_redirection.c:50:2
	jge	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
.Ltmp15:
	.loc	2 52 16 is_stmt 1               # src/lexer/token_redirection.c:52:16
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 52 7 is_stmt 0                # src/lexer/token_redirection.c:52:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp16:
	.loc	2 52 7                          # src/lexer/token_redirection.c:52:7
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
.Ltmp17:
	.loc	2 53 22 is_stmt 1               # src/lexer/token_redirection.c:53:22
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 53 9 is_stmt 0                # src/lexer/token_redirection.c:53:9
	leaq	-33(%rbp), %rsi
	leaq	-52(%rbp), %rdx
	movsbl	(%rax,%rcx), %edi
	callq	remove_quote
	.loc	2 53 6                          # src/lexer/token_redirection.c:53:6
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
.Ltmp18:
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	.loc	2 54 15 is_stmt 1               # src/lexer/token_redirection.c:54:15
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	.loc	2 54 3 is_stmt 0                # src/lexer/token_redirection.c:54:3
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 54 13                         # src/lexer/token_redirection.c:54:13
	movb	%dl, (%rax,%rcx)
	.loc	2 55 4 is_stmt 1                # src/lexer/token_redirection.c:55:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	2 56 4                          # src/lexer/token_redirection.c:56:4
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
.Ltmp19:
	.loc	2 50 2                          # src/lexer/token_redirection.c:50:2
	jmp	.LBB1_3
.LBB1_7:
	.loc	2 58 2                          # src/lexer/token_redirection.c:58:2
	movq	-48(%rbp), %rax
	movslq	-32(%rbp), %rcx
	.loc	2 58 12 is_stmt 0               # src/lexer/token_redirection.c:58:12
	movb	$0, (%rax,%rcx)
	.loc	2 59 10 is_stmt 1               # src/lexer/token_redirection.c:59:10
	movq	-48(%rbp), %rax
	.loc	2 59 2 is_stmt 0                # src/lexer/token_redirection.c:59:2
	movq	%rax, -8(%rbp)
.LBB1_8:
	.loc	2 60 1 is_stmt 1                # src/lexer/token_redirection.c:60:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp20:
.Lfunc_end1:
	.size	get_redirection_lexeme, .Lfunc_end1-get_redirection_lexeme
	.cfi_endproc
                                        # -- End function
	.globl	get_redirection_token           # -- Begin function get_redirection_token
	.p2align	4, 0x90
	.type	get_redirection_token,@function
get_redirection_token:                  # @get_redirection_token
.Lfunc_begin2:
	.loc	2 63 0                          # src/lexer/token_redirection.c:63:0
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
.Ltmp21:
	.loc	2 64 39 prologue_end            # src/lexer/token_redirection.c:64:39
	movq	-8(%rbp), %rdi
	.loc	2 64 19 is_stmt 0               # src/lexer/token_redirection.c:64:19
	callq	get_token_quote_nbr
	movl	%eax, %ecx
	.loc	2 64 2                          # src/lexer/token_redirection.c:64:2
	movq	-16(%rbp), %rax
	.loc	2 64 17                         # src/lexer/token_redirection.c:64:17
	movl	%ecx, 4(%rax)
.Ltmp22:
	.loc	2 65 6 is_stmt 1                # src/lexer/token_redirection.c:65:6
	callq	__errno_location
	.loc	2 65 12 is_stmt 0               # src/lexer/token_redirection.c:65:12
	cmpl	$0, (%rax)
	.loc	2 65 17                         # src/lexer/token_redirection.c:65:17
	jne	.LBB2_3
# %bb.1:
	.loc	2 65 20                         # src/lexer/token_redirection.c:65:20
	movq	-16(%rbp), %rax
	.loc	2 65 35                         # src/lexer/token_redirection.c:65:35
	cmpl	$-1, 4(%rax)
.Ltmp23:
	.loc	2 65 6                          # src/lexer/token_redirection.c:65:6
	je	.LBB2_3
# %bb.2:
.Ltmp24:
	.loc	2 67 40 is_stmt 1               # src/lexer/token_redirection.c:67:40
	movq	-8(%rbp), %rdi
	.loc	2 67 47 is_stmt 0               # src/lexer/token_redirection.c:67:47
	movq	-16(%rbp), %rax
	.loc	2 67 52                         # src/lexer/token_redirection.c:67:52
	movl	(%rax), %esi
	.loc	2 67 17                         # src/lexer/token_redirection.c:67:17
	callq	get_redirection_length
	movl	%eax, %ecx
	.loc	2 67 3                          # src/lexer/token_redirection.c:67:3
	movq	-16(%rbp), %rax
	.loc	2 67 15                         # src/lexer/token_redirection.c:67:15
	movl	%ecx, 8(%rax)
	.loc	2 68 40 is_stmt 1               # src/lexer/token_redirection.c:68:40
	movq	-8(%rbp), %rdi
	.loc	2 68 47 is_stmt 0               # src/lexer/token_redirection.c:68:47
	movq	-16(%rbp), %rax
	.loc	2 68 52                         # src/lexer/token_redirection.c:68:52
	movl	8(%rax), %esi
	.loc	2 69 5 is_stmt 1                # src/lexer/token_redirection.c:69:5
	movq	-16(%rbp), %rax
	.loc	2 69 10 is_stmt 0               # src/lexer/token_redirection.c:69:10
	movl	4(%rax), %edx
	.loc	2 68 17 is_stmt 1               # src/lexer/token_redirection.c:68:17
	callq	get_redirection_lexeme
	movq	%rax, %rcx
	.loc	2 68 3 is_stmt 0                # src/lexer/token_redirection.c:68:3
	movq	-16(%rbp), %rax
	.loc	2 68 15                         # src/lexer/token_redirection.c:68:15
	movq	%rcx, 16(%rax)
	.loc	2 70 40 is_stmt 1               # src/lexer/token_redirection.c:70:40
	movq	-8(%rbp), %rdi
	.loc	2 70 47 is_stmt 0               # src/lexer/token_redirection.c:70:47
	movq	-16(%rbp), %rax
	.loc	2 70 52                         # src/lexer/token_redirection.c:70:52
	movl	8(%rax), %esi
	.loc	2 70 20                         # src/lexer/token_redirection.c:70:20
	callq	get_token_expansion
	movq	%rax, %rcx
	.loc	2 70 3                          # src/lexer/token_redirection.c:70:3
	movq	-16(%rbp), %rax
	.loc	2 70 18                         # src/lexer/token_redirection.c:70:18
	movq	%rcx, 24(%rax)
.Ltmp25:
.LBB2_3:
	.loc	2 72 1 is_stmt 1                # src/lexer/token_redirection.c:72:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end2:
	.size	get_redirection_token, .Lfunc_end2-get_redirection_token
	.cfi_endproc
                                        # -- End function
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
	.byte	4                               # DW_TAG_enumeration_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	3                               # Abbreviation Code
	.byte	40                              # DW_TAG_enumerator
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
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
	.byte	1                               # Abbrev [1] 0xb:0x261 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x7f DW_TAG_enumeration_type
	.long	169                             # DW_AT_type
	.long	.Linfo_string23                 # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4e:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x54:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x5a:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x60:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x66:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 # DW_AT_name
	.byte	8                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x6c:0x6 DW_TAG_enumerator
	.long	.Linfo_string13                 # DW_AT_name
	.byte	9                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x72:0x6 DW_TAG_enumerator
	.long	.Linfo_string14                 # DW_AT_name
	.byte	10                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x78:0x6 DW_TAG_enumerator
	.long	.Linfo_string15                 # DW_AT_name
	.byte	11                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x7e:0x6 DW_TAG_enumerator
	.long	.Linfo_string16                 # DW_AT_name
	.byte	12                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x84:0x6 DW_TAG_enumerator
	.long	.Linfo_string17                 # DW_AT_name
	.byte	13                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x8a:0x6 DW_TAG_enumerator
	.long	.Linfo_string18                 # DW_AT_name
	.byte	14                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x90:0x6 DW_TAG_enumerator
	.long	.Linfo_string19                 # DW_AT_name
	.byte	15                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x96:0x6 DW_TAG_enumerator
	.long	.Linfo_string20                 # DW_AT_name
	.byte	16                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x9c:0x6 DW_TAG_enumerator
	.long	.Linfo_string21                 # DW_AT_name
	.byte	17                              # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xa2:0x6 DW_TAG_enumerator
	.long	.Linfo_string22                 # DW_AT_name
	.byte	18                              # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa9:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0xb0:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	432                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xd7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xe5:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xf4:0x8a DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	439                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x10d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x11b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x129:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x137:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x145:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x153:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	95
	.long	.Linfo_string35                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	444                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x161:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x16f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	76
	.long	.Linfo_string37                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	432                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x17e:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x193:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	439                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1a1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	62                              # DW_AT_decl_line
	.long	451                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1b0:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1b7:0x5 DW_TAG_pointer_type
	.long	444                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1bc:0x7 DW_TAG_base_type
	.long	.Linfo_string27                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x1c3:0x5 DW_TAG_pointer_type
	.long	456                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x1c8:0xb DW_TAG_typedef
	.long	467                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1d3:0x5d DW_TAG_structure_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1db:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	432                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1e7:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	432                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1f3:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	432                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x1ff:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	439                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x20b:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	560                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x217:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	614                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x223:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	614                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x230:0x5 DW_TAG_pointer_type
	.long	565                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x235:0xb DW_TAG_typedef
	.long	576                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x240:0x21 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x248:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	439                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	12                              # Abbrev [12] 0x254:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	609                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x261:0x5 DW_TAG_pointer_type
	.long	576                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x266:0x5 DW_TAG_pointer_type
	.long	467                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token_redirection.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=68
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=102
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=115
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=129
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=143
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=156
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=169
.Linfo_string9:
	.asciz	"expansion"                     # string offset=181
.Linfo_string10:
	.asciz	"operator"                      # string offset=191
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=200
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=209
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=217
.Linfo_string14:
	.asciz	"outfile"                       # string offset=225
.Linfo_string15:
	.asciz	"append"                        # string offset=233
.Linfo_string16:
	.asciz	"infile"                        # string offset=240
.Linfo_string17:
	.asciz	"and_if"                        # string offset=247
.Linfo_string18:
	.asciz	"or_if"                         # string offset=254
.Linfo_string19:
	.asciz	"word"                          # string offset=260
.Linfo_string20:
	.asciz	"name"                          # string offset=265
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=270
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=286
.Linfo_string23:
	.asciz	"e_token"                       # string offset=296
.Linfo_string24:
	.asciz	"get_redirection_length"        # string offset=304
.Linfo_string25:
	.asciz	"int"                           # string offset=327
.Linfo_string26:
	.asciz	"get_redirection_lexeme"        # string offset=331
.Linfo_string27:
	.asciz	"char"                          # string offset=354
.Linfo_string28:
	.asciz	"get_redirection_token"         # string offset=359
.Linfo_string29:
	.asciz	"input"                         # string offset=381
.Linfo_string30:
	.asciz	"type"                          # string offset=387
.Linfo_string31:
	.asciz	"i"                             # string offset=392
.Linfo_string32:
	.asciz	"length"                        # string offset=394
.Linfo_string33:
	.asciz	"quote_nbr"                     # string offset=401
.Linfo_string34:
	.asciz	"j"                             # string offset=411
.Linfo_string35:
	.asciz	"quote"                         # string offset=413
.Linfo_string36:
	.asciz	"lexeme"                        # string offset=419
.Linfo_string37:
	.asciz	"second_quote"                  # string offset=426
.Linfo_string38:
	.asciz	"new"                           # string offset=439
.Linfo_string39:
	.asciz	"next"                          # string offset=443
.Linfo_string40:
	.asciz	"s_expan"                       # string offset=448
.Linfo_string41:
	.asciz	"t_expan"                       # string offset=456
.Linfo_string42:
	.asciz	"prev"                          # string offset=464
.Linfo_string43:
	.asciz	"s_token"                       # string offset=469
.Linfo_string44:
	.asciz	"t_token"                       # string offset=477
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_redirection_length
	.addrsig_sym is_blank
	.addrsig_sym __errno_location
	.addrsig_sym is_metacharacter
	.addrsig_sym is_quote
	.addrsig_sym add_quote
	.addrsig_sym get_redirection_lexeme
	.addrsig_sym malloc
	.addrsig_sym remove_quote
	.addrsig_sym get_token_quote_nbr
	.addrsig_sym get_token_expansion
	.section	.debug_line,"",@progbits
.Lline_table_start0:
