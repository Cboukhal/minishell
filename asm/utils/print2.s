	.text
	.file	"print2.c"
	.globl	print_token                     # -- Begin function print_token
	.p2align	4, 0x90
	.type	print_token,@function
print_token:                            # @print_token
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/utils/print2.c"
	.loc	1 16 0                          # src/utils/print2.c:16:0
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
	.loc	1 20 4 prologue_end             # src/utils/print2.c:20:4
	movl	$0, -12(%rbp)
	.loc	1 21 10                         # src/utils/print2.c:21:10
	movq	-8(%rbp), %rax
	.loc	1 21 8 is_stmt 0                # src/utils/print2.c:21:8
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 22 2 is_stmt 1                # src/utils/print2.c:22:2
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
.Ltmp1:
	.loc	1 24 31                         # src/utils/print2.c:24:31
	movl	-12(%rbp), %esi
	.loc	1 24 34 is_stmt 0               # src/utils/print2.c:24:34
	movq	-24(%rbp), %rax
	.loc	1 24 41                         # src/utils/print2.c:24:41
	movq	16(%rax), %rdx
	.loc	1 24 3                          # src/utils/print2.c:24:3
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 25 11 is_stmt 1               # src/utils/print2.c:25:11
	movq	-24(%rbp), %rax
	.loc	1 25 18 is_stmt 0               # src/utils/print2.c:25:18
	movq	40(%rax), %rax
	.loc	1 25 9                          # src/utils/print2.c:25:9
	movq	%rax, -24(%rbp)
	.loc	1 26 4 is_stmt 1                # src/utils/print2.c:26:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp2:
	.loc	1 22 2                          # src/utils/print2.c:22:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 28 1                          # src/utils/print2.c:28:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end0:
	.size	print_token, .Lfunc_end0-print_token
	.cfi_endproc
                                        # -- End function
	.globl	print_cmd_arg                   # -- Begin function print_cmd_arg
	.p2align	4, 0x90
	.type	print_cmd_arg,@function
print_cmd_arg:                          # @print_cmd_arg
.Lfunc_begin1:
	.loc	1 31 0                          # src/utils/print2.c:31:0
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
	.loc	1 34 4 prologue_end             # src/utils/print2.c:34:4
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 35 9                          # src/utils/print2.c:35:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 35 2 is_stmt 0                # src/utils/print2.c:35:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp5:
	.loc	1 37 18 is_stmt 1               # src/utils/print2.c:37:18
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	1 37 3 is_stmt 0                # src/utils/print2.c:37:3
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 38 4 is_stmt 1                # src/utils/print2.c:38:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp6:
	.loc	1 35 2                          # src/utils/print2.c:35:2
	jmp	.LBB1_1
.LBB1_3:
	.loc	1 40 1                          # src/utils/print2.c:40:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp7:
.Lfunc_end1:
	.size	print_cmd_arg, .Lfunc_end1-print_cmd_arg
	.cfi_endproc
                                        # -- End function
	.globl	print_cmd_table                 # -- Begin function print_cmd_table
	.p2align	4, 0x90
	.type	print_cmd_table,@function
print_cmd_table:                        # @print_cmd_table
.Lfunc_begin2:
	.loc	1 43 0                          # src/utils/print2.c:43:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp8:
	.loc	1 47 8 prologue_end             # src/utils/print2.c:47:8
	movq	-8(%rbp), %rax
	.loc	1 47 6 is_stmt 0                # src/utils/print2.c:47:6
	movq	%rax, -16(%rbp)
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	.loc	1 48 2 is_stmt 1                # src/utils/print2.c:48:2
	cmpq	$0, -16(%rbp)
	je	.LBB2_6
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp9:
	.loc	1 50 9                          # src/utils/print2.c:50:9
	movq	-16(%rbp), %rax
	.loc	1 50 14 is_stmt 0               # src/utils/print2.c:50:14
	movq	32(%rax), %rax
	.loc	1 50 7                          # src/utils/print2.c:50:7
	movq	%rax, -24(%rbp)
	.loc	1 51 36 is_stmt 1               # src/utils/print2.c:51:36
	movq	-16(%rbp), %rax
	.loc	1 51 41 is_stmt 0               # src/utils/print2.c:51:41
	movl	8(%rax), %esi
	.loc	1 51 3                          # src/utils/print2.c:51:3
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	ft_printf
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 52 3 is_stmt 1                # src/utils/print2.c:52:3
	cmpq	$0, -24(%rbp)
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
.Ltmp10:
	.loc	1 54 22                         # src/utils/print2.c:54:22
	movq	-24(%rbp), %rax
	.loc	1 54 27 is_stmt 0               # src/utils/print2.c:54:27
	movq	(%rax), %rsi
	.loc	1 54 4                          # src/utils/print2.c:54:4
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 55 10 is_stmt 1               # src/utils/print2.c:55:10
	movq	-24(%rbp), %rax
	.loc	1 55 15 is_stmt 0               # src/utils/print2.c:55:15
	movq	8(%rax), %rax
	.loc	1 55 8                          # src/utils/print2.c:55:8
	movq	%rax, -24(%rbp)
.Ltmp11:
	.loc	1 52 3 is_stmt 1                # src/utils/print2.c:52:3
	jmp	.LBB2_3
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	1 57 9                          # src/utils/print2.c:57:9
	movq	-16(%rbp), %rax
	.loc	1 57 14 is_stmt 0               # src/utils/print2.c:57:14
	movq	96(%rax), %rax
	.loc	1 57 7                          # src/utils/print2.c:57:7
	movq	%rax, -16(%rbp)
.Ltmp12:
	.loc	1 48 2 is_stmt 1                # src/utils/print2.c:48:2
	jmp	.LBB2_1
.LBB2_6:
	.loc	1 59 1                          # src/utils/print2.c:59:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end2:
	.size	print_cmd_table, .Lfunc_end2-print_cmd_table
	.cfi_endproc
                                        # -- End function
	.globl	print_cmd_redir                 # -- Begin function print_cmd_redir
	.p2align	4, 0x90
	.type	print_cmd_redir,@function
print_cmd_redir:                        # @print_cmd_redir
.Lfunc_begin3:
	.loc	1 62 0                          # src/utils/print2.c:62:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp14:
	.loc	1 63 6 prologue_end             # src/utils/print2.c:63:6
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
.Ltmp15:
	.loc	1 63 6 is_stmt 0                # src/utils/print2.c:63:6
	je	.LBB3_5
# %bb.1:
.Ltmp16:
	.loc	1 65 3 is_stmt 1                # src/utils/print2.c:65:3
	jmp	.LBB3_2
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	.loc	1 65 10 is_stmt 0               # src/utils/print2.c:65:10
	movq	-8(%rbp), %rax
	.loc	1 65 3                          # src/utils/print2.c:65:3
	cmpq	$0, 8(%rax)
	je	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
.Ltmp17:
	.loc	1 67 19 is_stmt 1               # src/utils/print2.c:67:19
	movq	-8(%rbp), %rax
	.loc	1 67 26 is_stmt 0               # src/utils/print2.c:67:26
	movq	8(%rax), %rax
	.loc	1 67 34                         # src/utils/print2.c:67:34
	movq	8(%rax), %rsi
	.loc	1 67 4                          # src/utils/print2.c:67:4
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 68 20 is_stmt 1               # src/utils/print2.c:68:20
	movq	-8(%rbp), %rax
	.loc	1 68 27 is_stmt 0               # src/utils/print2.c:68:27
	movq	8(%rax), %rax
	.loc	1 68 35                         # src/utils/print2.c:68:35
	movq	16(%rax), %rcx
	.loc	1 68 4                          # src/utils/print2.c:68:4
	movq	-8(%rbp), %rax
	.loc	1 68 18                         # src/utils/print2.c:68:18
	movq	%rcx, 8(%rax)
.Ltmp18:
	.loc	1 65 3 is_stmt 1                # src/utils/print2.c:65:3
	jmp	.LBB3_2
.LBB3_4:
	.loc	1 70 2                          # src/utils/print2.c:70:2
	jmp	.LBB3_5
.Ltmp19:
.LBB3_5:
	.loc	1 71 6                          # src/utils/print2.c:71:6
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
.Ltmp20:
	.loc	1 71 6 is_stmt 0                # src/utils/print2.c:71:6
	je	.LBB3_10
# %bb.6:
.Ltmp21:
	.loc	1 73 3 is_stmt 1                # src/utils/print2.c:73:3
	jmp	.LBB3_7
.LBB3_7:                                # =>This Inner Loop Header: Depth=1
	.loc	1 73 10 is_stmt 0               # src/utils/print2.c:73:10
	movq	-8(%rbp), %rax
	.loc	1 73 3                          # src/utils/print2.c:73:3
	cmpq	$0, 16(%rax)
	je	.LBB3_9
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=1
.Ltmp22:
	.loc	1 75 19 is_stmt 1               # src/utils/print2.c:75:19
	movq	-8(%rbp), %rax
	.loc	1 75 26 is_stmt 0               # src/utils/print2.c:75:26
	movq	16(%rax), %rax
	.loc	1 75 35                         # src/utils/print2.c:75:35
	movq	8(%rax), %rsi
	.loc	1 75 4                          # src/utils/print2.c:75:4
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	.loc	1 76 21 is_stmt 1               # src/utils/print2.c:76:21
	movq	-8(%rbp), %rax
	.loc	1 76 28 is_stmt 0               # src/utils/print2.c:76:28
	movq	16(%rax), %rax
	.loc	1 76 37                         # src/utils/print2.c:76:37
	movq	16(%rax), %rcx
	.loc	1 76 4                          # src/utils/print2.c:76:4
	movq	-8(%rbp), %rax
	.loc	1 76 19                         # src/utils/print2.c:76:19
	movq	%rcx, 16(%rax)
.Ltmp23:
	.loc	1 73 3 is_stmt 1                # src/utils/print2.c:73:3
	jmp	.LBB3_7
.LBB3_9:
	.loc	1 78 2                          # src/utils/print2.c:78:2
	jmp	.LBB3_10
.Ltmp24:
.LBB3_10:
	.loc	1 79 1                          # src/utils/print2.c:79:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp25:
.Lfunc_end3:
	.size	print_cmd_redir, .Lfunc_end3-print_cmd_redir
	.cfi_endproc
                                        # -- End function
	.globl	print_syntax_tree               # -- Begin function print_syntax_tree
	.p2align	4, 0x90
	.type	print_syntax_tree,@function
print_syntax_tree:                      # @print_syntax_tree
.Lfunc_begin4:
	.loc	1 82 0                          # src/utils/print2.c:82:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp26:
	.loc	1 83 2 prologue_end             # src/utils/print2.c:83:2
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	ft_printf
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 84 2                          # src/utils/print2.c:84:2
	cmpq	$0, -8(%rbp)
	je	.LBB4_9
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp27:
	.loc	1 86 3                          # src/utils/print2.c:86:3
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 87 21                         # src/utils/print2.c:87:21
	movq	-8(%rbp), %rax
	.loc	1 87 27 is_stmt 0               # src/utils/print2.c:87:27
	movq	(%rax), %rax
	.loc	1 87 33                         # src/utils/print2.c:87:33
	movl	4(%rax), %esi
	.loc	1 87 3                          # src/utils/print2.c:87:3
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	ft_printf
.Ltmp28:
	.loc	1 88 7 is_stmt 1                # src/utils/print2.c:88:7
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
.Ltmp29:
	.loc	1 88 7 is_stmt 0                # src/utils/print2.c:88:7
	je	.LBB4_8
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp30:
	.loc	1 90 8 is_stmt 1                # src/utils/print2.c:90:8
	movq	-8(%rbp), %rax
	.loc	1 90 14 is_stmt 0               # src/utils/print2.c:90:14
	movq	(%rax), %rax
	.loc	1 90 8                          # src/utils/print2.c:90:8
	cmpq	$0, 24(%rax)
.Ltmp31:
	.loc	1 90 8                          # src/utils/print2.c:90:8
	je	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp32:
	.loc	1 91 19 is_stmt 1               # src/utils/print2.c:91:19
	movq	-8(%rbp), %rax
	.loc	1 91 25 is_stmt 0               # src/utils/print2.c:91:25
	movq	(%rax), %rax
	.loc	1 91 31                         # src/utils/print2.c:91:31
	movq	24(%rax), %rax
	.loc	1 91 37                         # src/utils/print2.c:91:37
	movq	88(%rax), %rdi
	.loc	1 91 5                          # src/utils/print2.c:91:5
	callq	print_cmd_arg
.Ltmp33:
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 92 8 is_stmt 1                # src/utils/print2.c:92:8
	movq	-8(%rbp), %rax
	.loc	1 92 14 is_stmt 0               # src/utils/print2.c:92:14
	movq	(%rax), %rax
	.loc	1 92 8                          # src/utils/print2.c:92:8
	cmpq	$0, 32(%rax)
.Ltmp34:
	.loc	1 92 8                          # src/utils/print2.c:92:8
	je	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
.Ltmp35:
	.loc	1 93 19 is_stmt 1               # src/utils/print2.c:93:19
	movq	-8(%rbp), %rax
	.loc	1 93 25 is_stmt 0               # src/utils/print2.c:93:25
	movq	(%rax), %rax
	.loc	1 93 31                         # src/utils/print2.c:93:31
	movq	32(%rax), %rax
	.loc	1 93 38                         # src/utils/print2.c:93:38
	movq	88(%rax), %rdi
	.loc	1 93 5                          # src/utils/print2.c:93:5
	callq	print_cmd_arg
.Ltmp36:
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 94 3 is_stmt 1                # src/utils/print2.c:94:3
	jmp	.LBB4_8
.Ltmp37:
.LBB4_8:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 95 3                          # src/utils/print2.c:95:3
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	1 96 10                         # src/utils/print2.c:96:10
	movq	-8(%rbp), %rax
	.loc	1 96 16 is_stmt 0               # src/utils/print2.c:96:16
	movq	8(%rax), %rax
	.loc	1 96 8                          # src/utils/print2.c:96:8
	movq	%rax, -8(%rbp)
.Ltmp38:
	.loc	1 84 2 is_stmt 1                # src/utils/print2.c:84:2
	jmp	.LBB4_1
.LBB4_9:
	.loc	1 98 1                          # src/utils/print2.c:98:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp39:
.Lfunc_end4:
	.size	print_syntax_tree, .Lfunc_end4-print_syntax_tree
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Token[%d]=%s\n"
	.size	.L.str, 14

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"%s\n"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"COMMAND TYPE = %d\n"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Program\n|"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"_"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%d\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n"
	.size	.L.str.6, 2

	.file	2 "/mnt/nfs/homes/cboukhal/minishell" "src/utils/../../include/minishell.h"
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
	.byte	1                               # Abbrev [1] 0xb:0x4fa DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x40 DW_TAG_subprogram
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
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	292                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x4d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	401                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x5b:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string24                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	292                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x6a:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x7f:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.long	479                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x8d:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string23                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.long	401                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x9c:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xb1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xbf:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string58                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	484                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xcd:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string25                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.long	701                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0xdc:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string6                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0xf1:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string40                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	821                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x100:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x115:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string59                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.long	1121                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x124:0x5 DW_TAG_pointer_type
	.long	297                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x129:0xb DW_TAG_typedef
	.long	308                             # DW_AT_type
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x134:0x5d DW_TAG_structure_type
	.long	.Linfo_string21                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x13c:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x148:0xc DW_TAG_member
	.long	.Linfo_string11                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x154:0xc DW_TAG_member
	.long	.Linfo_string12                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x160:0xc DW_TAG_member
	.long	.Linfo_string13                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x16c:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x178:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x184:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x191:0x7 DW_TAG_base_type
	.long	.Linfo_string10                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x198:0x5 DW_TAG_pointer_type
	.long	413                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x19d:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	5                               # Abbrev [5] 0x1a4:0x5 DW_TAG_pointer_type
	.long	425                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1a9:0xb DW_TAG_typedef
	.long	436                             # DW_AT_type
	.long	.Linfo_string19                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1b4:0x21 DW_TAG_structure_type
	.long	.Linfo_string18                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1bc:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x1c8:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	469                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x1d5:0x5 DW_TAG_pointer_type
	.long	436                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1da:0x5 DW_TAG_pointer_type
	.long	308                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1df:0x5 DW_TAG_pointer_type
	.long	408                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x1e4:0x5 DW_TAG_pointer_type
	.long	489                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x1e9:0xb DW_TAG_typedef
	.long	500                             # DW_AT_type
	.long	.Linfo_string57                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	193                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x1f4:0xc9 DW_TAG_structure_type
	.long	.Linfo_string56                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x1fc:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x208:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x214:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x220:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x22c:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x238:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x244:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	701                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x250:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	755                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x25c:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	821                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x268:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	894                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x274:0xc DW_TAG_member
	.long	.Linfo_string52                 # DW_AT_name
	.long	1050                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x280:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	972                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x28c:0xc DW_TAG_member
	.long	.Linfo_string15                 # DW_AT_name
	.long	420                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x298:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2a4:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2b0:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2bd:0x5 DW_TAG_pointer_type
	.long	706                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2c2:0xb DW_TAG_typedef
	.long	717                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x2cd:0x21 DW_TAG_structure_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x2d5:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x2e1:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	750                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x2ee:0x5 DW_TAG_pointer_type
	.long	717                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x2f3:0x5 DW_TAG_pointer_type
	.long	760                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x2f8:0xb DW_TAG_typedef
	.long	771                             # DW_AT_type
	.long	.Linfo_string39                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x303:0x2d DW_TAG_structure_type
	.long	.Linfo_string38                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x30b:0xc DW_TAG_member
	.long	.Linfo_string35                 # DW_AT_name
	.long	816                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x317:0xc DW_TAG_member
	.long	.Linfo_string36                 # DW_AT_name
	.long	816                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x323:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	816                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x330:0x5 DW_TAG_pointer_type
	.long	401                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x335:0x5 DW_TAG_pointer_type
	.long	826                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x33a:0xb DW_TAG_typedef
	.long	837                             # DW_AT_type
	.long	.Linfo_string51                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x345:0x39 DW_TAG_structure_type
	.long	.Linfo_string50                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x34d:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x359:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x365:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	894                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x371:0xc DW_TAG_member
	.long	.Linfo_string47                 # DW_AT_name
	.long	972                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x37e:0x5 DW_TAG_pointer_type
	.long	899                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x383:0xb DW_TAG_typedef
	.long	910                             # DW_AT_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x38e:0x39 DW_TAG_structure_type
	.long	.Linfo_string45                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x396:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3a2:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ae:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3ba:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	967                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x3c7:0x5 DW_TAG_pointer_type
	.long	910                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x3cc:0x5 DW_TAG_pointer_type
	.long	977                             # DW_AT_type
	.byte	6                               # Abbrev [6] 0x3d1:0xb DW_TAG_typedef
	.long	988                             # DW_AT_type
	.long	.Linfo_string49                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x3dc:0x39 DW_TAG_structure_type
	.long	.Linfo_string48                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x3e4:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3f0:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x3fc:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x408:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1045                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x415:0x5 DW_TAG_pointer_type
	.long	988                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x41a:0x5 DW_TAG_pointer_type
	.long	1055                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x41f:0xb DW_TAG_typedef
	.long	1066                            # DW_AT_type
	.long	.Linfo_string54                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x42a:0x2d DW_TAG_structure_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x432:0xc DW_TAG_member
	.long	.Linfo_string16                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x43e:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	408                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x44a:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1111                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x457:0x5 DW_TAG_pointer_type
	.long	1066                            # DW_AT_type
	.byte	5                               # Abbrev [5] 0x45c:0x5 DW_TAG_pointer_type
	.long	500                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x461:0x5 DW_TAG_pointer_type
	.long	1126                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x466:0xb DW_TAG_typedef
	.long	1137                            # DW_AT_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x471:0x2d DW_TAG_structure_type
	.long	.Linfo_string67                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x479:0xc DW_TAG_member
	.long	.Linfo_string60                 # DW_AT_name
	.long	1182                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x485:0xc DW_TAG_member
	.long	.Linfo_string17                 # DW_AT_name
	.long	1279                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x491:0xc DW_TAG_member
	.long	.Linfo_string20                 # DW_AT_name
	.long	1279                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x49e:0x5 DW_TAG_pointer_type
	.long	1187                            # DW_AT_type
	.byte	6                               # Abbrev [6] 0x4a3:0xb DW_TAG_typedef
	.long	1198                            # DW_AT_type
	.long	.Linfo_string66                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x4ae:0x51 DW_TAG_structure_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	2                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	8                               # Abbrev [8] 0x4b6:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4c2:0xc DW_TAG_member
	.long	.Linfo_string9                  # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4ce:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	816                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4da:0xc DW_TAG_member
	.long	.Linfo_string62                 # DW_AT_name
	.long	401                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4e6:0xc DW_TAG_member
	.long	.Linfo_string63                 # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	8                               # Abbrev [8] 0x4f2:0xc DW_TAG_member
	.long	.Linfo_string64                 # DW_AT_name
	.long	1116                            # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x4ff:0x5 DW_TAG_pointer_type
	.long	1137                            # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/utils/print2.c"            # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=57
.Linfo_string3:
	.asciz	"print_token"                   # string offset=91
.Linfo_string4:
	.asciz	"print_cmd_arg"                 # string offset=103
.Linfo_string5:
	.asciz	"print_cmd_table"               # string offset=117
.Linfo_string6:
	.asciz	"print_cmd_redir"               # string offset=133
.Linfo_string7:
	.asciz	"print_syntax_tree"             # string offset=149
.Linfo_string8:
	.asciz	"stream"                        # string offset=167
.Linfo_string9:
	.asciz	"type"                          # string offset=174
.Linfo_string10:
	.asciz	"int"                           # string offset=179
.Linfo_string11:
	.asciz	"quote_nbr"                     # string offset=183
.Linfo_string12:
	.asciz	"length"                        # string offset=193
.Linfo_string13:
	.asciz	"lexeme"                        # string offset=200
.Linfo_string14:
	.asciz	"char"                          # string offset=207
.Linfo_string15:
	.asciz	"expansion"                     # string offset=212
.Linfo_string16:
	.asciz	"name"                          # string offset=222
.Linfo_string17:
	.asciz	"next"                          # string offset=227
.Linfo_string18:
	.asciz	"s_expan"                       # string offset=232
.Linfo_string19:
	.asciz	"t_expan"                       # string offset=240
.Linfo_string20:
	.asciz	"prev"                          # string offset=248
.Linfo_string21:
	.asciz	"s_token"                       # string offset=253
.Linfo_string22:
	.asciz	"t_token"                       # string offset=261
.Linfo_string23:
	.asciz	"i"                             # string offset=269
.Linfo_string24:
	.asciz	"index"                         # string offset=271
.Linfo_string25:
	.asciz	"arg"                           # string offset=277
.Linfo_string26:
	.asciz	"cmd_table"                     # string offset=281
.Linfo_string27:
	.asciz	"id"                            # string offset=291
.Linfo_string28:
	.asciz	"pid"                           # string offset=294
.Linfo_string29:
	.asciz	"wstatus"                       # string offset=298
.Linfo_string30:
	.asciz	"path"                          # string offset=306
.Linfo_string31:
	.asciz	"value"                         # string offset=311
.Linfo_string32:
	.asciz	"s_arg"                         # string offset=317
.Linfo_string33:
	.asciz	"t_arg"                         # string offset=323
.Linfo_string34:
	.asciz	"pipe"                          # string offset=329
.Linfo_string35:
	.asciz	"to_close"                      # string offset=334
.Linfo_string36:
	.asciz	"write"                         # string offset=343
.Linfo_string37:
	.asciz	"read"                          # string offset=349
.Linfo_string38:
	.asciz	"s_pipe"                        # string offset=354
.Linfo_string39:
	.asciz	"t_pipe"                        # string offset=361
.Linfo_string40:
	.asciz	"redir"                         # string offset=368
.Linfo_string41:
	.asciz	"in_fd"                         # string offset=374
.Linfo_string42:
	.asciz	"out_fd"                        # string offset=380
.Linfo_string43:
	.asciz	"infile"                        # string offset=387
.Linfo_string44:
	.asciz	"fd"                            # string offset=394
.Linfo_string45:
	.asciz	"s_infile"                      # string offset=397
.Linfo_string46:
	.asciz	"t_infile"                      # string offset=406
.Linfo_string47:
	.asciz	"outfile"                       # string offset=415
.Linfo_string48:
	.asciz	"s_outfile"                     # string offset=423
.Linfo_string49:
	.asciz	"t_outfile"                     # string offset=433
.Linfo_string50:
	.asciz	"s_redir"                       # string offset=443
.Linfo_string51:
	.asciz	"t_redir"                       # string offset=451
.Linfo_string52:
	.asciz	"assign"                        # string offset=459
.Linfo_string53:
	.asciz	"s_var"                         # string offset=466
.Linfo_string54:
	.asciz	"t_var"                         # string offset=472
.Linfo_string55:
	.asciz	"arg_array"                     # string offset=478
.Linfo_string56:
	.asciz	"s_cmd"                         # string offset=488
.Linfo_string57:
	.asciz	"t_cmd"                         # string offset=494
.Linfo_string58:
	.asciz	"cmd"                           # string offset=500
.Linfo_string59:
	.asciz	"root"                          # string offset=504
.Linfo_string60:
	.asciz	"node"                          # string offset=509
.Linfo_string61:
	.asciz	"pipe_fd"                       # string offset=514
.Linfo_string62:
	.asciz	"exit_status"                   # string offset=522
.Linfo_string63:
	.asciz	"left"                          # string offset=534
.Linfo_string64:
	.asciz	"right"                         # string offset=539
.Linfo_string65:
	.asciz	"s_ast_node"                    # string offset=545
.Linfo_string66:
	.asciz	"t_ast_node"                    # string offset=556
.Linfo_string67:
	.asciz	"s_ast"                         # string offset=567
.Linfo_string68:
	.asciz	"t_ast"                         # string offset=573
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ft_printf
	.addrsig_sym print_cmd_arg
	.addrsig_sym printf
	.section	.debug_line,"",@progbits
.Lline_table_start0:
