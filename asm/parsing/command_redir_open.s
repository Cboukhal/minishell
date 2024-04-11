	.text
	.file	"command_redir_open.c"
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/../../include/minishell.h"
	.globl	open_command_infile             # -- Begin function open_command_infile
	.p2align	4, 0x90
	.type	open_command_infile,@function
open_command_infile:                    # @open_command_infile
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/cboukhal/42/minishell" "src/parsing/command_redir_open.c"
	.loc	2 16 0                          # src/parsing/command_redir_open.c:16:0
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
	.loc	2 20 8 prologue_end             # src/parsing/command_redir_open.c:20:8
	movl	$-1, -12(%rbp)
	.loc	2 21 10                         # src/parsing/command_redir_open.c:21:10
	movq	-8(%rbp), %rax
	.loc	2 21 15 is_stmt 0               # src/parsing/command_redir_open.c:21:15
	movq	48(%rax), %rax
	.loc	2 21 22                         # src/parsing/command_redir_open.c:21:22
	movq	8(%rax), %rax
	.loc	2 21 8                          # src/parsing/command_redir_open.c:21:8
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 22 2 is_stmt 1                # src/parsing/command_redir_open.c:22:2
	cmpq	$0, -24(%rbp)
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	2 24 7                          # src/parsing/command_redir_open.c:24:7
	movq	-24(%rbp), %rax
	.loc	2 24 19 is_stmt 0               # src/parsing/command_redir_open.c:24:19
	cmpq	$0, 16(%rax)
.Ltmp2:
	.loc	2 24 7                          # src/parsing/command_redir_open.c:24:7
	jne	.LBB0_4
# %bb.3:
.Ltmp3:
	.loc	2 25 4 is_stmt 1                # src/parsing/command_redir_open.c:25:4
	jmp	.LBB0_5
.Ltmp4:
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	2 26 11                         # src/parsing/command_redir_open.c:26:11
	movq	-24(%rbp), %rax
	.loc	2 26 18 is_stmt 0               # src/parsing/command_redir_open.c:26:18
	movq	16(%rax), %rax
	.loc	2 26 9                          # src/parsing/command_redir_open.c:26:9
	movq	%rax, -24(%rbp)
.Ltmp5:
	.loc	2 22 2 is_stmt 1                # src/parsing/command_redir_open.c:22:2
	jmp	.LBB0_1
.LBB0_5:
.Ltmp6:
	.loc	2 28 6                          # src/parsing/command_redir_open.c:28:6
	movq	-24(%rbp), %rax
	.loc	2 28 18 is_stmt 0               # src/parsing/command_redir_open.c:28:18
	cmpl	$9, 4(%rax)
.Ltmp7:
	.loc	2 28 6                          # src/parsing/command_redir_open.c:28:6
	jne	.LBB0_7
# %bb.6:
.Ltmp8:
	.loc	2 29 11 is_stmt 1               # src/parsing/command_redir_open.c:29:11
	movabsq	$.L.str, %rdi
	xorl	%esi, %esi
	movb	$0, %al
	callq	open
	.loc	2 29 9 is_stmt 0                # src/parsing/command_redir_open.c:29:9
	movl	%eax, -12(%rbp)
	.loc	2 29 3                          # src/parsing/command_redir_open.c:29:3
	jmp	.LBB0_8
.LBB0_7:
	.loc	2 31 16 is_stmt 1               # src/parsing/command_redir_open.c:31:16
	movq	-24(%rbp), %rax
	.loc	2 31 23 is_stmt 0               # src/parsing/command_redir_open.c:31:23
	movq	8(%rax), %rdi
	.loc	2 31 11                         # src/parsing/command_redir_open.c:31:11
	xorl	%esi, %esi
	movb	$0, %al
	callq	open
	.loc	2 31 9                          # src/parsing/command_redir_open.c:31:9
	movl	%eax, -12(%rbp)
.Ltmp9:
.LBB0_8:
	.loc	2 32 10 is_stmt 1               # src/parsing/command_redir_open.c:32:10
	movl	-12(%rbp), %eax
	.loc	2 32 2 is_stmt 0                # src/parsing/command_redir_open.c:32:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp10:
.Lfunc_end0:
	.size	open_command_infile, .Lfunc_end0-open_command_infile
	.cfi_endproc
                                        # -- End function
	.globl	open_command_outfile            # -- Begin function open_command_outfile
	.p2align	4, 0x90
	.type	open_command_outfile,@function
open_command_outfile:                   # @open_command_outfile
.Lfunc_begin1:
	.loc	2 36 0 is_stmt 1                # src/parsing/command_redir_open.c:36:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp11:
	.loc	2 40 9 prologue_end             # src/parsing/command_redir_open.c:40:9
	movl	$-1, -12(%rbp)
	.loc	2 41 10                         # src/parsing/command_redir_open.c:41:10
	movq	-8(%rbp), %rax
	.loc	2 41 15 is_stmt 0               # src/parsing/command_redir_open.c:41:15
	movq	48(%rax), %rax
	.loc	2 41 22                         # src/parsing/command_redir_open.c:41:22
	movq	16(%rax), %rax
	.loc	2 41 8                          # src/parsing/command_redir_open.c:41:8
	movq	%rax, -24(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 42 2 is_stmt 1                # src/parsing/command_redir_open.c:42:2
	cmpq	$0, -24(%rbp)
	je	.LBB1_11
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp12:
	.loc	2 44 7                          # src/parsing/command_redir_open.c:44:7
	movq	-24(%rbp), %rax
	.loc	2 44 19 is_stmt 0               # src/parsing/command_redir_open.c:44:19
	cmpl	$10, 4(%rax)
.Ltmp13:
	.loc	2 44 7                          # src/parsing/command_redir_open.c:44:7
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp14:
	.loc	2 45 18 is_stmt 1               # src/parsing/command_redir_open.c:45:18
	movq	-24(%rbp), %rax
	.loc	2 45 25 is_stmt 0               # src/parsing/command_redir_open.c:45:25
	movq	8(%rax), %rdi
	.loc	2 45 13                         # src/parsing/command_redir_open.c:45:13
	movl	$577, %esi                      # imm = 0x241
	movl	$420, %edx                      # imm = 0x1A4
	movb	$0, %al
	callq	open
	.loc	2 45 11                         # src/parsing/command_redir_open.c:45:11
	movl	%eax, -12(%rbp)
	.loc	2 45 4                          # src/parsing/command_redir_open.c:45:4
	jmp	.LBB1_7
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp15:
	.loc	2 47 12 is_stmt 1               # src/parsing/command_redir_open.c:47:12
	movq	-24(%rbp), %rax
	.loc	2 47 24 is_stmt 0               # src/parsing/command_redir_open.c:47:24
	cmpl	$11, 4(%rax)
.Ltmp16:
	.loc	2 47 12                         # src/parsing/command_redir_open.c:47:12
	jne	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp17:
	.loc	2 48 18 is_stmt 1               # src/parsing/command_redir_open.c:48:18
	movq	-24(%rbp), %rax
	.loc	2 48 25 is_stmt 0               # src/parsing/command_redir_open.c:48:25
	movq	8(%rax), %rdi
	.loc	2 48 13                         # src/parsing/command_redir_open.c:48:13
	movl	$1089, %esi                     # imm = 0x441
	movl	$420, %edx                      # imm = 0x1A4
	movb	$0, %al
	callq	open
	.loc	2 48 11                         # src/parsing/command_redir_open.c:48:11
	movl	%eax, -12(%rbp)
.Ltmp18:
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 0 11                          # src/parsing/command_redir_open.c:0:11
	jmp	.LBB1_7
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp19:
	.loc	2 50 7 is_stmt 1                # src/parsing/command_redir_open.c:50:7
	movq	-24(%rbp), %rax
	.loc	2 50 19 is_stmt 0               # src/parsing/command_redir_open.c:50:19
	cmpq	$0, 16(%rax)
.Ltmp20:
	.loc	2 50 7                          # src/parsing/command_redir_open.c:50:7
	jne	.LBB1_9
# %bb.8:
.Ltmp21:
	.loc	2 51 4 is_stmt 1                # src/parsing/command_redir_open.c:51:4
	jmp	.LBB1_11
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 53 10                         # src/parsing/command_redir_open.c:53:10
	movq	-24(%rbp), %rax
	.loc	2 53 17 is_stmt 0               # src/parsing/command_redir_open.c:53:17
	movl	(%rax), %edi
	.loc	2 53 4                          # src/parsing/command_redir_open.c:53:4
	callq	close
.Ltmp22:
# %bb.10:                               #   in Loop: Header=BB1_1 Depth=1
	.loc	2 54 11 is_stmt 1               # src/parsing/command_redir_open.c:54:11
	movq	-24(%rbp), %rax
	.loc	2 54 18 is_stmt 0               # src/parsing/command_redir_open.c:54:18
	movq	16(%rax), %rax
	.loc	2 54 9                          # src/parsing/command_redir_open.c:54:9
	movq	%rax, -24(%rbp)
.Ltmp23:
	.loc	2 42 2 is_stmt 1                # src/parsing/command_redir_open.c:42:2
	jmp	.LBB1_1
.LBB1_11:
	.loc	2 56 10                         # src/parsing/command_redir_open.c:56:10
	movl	-12(%rbp), %eax
	.loc	2 56 2 is_stmt 0                # src/parsing/command_redir_open.c:56:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp24:
.Lfunc_end1:
	.size	open_command_outfile, .Lfunc_end1-open_command_outfile
	.cfi_endproc
                                        # -- End function
	.globl	open_command_redirection        # -- Begin function open_command_redirection
	.p2align	4, 0x90
	.type	open_command_redirection,@function
open_command_redirection:               # @open_command_redirection
.Lfunc_begin2:
	.loc	2 60 0 is_stmt 1                # src/parsing/command_redir_open.c:60:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp25:
	.loc	2 61 6 prologue_end             # src/parsing/command_redir_open.c:61:6
	movq	-8(%rbp), %rax
	.loc	2 61 11 is_stmt 0               # src/parsing/command_redir_open.c:61:11
	movq	48(%rax), %rax
	.loc	2 61 6                          # src/parsing/command_redir_open.c:61:6
	cmpq	$0, 8(%rax)
.Ltmp26:
	.loc	2 61 6                          # src/parsing/command_redir_open.c:61:6
	je	.LBB2_2
# %bb.1:
.Ltmp27:
	.loc	2 63 43 is_stmt 1               # src/parsing/command_redir_open.c:63:43
	movq	-8(%rbp), %rdi
	.loc	2 63 23 is_stmt 0               # src/parsing/command_redir_open.c:63:23
	callq	open_command_infile
	movl	%eax, %ecx
	.loc	2 63 3                          # src/parsing/command_redir_open.c:63:3
	movq	-8(%rbp), %rax
	.loc	2 63 8                          # src/parsing/command_redir_open.c:63:8
	movq	48(%rax), %rax
	.loc	2 63 21                         # src/parsing/command_redir_open.c:63:21
	movl	%ecx, (%rax)
	.loc	2 64 8 is_stmt 1                # src/parsing/command_redir_open.c:64:8
	movq	-8(%rbp), %rax
	.loc	2 64 13 is_stmt 0               # src/parsing/command_redir_open.c:64:13
	movq	48(%rax), %rax
	.loc	2 64 20                         # src/parsing/command_redir_open.c:64:20
	movl	(%rax), %edi
	.loc	2 64 3                          # src/parsing/command_redir_open.c:64:3
	xorl	%esi, %esi
	callq	dup2
.Ltmp28:
.LBB2_2:
	.loc	2 66 6 is_stmt 1                # src/parsing/command_redir_open.c:66:6
	movq	-8(%rbp), %rax
	.loc	2 66 11 is_stmt 0               # src/parsing/command_redir_open.c:66:11
	movq	48(%rax), %rax
	.loc	2 66 6                          # src/parsing/command_redir_open.c:66:6
	cmpq	$0, 16(%rax)
.Ltmp29:
	.loc	2 66 6                          # src/parsing/command_redir_open.c:66:6
	je	.LBB2_4
# %bb.3:
.Ltmp30:
	.loc	2 68 45 is_stmt 1               # src/parsing/command_redir_open.c:68:45
	movq	-8(%rbp), %rdi
	.loc	2 68 24 is_stmt 0               # src/parsing/command_redir_open.c:68:24
	callq	open_command_outfile
	movl	%eax, %ecx
	.loc	2 68 3                          # src/parsing/command_redir_open.c:68:3
	movq	-8(%rbp), %rax
	.loc	2 68 8                          # src/parsing/command_redir_open.c:68:8
	movq	48(%rax), %rax
	.loc	2 68 22                         # src/parsing/command_redir_open.c:68:22
	movl	%ecx, 4(%rax)
	.loc	2 69 8 is_stmt 1                # src/parsing/command_redir_open.c:69:8
	movq	-8(%rbp), %rax
	.loc	2 69 13 is_stmt 0               # src/parsing/command_redir_open.c:69:13
	movq	48(%rax), %rax
	.loc	2 69 20                         # src/parsing/command_redir_open.c:69:20
	movl	4(%rax), %edi
	.loc	2 69 3                          # src/parsing/command_redir_open.c:69:3
	movl	$1, %esi
	callq	dup2
.Ltmp31:
.LBB2_4:
	.loc	2 71 1 is_stmt 1                # src/parsing/command_redir_open.c:71:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp32:
.Lfunc_end2:
	.size	open_command_redirection, .Lfunc_end2-open_command_redirection
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp/heredoc"
	.size	.L.str, 13

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
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
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
	.byte	10                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
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
	.byte	12                              # Abbreviation Code
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
	.byte	13                              # Abbreviation Code
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
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x41e DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0xb0:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0xb1:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string24                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	349                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	356                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string47                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	349                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string65                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	778                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xf5:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	349                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x10e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	356                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string48                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	349                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string65                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	856                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x139:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string27                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x14e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	356                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x15d:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x164:0x5 DW_TAG_pointer_type
	.long	361                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x169:0xb DW_TAG_typedef
	.long	372                             # DW_AT_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x174:0xc9 DW_TAG_structure_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x17c:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x188:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x194:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1a0:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ac:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1b8:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1c4:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	585                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1d0:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	639                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1dc:0xc DW_TAG_member
	.long	.Linfo_string46                 # DW_AT_name
	.long	705                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1e8:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1f4:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	934                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x200:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	856                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20c:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1000                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x218:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1054                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x224:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1059                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x230:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	1059                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x23d:0x5 DW_TAG_pointer_type
	.long	578                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x242:0x7 DW_TAG_base_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x249:0x5 DW_TAG_pointer_type
	.long	590                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x24e:0xb DW_TAG_typedef
	.long	601                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x259:0x21 DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x261:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x26d:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	634                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x27a:0x5 DW_TAG_pointer_type
	.long	601                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x27f:0x5 DW_TAG_pointer_type
	.long	644                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x284:0xb DW_TAG_typedef
	.long	655                             # DW_AT_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x28f:0x2d DW_TAG_structure_type
	.long	.Linfo_string44                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x297:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	700                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2a3:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	700                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2af:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	700                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2bc:0x5 DW_TAG_pointer_type
	.long	349                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2c1:0x5 DW_TAG_pointer_type
	.long	710                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2c6:0xb DW_TAG_typedef
	.long	721                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2d1:0x39 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2d9:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e5:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f1:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	778                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2fd:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	856                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x30a:0x5 DW_TAG_pointer_type
	.long	783                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x30f:0xb DW_TAG_typedef
	.long	794                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x31a:0x39 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x322:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x32e:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x33a:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x346:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	851                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x353:0x5 DW_TAG_pointer_type
	.long	794                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x358:0x5 DW_TAG_pointer_type
	.long	861                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x35d:0xb DW_TAG_typedef
	.long	872                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x368:0x39 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x370:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x37c:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	349                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x388:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x394:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	929                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3a1:0x5 DW_TAG_pointer_type
	.long	872                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3a6:0x5 DW_TAG_pointer_type
	.long	939                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3ab:0xb DW_TAG_typedef
	.long	950                             # DW_AT_type
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3b6:0x2d DW_TAG_structure_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3be:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ca:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3d6:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	995                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3e3:0x5 DW_TAG_pointer_type
	.long	950                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3e8:0x5 DW_TAG_pointer_type
	.long	1005                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3ed:0xb DW_TAG_typedef
	.long	1016                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3f8:0x21 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x400:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	573                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x40c:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	1049                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x419:0x5 DW_TAG_pointer_type
	.long	1016                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x41e:0x5 DW_TAG_pointer_type
	.long	573                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x423:0x5 DW_TAG_pointer_type
	.long	372                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_open.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=71
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=108
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=121
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=135
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=149
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=162
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=175
.Linfo_string9:
	.asciz	"expansion"                     # string offset=187
.Linfo_string10:
	.asciz	"operator"                      # string offset=197
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=206
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=215
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=223
.Linfo_string14:
	.asciz	"outfile"                       # string offset=231
.Linfo_string15:
	.asciz	"append"                        # string offset=239
.Linfo_string16:
	.asciz	"infile"                        # string offset=246
.Linfo_string17:
	.asciz	"and_if"                        # string offset=253
.Linfo_string18:
	.asciz	"or_if"                         # string offset=260
.Linfo_string19:
	.asciz	"word"                          # string offset=266
.Linfo_string20:
	.asciz	"name"                          # string offset=271
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=276
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=292
.Linfo_string23:
	.asciz	"e_token"                       # string offset=302
.Linfo_string24:
	.asciz	"open_command_infile"           # string offset=310
.Linfo_string25:
	.asciz	"int"                           # string offset=330
.Linfo_string26:
	.asciz	"open_command_outfile"          # string offset=334
.Linfo_string27:
	.asciz	"open_command_redirection"      # string offset=355
.Linfo_string28:
	.asciz	"cmd"                           # string offset=380
.Linfo_string29:
	.asciz	"id"                            # string offset=384
.Linfo_string30:
	.asciz	"pid"                           # string offset=387
.Linfo_string31:
	.asciz	"type"                          # string offset=391
.Linfo_string32:
	.asciz	"wstatus"                       # string offset=396
.Linfo_string33:
	.asciz	"char"                          # string offset=404
.Linfo_string34:
	.asciz	"path"                          # string offset=409
.Linfo_string35:
	.asciz	"arg"                           # string offset=414
.Linfo_string36:
	.asciz	"value"                         # string offset=418
.Linfo_string37:
	.asciz	"next"                          # string offset=424
.Linfo_string38:
	.asciz	"s_arg"                         # string offset=429
.Linfo_string39:
	.asciz	"t_arg"                         # string offset=435
.Linfo_string40:
	.asciz	"pipe"                          # string offset=441
.Linfo_string41:
	.asciz	"to_close"                      # string offset=446
.Linfo_string42:
	.asciz	"write"                         # string offset=455
.Linfo_string43:
	.asciz	"read"                          # string offset=461
.Linfo_string44:
	.asciz	"s_pipe"                        # string offset=466
.Linfo_string45:
	.asciz	"t_pipe"                        # string offset=473
.Linfo_string46:
	.asciz	"redir"                         # string offset=480
.Linfo_string47:
	.asciz	"in_fd"                         # string offset=486
.Linfo_string48:
	.asciz	"out_fd"                        # string offset=492
.Linfo_string49:
	.asciz	"fd"                            # string offset=499
.Linfo_string50:
	.asciz	"s_infile"                      # string offset=502
.Linfo_string51:
	.asciz	"t_infile"                      # string offset=511
.Linfo_string52:
	.asciz	"s_outfile"                     # string offset=520
.Linfo_string53:
	.asciz	"t_outfile"                     # string offset=530
.Linfo_string54:
	.asciz	"s_redir"                       # string offset=540
.Linfo_string55:
	.asciz	"t_redir"                       # string offset=548
.Linfo_string56:
	.asciz	"assign"                        # string offset=556
.Linfo_string57:
	.asciz	"s_var"                         # string offset=563
.Linfo_string58:
	.asciz	"t_var"                         # string offset=569
.Linfo_string59:
	.asciz	"s_expan"                       # string offset=575
.Linfo_string60:
	.asciz	"t_expan"                       # string offset=583
.Linfo_string61:
	.asciz	"arg_array"                     # string offset=591
.Linfo_string62:
	.asciz	"prev"                          # string offset=601
.Linfo_string63:
	.asciz	"s_cmd"                         # string offset=606
.Linfo_string64:
	.asciz	"t_cmd"                         # string offset=612
.Linfo_string65:
	.asciz	"index"                         # string offset=618
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open_command_infile
	.addrsig_sym open
	.addrsig_sym open_command_outfile
	.addrsig_sym close
	.addrsig_sym dup2
	.section	.debug_line,"",@progbits
.Lline_table_start0:
