	.text
	.file	"command_redir_open.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/../../include/minishell.h"
	.globl	open_command_infile             # -- Begin function open_command_infile
	.p2align	4, 0x90
	.type	open_command_infile,@function
open_command_infile:                    # @open_command_infile
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/parsing/command_redir_open.c"
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
	.globl	backup_in_out                   # -- Begin function backup_in_out
	.p2align	4, 0x90
	.type	backup_in_out,@function
backup_in_out:                          # @backup_in_out
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
	.loc	2 61 29 prologue_end            # src/parsing/command_redir_open.c:61:29
	xorl	%edi, %edi
	callq	dup
	movl	%eax, %ecx
	.loc	2 61 2 is_stmt 0                # src/parsing/command_redir_open.c:61:2
	movq	-8(%rbp), %rax
	.loc	2 61 27                         # src/parsing/command_redir_open.c:61:27
	movl	%ecx, (%rax)
	.loc	2 62 30 is_stmt 1               # src/parsing/command_redir_open.c:62:30
	movl	$1, %edi
	callq	dup
	movl	%eax, %ecx
	.loc	2 62 2 is_stmt 0                # src/parsing/command_redir_open.c:62:2
	movq	-8(%rbp), %rax
	.loc	2 62 28                         # src/parsing/command_redir_open.c:62:28
	movl	%ecx, 4(%rax)
	.loc	2 63 1 is_stmt 1                # src/parsing/command_redir_open.c:63:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp26:
.Lfunc_end2:
	.size	backup_in_out, .Lfunc_end2-backup_in_out
	.cfi_endproc
                                        # -- End function
	.globl	open_command_redirection        # -- Begin function open_command_redirection
	.p2align	4, 0x90
	.type	open_command_redirection,@function
open_command_redirection:               # @open_command_redirection
.Lfunc_begin3:
	.loc	2 66 0                          # src/parsing/command_redir_open.c:66:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp27:
	.loc	2 67 6 prologue_end             # src/parsing/command_redir_open.c:67:6
	movq	-8(%rbp), %rax
	.loc	2 67 11 is_stmt 0               # src/parsing/command_redir_open.c:67:11
	movq	48(%rax), %rax
	.loc	2 67 6                          # src/parsing/command_redir_open.c:67:6
	cmpq	$0, 8(%rax)
.Ltmp28:
	.loc	2 67 6                          # src/parsing/command_redir_open.c:67:6
	je	.LBB3_2
# %bb.1:
.Ltmp29:
	.loc	2 69 43 is_stmt 1               # src/parsing/command_redir_open.c:69:43
	movq	-8(%rbp), %rdi
	.loc	2 69 23 is_stmt 0               # src/parsing/command_redir_open.c:69:23
	callq	open_command_infile
	movl	%eax, %ecx
	.loc	2 69 3                          # src/parsing/command_redir_open.c:69:3
	movq	-8(%rbp), %rax
	.loc	2 69 8                          # src/parsing/command_redir_open.c:69:8
	movq	48(%rax), %rax
	.loc	2 69 21                         # src/parsing/command_redir_open.c:69:21
	movl	%ecx, (%rax)
	.loc	2 70 8 is_stmt 1                # src/parsing/command_redir_open.c:70:8
	movq	-8(%rbp), %rax
	.loc	2 70 13 is_stmt 0               # src/parsing/command_redir_open.c:70:13
	movq	48(%rax), %rax
	.loc	2 70 20                         # src/parsing/command_redir_open.c:70:20
	movl	(%rax), %edi
	.loc	2 70 3                          # src/parsing/command_redir_open.c:70:3
	xorl	%esi, %esi
	callq	dup2
.Ltmp30:
.LBB3_2:
	.loc	2 72 6 is_stmt 1                # src/parsing/command_redir_open.c:72:6
	movq	-8(%rbp), %rax
	.loc	2 72 11 is_stmt 0               # src/parsing/command_redir_open.c:72:11
	movq	48(%rax), %rax
	.loc	2 72 6                          # src/parsing/command_redir_open.c:72:6
	cmpq	$0, 16(%rax)
.Ltmp31:
	.loc	2 72 6                          # src/parsing/command_redir_open.c:72:6
	je	.LBB3_4
# %bb.3:
.Ltmp32:
	.loc	2 74 45 is_stmt 1               # src/parsing/command_redir_open.c:74:45
	movq	-8(%rbp), %rdi
	.loc	2 74 24 is_stmt 0               # src/parsing/command_redir_open.c:74:24
	callq	open_command_outfile
	movl	%eax, %ecx
	.loc	2 74 3                          # src/parsing/command_redir_open.c:74:3
	movq	-8(%rbp), %rax
	.loc	2 74 8                          # src/parsing/command_redir_open.c:74:8
	movq	48(%rax), %rax
	.loc	2 74 22                         # src/parsing/command_redir_open.c:74:22
	movl	%ecx, 4(%rax)
	.loc	2 75 8 is_stmt 1                # src/parsing/command_redir_open.c:75:8
	movq	-8(%rbp), %rax
	.loc	2 75 13 is_stmt 0               # src/parsing/command_redir_open.c:75:13
	movq	48(%rax), %rax
	.loc	2 75 20                         # src/parsing/command_redir_open.c:75:20
	movl	4(%rax), %edi
	.loc	2 75 3                          # src/parsing/command_redir_open.c:75:3
	movl	$1, %esi
	callq	dup2
.Ltmp33:
.LBB3_4:
	.loc	2 77 1 is_stmt 1                # src/parsing/command_redir_open.c:77:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp34:
.Lfunc_end3:
	.size	open_command_redirection, .Lfunc_end3-open_command_redirection
	.cfi_endproc
                                        # -- End function
	.globl	close_redirection               # -- Begin function close_redirection
	.p2align	4, 0x90
	.type	close_redirection,@function
close_redirection:                      # @close_redirection
.Lfunc_begin4:
	.loc	2 80 0                          # src/parsing/command_redir_open.c:80:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp35:
	.loc	2 81 6 prologue_end             # src/parsing/command_redir_open.c:81:6
	movq	-16(%rbp), %rax
	.loc	2 81 11 is_stmt 0               # src/parsing/command_redir_open.c:81:11
	movq	48(%rax), %rax
	.loc	2 81 6                          # src/parsing/command_redir_open.c:81:6
	cmpq	$0, 8(%rax)
.Ltmp36:
	.loc	2 81 6                          # src/parsing/command_redir_open.c:81:6
	je	.LBB4_2
# %bb.1:
.Ltmp37:
	.loc	2 82 8 is_stmt 1                # src/parsing/command_redir_open.c:82:8
	movq	-8(%rbp), %rax
	.loc	2 82 20 is_stmt 0               # src/parsing/command_redir_open.c:82:20
	movl	(%rax), %edi
	.loc	2 82 3                          # src/parsing/command_redir_open.c:82:3
	xorl	%esi, %esi
	callq	dup2
.Ltmp38:
.LBB4_2:
	.loc	2 83 6 is_stmt 1                # src/parsing/command_redir_open.c:83:6
	movq	-16(%rbp), %rax
	.loc	2 83 11 is_stmt 0               # src/parsing/command_redir_open.c:83:11
	movq	48(%rax), %rax
	.loc	2 83 6                          # src/parsing/command_redir_open.c:83:6
	cmpq	$0, 16(%rax)
.Ltmp39:
	.loc	2 83 6                          # src/parsing/command_redir_open.c:83:6
	je	.LBB4_4
# %bb.3:
.Ltmp40:
	.loc	2 84 8 is_stmt 1                # src/parsing/command_redir_open.c:84:8
	movq	-8(%rbp), %rax
	.loc	2 84 20 is_stmt 0               # src/parsing/command_redir_open.c:84:20
	movl	4(%rax), %edi
	.loc	2 84 3                          # src/parsing/command_redir_open.c:84:3
	movl	$1, %esi
	callq	dup2
.Ltmp41:
.LBB4_4:
	.loc	2 85 1 is_stmt 1                # src/parsing/command_redir_open.c:85:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp42:
.Lfunc_end4:
	.size	close_redirection, .Lfunc_end4-close_redirection
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
	.byte	1                               # Abbrev [1] 0xb:0x4a5 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
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
	.long	435                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xca:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	442                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xd8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string49                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	435                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xe6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	864                             # DW_AT_type
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
	.long	435                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x10e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.long	442                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string50                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.long	435                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string67                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.long	942                             # DW_AT_type
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
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	1150                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x15d:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string28                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x172:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.long	442                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x181:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string29                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x196:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	1150                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x1a4:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.long	442                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x1b3:0x7 DW_TAG_base_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x1ba:0x5 DW_TAG_pointer_type
	.long	447                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x1bf:0xb DW_TAG_typedef
	.long	458                             # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x1ca:0xc9 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x1d2:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1de:0xc DW_TAG_member
	.long	.Linfo_string32                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1ea:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x1f6:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x202:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x20e:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x21a:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	671                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x226:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	725                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x232:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	791                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x23e:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x24a:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	1020                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x256:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	942                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x262:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	1086                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x26e:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1140                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x27a:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1145                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x286:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1145                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x293:0x5 DW_TAG_pointer_type
	.long	664                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x298:0x7 DW_TAG_base_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x29f:0x5 DW_TAG_pointer_type
	.long	676                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2a4:0xb DW_TAG_typedef
	.long	687                             # DW_AT_type
	.long	.Linfo_string41                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2af:0x21 DW_TAG_structure_type
	.long	.Linfo_string40                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2b7:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2c3:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	720                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x2d0:0x5 DW_TAG_pointer_type
	.long	687                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x2d5:0x5 DW_TAG_pointer_type
	.long	730                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x2da:0xb DW_TAG_typedef
	.long	741                             # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x2e5:0x2d DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2ed:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2f9:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x305:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	786                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x312:0x5 DW_TAG_pointer_type
	.long	435                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x317:0x5 DW_TAG_pointer_type
	.long	796                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x31c:0xb DW_TAG_typedef
	.long	807                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x327:0x39 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x32f:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x33b:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x347:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	864                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x353:0xc DW_TAG_member
	.long	.Linfo_string14                 # DW_AT_name
	.long	942                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x360:0x5 DW_TAG_pointer_type
	.long	869                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x365:0xb DW_TAG_typedef
	.long	880                             # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x370:0x39 DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x378:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x384:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x390:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x39c:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	937                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3a9:0x5 DW_TAG_pointer_type
	.long	880                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3ae:0x5 DW_TAG_pointer_type
	.long	947                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3b3:0xb DW_TAG_typedef
	.long	958                             # DW_AT_type
	.long	.Linfo_string55                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x3be:0x39 DW_TAG_structure_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3c6:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3d2:0xc DW_TAG_member
	.long	.Linfo_string33                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3de:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ea:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1015                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3f7:0x5 DW_TAG_pointer_type
	.long	958                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3fc:0x5 DW_TAG_pointer_type
	.long	1025                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x401:0xb DW_TAG_typedef
	.long	1036                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x40c:0x2d DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x414:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x420:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x42c:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1081                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x439:0x5 DW_TAG_pointer_type
	.long	1036                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x43e:0x5 DW_TAG_pointer_type
	.long	1091                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x443:0xb DW_TAG_typedef
	.long	1102                            # DW_AT_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x44e:0x21 DW_TAG_structure_type
	.long	.Linfo_string61                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x456:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	659                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x462:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	1135                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x46f:0x5 DW_TAG_pointer_type
	.long	1102                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x474:0x5 DW_TAG_pointer_type
	.long	659                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x479:0x5 DW_TAG_pointer_type
	.long	458                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x47e:0x5 DW_TAG_pointer_type
	.long	1155                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x483:0xb DW_TAG_typedef
	.long	1166                            # DW_AT_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	235                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x48e:0x21 DW_TAG_structure_type
	.long	.Linfo_string71                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	231                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x496:0xc DW_TAG_member
	.long	.Linfo_string69                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	233                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4a2:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	435                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	234                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/parsing/command_redir_open.c" # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=71
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=140
.Linfo_string4:
	.asciz	"l_parentheses"                 # string offset=153
.Linfo_string5:
	.asciz	"r_parentheses"                 # string offset=167
.Linfo_string6:
	.asciz	"simple_quote"                  # string offset=181
.Linfo_string7:
	.asciz	"double_quote"                  # string offset=194
.Linfo_string8:
	.asciz	"exit_status"                   # string offset=207
.Linfo_string9:
	.asciz	"expansion"                     # string offset=219
.Linfo_string10:
	.asciz	"operator"                      # string offset=229
.Linfo_string11:
	.asciz	"wildcard"                      # string offset=238
.Linfo_string12:
	.asciz	"pipe_op"                       # string offset=247
.Linfo_string13:
	.asciz	"heredoc"                       # string offset=255
.Linfo_string14:
	.asciz	"outfile"                       # string offset=263
.Linfo_string15:
	.asciz	"append"                        # string offset=271
.Linfo_string16:
	.asciz	"infile"                        # string offset=278
.Linfo_string17:
	.asciz	"and_if"                        # string offset=285
.Linfo_string18:
	.asciz	"or_if"                         # string offset=292
.Linfo_string19:
	.asciz	"word"                          # string offset=298
.Linfo_string20:
	.asciz	"name"                          # string offset=303
.Linfo_string21:
	.asciz	"assignment_word"               # string offset=308
.Linfo_string22:
	.asciz	"eof_token"                     # string offset=324
.Linfo_string23:
	.asciz	"e_token"                       # string offset=334
.Linfo_string24:
	.asciz	"open_command_infile"           # string offset=342
.Linfo_string25:
	.asciz	"int"                           # string offset=362
.Linfo_string26:
	.asciz	"open_command_outfile"          # string offset=366
.Linfo_string27:
	.asciz	"backup_in_out"                 # string offset=387
.Linfo_string28:
	.asciz	"open_command_redirection"      # string offset=401
.Linfo_string29:
	.asciz	"close_redirection"             # string offset=426
.Linfo_string30:
	.asciz	"cmd"                           # string offset=444
.Linfo_string31:
	.asciz	"id"                            # string offset=448
.Linfo_string32:
	.asciz	"pid"                           # string offset=451
.Linfo_string33:
	.asciz	"type"                          # string offset=455
.Linfo_string34:
	.asciz	"wstatus"                       # string offset=460
.Linfo_string35:
	.asciz	"char"                          # string offset=468
.Linfo_string36:
	.asciz	"path"                          # string offset=473
.Linfo_string37:
	.asciz	"arg"                           # string offset=478
.Linfo_string38:
	.asciz	"value"                         # string offset=482
.Linfo_string39:
	.asciz	"next"                          # string offset=488
.Linfo_string40:
	.asciz	"s_arg"                         # string offset=493
.Linfo_string41:
	.asciz	"t_arg"                         # string offset=499
.Linfo_string42:
	.asciz	"pipe"                          # string offset=505
.Linfo_string43:
	.asciz	"to_close"                      # string offset=510
.Linfo_string44:
	.asciz	"write"                         # string offset=519
.Linfo_string45:
	.asciz	"read"                          # string offset=525
.Linfo_string46:
	.asciz	"s_pipe"                        # string offset=530
.Linfo_string47:
	.asciz	"t_pipe"                        # string offset=537
.Linfo_string48:
	.asciz	"redir"                         # string offset=544
.Linfo_string49:
	.asciz	"in_fd"                         # string offset=550
.Linfo_string50:
	.asciz	"out_fd"                        # string offset=556
.Linfo_string51:
	.asciz	"fd"                            # string offset=563
.Linfo_string52:
	.asciz	"s_infile"                      # string offset=566
.Linfo_string53:
	.asciz	"t_infile"                      # string offset=575
.Linfo_string54:
	.asciz	"s_outfile"                     # string offset=584
.Linfo_string55:
	.asciz	"t_outfile"                     # string offset=594
.Linfo_string56:
	.asciz	"s_redir"                       # string offset=604
.Linfo_string57:
	.asciz	"t_redir"                       # string offset=612
.Linfo_string58:
	.asciz	"assign"                        # string offset=620
.Linfo_string59:
	.asciz	"s_var"                         # string offset=627
.Linfo_string60:
	.asciz	"t_var"                         # string offset=633
.Linfo_string61:
	.asciz	"s_expan"                       # string offset=639
.Linfo_string62:
	.asciz	"t_expan"                       # string offset=647
.Linfo_string63:
	.asciz	"arg_array"                     # string offset=655
.Linfo_string64:
	.asciz	"prev"                          # string offset=665
.Linfo_string65:
	.asciz	"s_cmd"                         # string offset=670
.Linfo_string66:
	.asciz	"t_cmd"                         # string offset=676
.Linfo_string67:
	.asciz	"index"                         # string offset=682
.Linfo_string68:
	.asciz	"std_in_out"                    # string offset=688
.Linfo_string69:
	.asciz	"stdin_backup"                  # string offset=699
.Linfo_string70:
	.asciz	"stdout_backup"                 # string offset=712
.Linfo_string71:
	.asciz	"s_backup"                      # string offset=726
.Linfo_string72:
	.asciz	"t_backup"                      # string offset=735
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open_command_infile
	.addrsig_sym open
	.addrsig_sym open_command_outfile
	.addrsig_sym close
	.addrsig_sym dup
	.addrsig_sym dup2
	.section	.debug_line,"",@progbits
.Lline_table_start0:
