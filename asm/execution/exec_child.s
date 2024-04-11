	.text
	.file	"exec_child.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/execution/../../include/minishell.h"
	.globl	manage_write_pipe               # -- Begin function manage_write_pipe
	.p2align	4, 0x90
	.type	manage_write_pipe,@function
manage_write_pipe:                      # @manage_write_pipe
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/execution/exec_child.c"
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
	movq	-8(%rbp), %rax
	.loc	2 17 11 is_stmt 0               # src/execution/exec_child.c:17:11
	movq	40(%rax), %rax
	.loc	2 17 6                          # src/execution/exec_child.c:17:6
	cmpq	$0, 8(%rax)
.Ltmp1:
	.loc	2 17 6                          # src/execution/exec_child.c:17:6
	je	.LBB0_6
# %bb.1:
.Ltmp2:
	.loc	2 19 8 is_stmt 1                # src/execution/exec_child.c:19:8
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	.loc	2 19 19 is_stmt 0               # src/execution/exec_child.c:19:19
	je	.LBB0_3
# %bb.2:
	.loc	2 19 23                         # src/execution/exec_child.c:19:23
	movq	-8(%rbp), %rax
	.loc	2 19 28                         # src/execution/exec_child.c:19:28
	movq	48(%rax), %rax
	.loc	2 19 23                         # src/execution/exec_child.c:19:23
	cmpq	$0, 16(%rax)
.Ltmp3:
	.loc	2 19 7                          # src/execution/exec_child.c:19:7
	jne	.LBB0_4
.LBB0_3:
.Ltmp4:
	.loc	2 20 9 is_stmt 1                # src/execution/exec_child.c:20:9
	movq	-8(%rbp), %rax
	.loc	2 20 14 is_stmt 0               # src/execution/exec_child.c:20:14
	movq	40(%rax), %rax
	.loc	2 20 20                         # src/execution/exec_child.c:20:20
	movq	8(%rax), %rax
	.loc	2 20 9                          # src/execution/exec_child.c:20:9
	movl	4(%rax), %edi
	.loc	2 20 4                          # src/execution/exec_child.c:20:4
	movl	$1, %esi
	callq	dup2
	jmp	.LBB0_5
.LBB0_4:
	.loc	2 22 10 is_stmt 1               # src/execution/exec_child.c:22:10
	movq	-8(%rbp), %rax
	.loc	2 22 15 is_stmt 0               # src/execution/exec_child.c:22:15
	movq	40(%rax), %rax
	.loc	2 22 21                         # src/execution/exec_child.c:22:21
	movq	8(%rax), %rax
	.loc	2 22 10                         # src/execution/exec_child.c:22:10
	movl	4(%rax), %edi
	.loc	2 22 4                          # src/execution/exec_child.c:22:4
	callq	close
.Ltmp5:
.LBB0_5:
	.loc	2 23 9 is_stmt 1                # src/execution/exec_child.c:23:9
	movq	-8(%rbp), %rax
	.loc	2 23 14 is_stmt 0               # src/execution/exec_child.c:23:14
	movq	40(%rax), %rax
	.loc	2 23 20                         # src/execution/exec_child.c:23:20
	movq	8(%rax), %rax
	.loc	2 23 9                          # src/execution/exec_child.c:23:9
	movl	(%rax), %edi
	.loc	2 23 3                          # src/execution/exec_child.c:23:3
	callq	close
.Ltmp6:
.LBB0_6:
	.loc	2 25 1 is_stmt 1                # src/execution/exec_child.c:25:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end0:
	.size	manage_write_pipe, .Lfunc_end0-manage_write_pipe
	.cfi_endproc
                                        # -- End function
	.globl	manage_read_pipe                # -- Begin function manage_read_pipe
	.p2align	4, 0x90
	.type	manage_read_pipe,@function
manage_read_pipe:                       # @manage_read_pipe
.Lfunc_begin1:
	.loc	2 28 0                          # src/execution/exec_child.c:28:0
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
	.loc	2 29 6 prologue_end             # src/execution/exec_child.c:29:6
	movq	-8(%rbp), %rax
	.loc	2 29 11 is_stmt 0               # src/execution/exec_child.c:29:11
	movq	40(%rax), %rax
	.loc	2 29 6                          # src/execution/exec_child.c:29:6
	cmpq	$0, 16(%rax)
.Ltmp9:
	.loc	2 29 6                          # src/execution/exec_child.c:29:6
	je	.LBB1_6
# %bb.1:
.Ltmp10:
	.loc	2 31 8 is_stmt 1                # src/execution/exec_child.c:31:8
	movq	-8(%rbp), %rax
	cmpq	$0, 48(%rax)
	.loc	2 31 19 is_stmt 0               # src/execution/exec_child.c:31:19
	je	.LBB1_3
# %bb.2:
	.loc	2 31 23                         # src/execution/exec_child.c:31:23
	movq	-8(%rbp), %rax
	.loc	2 31 28                         # src/execution/exec_child.c:31:28
	movq	48(%rax), %rax
	.loc	2 31 23                         # src/execution/exec_child.c:31:23
	cmpq	$0, 8(%rax)
.Ltmp11:
	.loc	2 31 7                          # src/execution/exec_child.c:31:7
	jne	.LBB1_4
.LBB1_3:
.Ltmp12:
	.loc	2 32 9 is_stmt 1                # src/execution/exec_child.c:32:9
	movq	-8(%rbp), %rax
	.loc	2 32 14 is_stmt 0               # src/execution/exec_child.c:32:14
	movq	40(%rax), %rax
	.loc	2 32 20                         # src/execution/exec_child.c:32:20
	movq	16(%rax), %rax
	.loc	2 32 9                          # src/execution/exec_child.c:32:9
	movl	(%rax), %edi
	.loc	2 32 4                          # src/execution/exec_child.c:32:4
	xorl	%esi, %esi
	callq	dup2
	jmp	.LBB1_5
.LBB1_4:
	.loc	2 34 10 is_stmt 1               # src/execution/exec_child.c:34:10
	movq	-8(%rbp), %rax
	.loc	2 34 15 is_stmt 0               # src/execution/exec_child.c:34:15
	movq	40(%rax), %rax
	.loc	2 34 21                         # src/execution/exec_child.c:34:21
	movq	16(%rax), %rax
	.loc	2 34 10                         # src/execution/exec_child.c:34:10
	movl	(%rax), %edi
	.loc	2 34 4                          # src/execution/exec_child.c:34:4
	callq	close
.Ltmp13:
.LBB1_5:
	.loc	2 35 9 is_stmt 1                # src/execution/exec_child.c:35:9
	movq	-8(%rbp), %rax
	.loc	2 35 14 is_stmt 0               # src/execution/exec_child.c:35:14
	movq	40(%rax), %rax
	.loc	2 35 20                         # src/execution/exec_child.c:35:20
	movq	16(%rax), %rax
	.loc	2 35 9                          # src/execution/exec_child.c:35:9
	movl	4(%rax), %edi
	.loc	2 35 3                          # src/execution/exec_child.c:35:3
	callq	close
.Ltmp14:
.LBB1_6:
	.loc	2 37 1 is_stmt 1                # src/execution/exec_child.c:37:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end1:
	.size	manage_read_pipe, .Lfunc_end1-manage_read_pipe
	.cfi_endproc
                                        # -- End function
	.globl	manage_child_pipe               # -- Begin function manage_child_pipe
	.p2align	4, 0x90
	.type	manage_child_pipe,@function
manage_child_pipe:                      # @manage_child_pipe
.Lfunc_begin2:
	.loc	2 40 0                          # src/execution/exec_child.c:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp16:
	.loc	2 41 20 prologue_end            # src/execution/exec_child.c:41:20
	movq	-8(%rbp), %rdi
	.loc	2 41 2 is_stmt 0                # src/execution/exec_child.c:41:2
	callq	manage_write_pipe
	.loc	2 42 19 is_stmt 1               # src/execution/exec_child.c:42:19
	movq	-8(%rbp), %rdi
	.loc	2 42 2 is_stmt 0                # src/execution/exec_child.c:42:2
	callq	manage_read_pipe
.Ltmp17:
	.loc	2 43 6 is_stmt 1                # src/execution/exec_child.c:43:6
	movq	-8(%rbp), %rax
	.loc	2 43 11 is_stmt 0               # src/execution/exec_child.c:43:11
	movq	40(%rax), %rax
	.loc	2 43 6                          # src/execution/exec_child.c:43:6
	cmpq	$0, (%rax)
.Ltmp18:
	.loc	2 43 6                          # src/execution/exec_child.c:43:6
	je	.LBB2_2
# %bb.1:
.Ltmp19:
	.loc	2 45 9 is_stmt 1                # src/execution/exec_child.c:45:9
	movq	-8(%rbp), %rax
	.loc	2 45 14 is_stmt 0               # src/execution/exec_child.c:45:14
	movq	40(%rax), %rax
	.loc	2 45 20                         # src/execution/exec_child.c:45:20
	movq	(%rax), %rax
	.loc	2 45 9                          # src/execution/exec_child.c:45:9
	movl	(%rax), %edi
	.loc	2 45 3                          # src/execution/exec_child.c:45:3
	callq	close
	.loc	2 46 9 is_stmt 1                # src/execution/exec_child.c:46:9
	movq	-8(%rbp), %rax
	.loc	2 46 14 is_stmt 0               # src/execution/exec_child.c:46:14
	movq	40(%rax), %rax
	.loc	2 46 20                         # src/execution/exec_child.c:46:20
	movq	(%rax), %rax
	.loc	2 46 9                          # src/execution/exec_child.c:46:9
	movl	4(%rax), %edi
	.loc	2 46 3                          # src/execution/exec_child.c:46:3
	callq	close
.Ltmp20:
.LBB2_2:
	.loc	2 48 2 is_stmt 1                # src/execution/exec_child.c:48:2
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	manage_child_pipe, .Lfunc_end2-manage_child_pipe
	.cfi_endproc
                                        # -- End function
	.globl	child_job                       # -- Begin function child_job
	.p2align	4, 0x90
	.type	child_job,@function
child_job:                              # @child_job
.Lfunc_begin3:
	.loc	2 52 0                          # src/execution/exec_child.c:52:0
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
.Ltmp22:
	.loc	2 53 6 prologue_end             # src/execution/exec_child.c:53:6
	movq	-16(%rbp), %rax
	cmpq	$0, 48(%rax)
.Ltmp23:
	.loc	2 53 6 is_stmt 0                # src/execution/exec_child.c:53:6
	je	.LBB3_2
# %bb.1:
.Ltmp24:
	.loc	2 55 28 is_stmt 1               # src/execution/exec_child.c:55:28
	movq	-16(%rbp), %rdi
	.loc	2 55 3 is_stmt 0                # src/execution/exec_child.c:55:3
	callq	open_command_redirection
.Ltmp25:
.LBB3_2:
	.loc	2 57 6 is_stmt 1                # src/execution/exec_child.c:57:6
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
.Ltmp26:
	.loc	2 57 6 is_stmt 0                # src/execution/exec_child.c:57:6
	je	.LBB3_4
# %bb.3:
.Ltmp27:
	.loc	2 59 21 is_stmt 1               # src/execution/exec_child.c:59:21
	movq	-16(%rbp), %rdi
	.loc	2 59 3 is_stmt 0                # src/execution/exec_child.c:59:3
	callq	manage_child_pipe
.Ltmp28:
.LBB3_4:
	.loc	2 61 13 is_stmt 1               # src/execution/exec_child.c:61:13
	movq	-16(%rbp), %rax
	.loc	2 61 18 is_stmt 0               # src/execution/exec_child.c:61:18
	movq	24(%rax), %rdi
	.loc	2 61 24                         # src/execution/exec_child.c:61:24
	movq	-16(%rbp), %rax
	.loc	2 61 29                         # src/execution/exec_child.c:61:29
	movq	88(%rax), %rsi
	.loc	2 61 40                         # src/execution/exec_child.c:61:40
	movq	-24(%rbp), %rdx
	.loc	2 61 6                          # src/execution/exec_child.c:61:6
	callq	execve
	.loc	2 61 46                         # src/execution/exec_child.c:61:46
	cmpl	$0, %eax
.Ltmp29:
	.loc	2 61 6                          # src/execution/exec_child.c:61:6
	je	.LBB3_6
# %bb.5:
.Ltmp30:
	.loc	2 62 3 is_stmt 1                # src/execution/exec_child.c:62:3
	movabsq	$.L.str, %rdi
	callq	perror
.Ltmp31:
.LBB3_6:
	.loc	2 63 30                         # src/execution/exec_child.c:63:30
	callq	__errno_location
	movl	(%rax), %eax
	movb	%al, %cl
	.loc	2 63 4 is_stmt 0                # src/execution/exec_child.c:63:4
	movq	-8(%rbp), %rax
	.loc	2 63 3                          # src/execution/exec_child.c:63:3
	movq	(%rax), %rax
	.loc	2 63 28                         # src/execution/exec_child.c:63:28
	movb	%cl, 44(%rax)
	.loc	2 64 4 is_stmt 1                # src/execution/exec_child.c:64:4
	movq	-8(%rbp), %rax
	.loc	2 64 3 is_stmt 0                # src/execution/exec_child.c:64:3
	movq	(%rax), %rax
	.loc	2 64 22                         # src/execution/exec_child.c:64:22
	movl	$1, 8(%rax)
	.loc	2 65 1 is_stmt 1                # src/execution/exec_child.c:65:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp32:
.Lfunc_end3:
	.size	child_job, .Lfunc_end3-child_job
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
	.byte	1                               # Abbrev [1] 0xb:0xb42 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x7a:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0x8f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x9e:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string11                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xb3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0xc2:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	6                               # Abbrev [6] 0xd7:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string55                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	973                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xe5:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	258                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0xf3:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string186                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.long	963                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x102:0x5 DW_TAG_pointer_type
	.long	263                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x107:0xb DW_TAG_typedef
	.long	274                             # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x112:0xc9 DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x11a:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x126:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x132:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x13e:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x14a:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x156:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x162:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	494                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x16e:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	548                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x17a:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	614                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x186:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	687                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x192:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	843                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x19e:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1aa:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	909                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1b6:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	963                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1c2:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	968                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x1ce:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	968                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1db:0x7 DW_TAG_base_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1e2:0x5 DW_TAG_pointer_type
	.long	487                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x1e7:0x7 DW_TAG_base_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x1ee:0x5 DW_TAG_pointer_type
	.long	499                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1f3:0xb DW_TAG_typedef
	.long	510                             # DW_AT_type
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x1fe:0x21 DW_TAG_structure_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x206:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x212:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	543                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x21f:0x5 DW_TAG_pointer_type
	.long	510                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x224:0x5 DW_TAG_pointer_type
	.long	553                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x229:0xb DW_TAG_typedef
	.long	564                             # DW_AT_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x234:0x2d DW_TAG_structure_type
	.long	.Linfo_string31                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x23c:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	609                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x248:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	609                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x254:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	609                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x261:0x5 DW_TAG_pointer_type
	.long	475                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x266:0x5 DW_TAG_pointer_type
	.long	619                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x26b:0xb DW_TAG_typedef
	.long	630                             # DW_AT_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x276:0x39 DW_TAG_structure_type
	.long	.Linfo_string43                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x27e:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x28a:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x296:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	687                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2a2:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	765                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2af:0x5 DW_TAG_pointer_type
	.long	692                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x2b4:0xb DW_TAG_typedef
	.long	703                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x2bf:0x39 DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x2c7:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2d3:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2df:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x2eb:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	760                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x2f8:0x5 DW_TAG_pointer_type
	.long	703                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x2fd:0x5 DW_TAG_pointer_type
	.long	770                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x302:0xb DW_TAG_typedef
	.long	781                             # DW_AT_type
	.long	.Linfo_string42                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x30d:0x39 DW_TAG_structure_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x315:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x321:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x32d:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x339:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	838                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x346:0x5 DW_TAG_pointer_type
	.long	781                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x34b:0x5 DW_TAG_pointer_type
	.long	848                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x350:0xb DW_TAG_typedef
	.long	859                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x35b:0x2d DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x363:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x36f:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x37b:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	904                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x388:0x5 DW_TAG_pointer_type
	.long	859                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x38d:0x5 DW_TAG_pointer_type
	.long	914                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x392:0xb DW_TAG_typedef
	.long	925                             # DW_AT_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x39d:0x21 DW_TAG_structure_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3a5:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3b1:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	958                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x3be:0x5 DW_TAG_pointer_type
	.long	925                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3c3:0x5 DW_TAG_pointer_type
	.long	482                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3c8:0x5 DW_TAG_pointer_type
	.long	274                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3cd:0x5 DW_TAG_pointer_type
	.long	978                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x3d2:0x5 DW_TAG_pointer_type
	.long	983                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3d7:0xb DW_TAG_typedef
	.long	994                             # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x3e2:0xbe DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x3eb:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	1184                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x3f7:0xc DW_TAG_member
	.long	.Linfo_string59                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x403:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x40f:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	963                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x41b:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x427:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x433:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1205                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x43f:0xc DW_TAG_member
	.long	.Linfo_string65                 # DW_AT_name
	.long	963                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x44b:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	1212                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x457:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	843                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x463:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	1278                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x46f:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	1441                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x47b:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1555                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x487:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2388                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x493:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	2737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4a0:0x5 DW_TAG_pointer_type
	.long	1189                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4a5:0xb DW_TAG_typedef
	.long	1200                            # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x4b0:0x5 DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	4                               # Abbrev [4] 0x4b5:0x7 DW_TAG_base_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x4bc:0x5 DW_TAG_pointer_type
	.long	1217                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x4c1:0xb DW_TAG_typedef
	.long	1228                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x4cc:0x2d DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x4d4:0xc DW_TAG_member
	.long	.Linfo_string19                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4e0:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x4ec:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	1273                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x4f9:0x5 DW_TAG_pointer_type
	.long	1228                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x4fe:0x5 DW_TAG_pointer_type
	.long	1283                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x503:0xb DW_TAG_typedef
	.long	1294                            # DW_AT_type
	.long	.Linfo_string78                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x50e:0x2d DW_TAG_structure_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x516:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1339                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x522:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x52e:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1436                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x53b:0x5 DW_TAG_pointer_type
	.long	1344                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x540:0xb DW_TAG_typedef
	.long	1355                            # DW_AT_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x54b:0x51 DW_TAG_structure_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x553:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x55f:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x56b:0xc DW_TAG_member
	.long	.Linfo_string72                 # DW_AT_name
	.long	609                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x577:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x583:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	968                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x58f:0xc DW_TAG_member
	.long	.Linfo_string74                 # DW_AT_name
	.long	968                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x59c:0x5 DW_TAG_pointer_type
	.long	1294                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5a1:0x5 DW_TAG_pointer_type
	.long	1446                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x5a6:0xb DW_TAG_typedef
	.long	1457                            # DW_AT_type
	.long	.Linfo_string84                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0x5b1:0x5d DW_TAG_structure_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x5b9:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5c5:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5d1:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5dd:0xc DW_TAG_member
	.long	.Linfo_string82                 # DW_AT_name
	.long	482                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5e9:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	909                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x5f5:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1550                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x601:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	1550                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x60e:0x5 DW_TAG_pointer_type
	.long	1457                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x613:0x56 DW_TAG_structure_type
	.long	.Linfo_string141                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1575                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x627:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x62b:0xc DW_TAG_member
	.long	.Linfo_string87                 # DW_AT_name
	.long	1641                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x637:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	1664                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x644:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2335                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x650:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x65c:0xc DW_TAG_member
	.long	.Linfo_string140                # DW_AT_name
	.long	2382                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x669:0xb DW_TAG_typedef
	.long	1652                            # DW_AT_type
	.long	.Linfo_string88                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x674:0x5 DW_TAG_pointer_type
	.long	1657                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x679:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x67a:0x5 DW_TAG_formal_parameter
	.long	475                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x680:0x5 DW_TAG_pointer_type
	.long	1669                            # DW_AT_type
	.byte	14                              # Abbrev [14] 0x685:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	15                              # Abbrev [15] 0x686:0x5 DW_TAG_formal_parameter
	.long	475                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x68b:0x5 DW_TAG_formal_parameter
	.long	1686                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x690:0x5 DW_TAG_formal_parameter
	.long	2298                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x696:0x5 DW_TAG_pointer_type
	.long	1691                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x69b:0xb DW_TAG_typedef
	.long	1702                            # DW_AT_type
	.long	.Linfo_string134                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x6a6:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6aa:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6b6:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6c2:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6ce:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6da:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	1766                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6e6:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x6ea:0xc DW_TAG_member
	.long	.Linfo_string95                 # DW_AT_name
	.long	2213                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x6f6:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	1794                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x702:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x706:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2232                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x712:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x71f:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	1835                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x72b:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x72f:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x73b:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x747:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2254                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x754:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	1888                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x760:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x764:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2232                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x770:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x77c:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	2254                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x789:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	1941                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x795:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x799:0xc DW_TAG_member
	.long	.Linfo_string98                 # DW_AT_name
	.long	2232                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7a5:0xc DW_TAG_member
	.long	.Linfo_string100                # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7b1:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7bd:0xc DW_TAG_member
	.long	.Linfo_string113                # DW_AT_name
	.long	2299                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7c9:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2299                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7d6:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	2018                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x7e2:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7e6:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2298                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7f2:0xc DW_TAG_member
	.long	.Linfo_string119                # DW_AT_name
	.long	2317                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x7fe:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2058                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x80a:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x80e:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	2074                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x81a:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x81e:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	2298                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x82a:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2298                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x837:0xc DW_TAG_member
	.long	.Linfo_string125                # DW_AT_name
	.long	2324                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x845:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2129                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x851:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x855:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	2310                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x861:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x86e:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	2170                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x87a:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x87e:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	2298                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x88a:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x896:0xc DW_TAG_member
	.long	.Linfo_string133                # DW_AT_name
	.long	79                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x8a5:0xc DW_TAG_array_type
	.long	475                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x8aa:0x6 DW_TAG_subrange_type
	.long	2225                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x8b1:0x7 DW_TAG_base_type
	.long	.Linfo_string96                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	8                               # Abbrev [8] 0x8b8:0xb DW_TAG_typedef
	.long	475                             # DW_AT_type
	.long	.Linfo_string99                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8c3:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string101                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x8ce:0xb DW_TAG_typedef
	.long	2265                            # DW_AT_type
	.long	.Linfo_string109                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0x8d9:0x21 DW_TAG_union_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x8e1:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x8ed:0xc DW_TAG_member
	.long	.Linfo_string107                # DW_AT_name
	.long	2298                            # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x8fa:0x1 DW_TAG_pointer_type
	.byte	8                               # Abbrev [8] 0x8fb:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string115                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0x906:0x7 DW_TAG_base_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0x90d:0x7 DW_TAG_base_type
	.long	.Linfo_string120                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x914:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string126                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x91f:0xb DW_TAG_typedef
	.long	2346                            # DW_AT_type
	.long	.Linfo_string138                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	16                              # Abbrev [16] 0x92a:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x92e:0xc DW_TAG_member
	.long	.Linfo_string136                # DW_AT_name
	.long	2363                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0x93b:0xc DW_TAG_array_type
	.long	2375                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x940:0x6 DW_TAG_subrange_type
	.long	2225                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x947:0x7 DW_TAG_base_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x94e:0x5 DW_TAG_pointer_type
	.long	2387                            # DW_AT_type
	.byte	22                              # Abbrev [22] 0x953:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	7                               # Abbrev [7] 0x954:0x5 DW_TAG_pointer_type
	.long	2393                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0x959:0xbd DW_TAG_structure_type
	.long	.Linfo_string170                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x961:0xc DW_TAG_member
	.long	.Linfo_string143                # DW_AT_name
	.long	2582                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x96d:0xc DW_TAG_member
	.long	.Linfo_string145                # DW_AT_name
	.long	2593                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x979:0xc DW_TAG_member
	.long	.Linfo_string147                # DW_AT_name
	.long	2604                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x985:0xc DW_TAG_member
	.long	.Linfo_string149                # DW_AT_name
	.long	2615                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x991:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2243                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x99d:0xc DW_TAG_member
	.long	.Linfo_string152                # DW_AT_name
	.long	2626                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9a9:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	475                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9b5:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2582                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9c1:0xc DW_TAG_member
	.long	.Linfo_string155                # DW_AT_name
	.long	2637                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9cd:0xc DW_TAG_member
	.long	.Linfo_string157                # DW_AT_name
	.long	2648                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9d9:0xc DW_TAG_member
	.long	.Linfo_string159                # DW_AT_name
	.long	2659                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9e5:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	2670                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9f1:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2670                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0x9fd:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	2670                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa09:0xc DW_TAG_member
	.long	.Linfo_string169                # DW_AT_name
	.long	2725                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa16:0xb DW_TAG_typedef
	.long	2375                            # DW_AT_type
	.long	.Linfo_string144                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa21:0xb DW_TAG_typedef
	.long	2375                            # DW_AT_type
	.long	.Linfo_string146                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa2c:0xb DW_TAG_typedef
	.long	2375                            # DW_AT_type
	.long	.Linfo_string148                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa37:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string150                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa42:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string153                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa4d:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string156                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa58:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string158                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa63:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string160                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	9                               # Abbrev [9] 0xa6e:0x21 DW_TAG_structure_type
	.long	.Linfo_string166                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xa76:0xc DW_TAG_member
	.long	.Linfo_string162                # DW_AT_name
	.long	2703                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xa82:0xc DW_TAG_member
	.long	.Linfo_string164                # DW_AT_name
	.long	2714                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xa8f:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string163                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xa9a:0xb DW_TAG_typedef
	.long	2310                            # DW_AT_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xaa5:0xc DW_TAG_array_type
	.long	2714                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xaaa:0x6 DW_TAG_subrange_type
	.long	2225                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0xab1:0x5 DW_TAG_pointer_type
	.long	2742                            # DW_AT_type
	.byte	9                               # Abbrev [9] 0xab6:0x69 DW_TAG_structure_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0xabe:0xc DW_TAG_member
	.long	.Linfo_string172                # DW_AT_name
	.long	2847                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaca:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	2847                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xad6:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	2847                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xae2:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	2847                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xaee:0xc DW_TAG_member
	.long	.Linfo_string177                # DW_AT_name
	.long	2858                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xafa:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	2869                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb06:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	2881                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	10                              # Abbrev [10] 0xb12:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	2881                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb1f:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string173                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0xb2a:0xb DW_TAG_typedef
	.long	1205                            # DW_AT_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	17                              # Abbrev [17] 0xb35:0xc DW_TAG_array_type
	.long	2858                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0xb3a:0x6 DW_TAG_subrange_type
	.long	2225                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0xb41:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/execution/exec_child.c"    # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=65
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=102
.Linfo_string4:
	.asciz	"run"                           # string offset=115
.Linfo_string5:
	.asciz	"stop"                          # string offset=119
.Linfo_string6:
	.asciz	"success"                       # string offset=124
.Linfo_string7:
	.asciz	"failure"                       # string offset=132
.Linfo_string8:
	.asciz	"e_state"                       # string offset=140
.Linfo_string9:
	.asciz	"manage_write_pipe"             # string offset=148
.Linfo_string10:
	.asciz	"manage_read_pipe"              # string offset=166
.Linfo_string11:
	.asciz	"manage_child_pipe"             # string offset=183
.Linfo_string12:
	.asciz	"child_job"                     # string offset=201
.Linfo_string13:
	.asciz	"cmd"                           # string offset=211
.Linfo_string14:
	.asciz	"id"                            # string offset=215
.Linfo_string15:
	.asciz	"int"                           # string offset=218
.Linfo_string16:
	.asciz	"pid"                           # string offset=222
.Linfo_string17:
	.asciz	"type"                          # string offset=226
.Linfo_string18:
	.asciz	"wstatus"                       # string offset=231
.Linfo_string19:
	.asciz	"name"                          # string offset=239
.Linfo_string20:
	.asciz	"char"                          # string offset=244
.Linfo_string21:
	.asciz	"path"                          # string offset=249
.Linfo_string22:
	.asciz	"arg"                           # string offset=254
.Linfo_string23:
	.asciz	"value"                         # string offset=258
.Linfo_string24:
	.asciz	"next"                          # string offset=264
.Linfo_string25:
	.asciz	"s_arg"                         # string offset=269
.Linfo_string26:
	.asciz	"t_arg"                         # string offset=275
.Linfo_string27:
	.asciz	"pipe"                          # string offset=281
.Linfo_string28:
	.asciz	"to_close"                      # string offset=286
.Linfo_string29:
	.asciz	"write"                         # string offset=295
.Linfo_string30:
	.asciz	"read"                          # string offset=301
.Linfo_string31:
	.asciz	"s_pipe"                        # string offset=306
.Linfo_string32:
	.asciz	"t_pipe"                        # string offset=313
.Linfo_string33:
	.asciz	"redir"                         # string offset=320
.Linfo_string34:
	.asciz	"in_fd"                         # string offset=326
.Linfo_string35:
	.asciz	"out_fd"                        # string offset=332
.Linfo_string36:
	.asciz	"infile"                        # string offset=339
.Linfo_string37:
	.asciz	"fd"                            # string offset=346
.Linfo_string38:
	.asciz	"s_infile"                      # string offset=349
.Linfo_string39:
	.asciz	"t_infile"                      # string offset=358
.Linfo_string40:
	.asciz	"outfile"                       # string offset=367
.Linfo_string41:
	.asciz	"s_outfile"                     # string offset=375
.Linfo_string42:
	.asciz	"t_outfile"                     # string offset=385
.Linfo_string43:
	.asciz	"s_redir"                       # string offset=395
.Linfo_string44:
	.asciz	"t_redir"                       # string offset=403
.Linfo_string45:
	.asciz	"assign"                        # string offset=411
.Linfo_string46:
	.asciz	"s_var"                         # string offset=418
.Linfo_string47:
	.asciz	"t_var"                         # string offset=424
.Linfo_string48:
	.asciz	"expansion"                     # string offset=430
.Linfo_string49:
	.asciz	"s_expan"                       # string offset=440
.Linfo_string50:
	.asciz	"t_expan"                       # string offset=448
.Linfo_string51:
	.asciz	"arg_array"                     # string offset=456
.Linfo_string52:
	.asciz	"prev"                          # string offset=466
.Linfo_string53:
	.asciz	"s_cmd"                         # string offset=471
.Linfo_string54:
	.asciz	"t_cmd"                         # string offset=477
.Linfo_string55:
	.asciz	"minishell"                     # string offset=483
.Linfo_string56:
	.asciz	"dir"                           # string offset=493
.Linfo_string57:
	.asciz	"__dirstream"                   # string offset=497
.Linfo_string58:
	.asciz	"DIR"                           # string offset=509
.Linfo_string59:
	.asciz	"state"                         # string offset=513
.Linfo_string60:
	.asciz	"input"                         # string offset=519
.Linfo_string61:
	.asciz	"prompt"                        # string offset=525
.Linfo_string62:
	.asciz	"operator_nbr"                  # string offset=532
.Linfo_string63:
	.asciz	"exit_status"                   # string offset=545
.Linfo_string64:
	.asciz	"unsigned char"                 # string offset=557
.Linfo_string65:
	.asciz	"env_array"                     # string offset=571
.Linfo_string66:
	.asciz	"env"                           # string offset=581
.Linfo_string67:
	.asciz	"s_env"                         # string offset=585
.Linfo_string68:
	.asciz	"t_env"                         # string offset=591
.Linfo_string69:
	.asciz	"local"                         # string offset=597
.Linfo_string70:
	.asciz	"syntax_tree"                   # string offset=603
.Linfo_string71:
	.asciz	"node"                          # string offset=615
.Linfo_string72:
	.asciz	"pipe_fd"                       # string offset=620
.Linfo_string73:
	.asciz	"left"                          # string offset=628
.Linfo_string74:
	.asciz	"right"                         # string offset=633
.Linfo_string75:
	.asciz	"s_ast_node"                    # string offset=639
.Linfo_string76:
	.asciz	"t_ast_node"                    # string offset=650
.Linfo_string77:
	.asciz	"s_ast"                         # string offset=661
.Linfo_string78:
	.asciz	"t_ast"                         # string offset=667
.Linfo_string79:
	.asciz	"token_stream"                  # string offset=673
.Linfo_string80:
	.asciz	"quote_nbr"                     # string offset=686
.Linfo_string81:
	.asciz	"length"                        # string offset=696
.Linfo_string82:
	.asciz	"lexeme"                        # string offset=703
.Linfo_string83:
	.asciz	"s_token"                       # string offset=710
.Linfo_string84:
	.asciz	"t_token"                       # string offset=718
.Linfo_string85:
	.asciz	"sighandler"                    # string offset=726
.Linfo_string86:
	.asciz	"__sigaction_handler"           # string offset=737
.Linfo_string87:
	.asciz	"sa_handler"                    # string offset=757
.Linfo_string88:
	.asciz	"__sighandler_t"                # string offset=768
.Linfo_string89:
	.asciz	"sa_sigaction"                  # string offset=783
.Linfo_string90:
	.asciz	"si_signo"                      # string offset=796
.Linfo_string91:
	.asciz	"si_errno"                      # string offset=805
.Linfo_string92:
	.asciz	"si_code"                       # string offset=814
.Linfo_string93:
	.asciz	"__pad0"                        # string offset=822
.Linfo_string94:
	.asciz	"_sifields"                     # string offset=829
.Linfo_string95:
	.asciz	"_pad"                          # string offset=839
.Linfo_string96:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=844
.Linfo_string97:
	.asciz	"_kill"                         # string offset=864
.Linfo_string98:
	.asciz	"si_pid"                        # string offset=870
.Linfo_string99:
	.asciz	"__pid_t"                       # string offset=877
.Linfo_string100:
	.asciz	"si_uid"                        # string offset=885
.Linfo_string101:
	.asciz	"__uid_t"                       # string offset=892
.Linfo_string102:
	.asciz	"_timer"                        # string offset=900
.Linfo_string103:
	.asciz	"si_tid"                        # string offset=907
.Linfo_string104:
	.asciz	"si_overrun"                    # string offset=914
.Linfo_string105:
	.asciz	"si_sigval"                     # string offset=925
.Linfo_string106:
	.asciz	"sival_int"                     # string offset=935
.Linfo_string107:
	.asciz	"sival_ptr"                     # string offset=945
.Linfo_string108:
	.asciz	"sigval"                        # string offset=955
.Linfo_string109:
	.asciz	"__sigval_t"                    # string offset=962
.Linfo_string110:
	.asciz	"_rt"                           # string offset=973
.Linfo_string111:
	.asciz	"_sigchld"                      # string offset=977
.Linfo_string112:
	.asciz	"si_status"                     # string offset=986
.Linfo_string113:
	.asciz	"si_utime"                      # string offset=996
.Linfo_string114:
	.asciz	"long int"                      # string offset=1005
.Linfo_string115:
	.asciz	"__clock_t"                     # string offset=1014
.Linfo_string116:
	.asciz	"si_stime"                      # string offset=1024
.Linfo_string117:
	.asciz	"_sigfault"                     # string offset=1033
.Linfo_string118:
	.asciz	"si_addr"                       # string offset=1043
.Linfo_string119:
	.asciz	"si_addr_lsb"                   # string offset=1051
.Linfo_string120:
	.asciz	"short"                         # string offset=1063
.Linfo_string121:
	.asciz	"_bounds"                       # string offset=1069
.Linfo_string122:
	.asciz	"_addr_bnd"                     # string offset=1077
.Linfo_string123:
	.asciz	"_lower"                        # string offset=1087
.Linfo_string124:
	.asciz	"_upper"                        # string offset=1094
.Linfo_string125:
	.asciz	"_pkey"                         # string offset=1101
.Linfo_string126:
	.asciz	"__uint32_t"                    # string offset=1107
.Linfo_string127:
	.asciz	"_sigpoll"                      # string offset=1118
.Linfo_string128:
	.asciz	"si_band"                       # string offset=1127
.Linfo_string129:
	.asciz	"si_fd"                         # string offset=1135
.Linfo_string130:
	.asciz	"_sigsys"                       # string offset=1141
.Linfo_string131:
	.asciz	"_call_addr"                    # string offset=1149
.Linfo_string132:
	.asciz	"_syscall"                      # string offset=1160
.Linfo_string133:
	.asciz	"_arch"                         # string offset=1169
.Linfo_string134:
	.asciz	"siginfo_t"                     # string offset=1175
.Linfo_string135:
	.asciz	"sa_mask"                       # string offset=1185
.Linfo_string136:
	.asciz	"__val"                         # string offset=1193
.Linfo_string137:
	.asciz	"long unsigned int"             # string offset=1199
.Linfo_string138:
	.asciz	"__sigset_t"                    # string offset=1217
.Linfo_string139:
	.asciz	"sa_flags"                      # string offset=1228
.Linfo_string140:
	.asciz	"sa_restorer"                   # string offset=1237
.Linfo_string141:
	.asciz	"sigaction"                     # string offset=1249
.Linfo_string142:
	.asciz	"statbuf"                       # string offset=1259
.Linfo_string143:
	.asciz	"st_dev"                        # string offset=1267
.Linfo_string144:
	.asciz	"__dev_t"                       # string offset=1274
.Linfo_string145:
	.asciz	"st_ino"                        # string offset=1282
.Linfo_string146:
	.asciz	"__ino_t"                       # string offset=1289
.Linfo_string147:
	.asciz	"st_nlink"                      # string offset=1297
.Linfo_string148:
	.asciz	"__nlink_t"                     # string offset=1306
.Linfo_string149:
	.asciz	"st_mode"                       # string offset=1316
.Linfo_string150:
	.asciz	"__mode_t"                      # string offset=1324
.Linfo_string151:
	.asciz	"st_uid"                        # string offset=1333
.Linfo_string152:
	.asciz	"st_gid"                        # string offset=1340
.Linfo_string153:
	.asciz	"__gid_t"                       # string offset=1347
.Linfo_string154:
	.asciz	"st_rdev"                       # string offset=1355
.Linfo_string155:
	.asciz	"st_size"                       # string offset=1363
.Linfo_string156:
	.asciz	"__off_t"                       # string offset=1371
.Linfo_string157:
	.asciz	"st_blksize"                    # string offset=1379
.Linfo_string158:
	.asciz	"__blksize_t"                   # string offset=1390
.Linfo_string159:
	.asciz	"st_blocks"                     # string offset=1402
.Linfo_string160:
	.asciz	"__blkcnt_t"                    # string offset=1412
.Linfo_string161:
	.asciz	"st_atim"                       # string offset=1423
.Linfo_string162:
	.asciz	"tv_sec"                        # string offset=1431
.Linfo_string163:
	.asciz	"__time_t"                      # string offset=1438
.Linfo_string164:
	.asciz	"tv_nsec"                       # string offset=1447
.Linfo_string165:
	.asciz	"__syscall_slong_t"             # string offset=1455
.Linfo_string166:
	.asciz	"timespec"                      # string offset=1473
.Linfo_string167:
	.asciz	"st_mtim"                       # string offset=1482
.Linfo_string168:
	.asciz	"st_ctim"                       # string offset=1490
.Linfo_string169:
	.asciz	"__glibc_reserved"              # string offset=1498
.Linfo_string170:
	.asciz	"stat"                          # string offset=1515
.Linfo_string171:
	.asciz	"term"                          # string offset=1520
.Linfo_string172:
	.asciz	"c_iflag"                       # string offset=1525
.Linfo_string173:
	.asciz	"tcflag_t"                      # string offset=1533
.Linfo_string174:
	.asciz	"c_oflag"                       # string offset=1542
.Linfo_string175:
	.asciz	"c_cflag"                       # string offset=1550
.Linfo_string176:
	.asciz	"c_lflag"                       # string offset=1558
.Linfo_string177:
	.asciz	"c_line"                        # string offset=1566
.Linfo_string178:
	.asciz	"cc_t"                          # string offset=1573
.Linfo_string179:
	.asciz	"c_cc"                          # string offset=1578
.Linfo_string180:
	.asciz	"c_ispeed"                      # string offset=1583
.Linfo_string181:
	.asciz	"speed_t"                       # string offset=1592
.Linfo_string182:
	.asciz	"c_ospeed"                      # string offset=1600
.Linfo_string183:
	.asciz	"termios"                       # string offset=1609
.Linfo_string184:
	.asciz	"s_minishell"                   # string offset=1617
.Linfo_string185:
	.asciz	"t_minishell"                   # string offset=1629
.Linfo_string186:
	.asciz	"envp"                          # string offset=1641
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym manage_write_pipe
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym manage_read_pipe
	.addrsig_sym manage_child_pipe
	.addrsig_sym open_command_redirection
	.addrsig_sym execve
	.addrsig_sym perror
	.addrsig_sym __errno_location
	.section	.debug_line,"",@progbits
.Lline_table_start0:
