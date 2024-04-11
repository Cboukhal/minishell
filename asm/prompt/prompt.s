	.text
	.file	"prompt.c"
	.globl	get_prompt                      # -- Begin function get_prompt
	.p2align	4, 0x90
	.type	get_prompt,@function
get_prompt:                             # @get_prompt
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/prompt/prompt.c"
	.loc	1 16 0                          # src/prompt/prompt.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 21 7 prologue_end             # src/prompt/prompt.c:21:7
	movq	-8(%rbp), %rax
	.loc	1 21 6 is_stmt 0                # src/prompt/prompt.c:21:6
	cmpq	$0, (%rax)
.Ltmp1:
	.loc	1 21 6                          # src/prompt/prompt.c:21:6
	je	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	1 22 9 is_stmt 1                # src/prompt/prompt.c:22:9
	movq	-8(%rbp), %rax
	.loc	1 22 8 is_stmt 0                # src/prompt/prompt.c:22:8
	movq	(%rax), %rdi
	.loc	1 22 3                          # src/prompt/prompt.c:22:3
	callq	free
.Ltmp3:
.LBB0_2:
	.loc	1 23 13 is_stmt 1               # src/prompt/prompt.c:23:13
	callq	get_dir_path
	.loc	1 23 11 is_stmt 0               # src/prompt/prompt.c:23:11
	movq	%rax, -24(%rbp)
	.loc	1 24 13 is_stmt 1               # src/prompt/prompt.c:24:13
	callq	get_log_info
	.loc	1 24 11 is_stmt 0               # src/prompt/prompt.c:24:11
	movq	%rax, -32(%rbp)
.Ltmp4:
	.loc	1 25 15 is_stmt 1               # src/prompt/prompt.c:25:15
	cmpq	$0, -24(%rbp)
	.loc	1 25 23 is_stmt 0               # src/prompt/prompt.c:25:23
	jne	.LBB0_5
# %bb.3:
	.loc	1 25 35                         # src/prompt/prompt.c:25:35
	cmpq	$0, -32(%rbp)
.Ltmp5:
	.loc	1 25 6                          # src/prompt/prompt.c:25:6
	jne	.LBB0_5
# %bb.4:
.Ltmp6:
	.loc	1 26 3 is_stmt 1                # src/prompt/prompt.c:26:3
	jmp	.LBB0_10
.LBB0_5:
.Ltmp7:
	.loc	1 27 20                         # src/prompt/prompt.c:27:20
	cmpq	$0, -32(%rbp)
.Ltmp8:
	.loc	1 27 11 is_stmt 0               # src/prompt/prompt.c:27:11
	jne	.LBB0_7
# %bb.6:
.Ltmp9:
	.loc	1 28 19 is_stmt 1               # src/prompt/prompt.c:28:19
	movq	-24(%rbp), %rdi
	.loc	1 28 9 is_stmt 0                # src/prompt/prompt.c:28:9
	callq	ft_strdup
	.loc	1 28 7                          # src/prompt/prompt.c:28:7
	movq	%rax, -16(%rbp)
	.loc	1 28 3                          # src/prompt/prompt.c:28:3
	jmp	.LBB0_8
.LBB0_7:
	.loc	1 30 20 is_stmt 1               # src/prompt/prompt.c:30:20
	movq	-32(%rbp), %rdi
	.loc	1 30 30 is_stmt 0               # src/prompt/prompt.c:30:30
	movq	-24(%rbp), %rsi
	.loc	1 30 9                          # src/prompt/prompt.c:30:9
	callq	ft_strjoin
	.loc	1 30 7                          # src/prompt/prompt.c:30:7
	movq	%rax, -16(%rbp)
.Ltmp10:
.LBB0_8:
	.loc	1 0 7                           # src/prompt/prompt.c:0:7
	jmp	.LBB0_9
.LBB0_9:
	.loc	1 31 23 is_stmt 1               # src/prompt/prompt.c:31:23
	movq	-16(%rbp), %rdi
	.loc	1 31 12 is_stmt 0               # src/prompt/prompt.c:31:12
	movabsq	$.L.str, %rsi
	callq	ft_strjoin
	movq	%rax, %rcx
	.loc	1 31 3                          # src/prompt/prompt.c:31:3
	movq	-8(%rbp), %rax
	.loc	1 31 10                         # src/prompt/prompt.c:31:10
	movq	%rcx, (%rax)
	.loc	1 32 7 is_stmt 1                # src/prompt/prompt.c:32:7
	movq	-16(%rbp), %rdi
	.loc	1 32 2 is_stmt 0                # src/prompt/prompt.c:32:2
	callq	free
	.loc	1 33 7 is_stmt 1                # src/prompt/prompt.c:33:7
	movq	-32(%rbp), %rdi
	.loc	1 33 2 is_stmt 0                # src/prompt/prompt.c:33:2
	callq	free
	.loc	1 34 7 is_stmt 1                # src/prompt/prompt.c:34:7
	movq	-24(%rbp), %rdi
	.loc	1 34 2 is_stmt 0                # src/prompt/prompt.c:34:2
	callq	free
.LBB0_10:
	.loc	1 35 1 is_stmt 1                # src/prompt/prompt.c:35:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end0:
	.size	get_prompt, .Lfunc_end0-get_prompt
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"$ "
	.size	.L.str, 3

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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x80 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x40:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	121                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x4e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	126                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x5c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	126                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x6a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.long	126                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x79:0x5 DW_TAG_pointer_type
	.long	126                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x7e:0x5 DW_TAG_pointer_type
	.long	131                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x83:0x7 DW_TAG_base_type
	.long	.Linfo_string5                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/prompt/prompt.c"           # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=58
.Linfo_string3:
	.asciz	"get_prompt"                    # string offset=95
.Linfo_string4:
	.asciz	"prompt"                        # string offset=106
.Linfo_string5:
	.asciz	"char"                          # string offset=113
.Linfo_string6:
	.asciz	"tmp"                           # string offset=118
.Linfo_string7:
	.asciz	"dir_path"                      # string offset=122
.Linfo_string8:
	.asciz	"log_info"                      # string offset=131
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym get_dir_path
	.addrsig_sym get_log_info
	.addrsig_sym ft_strdup
	.addrsig_sym ft_strjoin
	.section	.debug_line,"",@progbits
.Lline_table_start0:
