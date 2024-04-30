	.text
	.file	"prompt.c"
	.globl	get_prompt                      # -- Begin function get_prompt
	.p2align	4, 0x90
	.type	get_prompt,@function
get_prompt:                             # @get_prompt
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/prompt/prompt.c"
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
	.loc	1 21 13 prologue_end            # src/prompt/prompt.c:21:13
	callq	get_dir_path
	.loc	1 21 11 is_stmt 0               # src/prompt/prompt.c:21:11
	movq	%rax, -24(%rbp)
	.loc	1 22 13 is_stmt 1               # src/prompt/prompt.c:22:13
	callq	get_log_info
	.loc	1 22 11 is_stmt 0               # src/prompt/prompt.c:22:11
	movq	%rax, -32(%rbp)
.Ltmp1:
	.loc	1 23 15 is_stmt 1               # src/prompt/prompt.c:23:15
	cmpq	$0, -24(%rbp)
.Ltmp2:
	.loc	1 23 6 is_stmt 0                # src/prompt/prompt.c:23:6
	jne	.LBB0_2
# %bb.1:
.Ltmp3:
	.loc	1 25 8 is_stmt 1                # src/prompt/prompt.c:25:8
	movq	-32(%rbp), %rdi
	.loc	1 25 3 is_stmt 0                # src/prompt/prompt.c:25:3
	callq	free
	.loc	1 26 3 is_stmt 1                # src/prompt/prompt.c:26:3
	jmp	.LBB0_13
.Ltmp4:
.LBB0_2:
	.loc	1 28 7                          # src/prompt/prompt.c:28:7
	movq	-8(%rbp), %rax
	.loc	1 28 6 is_stmt 0                # src/prompt/prompt.c:28:6
	cmpq	$0, (%rax)
.Ltmp5:
	.loc	1 28 6                          # src/prompt/prompt.c:28:6
	je	.LBB0_4
# %bb.3:
.Ltmp6:
	.loc	1 29 9 is_stmt 1                # src/prompt/prompt.c:29:9
	movq	-8(%rbp), %rax
	.loc	1 29 8 is_stmt 0                # src/prompt/prompt.c:29:8
	movq	(%rax), %rdi
	.loc	1 29 3                          # src/prompt/prompt.c:29:3
	callq	free
.Ltmp7:
.LBB0_4:
	.loc	1 30 15 is_stmt 1               # src/prompt/prompt.c:30:15
	cmpq	$0, -24(%rbp)
	.loc	1 30 23 is_stmt 0               # src/prompt/prompt.c:30:23
	jne	.LBB0_7
# %bb.5:
	.loc	1 30 35                         # src/prompt/prompt.c:30:35
	cmpq	$0, -32(%rbp)
.Ltmp8:
	.loc	1 30 6                          # src/prompt/prompt.c:30:6
	jne	.LBB0_7
# %bb.6:
.Ltmp9:
	.loc	1 31 3 is_stmt 1                # src/prompt/prompt.c:31:3
	jmp	.LBB0_13
.LBB0_7:
.Ltmp10:
	.loc	1 32 20                         # src/prompt/prompt.c:32:20
	cmpq	$0, -32(%rbp)
.Ltmp11:
	.loc	1 32 11 is_stmt 0               # src/prompt/prompt.c:32:11
	jne	.LBB0_9
# %bb.8:
.Ltmp12:
	.loc	1 33 19 is_stmt 1               # src/prompt/prompt.c:33:19
	movq	-24(%rbp), %rdi
	.loc	1 33 9 is_stmt 0                # src/prompt/prompt.c:33:9
	callq	ft_strdup
	.loc	1 33 7                          # src/prompt/prompt.c:33:7
	movq	%rax, -16(%rbp)
	.loc	1 33 3                          # src/prompt/prompt.c:33:3
	jmp	.LBB0_10
.LBB0_9:
	.loc	1 35 20 is_stmt 1               # src/prompt/prompt.c:35:20
	movq	-32(%rbp), %rdi
	.loc	1 35 30 is_stmt 0               # src/prompt/prompt.c:35:30
	movq	-24(%rbp), %rsi
	.loc	1 35 9                          # src/prompt/prompt.c:35:9
	callq	ft_strjoin
	.loc	1 35 7                          # src/prompt/prompt.c:35:7
	movq	%rax, -16(%rbp)
.Ltmp13:
.LBB0_10:
	.loc	1 0 7                           # src/prompt/prompt.c:0:7
	jmp	.LBB0_11
.LBB0_11:
	.loc	1 36 23 is_stmt 1               # src/prompt/prompt.c:36:23
	movq	-16(%rbp), %rdi
	.loc	1 36 12 is_stmt 0               # src/prompt/prompt.c:36:12
	movabsq	$.L.str, %rsi
	callq	ft_strjoin
	movq	%rax, %rcx
	.loc	1 36 3                          # src/prompt/prompt.c:36:3
	movq	-8(%rbp), %rax
	.loc	1 36 10                         # src/prompt/prompt.c:36:10
	movq	%rcx, (%rax)
	.loc	1 37 7 is_stmt 1                # src/prompt/prompt.c:37:7
	movq	-16(%rbp), %rdi
	.loc	1 37 2 is_stmt 0                # src/prompt/prompt.c:37:2
	callq	free
	.loc	1 38 7 is_stmt 1                # src/prompt/prompt.c:38:7
	movq	-32(%rbp), %rdi
	.loc	1 38 2 is_stmt 0                # src/prompt/prompt.c:38:2
	callq	free
.Ltmp14:
	.loc	1 39 15 is_stmt 1               # src/prompt/prompt.c:39:15
	cmpq	$0, -24(%rbp)
.Ltmp15:
	.loc	1 39 6 is_stmt 0                # src/prompt/prompt.c:39:6
	je	.LBB0_13
# %bb.12:
.Ltmp16:
	.loc	1 40 8 is_stmt 1                # src/prompt/prompt.c:40:8
	movq	-24(%rbp), %rdi
	.loc	1 40 3 is_stmt 0                # src/prompt/prompt.c:40:3
	callq	free
.Ltmp17:
.LBB0_13:
	.loc	1 41 1 is_stmt 1                # src/prompt/prompt.c:41:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp18:
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
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=58
.Linfo_string3:
	.asciz	"get_prompt"                    # string offset=127
.Linfo_string4:
	.asciz	"prompt"                        # string offset=138
.Linfo_string5:
	.asciz	"char"                          # string offset=145
.Linfo_string6:
	.asciz	"tmp"                           # string offset=150
.Linfo_string7:
	.asciz	"dir_path"                      # string offset=154
.Linfo_string8:
	.asciz	"log_info"                      # string offset=163
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_dir_path
	.addrsig_sym get_log_info
	.addrsig_sym free
	.addrsig_sym ft_strdup
	.addrsig_sym ft_strjoin
	.section	.debug_line,"",@progbits
.Lline_table_start0:
