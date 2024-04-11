	.text
	.file	"path.c"
	.globl	size                            # -- Begin function size
	.p2align	4, 0x90
	.type	size,@function
size:                                   # @size
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/42/minishell" "src/init/path.c"
	.loc	1 16 0                          # src/init/path.c:16:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp0:
	.loc	1 19 4 prologue_end             # src/init/path.c:19:4
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 20 9                          # src/init/path.c:20:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	1 20 2 is_stmt 0                # src/init/path.c:20:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	.loc	1 21 4 is_stmt 1                # src/init/path.c:21:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 20 2                          # src/init/path.c:20:2
	jmp	.LBB0_1
.LBB0_3:
	.loc	1 22 10                         # src/init/path.c:22:10
	movl	-12(%rbp), %eax
	.loc	1 22 2 is_stmt 0                # src/init/path.c:22:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	size, .Lfunc_end0-size
	.cfi_endproc
                                        # -- End function
	.globl	extract_path                    # -- Begin function extract_path
	.p2align	4, 0x90
	.type	extract_path,@function
extract_path:                           # @extract_path
.Lfunc_begin1:
	.loc	1 45 0 is_stmt 1                # src/init/path.c:45:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp2:
	.loc	1 51 4 prologue_end             # src/init/path.c:51:4
	movq	$5, -24(%rbp)
	.loc	1 52 4                          # src/init/path.c:52:4
	movq	$0, -32(%rbp)
	.loc	1 53 16                         # src/init/path.c:53:16
	movq	$0, -48(%rbp)
.Ltmp3:
	.loc	1 54 7                          # src/init/path.c:54:7
	cmpq	$0, -16(%rbp)
.Ltmp4:
	.loc	1 54 6 is_stmt 0                # src/init/path.c:54:6
	jne	.LBB1_2
# %bb.1:
.Ltmp5:
	.loc	1 55 3 is_stmt 1                # src/init/path.c:55:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_8
.Ltmp6:
.LBB1_2:
	.loc	1 56 32                         # src/init/path.c:56:32
	movq	-16(%rbp), %rdi
	addq	-24(%rbp), %rdi
	.loc	1 56 21 is_stmt 0               # src/init/path.c:56:21
	callq	ft_strlen
	movq	%rax, %rdi
	.loc	1 56 41                         # src/init/path.c:56:41
	addq	$1, %rdi
	.loc	1 56 14                         # src/init/path.c:56:14
	callq	malloc
	.loc	1 56 12                         # src/init/path.c:56:12
	movq	%rax, -40(%rbp)
.Ltmp7:
	.loc	1 57 7 is_stmt 1                # src/init/path.c:57:7
	cmpq	$0, -40(%rbp)
.Ltmp8:
	.loc	1 57 6 is_stmt 0                # src/init/path.c:57:6
	jne	.LBB1_4
# %bb.3:
.Ltmp9:
	.loc	1 58 11 is_stmt 1               # src/init/path.c:58:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 58 3 is_stmt 0                # src/init/path.c:58:3
	movq	$0, -8(%rbp)
	jmp	.LBB1_8
.Ltmp10:
.LBB1_4:
	.loc	1 59 2 is_stmt 1                # src/init/path.c:59:2
	jmp	.LBB1_5
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	.loc	1 59 9 is_stmt 0                # src/init/path.c:59:9
	movq	-16(%rbp), %rax
	.loc	1 59 14                         # src/init/path.c:59:14
	movq	-24(%rbp), %rcx
	.loc	1 59 2                          # src/init/path.c:59:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
.Ltmp11:
	.loc	1 61 18 is_stmt 1               # src/init/path.c:61:18
	movq	-16(%rbp), %rax
	.loc	1 61 23 is_stmt 0               # src/init/path.c:61:23
	movq	-24(%rbp), %rcx
	.loc	1 61 18                         # src/init/path.c:61:18
	movb	(%rax,%rcx), %dl
	.loc	1 61 3                          # src/init/path.c:61:3
	movq	-40(%rbp), %rax
	.loc	1 61 13                         # src/init/path.c:61:13
	movq	-32(%rbp), %rcx
	.loc	1 61 16                         # src/init/path.c:61:16
	movb	%dl, (%rax,%rcx)
	.loc	1 62 4 is_stmt 1                # src/init/path.c:62:4
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	.loc	1 63 4                          # src/init/path.c:63:4
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
.Ltmp12:
	.loc	1 59 2                          # src/init/path.c:59:2
	jmp	.LBB1_5
.LBB1_7:
	.loc	1 65 2                          # src/init/path.c:65:2
	movq	-40(%rbp), %rax
	.loc	1 65 12 is_stmt 0               # src/init/path.c:65:12
	movq	-32(%rbp), %rcx
	.loc	1 65 15                         # src/init/path.c:65:15
	movb	$0, (%rax,%rcx)
	.loc	1 66 27 is_stmt 1               # src/init/path.c:66:27
	movq	-40(%rbp), %rdi
	.loc	1 66 18 is_stmt 0               # src/init/path.c:66:18
	movl	$58, %esi
	callq	ft_split
	.loc	1 66 16                         # src/init/path.c:66:16
	movq	%rax, -48(%rbp)
	.loc	1 67 28 is_stmt 1               # src/init/path.c:67:28
	movq	-48(%rbp), %rdi
	.loc	1 67 18 is_stmt 0               # src/init/path.c:67:18
	callq	add_slash
	.loc	1 67 16                         # src/init/path.c:67:16
	movq	%rax, -48(%rbp)
	.loc	1 68 7 is_stmt 1                # src/init/path.c:68:7
	movq	-40(%rbp), %rdi
	.loc	1 68 2 is_stmt 0                # src/init/path.c:68:2
	callq	free
	.loc	1 69 10 is_stmt 1               # src/init/path.c:69:10
	movq	-48(%rbp), %rax
	.loc	1 69 2 is_stmt 0                # src/init/path.c:69:2
	movq	%rax, -8(%rbp)
.LBB1_8:
	.loc	1 70 1 is_stmt 1                # src/init/path.c:70:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end1:
	.size	extract_path, .Lfunc_end1-extract_path
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function add_slash
	.type	add_slash,@function
add_slash:                              # @add_slash
.Lfunc_begin2:
	.loc	1 26 0                          # src/init/path.c:26:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp14:
	.loc	1 30 4 prologue_end             # src/init/path.c:30:4
	movq	$0, -24(%rbp)
	.loc	1 31 50                         # src/init/path.c:31:50
	movq	-16(%rbp), %rdi
	.loc	1 31 45 is_stmt 0               # src/init/path.c:31:45
	callq	size
	.loc	1 31 56                         # src/init/path.c:31:56
	addl	$1, %eax
	.loc	1 31 44                         # src/init/path.c:31:44
	movslq	%eax, %rdi
	.loc	1 31 42                         # src/init/path.c:31:42
	shlq	$3, %rdi
	.loc	1 31 20                         # src/init/path.c:31:20
	callq	malloc
	.loc	1 31 18                         # src/init/path.c:31:18
	movq	%rax, -32(%rbp)
.Ltmp15:
	.loc	1 32 7 is_stmt 1                # src/init/path.c:32:7
	cmpq	$0, -32(%rbp)
.Ltmp16:
	.loc	1 32 6 is_stmt 0                # src/init/path.c:32:6
	jne	.LBB2_2
# %bb.1:
.Ltmp17:
	.loc	1 33 11 is_stmt 1               # src/init/path.c:33:11
	movabsq	$.L.str, %rdi
	callq	perror
	.loc	1 33 3 is_stmt 0                # src/init/path.c:33:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_6
.Ltmp18:
.LBB2_2:
	.loc	1 34 2 is_stmt 1                # src/init/path.c:34:2
	jmp	.LBB2_3
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 34 9 is_stmt 0                # src/init/path.c:34:9
	movq	-16(%rbp), %rax
	.loc	1 34 14                         # src/init/path.c:34:14
	movq	-24(%rbp), %rcx
	.loc	1 34 2                          # src/init/path.c:34:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
.Ltmp19:
	.loc	1 36 35 is_stmt 1               # src/init/path.c:36:35
	movq	-16(%rbp), %rax
	.loc	1 36 40 is_stmt 0               # src/init/path.c:36:40
	movq	-24(%rbp), %rcx
	.loc	1 36 35                         # src/init/path.c:36:35
	movq	(%rax,%rcx,8), %rdi
	.loc	1 36 24                         # src/init/path.c:36:24
	movabsq	$.L.str.2, %rsi
	callq	ft_strjoin
	movq	%rax, %rdx
	.loc	1 36 3                          # src/init/path.c:36:3
	movq	-32(%rbp), %rax
	.loc	1 36 19                         # src/init/path.c:36:19
	movq	-24(%rbp), %rcx
	.loc	1 36 22                         # src/init/path.c:36:22
	movq	%rdx, (%rax,%rcx,8)
	.loc	1 37 4 is_stmt 1                # src/init/path.c:37:4
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.Ltmp20:
	.loc	1 34 2                          # src/init/path.c:34:2
	jmp	.LBB2_3
.LBB2_5:
	.loc	1 39 2                          # src/init/path.c:39:2
	movq	-32(%rbp), %rax
	.loc	1 39 18 is_stmt 0               # src/init/path.c:39:18
	movq	-24(%rbp), %rcx
	.loc	1 39 21                         # src/init/path.c:39:21
	movq	$0, (%rax,%rcx,8)
	.loc	1 40 18 is_stmt 1               # src/init/path.c:40:18
	movq	-16(%rbp), %rdi
	.loc	1 40 2 is_stmt 0                # src/init/path.c:40:2
	callq	free_char_array
	.loc	1 41 10 is_stmt 1               # src/init/path.c:41:10
	movq	-32(%rbp), %rax
	.loc	1 41 2 is_stmt 0                # src/init/path.c:41:2
	movq	%rax, -8(%rbp)
.LBB2_6:
	.loc	1 42 1 is_stmt 1                # src/init/path.c:42:1
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp21:
.Lfunc_end2:
	.size	add_slash, .Lfunc_end2-add_slash
	.cfi_endproc
                                        # -- End function
	.globl	is_path                         # -- Begin function is_path
	.p2align	4, 0x90
	.type	is_path,@function
is_path:                                # @is_path
.Lfunc_begin3:
	.loc	1 73 0                          # src/init/path.c:73:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp22:
	.loc	1 74 7 prologue_end             # src/init/path.c:74:7
	cmpq	$0, -16(%rbp)
.Ltmp23:
	.loc	1 74 6 is_stmt 0                # src/init/path.c:74:6
	jne	.LBB3_2
# %bb.1:
.Ltmp24:
	.loc	1 75 3 is_stmt 1                # src/init/path.c:75:3
	movb	$0, -1(%rbp)
	jmp	.LBB3_6
.Ltmp25:
.LBB3_2:
	.loc	1 76 16                         # src/init/path.c:76:16
	movq	-16(%rbp), %rax
	.loc	1 76 21 is_stmt 0               # src/init/path.c:76:21
	movq	(%rax), %rdi
	.loc	1 76 6                          # src/init/path.c:76:6
	callq	ft_strlen
	.loc	1 76 27                         # src/init/path.c:76:27
	cmpq	$4, %rax
	.loc	1 77 3 is_stmt 1                # src/init/path.c:77:3
	jne	.LBB3_5
# %bb.3:
	.loc	1 77 17 is_stmt 0               # src/init/path.c:77:17
	movq	-16(%rbp), %rax
	.loc	1 77 22                         # src/init/path.c:77:22
	movq	(%rax), %rdi
	.loc	1 77 6                          # src/init/path.c:77:6
	movabsq	$.L.str.1, %rsi
	movl	$4, %edx
	callq	ft_strncmp
	.loc	1 77 39                         # src/init/path.c:77:39
	cmpl	$0, %eax
.Ltmp26:
	.loc	1 76 6 is_stmt 1                # src/init/path.c:76:6
	jne	.LBB3_5
# %bb.4:
.Ltmp27:
	.loc	1 78 3                          # src/init/path.c:78:3
	movb	$1, -1(%rbp)
	jmp	.LBB3_6
.Ltmp28:
.LBB3_5:
	.loc	1 79 2                          # src/init/path.c:79:2
	movb	$0, -1(%rbp)
.LBB3_6:
	.loc	1 80 1                          # src/init/path.c:80:1
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp29:
.Lfunc_end3:
	.size	is_path, .Lfunc_end3-is_path
	.cfi_endproc
                                        # -- End function
	.globl	get_path                        # -- Begin function get_path
	.p2align	4, 0x90
	.type	get_path,@function
get_path:                               # @get_path
.Lfunc_begin4:
	.loc	1 83 0                          # src/init/path.c:83:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
.Ltmp30:
	.loc	1 87 7 prologue_end             # src/init/path.c:87:7
	movq	$0, -32(%rbp)
	.loc	1 88 10                         # src/init/path.c:88:10
	movq	-16(%rbp), %rax
	.loc	1 88 8 is_stmt 0                # src/init/path.c:88:8
	movq	%rax, -24(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 89 9 is_stmt 1                # src/init/path.c:89:9
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -24(%rbp)
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	1 89 15 is_stmt 0               # src/init/path.c:89:15
	je	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 89 26                         # src/init/path.c:89:26
	movq	-24(%rbp), %rdi
	.loc	1 89 18                         # src/init/path.c:89:18
	callq	is_path
	andb	$1, %al
	movzbl	%al, %eax
	.loc	1 89 33                         # src/init/path.c:89:33
	cmpl	$0, %eax
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 0 33                          # src/init/path.c:0:33
	movb	-33(%rbp), %al                  # 1-byte Reload
	.loc	1 89 2                          # src/init/path.c:89:2
	testb	$1, %al
	jne	.LBB4_4
	jmp	.LBB4_5
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	.loc	1 90 11 is_stmt 1               # src/init/path.c:90:11
	movq	-24(%rbp), %rax
	.loc	1 90 18 is_stmt 0               # src/init/path.c:90:18
	movq	16(%rax), %rax
	.loc	1 90 9                          # src/init/path.c:90:9
	movq	%rax, -24(%rbp)
	.loc	1 89 2 is_stmt 1                # src/init/path.c:89:2
	jmp	.LBB4_1
.LBB4_5:
.Ltmp31:
	.loc	1 91 14                         # src/init/path.c:91:14
	movq	-24(%rbp), %rdi
	.loc	1 91 6 is_stmt 0                # src/init/path.c:91:6
	callq	is_path
	andb	$1, %al
	movzbl	%al, %eax
	.loc	1 91 21                         # src/init/path.c:91:21
	cmpl	$1, %eax
.Ltmp32:
	.loc	1 91 6                          # src/init/path.c:91:6
	jne	.LBB4_7
# %bb.6:
.Ltmp33:
	.loc	1 93 23 is_stmt 1               # src/init/path.c:93:23
	movq	-24(%rbp), %rax
	.loc	1 93 30 is_stmt 0               # src/init/path.c:93:30
	movq	8(%rax), %rdi
	.loc	1 93 10                         # src/init/path.c:93:10
	callq	extract_path
	.loc	1 93 8                          # src/init/path.c:93:8
	movq	%rax, -32(%rbp)
	.loc	1 94 11 is_stmt 1               # src/init/path.c:94:11
	movq	-32(%rbp), %rax
	.loc	1 94 3 is_stmt 0                # src/init/path.c:94:3
	movq	%rax, -8(%rbp)
	jmp	.LBB4_8
.Ltmp34:
.LBB4_7:
	.loc	1 96 2 is_stmt 1                # src/init/path.c:96:2
	movq	$0, -8(%rbp)
.LBB4_8:
	.loc	1 97 1                          # src/init/path.c:97:1
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp35:
.Lfunc_end4:
	.size	get_path, .Lfunc_end4-get_path
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"malloc"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"PATH"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"/"
	.size	.L.str.2, 2

	.file	2 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
	.file	3 "/mnt/nfs/homes/cboukhal/42/minishell" "src/init/../../include/minishell.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	8                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
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
	.byte	10                              # Abbreviation Code
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
	.byte	11                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0x1da DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	369                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	376                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	369                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x61:0x60 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	376                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x7a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.long	381                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x88:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x96:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string16                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xa4:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string17                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.long	381                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xb2:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string18                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.long	376                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0xc1:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	376                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0xda:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.long	376                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xe8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	400                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xf6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string19                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.long	376                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x105:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	393                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x11e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x12d:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	376                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x146:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string20                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x154:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string26                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.long	418                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x162:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.long	376                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	7                               # Abbrev [7] 0x171:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x178:0x5 DW_TAG_pointer_type
	.long	381                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x17d:0x5 DW_TAG_pointer_type
	.long	386                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x182:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x189:0x7 DW_TAG_base_type
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	9                               # Abbrev [9] 0x190:0xb DW_TAG_typedef
	.long	411                             # DW_AT_type
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x19b:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # Abbrev [8] 0x1a2:0x5 DW_TAG_pointer_type
	.long	423                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x1a7:0xb DW_TAG_typedef
	.long	434                             # DW_AT_type
	.long	.Linfo_string25                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x1b2:0x2d DW_TAG_structure_type
	.long	.Linfo_string24                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x1ba:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1c6:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	381                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	11                              # Abbrev [11] 0x1d2:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	479                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	8                               # Abbrev [8] 0x1df:0x5 DW_TAG_pointer_type
	.long	434                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/init/path.c"               # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/42/minishell" # string offset=54
.Linfo_string3:
	.asciz	"size"                          # string offset=91
.Linfo_string4:
	.asciz	"int"                           # string offset=96
.Linfo_string5:
	.asciz	"extract_path"                  # string offset=100
.Linfo_string6:
	.asciz	"char"                          # string offset=113
.Linfo_string7:
	.asciz	"add_slash"                     # string offset=118
.Linfo_string8:
	.asciz	"is_path"                       # string offset=128
.Linfo_string9:
	.asciz	"_Bool"                         # string offset=136
.Linfo_string10:
	.asciz	"get_path"                      # string offset=142
.Linfo_string11:
	.asciz	"arg"                           # string offset=151
.Linfo_string12:
	.asciz	"i"                             # string offset=155
.Linfo_string13:
	.asciz	"path"                          # string offset=157
.Linfo_string14:
	.asciz	"long unsigned int"             # string offset=162
.Linfo_string15:
	.asciz	"size_t"                        # string offset=180
.Linfo_string16:
	.asciz	"j"                             # string offset=187
.Linfo_string17:
	.asciz	"path_copy"                     # string offset=189
.Linfo_string18:
	.asciz	"path_splitted"                 # string offset=199
.Linfo_string19:
	.asciz	"path_with_slash"               # string offset=213
.Linfo_string20:
	.asciz	"env"                           # string offset=229
.Linfo_string21:
	.asciz	"name"                          # string offset=233
.Linfo_string22:
	.asciz	"value"                         # string offset=238
.Linfo_string23:
	.asciz	"next"                          # string offset=244
.Linfo_string24:
	.asciz	"s_env"                         # string offset=249
.Linfo_string25:
	.asciz	"t_env"                         # string offset=255
.Linfo_string26:
	.asciz	"index"                         # string offset=261
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym size
	.addrsig_sym extract_path
	.addrsig_sym malloc
	.addrsig_sym ft_strlen
	.addrsig_sym perror
	.addrsig_sym ft_split
	.addrsig_sym add_slash
	.addrsig_sym free
	.addrsig_sym is_path
	.addrsig_sym ft_strncmp
	.addrsig_sym ft_strjoin
	.addrsig_sym free_char_array
	.section	.debug_line,"",@progbits
.Lline_table_start0:
