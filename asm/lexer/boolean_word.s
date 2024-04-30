	.text
	.file	"boolean_word.c"
	.globl	is_quote                        # -- Begin function is_quote
	.p2align	4, 0x90
	.type	is_quote,@function
is_quote:                               # @is_quote
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/lexer/boolean_word.c"
	.loc	1 16 0                          # src/lexer/boolean_word.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	%dil, %al
	movb	%al, -2(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/lexer/boolean_word.c:17:6
	movsbl	-2(%rbp), %eax
	.loc	1 17 8 is_stmt 0                # src/lexer/boolean_word.c:17:8
	cmpl	$34, %eax
	.loc	1 17 15                         # src/lexer/boolean_word.c:17:15
	je	.LBB0_2
# %bb.1:
	.loc	1 17 18                         # src/lexer/boolean_word.c:17:18
	movsbl	-2(%rbp), %eax
	.loc	1 17 20                         # src/lexer/boolean_word.c:17:20
	cmpl	$39, %eax
.Ltmp1:
	.loc	1 17 6                          # src/lexer/boolean_word.c:17:6
	jne	.LBB0_3
.LBB0_2:
.Ltmp2:
	.loc	1 18 3 is_stmt 1                # src/lexer/boolean_word.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_4
.Ltmp3:
.LBB0_3:
	.loc	1 19 2                          # src/lexer/boolean_word.c:19:2
	movb	$0, -1(%rbp)
.LBB0_4:
	.loc	1 20 1                          # src/lexer/boolean_word.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_quote, .Lfunc_end0-is_quote
	.cfi_endproc
                                        # -- End function
	.globl	is_builtin                      # -- Begin function is_builtin
	.p2align	4, 0x90
	.type	is_builtin,@function
is_builtin:                             # @is_builtin
.Lfunc_begin1:
	.loc	1 23 0                          # src/lexer/boolean_word.c:23:0
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
	.loc	1 26 21 prologue_end            # src/lexer/boolean_word.c:26:21
	movq	-16(%rbp), %rdi
	.loc	1 26 11 is_stmt 0               # src/lexer/boolean_word.c:26:11
	callq	ft_strlen
                                        # kill: def $eax killed $eax killed $rax
	.loc	1 26 9                          # src/lexer/boolean_word.c:26:9
	movl	%eax, -20(%rbp)
.Ltmp6:
	.loc	1 27 14 is_stmt 1               # src/lexer/boolean_word.c:27:14
	cmpl	$2, -20(%rbp)
	.loc	1 27 19 is_stmt 0               # src/lexer/boolean_word.c:27:19
	jne	.LBB1_2
# %bb.1:
	.loc	1 27 33                         # src/lexer/boolean_word.c:27:33
	movq	-16(%rbp), %rdi
	.loc	1 27 22                         # src/lexer/boolean_word.c:27:22
	movabsq	$.L.str, %rsi
	movl	$2, %edx
	callq	ft_strncmp
	.loc	1 27 49                         # src/lexer/boolean_word.c:27:49
	cmpl	$0, %eax
	.loc	1 28 3 is_stmt 1                # src/lexer/boolean_word.c:28:3
	je	.LBB1_14
.LBB1_2:
	.loc	1 28 14 is_stmt 0               # src/lexer/boolean_word.c:28:14
	cmpl	$4, -20(%rbp)
	.loc	1 28 19                         # src/lexer/boolean_word.c:28:19
	jne	.LBB1_4
# %bb.3:
	.loc	1 28 33                         # src/lexer/boolean_word.c:28:33
	movq	-16(%rbp), %rdi
	.loc	1 28 22                         # src/lexer/boolean_word.c:28:22
	movabsq	$.L.str.1, %rsi
	movl	$4, %edx
	callq	ft_strncmp
	.loc	1 28 51                         # src/lexer/boolean_word.c:28:51
	cmpl	$0, %eax
	.loc	1 29 3 is_stmt 1                # src/lexer/boolean_word.c:29:3
	je	.LBB1_14
.LBB1_4:
	.loc	1 29 14 is_stmt 0               # src/lexer/boolean_word.c:29:14
	cmpl	$3, -20(%rbp)
	.loc	1 29 19                         # src/lexer/boolean_word.c:29:19
	jne	.LBB1_6
# %bb.5:
	.loc	1 29 33                         # src/lexer/boolean_word.c:29:33
	movq	-16(%rbp), %rdi
	.loc	1 29 22                         # src/lexer/boolean_word.c:29:22
	movabsq	$.L.str.2, %rsi
	movl	$3, %edx
	callq	ft_strncmp
	.loc	1 29 50                         # src/lexer/boolean_word.c:29:50
	cmpl	$0, %eax
	.loc	1 30 3 is_stmt 1                # src/lexer/boolean_word.c:30:3
	je	.LBB1_14
.LBB1_6:
	.loc	1 30 14 is_stmt 0               # src/lexer/boolean_word.c:30:14
	cmpl	$4, -20(%rbp)
	.loc	1 30 19                         # src/lexer/boolean_word.c:30:19
	jne	.LBB1_8
# %bb.7:
	.loc	1 30 33                         # src/lexer/boolean_word.c:30:33
	movq	-16(%rbp), %rdi
	.loc	1 30 22                         # src/lexer/boolean_word.c:30:22
	movabsq	$.L.str.3, %rsi
	movl	$4, %edx
	callq	ft_strncmp
	.loc	1 30 51                         # src/lexer/boolean_word.c:30:51
	cmpl	$0, %eax
	.loc	1 31 3 is_stmt 1                # src/lexer/boolean_word.c:31:3
	je	.LBB1_14
.LBB1_8:
	.loc	1 31 14 is_stmt 0               # src/lexer/boolean_word.c:31:14
	cmpl	$6, -20(%rbp)
	.loc	1 31 19                         # src/lexer/boolean_word.c:31:19
	jne	.LBB1_10
# %bb.9:
	.loc	1 31 33                         # src/lexer/boolean_word.c:31:33
	movq	-16(%rbp), %rdi
	.loc	1 31 22                         # src/lexer/boolean_word.c:31:22
	movabsq	$.L.str.4, %rsi
	movl	$6, %edx
	callq	ft_strncmp
	.loc	1 31 53                         # src/lexer/boolean_word.c:31:53
	cmpl	$0, %eax
	.loc	1 32 3 is_stmt 1                # src/lexer/boolean_word.c:32:3
	je	.LBB1_14
.LBB1_10:
	.loc	1 32 14 is_stmt 0               # src/lexer/boolean_word.c:32:14
	cmpl	$3, -20(%rbp)
	.loc	1 32 19                         # src/lexer/boolean_word.c:32:19
	jne	.LBB1_12
# %bb.11:
	.loc	1 32 33                         # src/lexer/boolean_word.c:32:33
	movq	-16(%rbp), %rdi
	.loc	1 32 22                         # src/lexer/boolean_word.c:32:22
	movabsq	$.L.str.5, %rsi
	movl	$3, %edx
	callq	ft_strncmp
	.loc	1 32 50                         # src/lexer/boolean_word.c:32:50
	cmpl	$0, %eax
	.loc	1 33 3 is_stmt 1                # src/lexer/boolean_word.c:33:3
	je	.LBB1_14
.LBB1_12:
	.loc	1 33 14 is_stmt 0               # src/lexer/boolean_word.c:33:14
	cmpl	$5, -20(%rbp)
	.loc	1 33 19                         # src/lexer/boolean_word.c:33:19
	jne	.LBB1_15
# %bb.13:
	.loc	1 33 33                         # src/lexer/boolean_word.c:33:33
	movq	-16(%rbp), %rdi
	.loc	1 33 22                         # src/lexer/boolean_word.c:33:22
	movabsq	$.L.str.6, %rsi
	movl	$5, %edx
	callq	ft_strncmp
	.loc	1 33 52                         # src/lexer/boolean_word.c:33:52
	cmpl	$0, %eax
.Ltmp7:
	.loc	1 27 6 is_stmt 1                # src/lexer/boolean_word.c:27:6
	jne	.LBB1_15
.LBB1_14:
.Ltmp8:
	.loc	1 34 3                          # src/lexer/boolean_word.c:34:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_16
.Ltmp9:
.LBB1_15:
	.loc	1 35 2                          # src/lexer/boolean_word.c:35:2
	movb	$0, -1(%rbp)
.LBB1_16:
	.loc	1 36 1                          # src/lexer/boolean_word.c:36:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end1:
	.size	is_builtin, .Lfunc_end1-is_builtin
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cd"
	.size	.L.str, 3

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"echo"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"env"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"exit"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"export"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"pwd"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"unset"
	.size	.L.str.6, 6

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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	5                               # Abbreviation Code
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
	.byte	6                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x98 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	136                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x43:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	126
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	143                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x52:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	136                             # DW_AT_type
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x6b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.long	150                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x79:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	155                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x88:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x8f:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x96:0x5 DW_TAG_pointer_type
	.long	143                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x9b:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/boolean_word.c"      # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=63
.Linfo_string3:
	.asciz	"is_quote"                      # string offset=132
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=141
.Linfo_string5:
	.asciz	"is_builtin"                    # string offset=147
.Linfo_string6:
	.asciz	"c"                             # string offset=158
.Linfo_string7:
	.asciz	"char"                          # string offset=160
.Linfo_string8:
	.asciz	"input"                         # string offset=165
.Linfo_string9:
	.asciz	"length"                        # string offset=171
.Linfo_string10:
	.asciz	"int"                           # string offset=178
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strlen
	.addrsig_sym ft_strncmp
	.section	.debug_line,"",@progbits
.Lline_table_start0:
