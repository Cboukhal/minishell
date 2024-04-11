	.text
	.file	"type_word.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/lexer/../../include/minishell.h"
	.globl	get_word_type                   # -- Begin function get_word_type
	.p2align	4, 0x90
	.type	get_word_type,@function
get_word_type:                          # @get_word_type
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/lexer/type_word.c"
	.loc	2 16 0                          # src/lexer/type_word.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	2 17 7 prologue_end             # src/lexer/type_word.c:17:7
	movq	-16(%rbp), %rax
	.loc	2 17 6 is_stmt 0                # src/lexer/type_word.c:17:6
	movsbl	(%rax), %eax
	.loc	2 17 13                         # src/lexer/type_word.c:17:13
	cmpl	$36, %eax
.Ltmp1:
	.loc	2 17 6                          # src/lexer/type_word.c:17:6
	jne	.LBB0_7
# %bb.1:
.Ltmp2:
	.loc	2 19 8 is_stmt 1                # src/lexer/type_word.c:19:8
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
.Ltmp3:
	.loc	2 20 8                          # src/lexer/type_word.c:20:8
	movq	-16(%rbp), %rax
	.loc	2 20 7 is_stmt 0                # src/lexer/type_word.c:20:7
	movsbl	(%rax), %eax
	.loc	2 20 14                         # src/lexer/type_word.c:20:14
	cmpl	$63, %eax
.Ltmp4:
	.loc	2 20 7                          # src/lexer/type_word.c:20:7
	jne	.LBB0_3
# %bb.2:
.Ltmp5:
	.loc	2 21 4 is_stmt 1                # src/lexer/type_word.c:21:4
	movl	$4, -4(%rbp)
	jmp	.LBB0_8
.LBB0_3:
.Ltmp6:
	.loc	2 22 30                         # src/lexer/type_word.c:22:30
	movq	-16(%rbp), %rax
	.loc	2 22 12 is_stmt 0               # src/lexer/type_word.c:22:12
	movsbl	(%rax), %edi
	callq	is_metacharacter
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 22 37                         # src/lexer/type_word.c:22:37
	cmpl	$0, %eax
.Ltmp7:
	.loc	2 22 12                         # src/lexer/type_word.c:22:12
	jne	.LBB0_5
# %bb.4:
.Ltmp8:
	.loc	2 23 4 is_stmt 1                # src/lexer/type_word.c:23:4
	movl	$5, -4(%rbp)
	jmp	.LBB0_8
.Ltmp9:
.LBB0_5:
	.loc	2 0 4 is_stmt 0                 # src/lexer/type_word.c:0:4
	jmp	.LBB0_6
.LBB0_6:
	.loc	2 24 2 is_stmt 1                # src/lexer/type_word.c:24:2
	jmp	.LBB0_7
.Ltmp10:
.LBB0_7:
	.loc	2 25 2                          # src/lexer/type_word.c:25:2
	movl	$15, -4(%rbp)
.LBB0_8:
	.loc	2 26 1                          # src/lexer/type_word.c:26:1
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	get_word_type, .Lfunc_end0-get_word_type
	.cfi_endproc
                                        # -- End function
	.globl	get_quote_type                  # -- Begin function get_quote_type
	.p2align	4, 0x90
	.type	get_quote_type,@function
get_quote_type:                         # @get_quote_type
.Lfunc_begin1:
	.loc	2 29 0                          # src/lexer/type_word.c:29:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Ltmp12:
	.loc	2 30 7 prologue_end             # src/lexer/type_word.c:30:7
	movq	-16(%rbp), %rax
	.loc	2 30 6 is_stmt 0                # src/lexer/type_word.c:30:6
	movsbl	(%rax), %eax
	.loc	2 30 13                         # src/lexer/type_word.c:30:13
	cmpl	$39, %eax
.Ltmp13:
	.loc	2 30 6                          # src/lexer/type_word.c:30:6
	jne	.LBB1_2
# %bb.1:
.Ltmp14:
	.loc	2 31 3 is_stmt 1                # src/lexer/type_word.c:31:3
	movl	$2, -4(%rbp)
	jmp	.LBB1_3
.Ltmp15:
.LBB1_2:
	.loc	2 32 2                          # src/lexer/type_word.c:32:2
	movl	$3, -4(%rbp)
.LBB1_3:
	.loc	2 33 1                          # src/lexer/type_word.c:33:1
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp16:
.Lfunc_end1:
	.size	get_quote_type, .Lfunc_end1-get_quote_type
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
	.byte	1                               # Abbrev [1] 0xb:0x109 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0xb0:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	256                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xc9:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	263                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xd8:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	256                             # DW_AT_type
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xf1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	263                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x100:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x107:0x5 DW_TAG_pointer_type
	.long	268                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x10c:0x7 DW_TAG_base_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/type_word.c"         # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=60
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=97
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=110
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=124
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=138
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=151
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=164
.Linfo_string9:
	.asciz	"expansion"                     # string offset=176
.Linfo_string10:
	.asciz	"operator"                      # string offset=186
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=195
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=204
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=212
.Linfo_string14:
	.asciz	"outfile"                       # string offset=220
.Linfo_string15:
	.asciz	"append"                        # string offset=228
.Linfo_string16:
	.asciz	"infile"                        # string offset=235
.Linfo_string17:
	.asciz	"and_if"                        # string offset=242
.Linfo_string18:
	.asciz	"or_if"                         # string offset=249
.Linfo_string19:
	.asciz	"word"                          # string offset=255
.Linfo_string20:
	.asciz	"name"                          # string offset=260
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=265
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=281
.Linfo_string23:
	.asciz	"e_token"                       # string offset=291
.Linfo_string24:
	.asciz	"get_word_type"                 # string offset=299
.Linfo_string25:
	.asciz	"int"                           # string offset=313
.Linfo_string26:
	.asciz	"get_quote_type"                # string offset=317
.Linfo_string27:
	.asciz	"input"                         # string offset=332
.Linfo_string28:
	.asciz	"char"                          # string offset=338
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_metacharacter
	.section	.debug_line,"",@progbits
.Lline_table_start0:
