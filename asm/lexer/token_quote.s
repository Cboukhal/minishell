	.text
	.file	"token_quote.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/../../include/minishell.h"
	.globl	add_quote                       # -- Begin function add_quote
	.p2align	4, 0x90
	.type	add_quote,@function
add_quote:                              # @add_quote
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/token_quote.c"
	.loc	2 16 0                          # src/lexer/token_quote.c:16:0
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
	.loc	2 20 4 prologue_end             # src/lexer/token_quote.c:20:4
	movl	$0, -20(%rbp)
	.loc	2 21 10                         # src/lexer/token_quote.c:21:10
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	(%rax,%rcx), %al
	.loc	2 21 8 is_stmt 0                # src/lexer/token_quote.c:21:8
	movb	%al, -21(%rbp)
	.loc	2 22 3 is_stmt 1                # src/lexer/token_quote.c:22:3
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 23 9                          # src/lexer/token_quote.c:23:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 23 2 is_stmt 0                # src/lexer/token_quote.c:23:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	2 25 7 is_stmt 1                # src/lexer/token_quote.c:25:7
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	2 25 19 is_stmt 0               # src/lexer/token_quote.c:25:19
	movsbl	-21(%rbp), %ecx
	.loc	2 25 16                         # src/lexer/token_quote.c:25:16
	cmpl	%ecx, %eax
.Ltmp2:
	.loc	2 25 7                          # src/lexer/token_quote.c:25:7
	jne	.LBB0_4
# %bb.3:
.Ltmp3:
	.loc	2 26 12 is_stmt 1               # src/lexer/token_quote.c:26:12
	movl	-20(%rbp), %eax
	.loc	2 26 4 is_stmt 0                # src/lexer/token_quote.c:26:4
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 27 4 is_stmt 1                # src/lexer/token_quote.c:27:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp5:
	.loc	2 23 2                          # src/lexer/token_quote.c:23:2
	jmp	.LBB0_1
.LBB0_5:
	.loc	2 29 63                         # src/lexer/token_quote.c:29:63
	movsbl	-21(%rbp), %esi
	.loc	2 29 2 is_stmt 0                # src/lexer/token_quote.c:29:2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 30 2 is_stmt 1                # src/lexer/token_quote.c:30:2
	callq	__errno_location
	.loc	2 30 8 is_stmt 0                # src/lexer/token_quote.c:30:8
	movl	$1, (%rax)
	.loc	2 31 2 is_stmt 1                # src/lexer/token_quote.c:31:2
	movl	$-1, -4(%rbp)
.LBB0_6:
	.loc	2 32 1                          # src/lexer/token_quote.c:32:1
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp6:
.Lfunc_end0:
	.size	add_quote, .Lfunc_end0-add_quote
	.cfi_endproc
                                        # -- End function
	.globl	skip_quote                      # -- Begin function skip_quote
	.p2align	4, 0x90
	.type	skip_quote,@function
skip_quote:                             # @skip_quote
.Lfunc_begin1:
	.loc	2 35 0                          # src/lexer/token_quote.c:35:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	movb	%al, -17(%rbp)
.Ltmp7:
	.loc	2 38 4 prologue_end             # src/lexer/token_quote.c:38:4
	movl	$1, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 39 9                          # src/lexer/token_quote.c:39:9
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	2 39 22 is_stmt 0               # src/lexer/token_quote.c:39:22
	movsbl	-17(%rbp), %ecx
	.loc	2 39 19                         # src/lexer/token_quote.c:39:19
	cmpl	%ecx, %eax
	.loc	2 39 2                          # src/lexer/token_quote.c:39:2
	je	.LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	2 41 8 is_stmt 1                # src/lexer/token_quote.c:41:8
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
.Ltmp9:
	.loc	2 41 7 is_stmt 0                # src/lexer/token_quote.c:41:7
	jne	.LBB1_4
# %bb.3:
.Ltmp10:
	.loc	2 42 12 is_stmt 1               # src/lexer/token_quote.c:42:12
	movl	-24(%rbp), %eax
	.loc	2 42 4 is_stmt 0                # src/lexer/token_quote.c:42:4
	movl	%eax, -4(%rbp)
	jmp	.LBB1_6
.Ltmp11:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 43 4 is_stmt 1                # src/lexer/token_quote.c:43:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp12:
	.loc	2 39 2                          # src/lexer/token_quote.c:39:2
	jmp	.LBB1_1
.LBB1_5:
	.loc	2 45 10                         # src/lexer/token_quote.c:45:10
	movl	-24(%rbp), %eax
	.loc	2 45 2 is_stmt 0                # src/lexer/token_quote.c:45:2
	movl	%eax, -4(%rbp)
.LBB1_6:
	.loc	2 46 1 is_stmt 1                # src/lexer/token_quote.c:46:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	skip_quote, .Lfunc_end1-skip_quote
	.cfi_endproc
                                        # -- End function
	.globl	get_token_quote_nbr             # -- Begin function get_token_quote_nbr
	.p2align	4, 0x90
	.type	get_token_quote_nbr,@function
get_token_quote_nbr:                    # @get_token_quote_nbr
.Lfunc_begin2:
	.loc	2 49 0                          # src/lexer/token_quote.c:49:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp14:
	.loc	2 53 4 prologue_end             # src/lexer/token_quote.c:53:4
	movl	$0, -20(%rbp)
	.loc	2 54 8                          # src/lexer/token_quote.c:54:8
	movl	$0, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 55 9                          # src/lexer/token_quote.c:55:9
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 55 18 is_stmt 0               # src/lexer/token_quote.c:55:18
	je	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 55 21                         # src/lexer/token_quote.c:55:21
	callq	__errno_location
	movq	%rax, %rcx
	.loc	2 55 27                         # src/lexer/token_quote.c:55:27
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	.loc	2 56 3 is_stmt 1                # src/lexer/token_quote.c:56:3
	jne	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 56 23 is_stmt 0               # src/lexer/token_quote.c:56:23
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 56 6                          # src/lexer/token_quote.c:56:6
	movsbl	(%rax,%rcx), %edi
	callq	is_metacharacter
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 56 33                         # src/lexer/token_quote.c:56:33
	cmpl	$0, %eax
	sete	%al
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 33                          # src/lexer/token_quote.c:0:33
	movb	-25(%rbp), %al                  # 1-byte Reload
	.loc	2 55 2 is_stmt 1                # src/lexer/token_quote.c:55:2
	testb	$1, %al
	jne	.LBB2_5
	jmp	.LBB2_10
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp15:
	.loc	2 58 16                         # src/lexer/token_quote.c:58:16
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	.loc	2 58 7 is_stmt 0                # src/lexer/token_quote.c:58:7
	movsbl	(%rax,%rcx), %edi
	callq	is_quote
.Ltmp16:
	.loc	2 58 7                          # src/lexer/token_quote.c:58:7
	testb	$1, %al
	jne	.LBB2_6
	jmp	.LBB2_7
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp17:
	.loc	2 60 20 is_stmt 1               # src/lexer/token_quote.c:60:20
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	addq	%rax, %rdi
	.loc	2 60 9 is_stmt 0                # src/lexer/token_quote.c:60:9
	callq	add_quote
	.loc	2 60 6                          # src/lexer/token_quote.c:60:6
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	.loc	2 61 9 is_stmt 1                # src/lexer/token_quote.c:61:9
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp18:
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 63 9                          # src/lexer/token_quote.c:63:9
	cmpl	$-1, -20(%rbp)
.Ltmp19:
	.loc	2 63 7 is_stmt 0                # src/lexer/token_quote.c:63:7
	jne	.LBB2_9
# %bb.8:
.Ltmp20:
	.loc	2 64 4 is_stmt 1                # src/lexer/token_quote.c:64:4
	movl	$-1, -4(%rbp)
	jmp	.LBB2_11
.Ltmp21:
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 65 4                          # src/lexer/token_quote.c:65:4
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
.Ltmp22:
	.loc	2 55 2                          # src/lexer/token_quote.c:55:2
	jmp	.LBB2_1
.LBB2_10:
	.loc	2 67 10                         # src/lexer/token_quote.c:67:10
	movl	-24(%rbp), %eax
	.loc	2 67 2 is_stmt 0                # src/lexer/token_quote.c:67:2
	movl	%eax, -4(%rbp)
.LBB2_11:
	.loc	2 68 1 is_stmt 1                # src/lexer/token_quote.c:68:1
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp23:
.Lfunc_end2:
	.size	get_token_quote_nbr, .Lfunc_end2-get_token_quote_nbr
	.cfi_endproc
                                        # -- End function
	.globl	remove_quote                    # -- Begin function remove_quote
	.p2align	4, 0x90
	.type	remove_quote,@function
remove_quote:                           # @remove_quote
.Lfunc_begin3:
	.loc	2 71 0                          # src/lexer/token_quote.c:71:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -5(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp24:
	.loc	2 72 9 prologue_end             # src/lexer/token_quote.c:72:9
	movq	-16(%rbp), %rax
	.loc	2 72 7 is_stmt 0                # src/lexer/token_quote.c:72:7
	cmpb	$0, (%rax)
.Ltmp25:
	.loc	2 72 6                          # src/lexer/token_quote.c:72:6
	jne	.LBB3_2
# %bb.1:
.Ltmp26:
	.loc	2 73 12 is_stmt 1               # src/lexer/token_quote.c:73:12
	movb	-5(%rbp), %cl
	.loc	2 73 4 is_stmt 0                # src/lexer/token_quote.c:73:4
	movq	-16(%rbp), %rax
	.loc	2 73 10                         # src/lexer/token_quote.c:73:10
	movb	%cl, (%rax)
.Ltmp27:
.LBB3_2:
	.loc	2 74 6 is_stmt 1                # src/lexer/token_quote.c:74:6
	movsbl	-5(%rbp), %eax
	.loc	2 74 17 is_stmt 0               # src/lexer/token_quote.c:74:17
	movq	-16(%rbp), %rcx
	.loc	2 74 16                         # src/lexer/token_quote.c:74:16
	movsbl	(%rcx), %ecx
	.loc	2 74 13                         # src/lexer/token_quote.c:74:13
	cmpl	%ecx, %eax
.Ltmp28:
	.loc	2 74 6                          # src/lexer/token_quote.c:74:6
	jne	.LBB3_6
# %bb.3:
.Ltmp29:
	.loc	2 76 4 is_stmt 1                # src/lexer/token_quote.c:76:4
	movq	-24(%rbp), %rax
	.loc	2 76 17 is_stmt 0               # src/lexer/token_quote.c:76:17
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
.Ltmp30:
	.loc	2 77 8 is_stmt 1                # src/lexer/token_quote.c:77:8
	movq	-24(%rbp), %rax
	.loc	2 77 21 is_stmt 0               # src/lexer/token_quote.c:77:21
	cmpl	$2, (%rax)
.Ltmp31:
	.loc	2 77 7                          # src/lexer/token_quote.c:77:7
	jne	.LBB3_5
# %bb.4:
.Ltmp32:
	.loc	2 79 5 is_stmt 1                # src/lexer/token_quote.c:79:5
	movq	-16(%rbp), %rax
	.loc	2 79 11 is_stmt 0               # src/lexer/token_quote.c:79:11
	movb	$0, (%rax)
	.loc	2 80 5 is_stmt 1                # src/lexer/token_quote.c:80:5
	movq	-24(%rbp), %rax
	.loc	2 80 18 is_stmt 0               # src/lexer/token_quote.c:80:18
	movl	$0, (%rax)
.Ltmp33:
.LBB3_5:
	.loc	2 82 3 is_stmt 1                # src/lexer/token_quote.c:82:3
	movl	$1, -4(%rbp)
	jmp	.LBB3_7
.Ltmp34:
.LBB3_6:
	.loc	2 84 2                          # src/lexer/token_quote.c:84:2
	movl	$0, -4(%rbp)
.LBB3_7:
	.loc	2 85 1                          # src/lexer/token_quote.c:85:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end3:
	.size	remove_quote, .Lfunc_end3-remove_quote
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bash: syntax error near unexpected token `%c'\n"
	.size	.L.str, 47

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
	.byte	15                              # DW_TAG_pointer_type
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
	.byte	1                               # Abbrev [1] 0xb:0x182 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x33 DW_TAG_enumeration_type
	.long	93                              # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x32:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x38:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3e:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x44:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x4a:0x6 DW_TAG_enumerator
	.long	.Linfo_string8                  # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x50:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x56:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x5d:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x64:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	372                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x7d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	379                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x8b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	372                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x99:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	107
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	384                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xa8:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	372                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	379                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xcf:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	111
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.long	384                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0xdd:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.long	372                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xec:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	372                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x105:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	379                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x113:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.long	372                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x121:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	372                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x130:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	372                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x149:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	123
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	384                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x157:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	379                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x165:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string21                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	70                              # DW_AT_decl_line
	.long	391                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x174:0x7 DW_TAG_base_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x17b:0x5 DW_TAG_pointer_type
	.long	384                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x180:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x187:0x5 DW_TAG_pointer_type
	.long	372                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/token_quote.c"       # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=62
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=131
.Linfo_string4:
	.asciz	"error_syntax"                  # string offset=144
.Linfo_string5:
	.asciz	"error_token"                   # string offset=157
.Linfo_string6:
	.asciz	"error_and"                     # string offset=169
.Linfo_string7:
	.asciz	"error_file"                    # string offset=179
.Linfo_string8:
	.asciz	"error_builtin"                 # string offset=190
.Linfo_string9:
	.asciz	"error_malloc"                  # string offset=204
.Linfo_string10:
	.asciz	"error_command"                 # string offset=217
.Linfo_string11:
	.asciz	"add_quote"                     # string offset=231
.Linfo_string12:
	.asciz	"int"                           # string offset=241
.Linfo_string13:
	.asciz	"skip_quote"                    # string offset=245
.Linfo_string14:
	.asciz	"get_token_quote_nbr"           # string offset=256
.Linfo_string15:
	.asciz	"remove_quote"                  # string offset=276
.Linfo_string16:
	.asciz	"input"                         # string offset=289
.Linfo_string17:
	.asciz	"char"                          # string offset=295
.Linfo_string18:
	.asciz	"i"                             # string offset=300
.Linfo_string19:
	.asciz	"quote"                         # string offset=302
.Linfo_string20:
	.asciz	"lexeme"                        # string offset=308
.Linfo_string21:
	.asciz	"second_quote"                  # string offset=315
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym add_quote
	.addrsig_sym ft_printf
	.addrsig_sym __errno_location
	.addrsig_sym is_metacharacter
	.addrsig_sym is_quote
	.section	.debug_line,"",@progbits
.Lline_table_start0:
