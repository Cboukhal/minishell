	.text
	.file	"exec_child.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/execution/../../include/minishell.h"
	.globl	manage_child_pipe               # -- Begin function manage_child_pipe
	.p2align	4, 0x90
	.type	manage_child_pipe,@function
manage_child_pipe:                      # @manage_child_pipe
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/execution/exec_child.c"
	.loc	2 16 0                          # src/execution/exec_child.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	2 17 6 prologue_end             # src/execution/exec_child.c:17:6
	cmpq	$0, -8(%rbp)
.Ltmp1:
	.loc	2 17 6 is_stmt 0                # src/execution/exec_child.c:17:6
	je	.LBB0_8
# %bb.1:
.Ltmp2:
	.loc	2 19 7 is_stmt 1                # src/execution/exec_child.c:19:7
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
.Ltmp3:
	.loc	2 19 7 is_stmt 0                # src/execution/exec_child.c:19:7
	je	.LBB0_3
# %bb.2:
.Ltmp4:
	.loc	2 21 9 is_stmt 1                # src/execution/exec_child.c:21:9
	movq	-8(%rbp), %rax
	.loc	2 21 15 is_stmt 0               # src/execution/exec_child.c:21:15
	movq	16(%rax), %rax
	.loc	2 21 9                          # src/execution/exec_child.c:21:9
	movl	(%rax), %edi
	.loc	2 21 4                          # src/execution/exec_child.c:21:4
	xorl	%esi, %esi
	callq	dup2
	.loc	2 22 10 is_stmt 1               # src/execution/exec_child.c:22:10
	movq	-8(%rbp), %rax
	.loc	2 22 16 is_stmt 0               # src/execution/exec_child.c:22:16
	movq	16(%rax), %rax
	.loc	2 22 10                         # src/execution/exec_child.c:22:10
	movl	4(%rax), %edi
	.loc	2 22 4                          # src/execution/exec_child.c:22:4
	callq	close
.Ltmp5:
.LBB0_3:
	.loc	2 24 7 is_stmt 1                # src/execution/exec_child.c:24:7
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
.Ltmp6:
	.loc	2 24 7 is_stmt 0                # src/execution/exec_child.c:24:7
	je	.LBB0_5
# %bb.4:
.Ltmp7:
	.loc	2 26 9 is_stmt 1                # src/execution/exec_child.c:26:9
	movq	-8(%rbp), %rax
	.loc	2 26 15 is_stmt 0               # src/execution/exec_child.c:26:15
	movq	8(%rax), %rax
	.loc	2 26 9                          # src/execution/exec_child.c:26:9
	movl	4(%rax), %edi
	.loc	2 26 4                          # src/execution/exec_child.c:26:4
	movl	$1, %esi
	callq	dup2
	.loc	2 27 10 is_stmt 1               # src/execution/exec_child.c:27:10
	movq	-8(%rbp), %rax
	.loc	2 27 16 is_stmt 0               # src/execution/exec_child.c:27:16
	movq	8(%rax), %rax
	.loc	2 27 10                         # src/execution/exec_child.c:27:10
	movl	(%rax), %edi
	.loc	2 27 4                          # src/execution/exec_child.c:27:4
	callq	close
.Ltmp8:
.LBB0_5:
	.loc	2 29 7 is_stmt 1                # src/execution/exec_child.c:29:7
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
.Ltmp9:
	.loc	2 29 7 is_stmt 0                # src/execution/exec_child.c:29:7
	je	.LBB0_7
# %bb.6:
.Ltmp10:
	.loc	2 31 10 is_stmt 1               # src/execution/exec_child.c:31:10
	movq	-8(%rbp), %rax
	.loc	2 31 16 is_stmt 0               # src/execution/exec_child.c:31:16
	movq	(%rax), %rax
	.loc	2 31 10                         # src/execution/exec_child.c:31:10
	movl	(%rax), %edi
	.loc	2 31 4                          # src/execution/exec_child.c:31:4
	callq	close
	.loc	2 32 10 is_stmt 1               # src/execution/exec_child.c:32:10
	movq	-8(%rbp), %rax
	.loc	2 32 16 is_stmt 0               # src/execution/exec_child.c:32:16
	movq	(%rax), %rax
	.loc	2 32 10                         # src/execution/exec_child.c:32:10
	movl	4(%rax), %edi
	.loc	2 32 4                          # src/execution/exec_child.c:32:4
	callq	close
.Ltmp11:
.LBB0_7:
	.loc	2 34 3 is_stmt 1                # src/execution/exec_child.c:34:3
	jmp	.LBB0_8
.Ltmp12:
.LBB0_8:
	.loc	2 36 1                          # src/execution/exec_child.c:36:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end0:
	.size	manage_child_pipe, .Lfunc_end0-manage_child_pipe
	.cfi_endproc
                                        # -- End function
	.globl	child_job                       # -- Begin function child_job
	.p2align	4, 0x90
	.type	child_job,@function
child_job:                              # @child_job
.Lfunc_begin1:
	.loc	2 39 0                          # src/execution/exec_child.c:39:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp14:
	.loc	2 40 6 prologue_end             # src/execution/exec_child.c:40:6
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
.Ltmp15:
	.loc	2 40 6 is_stmt 0                # src/execution/exec_child.c:40:6
	je	.LBB1_2
# %bb.1:
.Ltmp16:
	.loc	2 41 28 is_stmt 1               # src/execution/exec_child.c:41:28
	movq	-16(%rbp), %rdi
	.loc	2 41 3 is_stmt 0                # src/execution/exec_child.c:41:3
	callq	open_command_redirection
.Ltmp17:
.LBB1_2:
	.loc	2 42 20 is_stmt 1               # src/execution/exec_child.c:42:20
	movq	-16(%rbp), %rax
	.loc	2 42 25 is_stmt 0               # src/execution/exec_child.c:42:25
	movq	40(%rax), %rdi
	.loc	2 42 2                          # src/execution/exec_child.c:42:2
	callq	manage_child_pipe
.Ltmp18:
	.loc	2 43 13 is_stmt 1               # src/execution/exec_child.c:43:13
	movq	-16(%rbp), %rax
	.loc	2 43 18 is_stmt 0               # src/execution/exec_child.c:43:18
	movq	24(%rax), %rdi
	.loc	2 43 24                         # src/execution/exec_child.c:43:24
	movq	-16(%rbp), %rax
	.loc	2 43 29                         # src/execution/exec_child.c:43:29
	movq	88(%rax), %rsi
	.loc	2 43 40                         # src/execution/exec_child.c:43:40
	movq	-24(%rbp), %rdx
	.loc	2 43 6                          # src/execution/exec_child.c:43:6
	callq	execve
	.loc	2 43 46                         # src/execution/exec_child.c:43:46
	cmpl	$0, %eax
.Ltmp19:
	.loc	2 43 6                          # src/execution/exec_child.c:43:6
	je	.LBB1_4
# %bb.3:
.Ltmp20:
	.loc	2 44 3 is_stmt 1                # src/execution/exec_child.c:44:3
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp21:
.LBB1_4:
	.loc	2 45 30                         # src/execution/exec_child.c:45:30
	callq	__errno_location
	movl	(%rax), %ecx
	.loc	2 45 4 is_stmt 0                # src/execution/exec_child.c:45:4
	movq	-8(%rbp), %rax
	.loc	2 45 3                          # src/execution/exec_child.c:45:3
	movq	(%rax), %rax
	.loc	2 45 28                         # src/execution/exec_child.c:45:28
	movl	%ecx, 44(%rax)
	.loc	2 46 4 is_stmt 1                # src/execution/exec_child.c:46:4
	movq	-8(%rbp), %rax
	.loc	2 46 3 is_stmt 0                # src/execution/exec_child.c:46:3
	movq	(%rax), %rax
	.loc	2 46 22                         # src/execution/exec_child.c:46:22
	movl	$1, 8(%rax)
	.loc	2 47 1 is_stmt 1                # src/execution/exec_child.c:47:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp22:
.Lfunc_end1:
	.size	child_job, .Lfunc_end1-child_job
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"execve"
	.size	.L.str, 7

	.file	3 "/usr/include" "dirent.h"
	.file	4 "/usr/include" "signal.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits" "sigaction.h"
	.file	6 "/usr/include/x86_64-linux-gnu/bits/types" "siginfo_t.h"
	.file	7 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	8 "/usr/include/x86_64-linux-gnu/bits/types" "__sigval_t.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__sigset_t.h"
	.file	10 "/usr/include/x86_64-linux-gnu/bits" "struct_stat.h"
	.file	11 "/usr/include/x86_64-linux-gnu/bits/types" "struct_timespec.h"
	.file	12 "/usr/include/x86_64-linux-gnu/bits" "termios.h"
	.file	13 "/usr/include/x86_64-linux-gnu/bits" "termios-struct.h"
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
	.byte	8                               # Abbreviation Code
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
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	5                               # DW_FORM_data2
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
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
	.byte	21                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	0                               # DW_CHILDREN_no
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
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
	.byte	1                               # Abbrev [1] 0xb:0xafa DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x25 DW_TAG_enumeration_type
	.long	79                              # DW_AT_type
	.long	.Linfo_string8                  # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	3                               # Abbrev [3] 0x36:0x6 DW_TAG_enumerator
	.long	.Linfo_string4                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x3c:0x6 DW_TAG_enumerator
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x42:0x6 DW_TAG_enumerator
	.long	.Linfo_string6                  # DW_AT_name
	.byte	0                               # DW_AT_const_value
	.byte	3                               # Abbrev [3] 0x48:0x6 DW_TAG_enumerator
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_const_value
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x4f:0x7 DW_TAG_base_type
	.long	.Linfo_string3                  # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x56:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x6b:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	186                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7a:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x8f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string18                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	259                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x9d:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string182                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	2804                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0xab:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string184                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	503                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xba:0x5 DW_TAG_pointer_type
	.long	191                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xbf:0xb DW_TAG_typedef
	.long	202                             # DW_AT_type
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xca:0x2d DW_TAG_structure_type
	.long	.Linfo_string16                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xd2:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xde:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xea:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xf7:0x5 DW_TAG_pointer_type
	.long	252                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xfc:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x103:0x5 DW_TAG_pointer_type
	.long	264                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x108:0x5 DW_TAG_pointer_type
	.long	269                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x10d:0xb DW_TAG_typedef
	.long	280                             # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x118:0xbe DW_TAG_structure_type
	.long	.Linfo_string180                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x121:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	470                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x12d:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x139:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x145:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	503                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x151:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x15d:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x169:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x175:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	503                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x181:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	508                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x18d:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	574                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x199:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	640                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1a5:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	1346                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b1:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	1460                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1bd:0xc DW_TAG_member
	.long	.Linfo_string137                # DW_AT_name
	.long	2293                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c9:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2642                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x1d6:0x5 DW_TAG_pointer_type
	.long	475                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1db:0xb DW_TAG_typedef
	.long	486                             # DW_AT_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1e6:0x5 DW_TAG_structure_type
	.long	.Linfo_string20                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	7                               # Abbrev [7] 0x1eb:0x5 DW_TAG_pointer_type
	.long	496                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1f0:0x7 DW_TAG_base_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1f7:0x5 DW_TAG_pointer_type
	.long	491                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1fc:0x5 DW_TAG_pointer_type
	.long	513                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x201:0xb DW_TAG_typedef
	.long	524                             # DW_AT_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x20c:0x2d DW_TAG_structure_type
	.long	.Linfo_string34                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x214:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x220:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x22c:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	569                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x239:0x5 DW_TAG_pointer_type
	.long	524                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x23e:0x5 DW_TAG_pointer_type
	.long	579                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x243:0xb DW_TAG_typedef
	.long	590                             # DW_AT_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x24e:0x2d DW_TAG_structure_type
	.long	.Linfo_string37                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x256:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x262:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	635                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x27b:0x5 DW_TAG_pointer_type
	.long	590                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x280:0x5 DW_TAG_pointer_type
	.long	645                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x285:0xb DW_TAG_typedef
	.long	656                             # DW_AT_type
	.long	.Linfo_string73                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x290:0x2d DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x298:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2a4:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2b0:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2c2:0xb DW_TAG_typedef
	.long	717                             # DW_AT_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2cd:0x51 DW_TAG_structure_type
	.long	.Linfo_string70                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	247                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2f9:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x305:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x311:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x31e:0x5 DW_TAG_pointer_type
	.long	803                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x323:0xc9 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x32b:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x337:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x343:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x34f:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x35b:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x367:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x373:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	1004                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37f:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	186                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x38b:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1058                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x397:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3a3:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	574                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3af:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1209                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3bb:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1287                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3c7:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	503                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3d3:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3df:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	798                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3ec:0x5 DW_TAG_pointer_type
	.long	1009                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3f1:0xb DW_TAG_typedef
	.long	1020                            # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x3fc:0x21 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x404:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x410:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1053                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x41d:0x5 DW_TAG_pointer_type
	.long	1020                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x422:0x5 DW_TAG_pointer_type
	.long	1063                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x427:0xb DW_TAG_typedef
	.long	1074                            # DW_AT_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x432:0x39 DW_TAG_structure_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x43a:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x446:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x452:0xc DW_TAG_member
	.long	.Linfo_string53                 # DW_AT_name
	.long	1131                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x45e:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1209                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x46b:0x5 DW_TAG_pointer_type
	.long	1136                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x470:0xb DW_TAG_typedef
	.long	1147                            # DW_AT_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x47b:0x39 DW_TAG_structure_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x483:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x48f:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x49b:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4a7:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1204                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4b4:0x5 DW_TAG_pointer_type
	.long	1147                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4b9:0x5 DW_TAG_pointer_type
	.long	1214                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4be:0xb DW_TAG_typedef
	.long	1225                            # DW_AT_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4c9:0x39 DW_TAG_structure_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4d1:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4dd:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e9:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4f5:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1282                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x502:0x5 DW_TAG_pointer_type
	.long	1225                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x507:0x5 DW_TAG_pointer_type
	.long	1292                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x50c:0xb DW_TAG_typedef
	.long	1303                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x517:0x21 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x51f:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x52b:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1336                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x538:0x5 DW_TAG_pointer_type
	.long	1303                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x53d:0x5 DW_TAG_pointer_type
	.long	656                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x542:0x5 DW_TAG_pointer_type
	.long	1351                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x547:0xb DW_TAG_typedef
	.long	1362                            # DW_AT_type
	.long	.Linfo_string79                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x552:0x5d DW_TAG_structure_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x55a:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x566:0xc DW_TAG_member
	.long	.Linfo_string75                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x572:0xc DW_TAG_member
	.long	.Linfo_string76                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x57e:0xc DW_TAG_member
	.long	.Linfo_string77                 # DW_AT_name
	.long	491                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58a:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1287                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x596:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1455                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5a2:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	1455                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x5af:0x5 DW_TAG_pointer_type
	.long	1362                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x5b4:0x56 DW_TAG_structure_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5bc:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	1480                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5c8:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5cc:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	1546                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5d8:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1569                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5e5:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2240                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f1:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5fd:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2287                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x60a:0xb DW_TAG_typedef
	.long	1557                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x615:0x5 DW_TAG_pointer_type
	.long	1562                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x61a:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x61b:0x5 DW_TAG_formal_parameter
	.long	252                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x621:0x5 DW_TAG_pointer_type
	.long	1574                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x626:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x627:0x5 DW_TAG_formal_parameter
	.long	252                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x62c:0x5 DW_TAG_formal_parameter
	.long	1591                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x631:0x5 DW_TAG_formal_parameter
	.long	2203                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x637:0x5 DW_TAG_pointer_type
	.long	1596                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x63c:0xb DW_TAG_typedef
	.long	1607                            # DW_AT_type
	.long	.Linfo_string129                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x647:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x64b:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x657:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x663:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x66f:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x67b:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1671                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x687:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x68b:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	2118                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x697:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	1699                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6a3:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6a7:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2137                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6b3:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2148                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6c0:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1740                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x6cc:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6d0:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6dc:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6e8:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2159                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6f5:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	1793                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x701:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x705:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2137                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x711:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2148                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x71d:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2159                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x72a:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	1846                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x736:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x73a:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2137                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x746:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2148                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x752:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x75e:0xc DW_TAG_member
	.long	.Linfo_string108                # DW_AT_name
	.long	2204                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x76a:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	2204                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x777:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	1923                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x783:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x787:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x793:0xc DW_TAG_member
	.long	.Linfo_string114                # DW_AT_name
	.long	2222                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x79f:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	1963                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7ab:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7af:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	1979                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7bb:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7bf:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7cb:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7d8:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2229                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7e6:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2034                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7f2:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7f6:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2215                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x802:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x80f:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2075                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x81b:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x81f:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82b:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x837:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	79                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x846:0xc DW_TAG_array_type
	.long	252                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x84b:0x6 DW_TAG_subrange_type
	.long	2130                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x852:0x7 DW_TAG_base_type
	.long	.Linfo_string91                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x859:0xb DW_TAG_typedef
	.long	252                             # DW_AT_type
	.long	.Linfo_string94                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x864:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x86f:0xb DW_TAG_typedef
	.long	2170                            # DW_AT_type
	.long	.Linfo_string104                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x87a:0x21 DW_TAG_union_type
	.long	.Linfo_string103                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x882:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x88e:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	2203                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x89b:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x89c:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string110                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x8a7:0x7 DW_TAG_base_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x8ae:0x7 DW_TAG_base_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x8b5:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string121                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8c0:0xb DW_TAG_typedef
	.long	2251                            # DW_AT_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x8cb:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8cf:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2268                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8dc:0xc DW_TAG_array_type
	.long	2280                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8e1:0x6 DW_TAG_subrange_type
	.long	2130                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x8e8:0x7 DW_TAG_base_type
	.long	.Linfo_string132                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x8ef:0x5 DW_TAG_pointer_type
	.long	2292                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x8f4:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x8f5:0x5 DW_TAG_pointer_type
	.long	2298                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x8fa:0xbd DW_TAG_structure_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x902:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	2487                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x90e:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2498                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x91a:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2509                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x926:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2520                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x932:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2148                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x93e:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2531                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x94a:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	252                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x956:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2487                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x962:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2542                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x96e:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2553                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x97a:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2564                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x986:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2575                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x992:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2575                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99e:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	2575                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9aa:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2630                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x9b7:0xb DW_TAG_typedef
	.long	2280                            # DW_AT_type
	.long	.Linfo_string139                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9c2:0xb DW_TAG_typedef
	.long	2280                            # DW_AT_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9cd:0xb DW_TAG_typedef
	.long	2280                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9d8:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9e3:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9ee:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string151                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x9f9:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa04:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa0f:0x21 DW_TAG_structure_type
	.long	.Linfo_string161                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa17:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2608                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa23:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2619                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa30:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa3b:0xb DW_TAG_typedef
	.long	2215                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xa46:0xc DW_TAG_array_type
	.long	2619                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xa4b:0x6 DW_TAG_subrange_type
	.long	2130                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xa52:0x5 DW_TAG_pointer_type
	.long	2647                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xa57:0x69 DW_TAG_structure_type
	.long	.Linfo_string179                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa5f:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2752                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa6b:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2752                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa77:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	2752                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa83:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2752                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa8f:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2763                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa9b:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2781                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaa7:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2793                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xab3:0xc DW_TAG_member
	.long	.Linfo_string178                # DW_AT_name
	.long	2793                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xac0:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string168                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xacb:0xb DW_TAG_typedef
	.long	2774                            # DW_AT_type
	.long	.Linfo_string174                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xad6:0x7 DW_TAG_base_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	17                              # Abbrev [17] 0xadd:0xc DW_TAG_array_type
	.long	2763                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xae2:0x6 DW_TAG_subrange_type
	.long	2130                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xae9:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0xaf4:0x5 DW_TAG_pointer_type
	.long	2809                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0xaf9:0xb DW_TAG_typedef
	.long	803                             # DW_AT_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec_child.c"    # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=65
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=134
.Linfo_string4:
	.asciz	"run"                           # string offset=147
.Linfo_string5:
	.asciz	"stop"                          # string offset=151
.Linfo_string6:
	.asciz	"success"                       # string offset=156
.Linfo_string7:
	.asciz	"failure"                       # string offset=164
.Linfo_string8:
	.asciz	"e_state"                       # string offset=172
.Linfo_string9:
	.asciz	"manage_child_pipe"             # string offset=180
.Linfo_string10:
	.asciz	"child_job"                     # string offset=198
.Linfo_string11:
	.asciz	"pipe"                          # string offset=208
.Linfo_string12:
	.asciz	"to_close"                      # string offset=213
.Linfo_string13:
	.asciz	"int"                           # string offset=222
.Linfo_string14:
	.asciz	"write"                         # string offset=226
.Linfo_string15:
	.asciz	"read"                          # string offset=232
.Linfo_string16:
	.asciz	"s_pipe"                        # string offset=237
.Linfo_string17:
	.asciz	"t_pipe"                        # string offset=244
.Linfo_string18:
	.asciz	"minishell"                     # string offset=251
.Linfo_string19:
	.asciz	"dir"                           # string offset=261
.Linfo_string20:
	.asciz	"__dirstream"                   # string offset=265
.Linfo_string21:
	.asciz	"DIR"                           # string offset=277
.Linfo_string22:
	.asciz	"state"                         # string offset=281
.Linfo_string23:
	.asciz	"input"                         # string offset=287
.Linfo_string24:
	.asciz	"char"                          # string offset=293
.Linfo_string25:
	.asciz	"path"                          # string offset=298
.Linfo_string26:
	.asciz	"prompt"                        # string offset=303
.Linfo_string27:
	.asciz	"operator_nbr"                  # string offset=310
.Linfo_string28:
	.asciz	"exit_status"                   # string offset=323
.Linfo_string29:
	.asciz	"env_array"                     # string offset=335
.Linfo_string30:
	.asciz	"env"                           # string offset=345
.Linfo_string31:
	.asciz	"name"                          # string offset=349
.Linfo_string32:
	.asciz	"value"                         # string offset=354
.Linfo_string33:
	.asciz	"next"                          # string offset=360
.Linfo_string34:
	.asciz	"s_env"                         # string offset=365
.Linfo_string35:
	.asciz	"t_env"                         # string offset=371
.Linfo_string36:
	.asciz	"local"                         # string offset=377
.Linfo_string37:
	.asciz	"s_var"                         # string offset=383
.Linfo_string38:
	.asciz	"t_var"                         # string offset=389
.Linfo_string39:
	.asciz	"syntax_tree"                   # string offset=395
.Linfo_string40:
	.asciz	"node"                          # string offset=407
.Linfo_string41:
	.asciz	"id"                            # string offset=412
.Linfo_string42:
	.asciz	"type"                          # string offset=415
.Linfo_string43:
	.asciz	"pipe_fd"                       # string offset=420
.Linfo_string44:
	.asciz	"left"                          # string offset=428
.Linfo_string45:
	.asciz	"pid"                           # string offset=433
.Linfo_string46:
	.asciz	"wstatus"                       # string offset=437
.Linfo_string47:
	.asciz	"arg"                           # string offset=445
.Linfo_string48:
	.asciz	"s_arg"                         # string offset=449
.Linfo_string49:
	.asciz	"t_arg"                         # string offset=455
.Linfo_string50:
	.asciz	"redir"                         # string offset=461
.Linfo_string51:
	.asciz	"in_fd"                         # string offset=467
.Linfo_string52:
	.asciz	"out_fd"                        # string offset=473
.Linfo_string53:
	.asciz	"infile"                        # string offset=480
.Linfo_string54:
	.asciz	"fd"                            # string offset=487
.Linfo_string55:
	.asciz	"s_infile"                      # string offset=490
.Linfo_string56:
	.asciz	"t_infile"                      # string offset=499
.Linfo_string57:
	.asciz	"outfile"                       # string offset=508
.Linfo_string58:
	.asciz	"s_outfile"                     # string offset=516
.Linfo_string59:
	.asciz	"t_outfile"                     # string offset=526
.Linfo_string60:
	.asciz	"s_redir"                       # string offset=536
.Linfo_string61:
	.asciz	"t_redir"                       # string offset=544
.Linfo_string62:
	.asciz	"assign"                        # string offset=552
.Linfo_string63:
	.asciz	"expansion"                     # string offset=559
.Linfo_string64:
	.asciz	"s_expan"                       # string offset=569
.Linfo_string65:
	.asciz	"t_expan"                       # string offset=577
.Linfo_string66:
	.asciz	"arg_array"                     # string offset=585
.Linfo_string67:
	.asciz	"prev"                          # string offset=595
.Linfo_string68:
	.asciz	"s_cmd"                         # string offset=600
.Linfo_string69:
	.asciz	"right"                         # string offset=606
.Linfo_string70:
	.asciz	"s_ast_node"                    # string offset=612
.Linfo_string71:
	.asciz	"t_ast_node"                    # string offset=623
.Linfo_string72:
	.asciz	"s_ast"                         # string offset=634
.Linfo_string73:
	.asciz	"t_ast"                         # string offset=640
.Linfo_string74:
	.asciz	"token_stream"                  # string offset=646
.Linfo_string75:
	.asciz	"quote_nbr"                     # string offset=659
.Linfo_string76:
	.asciz	"length"                        # string offset=669
.Linfo_string77:
	.asciz	"lexeme"                        # string offset=676
.Linfo_string78:
	.asciz	"s_token"                       # string offset=683
.Linfo_string79:
	.asciz	"t_token"                       # string offset=691
.Linfo_string80:
	.asciz	"sighandler"                    # string offset=699
.Linfo_string81:
	.asciz	"__sigaction_handler"           # string offset=710
.Linfo_string82:
	.asciz	"sa_handler"                    # string offset=730
.Linfo_string83:
	.asciz	"__sighandler_t"                # string offset=741
.Linfo_string84:
	.asciz	"sa_sigaction"                  # string offset=756
.Linfo_string85:
	.asciz	"si_signo"                      # string offset=769
.Linfo_string86:
	.asciz	"si_errno"                      # string offset=778
.Linfo_string87:
	.asciz	"si_code"                       # string offset=787
.Linfo_string88:
	.asciz	"__pad0"                        # string offset=795
.Linfo_string89:
	.asciz	"_sifields"                     # string offset=802
.Linfo_string90:
	.asciz	"_pad"                          # string offset=812
.Linfo_string91:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=817
.Linfo_string92:
	.asciz	"_kill"                         # string offset=837
.Linfo_string93:
	.asciz	"si_pid"                        # string offset=843
.Linfo_string94:
	.asciz	"__pid_t"                       # string offset=850
.Linfo_string95:
	.asciz	"si_uid"                        # string offset=858
.Linfo_string96:
	.asciz	"__uid_t"                       # string offset=865
.Linfo_string97:
	.asciz	"_timer"                        # string offset=873
.Linfo_string98:
	.asciz	"si_tid"                        # string offset=880
.Linfo_string99:
	.asciz	"si_overrun"                    # string offset=887
.Linfo_string100:
	.asciz	"si_sigval"                     # string offset=898
.Linfo_string101:
	.asciz	"sival_int"                     # string offset=908
.Linfo_string102:
	.asciz	"sival_ptr"                     # string offset=918
.Linfo_string103:
	.asciz	"sigval"                        # string offset=928
.Linfo_string104:
	.asciz	"__sigval_t"                    # string offset=935
.Linfo_string105:
	.asciz	"_rt"                           # string offset=946
.Linfo_string106:
	.asciz	"_sigchld"                      # string offset=950
.Linfo_string107:
	.asciz	"si_status"                     # string offset=959
.Linfo_string108:
	.asciz	"si_utime"                      # string offset=969
.Linfo_string109:
	.asciz	"long int"                      # string offset=978
.Linfo_string110:
	.asciz	"__clock_t"                     # string offset=987
.Linfo_string111:
	.asciz	"si_stime"                      # string offset=997
.Linfo_string112:
	.asciz	"_sigfault"                     # string offset=1006
.Linfo_string113:
	.asciz	"si_addr"                       # string offset=1016
.Linfo_string114:
	.asciz	"si_addr_lsb"                   # string offset=1024
.Linfo_string115:
	.asciz	"short"                         # string offset=1036
.Linfo_string116:
	.asciz	"_bounds"                       # string offset=1042
.Linfo_string117:
	.asciz	"_addr_bnd"                     # string offset=1050
.Linfo_string118:
	.asciz	"_lower"                        # string offset=1060
.Linfo_string119:
	.asciz	"_upper"                        # string offset=1067
.Linfo_string120:
	.asciz	"_pkey"                         # string offset=1074
.Linfo_string121:
	.asciz	"__uint32_t"                    # string offset=1080
.Linfo_string122:
	.asciz	"_sigpoll"                      # string offset=1091
.Linfo_string123:
	.asciz	"si_band"                       # string offset=1100
.Linfo_string124:
	.asciz	"si_fd"                         # string offset=1108
.Linfo_string125:
	.asciz	"_sigsys"                       # string offset=1114
.Linfo_string126:
	.asciz	"_call_addr"                    # string offset=1122
.Linfo_string127:
	.asciz	"_syscall"                      # string offset=1133
.Linfo_string128:
	.asciz	"_arch"                         # string offset=1142
.Linfo_string129:
	.asciz	"siginfo_t"                     # string offset=1148
.Linfo_string130:
	.asciz	"sa_mask"                       # string offset=1158
.Linfo_string131:
	.asciz	"__val"                         # string offset=1166
.Linfo_string132:
	.asciz	"long unsigned int"             # string offset=1172
.Linfo_string133:
	.asciz	"__sigset_t"                    # string offset=1190
.Linfo_string134:
	.asciz	"sa_flags"                      # string offset=1201
.Linfo_string135:
	.asciz	"sa_restorer"                   # string offset=1210
.Linfo_string136:
	.asciz	"sigaction"                     # string offset=1222
.Linfo_string137:
	.asciz	"statbuf"                       # string offset=1232
.Linfo_string138:
	.asciz	"st_dev"                        # string offset=1240
.Linfo_string139:
	.asciz	"__dev_t"                       # string offset=1247
.Linfo_string140:
	.asciz	"st_ino"                        # string offset=1255
.Linfo_string141:
	.asciz	"__ino_t"                       # string offset=1262
.Linfo_string142:
	.asciz	"st_nlink"                      # string offset=1270
.Linfo_string143:
	.asciz	"__nlink_t"                     # string offset=1279
.Linfo_string144:
	.asciz	"st_mode"                       # string offset=1289
.Linfo_string145:
	.asciz	"__mode_t"                      # string offset=1297
.Linfo_string146:
	.asciz	"st_uid"                        # string offset=1306
.Linfo_string147:
	.asciz	"st_gid"                        # string offset=1313
.Linfo_string148:
	.asciz	"__gid_t"                       # string offset=1320
.Linfo_string149:
	.asciz	"st_rdev"                       # string offset=1328
.Linfo_string150:
	.asciz	"st_size"                       # string offset=1336
.Linfo_string151:
	.asciz	"__off_t"                       # string offset=1344
.Linfo_string152:
	.asciz	"st_blksize"                    # string offset=1352
.Linfo_string153:
	.asciz	"__blksize_t"                   # string offset=1363
.Linfo_string154:
	.asciz	"st_blocks"                     # string offset=1375
.Linfo_string155:
	.asciz	"__blkcnt_t"                    # string offset=1385
.Linfo_string156:
	.asciz	"st_atim"                       # string offset=1396
.Linfo_string157:
	.asciz	"tv_sec"                        # string offset=1404
.Linfo_string158:
	.asciz	"__time_t"                      # string offset=1411
.Linfo_string159:
	.asciz	"tv_nsec"                       # string offset=1420
.Linfo_string160:
	.asciz	"__syscall_slong_t"             # string offset=1428
.Linfo_string161:
	.asciz	"timespec"                      # string offset=1446
.Linfo_string162:
	.asciz	"st_mtim"                       # string offset=1455
.Linfo_string163:
	.asciz	"st_ctim"                       # string offset=1463
.Linfo_string164:
	.asciz	"__glibc_reserved"              # string offset=1471
.Linfo_string165:
	.asciz	"stat"                          # string offset=1488
.Linfo_string166:
	.asciz	"term"                          # string offset=1493
.Linfo_string167:
	.asciz	"c_iflag"                       # string offset=1498
.Linfo_string168:
	.asciz	"tcflag_t"                      # string offset=1506
.Linfo_string169:
	.asciz	"c_oflag"                       # string offset=1515
.Linfo_string170:
	.asciz	"c_cflag"                       # string offset=1523
.Linfo_string171:
	.asciz	"c_lflag"                       # string offset=1531
.Linfo_string172:
	.asciz	"c_line"                        # string offset=1539
.Linfo_string173:
	.asciz	"unsigned char"                 # string offset=1546
.Linfo_string174:
	.asciz	"cc_t"                          # string offset=1560
.Linfo_string175:
	.asciz	"c_cc"                          # string offset=1565
.Linfo_string176:
	.asciz	"c_ispeed"                      # string offset=1570
.Linfo_string177:
	.asciz	"speed_t"                       # string offset=1579
.Linfo_string178:
	.asciz	"c_ospeed"                      # string offset=1587
.Linfo_string179:
	.asciz	"termios"                       # string offset=1596
.Linfo_string180:
	.asciz	"s_minishell"                   # string offset=1604
.Linfo_string181:
	.asciz	"t_minishell"                   # string offset=1616
.Linfo_string182:
	.asciz	"cmd"                           # string offset=1628
.Linfo_string183:
	.asciz	"t_cmd"                         # string offset=1632
.Linfo_string184:
	.asciz	"envp"                          # string offset=1638
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym manage_child_pipe
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym open_command_redirection
	.addrsig_sym execve
	.addrsig_sym perror
	.addrsig_sym __errno_location
	.section	.debug_line,"",@progbits
.Lline_table_start0:
