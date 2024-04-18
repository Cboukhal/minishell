	.text
	.file	"boolean_redirection.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/lexer/../../include/minishell.h"
	.globl	got_filename                    # -- Begin function got_filename
	.p2align	4, 0x90
	.type	got_filename,@function
got_filename:                           # @got_filename
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" "src/lexer/boolean_redirection.c"
	.loc	2 16 0                          # src/lexer/boolean_redirection.c:16:0
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
.Ltmp0:
	.loc	2 19 11 prologue_end            # src/lexer/boolean_redirection.c:19:11
	cmpl	$11, -20(%rbp)
	.loc	2 19 21 is_stmt 0               # src/lexer/boolean_redirection.c:19:21
	je	.LBB0_2
# %bb.1:
	.loc	2 19 29                         # src/lexer/boolean_redirection.c:19:29
	cmpl	$9, -20(%rbp)
.Ltmp1:
	.loc	2 19 6                          # src/lexer/boolean_redirection.c:19:6
	jne	.LBB0_3
.LBB0_2:
.Ltmp2:
	.loc	2 20 5 is_stmt 1                # src/lexer/boolean_redirection.c:20:5
	movl	$2, -24(%rbp)
	.loc	2 20 3 is_stmt 0                # src/lexer/boolean_redirection.c:20:3
	jmp	.LBB0_4
.LBB0_3:
	.loc	2 22 5 is_stmt 1                # src/lexer/boolean_redirection.c:22:5
	movl	$1, -24(%rbp)
.Ltmp3:
.LBB0_4:
	.loc	2 23 2                          # src/lexer/boolean_redirection.c:23:2
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	.loc	2 23 9 is_stmt 0                # src/lexer/boolean_redirection.c:23:9
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	2 23 2                          # src/lexer/boolean_redirection.c:23:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
.Ltmp4:
	.loc	2 25 16 is_stmt 1               # src/lexer/boolean_redirection.c:25:16
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	.loc	2 25 7 is_stmt 0                # src/lexer/boolean_redirection.c:25:7
	movsbl	(%rax,%rcx), %edi
	callq	is_blank
	andb	$1, %al
	movzbl	%al, %eax
	.loc	2 25 27                         # src/lexer/boolean_redirection.c:25:27
	cmpl	$0, %eax
.Ltmp5:
	.loc	2 25 7                          # src/lexer/boolean_redirection.c:25:7
	jne	.LBB0_8
# %bb.7:
.Ltmp6:
	.loc	2 26 4 is_stmt 1                # src/lexer/boolean_redirection.c:26:4
	movb	$1, -1(%rbp)
	jmp	.LBB0_10
.Ltmp7:
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	.loc	2 27 4                          # src/lexer/boolean_redirection.c:27:4
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
.Ltmp8:
	.loc	2 23 2                          # src/lexer/boolean_redirection.c:23:2
	jmp	.LBB0_5
.LBB0_9:
	.loc	2 29 2                          # src/lexer/boolean_redirection.c:29:2
	callq	__errno_location
	.loc	2 29 8 is_stmt 0                # src/lexer/boolean_redirection.c:29:8
	movl	$4, (%rax)
	.loc	2 30 2 is_stmt 1                # src/lexer/boolean_redirection.c:30:2
	movb	$0, -1(%rbp)
.LBB0_10:
	.loc	2 31 1                          # src/lexer/boolean_redirection.c:31:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end0:
	.size	got_filename, .Lfunc_end0-got_filename
	.cfi_endproc
                                        # -- End function
	.globl	is_redirection                  # -- Begin function is_redirection
	.p2align	4, 0x90
	.type	is_redirection,@function
is_redirection:                         # @is_redirection
.Lfunc_begin1:
	.loc	2 34 0                          # src/lexer/boolean_redirection.c:34:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
.Ltmp10:
	.loc	2 35 11 prologue_end            # src/lexer/boolean_redirection.c:35:11
	cmpl	$12, -8(%rbp)
	.loc	2 35 21 is_stmt 0               # src/lexer/boolean_redirection.c:35:21
	je	.LBB1_4
# %bb.1:
	.loc	2 35 29                         # src/lexer/boolean_redirection.c:35:29
	cmpl	$10, -8(%rbp)
	.loc	2 36 3 is_stmt 1                # src/lexer/boolean_redirection.c:36:3
	je	.LBB1_4
# %bb.2:
	.loc	2 36 11 is_stmt 0               # src/lexer/boolean_redirection.c:36:11
	cmpl	$11, -8(%rbp)
	.loc	2 36 21                         # src/lexer/boolean_redirection.c:36:21
	je	.LBB1_4
# %bb.3:
	.loc	2 36 29                         # src/lexer/boolean_redirection.c:36:29
	cmpl	$9, -8(%rbp)
.Ltmp11:
	.loc	2 35 6 is_stmt 1                # src/lexer/boolean_redirection.c:35:6
	jne	.LBB1_5
.LBB1_4:
.Ltmp12:
	.loc	2 37 3                          # src/lexer/boolean_redirection.c:37:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_6
.Ltmp13:
.LBB1_5:
	.loc	2 38 2                          # src/lexer/boolean_redirection.c:38:2
	movb	$0, -1(%rbp)
.LBB1_6:
	.loc	2 39 1                          # src/lexer/boolean_redirection.c:39:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp14:
.Lfunc_end1:
	.size	is_redirection, .Lfunc_end1-is_redirection
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x15f DW_TAG_compile_unit
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
	.byte	5                               # Abbrev [5] 0xb0:0x33 DW_TAG_enumeration_type
	.long	169                             # DW_AT_type
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0xb8:0x6 DW_TAG_enumerator
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xbe:0x6 DW_TAG_enumerator
	.long	.Linfo_string25                 # DW_AT_name
	.byte	2                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xc4:0x6 DW_TAG_enumerator
	.long	.Linfo_string26                 # DW_AT_name
	.byte	3                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xca:0x6 DW_TAG_enumerator
	.long	.Linfo_string27                 # DW_AT_name
	.byte	4                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd0:0x6 DW_TAG_enumerator
	.long	.Linfo_string28                 # DW_AT_name
	.byte	5                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xd6:0x6 DW_TAG_enumerator
	.long	.Linfo_string29                 # DW_AT_name
	.byte	6                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0xdc:0x6 DW_TAG_enumerator
	.long	.Linfo_string30                 # DW_AT_name
	.byte	7                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xe3:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string31                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xfc:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string34                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	342                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x10a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	108
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	354                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x118:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string38                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	354                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x127:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	335                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x140:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string36                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	354                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x14f:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x156:0x5 DW_TAG_pointer_type
	.long	347                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x15b:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x162:0x7 DW_TAG_base_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/lexer/boolean_redirection.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/minigroup" # string offset=70
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=128
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=141
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=155
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=169
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=182
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=195
.Linfo_string9:
	.asciz	"expansion"                     # string offset=207
.Linfo_string10:
	.asciz	"operator"                      # string offset=217
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=226
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=235
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=243
.Linfo_string14:
	.asciz	"outfile"                       # string offset=251
.Linfo_string15:
	.asciz	"append"                        # string offset=259
.Linfo_string16:
	.asciz	"infile"                        # string offset=266
.Linfo_string17:
	.asciz	"and_if"                        # string offset=273
.Linfo_string18:
	.asciz	"or_if"                         # string offset=280
.Linfo_string19:
	.asciz	"word"                          # string offset=286
.Linfo_string20:
	.asciz	"name"                          # string offset=291
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=296
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=312
.Linfo_string23:
	.asciz	"e_token"                       # string offset=322
.Linfo_string24:
	.asciz	"error_syntax"                  # string offset=330
.Linfo_string25:
	.asciz	"error_token"                   # string offset=343
.Linfo_string26:
	.asciz	"error_and"                     # string offset=355
.Linfo_string27:
	.asciz	"error_file"                    # string offset=365
.Linfo_string28:
	.asciz	"error_builtin"                 # string offset=376
.Linfo_string29:
	.asciz	"error_malloc"                  # string offset=390
.Linfo_string30:
	.asciz	"error_command"                 # string offset=403
.Linfo_string31:
	.asciz	"got_filename"                  # string offset=417
.Linfo_string32:
	.asciz	"_Bool"                         # string offset=430
.Linfo_string33:
	.asciz	"is_redirection"                # string offset=436
.Linfo_string34:
	.asciz	"lexeme"                        # string offset=451
.Linfo_string35:
	.asciz	"char"                          # string offset=458
.Linfo_string36:
	.asciz	"type"                          # string offset=463
.Linfo_string37:
	.asciz	"int"                           # string offset=468
.Linfo_string38:
	.asciz	"i"                             # string offset=472
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym is_blank
	.addrsig_sym __errno_location
	.section	.debug_line,"",@progbits
.Lline_table_start0:
