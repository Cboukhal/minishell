	.text
	.file	"free_utils.c"
	.globl	free_environment                # -- Begin function free_environment
	.p2align	4, 0x90
	.type	free_environment,@function
free_environment:                       # @free_environment
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/memory/free_utils.c"
	.loc	1 16 0                          # src/memory/free_utils.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
.Ltmp0:
	.loc	1 19 2 prologue_end             # src/memory/free_utils.c:19:2
	cmpq	$0, -8(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 21 9                          # src/memory/free_utils.c:21:9
	movq	-8(%rbp), %rax
	.loc	1 21 24 is_stmt 0               # src/memory/free_utils.c:21:24
	movq	16(%rax), %rax
	.loc	1 21 7                          # src/memory/free_utils.c:21:7
	movq	%rax, -16(%rbp)
	.loc	1 22 8 is_stmt 1                # src/memory/free_utils.c:22:8
	movq	-8(%rbp), %rax
	.loc	1 22 23 is_stmt 0               # src/memory/free_utils.c:22:23
	movq	(%rax), %rdi
	.loc	1 22 3                          # src/memory/free_utils.c:22:3
	callq	free
	.loc	1 23 8 is_stmt 1                # src/memory/free_utils.c:23:8
	movq	-8(%rbp), %rax
	.loc	1 23 23 is_stmt 0               # src/memory/free_utils.c:23:23
	movq	8(%rax), %rdi
	.loc	1 23 3                          # src/memory/free_utils.c:23:3
	callq	free
	.loc	1 24 8 is_stmt 1                # src/memory/free_utils.c:24:8
	movq	-8(%rbp), %rdi
	.loc	1 24 3 is_stmt 0                # src/memory/free_utils.c:24:3
	callq	free
	.loc	1 25 19 is_stmt 1               # src/memory/free_utils.c:25:19
	movq	-16(%rbp), %rax
	.loc	1 25 17 is_stmt 0               # src/memory/free_utils.c:25:17
	movq	%rax, -8(%rbp)
.Ltmp2:
	.loc	1 19 2 is_stmt 1                # src/memory/free_utils.c:19:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 27 7                          # src/memory/free_utils.c:27:7
	movq	-16(%rbp), %rdi
	.loc	1 27 2 is_stmt 0                # src/memory/free_utils.c:27:2
	callq	free
	.loc	1 28 7 is_stmt 1                # src/memory/free_utils.c:28:7
	movq	-8(%rbp), %rdi
	.loc	1 28 2 is_stmt 0                # src/memory/free_utils.c:28:2
	callq	free
	.loc	1 29 1 is_stmt 1                # src/memory/free_utils.c:29:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	free_environment, .Lfunc_end0-free_environment
	.cfi_endproc
                                        # -- End function
	.globl	free_char_array                 # -- Begin function free_char_array
	.p2align	4, 0x90
	.type	free_char_array,@function
free_char_array:                        # @free_char_array
.Lfunc_begin1:
	.loc	1 32 0                          # src/memory/free_utils.c:32:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp4:
	.loc	1 35 4 prologue_end             # src/memory/free_utils.c:35:4
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 36 9                          # src/memory/free_utils.c:36:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 36 2 is_stmt 0                # src/memory/free_utils.c:36:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp5:
	.loc	1 38 8 is_stmt 1                # src/memory/free_utils.c:38:8
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	1 38 3 is_stmt 0                # src/memory/free_utils.c:38:3
	callq	free
	.loc	1 39 4 is_stmt 1                # src/memory/free_utils.c:39:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp6:
	.loc	1 36 2                          # src/memory/free_utils.c:36:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 41 7                          # src/memory/free_utils.c:41:7
	movq	-8(%rbp), %rdi
	.loc	1 41 2 is_stmt 0                # src/memory/free_utils.c:41:2
	callq	free
	.loc	1 42 8 is_stmt 1                # src/memory/free_utils.c:42:8
	movq	$0, -8(%rbp)
	.loc	1 43 1                          # src/memory/free_utils.c:43:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	free_char_array, .Lfunc_end1-free_char_array
	.cfi_endproc
                                        # -- End function
	.globl	free_expansion                  # -- Begin function free_expansion
	.p2align	4, 0x90
	.type	free_expansion,@function
free_expansion:                         # @free_expansion
.Lfunc_begin2:
	.loc	1 46 0                          # src/memory/free_utils.c:46:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	1 49 10 prologue_end            # src/memory/free_utils.c:49:10
	movq	-8(%rbp), %rax
	.loc	1 49 8 is_stmt 0                # src/memory/free_utils.c:49:8
	movq	%rax, -16(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 50 2 is_stmt 1                # src/memory/free_utils.c:50:2
	cmpq	$0, -16(%rbp)
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp9:
	.loc	1 52 11                         # src/memory/free_utils.c:52:11
	movq	-16(%rbp), %rax
	.loc	1 52 18 is_stmt 0               # src/memory/free_utils.c:52:18
	movq	8(%rax), %rax
	.loc	1 52 9                          # src/memory/free_utils.c:52:9
	movq	%rax, -16(%rbp)
	.loc	1 53 8 is_stmt 1                # src/memory/free_utils.c:53:8
	movq	-8(%rbp), %rax
	.loc	1 53 19 is_stmt 0               # src/memory/free_utils.c:53:19
	movq	(%rax), %rdi
	.loc	1 53 3                          # src/memory/free_utils.c:53:3
	callq	free
	.loc	1 54 8 is_stmt 1                # src/memory/free_utils.c:54:8
	movq	-8(%rbp), %rdi
	.loc	1 54 3 is_stmt 0                # src/memory/free_utils.c:54:3
	callq	free
	.loc	1 55 15 is_stmt 1               # src/memory/free_utils.c:55:15
	movq	-16(%rbp), %rax
	.loc	1 55 13 is_stmt 0               # src/memory/free_utils.c:55:13
	movq	%rax, -8(%rbp)
.Ltmp10:
	.loc	1 50 2 is_stmt 1                # src/memory/free_utils.c:50:2
	jmp	.LBB2_1
.LBB2_3:
	.loc	1 57 1                          # src/memory/free_utils.c:57:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	free_expansion, .Lfunc_end2-free_expansion
	.cfi_endproc
                                        # -- End function
	.globl	free_token_stream               # -- Begin function free_token_stream
	.p2align	4, 0x90
	.type	free_token_stream,@function
free_token_stream:                      # @free_token_stream
.Lfunc_begin3:
	.loc	1 60 0                          # src/memory/free_utils.c:60:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp12:
	.loc	1 63 10 prologue_end            # src/memory/free_utils.c:63:10
	movq	-8(%rbp), %rax
	.loc	1 63 8 is_stmt 0                # src/memory/free_utils.c:63:8
	movq	%rax, -16(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 64 2 is_stmt 1                # src/memory/free_utils.c:64:2
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp13:
	.loc	1 66 12                         # src/memory/free_utils.c:66:12
	movq	-8(%rbp), %rax
	.loc	1 66 20 is_stmt 0               # src/memory/free_utils.c:66:20
	movq	40(%rax), %rax
	.loc	1 66 10                         # src/memory/free_utils.c:66:10
	movq	%rax, -8(%rbp)
	.loc	1 67 18 is_stmt 1               # src/memory/free_utils.c:67:18
	movq	-16(%rbp), %rax
	.loc	1 67 25 is_stmt 0               # src/memory/free_utils.c:67:25
	movq	24(%rax), %rdi
	.loc	1 67 3                          # src/memory/free_utils.c:67:3
	callq	free_expansion
	.loc	1 68 8 is_stmt 1                # src/memory/free_utils.c:68:8
	movq	-16(%rbp), %rax
	.loc	1 68 15 is_stmt 0               # src/memory/free_utils.c:68:15
	movq	16(%rax), %rdi
	.loc	1 68 3                          # src/memory/free_utils.c:68:3
	callq	free
	.loc	1 69 8 is_stmt 1                # src/memory/free_utils.c:69:8
	movq	-16(%rbp), %rdi
	.loc	1 69 3 is_stmt 0                # src/memory/free_utils.c:69:3
	callq	free
	.loc	1 70 11 is_stmt 1               # src/memory/free_utils.c:70:11
	movq	-8(%rbp), %rax
	.loc	1 70 9 is_stmt 0                # src/memory/free_utils.c:70:9
	movq	%rax, -16(%rbp)
.Ltmp14:
	.loc	1 64 2 is_stmt 1                # src/memory/free_utils.c:64:2
	jmp	.LBB3_1
.LBB3_3:
	.loc	1 72 7                          # src/memory/free_utils.c:72:7
	movq	-8(%rbp), %rdi
	.loc	1 72 2 is_stmt 0                # src/memory/free_utils.c:72:2
	callq	free
	.loc	1 73 9 is_stmt 1                # src/memory/free_utils.c:73:9
	movq	$0, -8(%rbp)
	.loc	1 74 1                          # src/memory/free_utils.c:74:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end3:
	.size	free_token_stream, .Lfunc_end3-free_token_stream
	.cfi_endproc
                                        # -- End function
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/memory/../../include/minishell.h"
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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
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
	.byte	7                               # Abbreviation Code
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x1ea DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x3f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	242                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	242                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x5c:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x71:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string15                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.long	320                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x7f:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.long	325                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x8e:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xa3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	332                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xb1:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string21                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	332                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xc0:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xd5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	386                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xe3:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string30                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	386                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xf2:0x5 DW_TAG_pointer_type
	.long	247                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf7:0xb DW_TAG_typedef
	.long	258                             # DW_AT_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x102:0x2d DW_TAG_structure_type
	.long	.Linfo_string12                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x10a:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x116:0xc DW_TAG_member
	.long	.Linfo_string10                 # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x122:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	315                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x12f:0x5 DW_TAG_pointer_type
	.long	308                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x134:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x13b:0x5 DW_TAG_pointer_type
	.long	258                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x140:0x5 DW_TAG_pointer_type
	.long	303                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x145:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x14c:0x5 DW_TAG_pointer_type
	.long	337                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x151:0xb DW_TAG_typedef
	.long	348                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x15c:0x21 DW_TAG_structure_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x164:0xc DW_TAG_member
	.long	.Linfo_string8                  # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x170:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x17d:0x5 DW_TAG_pointer_type
	.long	348                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x182:0x5 DW_TAG_pointer_type
	.long	391                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x187:0xb DW_TAG_typedef
	.long	402                             # DW_AT_type
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x192:0x5d DW_TAG_structure_type
	.long	.Linfo_string28                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x19a:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	325                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1a6:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	325                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1b2:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	325                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1be:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	303                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1ca:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	332                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1d6:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1e2:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	495                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1ef:0x5 DW_TAG_pointer_type
	.long	402                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/memory/free_utils.c"       # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=62
.Linfo_string3:
	.asciz	"free_environment"              # string offset=131
.Linfo_string4:
	.asciz	"free_char_array"               # string offset=148
.Linfo_string5:
	.asciz	"free_expansion"                # string offset=164
.Linfo_string6:
	.asciz	"free_token_stream"             # string offset=179
.Linfo_string7:
	.asciz	"minishell_env"                 # string offset=197
.Linfo_string8:
	.asciz	"name"                          # string offset=211
.Linfo_string9:
	.asciz	"char"                          # string offset=216
.Linfo_string10:
	.asciz	"value"                         # string offset=221
.Linfo_string11:
	.asciz	"next"                          # string offset=227
.Linfo_string12:
	.asciz	"s_env"                         # string offset=232
.Linfo_string13:
	.asciz	"t_env"                         # string offset=238
.Linfo_string14:
	.asciz	"tmp"                           # string offset=244
.Linfo_string15:
	.asciz	"array"                         # string offset=248
.Linfo_string16:
	.asciz	"i"                             # string offset=254
.Linfo_string17:
	.asciz	"int"                           # string offset=256
.Linfo_string18:
	.asciz	"expansion"                     # string offset=260
.Linfo_string19:
	.asciz	"s_expan"                       # string offset=270
.Linfo_string20:
	.asciz	"t_expan"                       # string offset=278
.Linfo_string21:
	.asciz	"index"                         # string offset=286
.Linfo_string22:
	.asciz	"stream"                        # string offset=292
.Linfo_string23:
	.asciz	"type"                          # string offset=299
.Linfo_string24:
	.asciz	"quote_nbr"                     # string offset=304
.Linfo_string25:
	.asciz	"length"                        # string offset=314
.Linfo_string26:
	.asciz	"lexeme"                        # string offset=321
.Linfo_string27:
	.asciz	"prev"                          # string offset=328
.Linfo_string28:
	.asciz	"s_token"                       # string offset=333
.Linfo_string29:
	.asciz	"t_token"                       # string offset=341
.Linfo_string30:
	.asciz	"token"                         # string offset=349
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym free_expansion
	.section	.debug_line,"",@progbits
.Lline_table_start0:
