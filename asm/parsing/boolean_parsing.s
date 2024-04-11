	.text
	.file	"boolean_parsing.c"
	.globl	is_expansion_stored_in_env      # -- Begin function is_expansion_stored_in_env
	.p2align	4, 0x90
	.type	is_expansion_stored_in_env,@function
is_expansion_stored_in_env:             # @is_expansion_stored_in_env
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/boolean_parsing.c"
	.loc	1 16 0                          # src/parsing/boolean_parsing.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
.Ltmp0:
	.loc	1 17 6 prologue_end             # src/parsing/boolean_parsing.c:17:6
	cmpq	$0, -16(%rbp)
.Ltmp1:
	.loc	1 17 6 is_stmt 0                # src/parsing/boolean_parsing.c:17:6
	je	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	1 18 3 is_stmt 1                # src/parsing/boolean_parsing.c:18:3
	movb	$1, -1(%rbp)
	jmp	.LBB0_3
.Ltmp3:
.LBB0_2:
	.loc	1 19 2                          # src/parsing/boolean_parsing.c:19:2
	movb	$0, -1(%rbp)
.LBB0_3:
	.loc	1 20 1                          # src/parsing/boolean_parsing.c:20:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp4:
.Lfunc_end0:
	.size	is_expansion_stored_in_env, .Lfunc_end0-is_expansion_stored_in_env
	.cfi_endproc
                                        # -- End function
	.globl	is_exit_status                  # -- Begin function is_exit_status
	.p2align	4, 0x90
	.type	is_exit_status,@function
is_exit_status:                         # @is_exit_status
.Lfunc_begin1:
	.loc	1 23 0                          # src/parsing/boolean_parsing.c:23:0
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
	.loc	1 26 24 prologue_end            # src/parsing/boolean_parsing.c:26:24
	movq	-16(%rbp), %rsi
	.loc	1 26 8 is_stmt 0                # src/parsing/boolean_parsing.c:26:8
	movabsq	$.L.str, %rdi
	callq	ft_strjoin
	.loc	1 26 6                          # src/parsing/boolean_parsing.c:26:6
	movq	%rax, -24(%rbp)
.Ltmp6:
	.loc	1 27 7 is_stmt 1                # src/parsing/boolean_parsing.c:27:7
	cmpq	$0, -24(%rbp)
.Ltmp7:
	.loc	1 27 6 is_stmt 0                # src/parsing/boolean_parsing.c:27:6
	jne	.LBB1_2
# %bb.1:
.Ltmp8:
	.loc	1 28 3 is_stmt 1                # src/parsing/boolean_parsing.c:28:3
	movb	$0, -1(%rbp)
	jmp	.LBB1_6
.Ltmp9:
.LBB1_2:
	.loc	1 29 16                         # src/parsing/boolean_parsing.c:29:16
	movq	-24(%rbp), %rdi
	.loc	1 29 6 is_stmt 0                # src/parsing/boolean_parsing.c:29:6
	callq	ft_strlen
	.loc	1 29 21                         # src/parsing/boolean_parsing.c:29:21
	cmpq	$2, %rax
	.loc	1 29 26                         # src/parsing/boolean_parsing.c:29:26
	jne	.LBB1_5
# %bb.3:
	.loc	1 29 40                         # src/parsing/boolean_parsing.c:29:40
	movq	-24(%rbp), %rdi
	.loc	1 29 29                         # src/parsing/boolean_parsing.c:29:29
	movabsq	$.L.str.1, %rsi
	movl	$2, %edx
	callq	ft_strncmp
	.loc	1 29 54                         # src/parsing/boolean_parsing.c:29:54
	cmpl	$0, %eax
.Ltmp10:
	.loc	1 29 6                          # src/parsing/boolean_parsing.c:29:6
	jne	.LBB1_5
# %bb.4:
.Ltmp11:
	.loc	1 30 16 is_stmt 1               # src/parsing/boolean_parsing.c:30:16
	movq	-24(%rbp), %rdi
	.loc	1 30 11 is_stmt 0               # src/parsing/boolean_parsing.c:30:11
	callq	free
	.loc	1 30 3                          # src/parsing/boolean_parsing.c:30:3
	movb	$1, -1(%rbp)
	jmp	.LBB1_6
.Ltmp12:
.LBB1_5:
	.loc	1 31 15 is_stmt 1               # src/parsing/boolean_parsing.c:31:15
	movq	-24(%rbp), %rdi
	.loc	1 31 10 is_stmt 0               # src/parsing/boolean_parsing.c:31:10
	callq	free
	.loc	1 31 2                          # src/parsing/boolean_parsing.c:31:2
	movb	$0, -1(%rbp)
.LBB1_6:
	.loc	1 32 1 is_stmt 1                # src/parsing/boolean_parsing.c:32:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	is_exit_status, .Lfunc_end1-is_exit_status
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"$"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"$?"
	.size	.L.str.1, 3

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
	.byte	1                               # Abbrev [1] 0xb:0x91 DW_TAG_compile_unit
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
	.byte	112
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
	.long	143                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x79:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.long	143                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x88:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x8f:0x5 DW_TAG_pointer_type
	.long	148                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x94:0x7 DW_TAG_base_type
	.long	.Linfo_string7                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/boolean_parsing.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=68
.Linfo_string3:
	.asciz	"is_expansion_stored_in_env"    # string offset=105
.Linfo_string4:
	.asciz	"_Bool"                         # string offset=132
.Linfo_string5:
	.asciz	"is_exit_status"                # string offset=138
.Linfo_string6:
	.asciz	"value"                         # string offset=153
.Linfo_string7:
	.asciz	"char"                          # string offset=159
.Linfo_string8:
	.asciz	"expan_name"                    # string offset=164
.Linfo_string9:
	.asciz	"tmp"                           # string offset=175
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_strjoin
	.addrsig_sym ft_strlen
	.addrsig_sym ft_strncmp
	.addrsig_sym free
	.section	.debug_line,"",@progbits
.Lline_table_start0:
