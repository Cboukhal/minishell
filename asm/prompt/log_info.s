	.text
	.file	"log_info.c"
	.globl	set_log_info_colors             # -- Begin function set_log_info_colors
	.p2align	4, 0x90
	.type	set_log_info_colors,@function
set_log_info_colors:                    # @set_log_info_colors
.Lfunc_begin0:
	.file	1 "/mnt/nfs/homes/cboukhal/minishell" "src/prompt/log_info.c"
	.loc	1 16 0                          # src/prompt/log_info.c:16:0
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
	.loc	1 20 31 prologue_end            # src/prompt/log_info.c:20:31
	movq	-8(%rbp), %rsi
	.loc	1 20 8 is_stmt 0                # src/prompt/log_info.c:20:8
	movabsq	$.L.str, %rdi
	callq	ft_strjoin
	.loc	1 20 6                          # src/prompt/log_info.c:20:6
	movq	%rax, -16(%rbp)
	.loc	1 21 34 is_stmt 1               # src/prompt/log_info.c:21:34
	movq	-16(%rbp), %rdi
	.loc	1 21 23 is_stmt 0               # src/prompt/log_info.c:21:23
	movabsq	$.L.str.1, %rsi
	callq	ft_strjoin
	.loc	1 21 21                         # src/prompt/log_info.c:21:21
	movq	%rax, -24(%rbp)
	.loc	1 22 7 is_stmt 1                # src/prompt/log_info.c:22:7
	movq	-8(%rbp), %rdi
	.loc	1 22 2 is_stmt 0                # src/prompt/log_info.c:22:2
	callq	free
	.loc	1 23 7 is_stmt 1                # src/prompt/log_info.c:23:7
	movq	-16(%rbp), %rdi
	.loc	1 23 2 is_stmt 0                # src/prompt/log_info.c:23:2
	callq	free
	.loc	1 24 10 is_stmt 1               # src/prompt/log_info.c:24:10
	movq	-24(%rbp), %rax
	.loc	1 24 2 is_stmt 0                # src/prompt/log_info.c:24:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	set_log_info_colors, .Lfunc_end0-set_log_info_colors
	.cfi_endproc
                                        # -- End function
	.globl	get_hostname_length             # -- Begin function get_hostname_length
	.p2align	4, 0x90
	.type	get_hostname_length,@function
get_hostname_length:                    # @get_hostname_length
.Lfunc_begin1:
	.loc	1 28 0 is_stmt 1                # src/prompt/log_info.c:28:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp2:
	.loc	1 31 4 prologue_end             # src/prompt/log_info.c:31:4
	movl	$0, -12(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 32 9                          # src/prompt/log_info.c:32:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	.loc	1 32 21 is_stmt 0               # src/prompt/log_info.c:32:21
	je	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 32 24                         # src/prompt/log_info.c:32:24
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	.loc	1 32 36                         # src/prompt/log_info.c:32:36
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$58, %ecx
	movb	%al, -13(%rbp)                  # 1-byte Spill
	.loc	1 32 43                         # src/prompt/log_info.c:32:43
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 32 46                         # src/prompt/log_info.c:32:46
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 32 58                         # src/prompt/log_info.c:32:58
	cmpl	$46, %eax
	setne	%al
	movb	%al, -13(%rbp)                  # 1-byte Spill
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 0 58                          # src/prompt/log_info.c:0:58
	movb	-13(%rbp), %al                  # 1-byte Reload
	.loc	1 32 2                          # src/prompt/log_info.c:32:2
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	1 33 4 is_stmt 1                # src/prompt/log_info.c:33:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 32 2                          # src/prompt/log_info.c:32:2
	jmp	.LBB1_1
.LBB1_6:
	.loc	1 34 10                         # src/prompt/log_info.c:34:10
	movl	-12(%rbp), %eax
	.loc	1 34 2 is_stmt 0                # src/prompt/log_info.c:34:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	get_hostname_length, .Lfunc_end1-get_hostname_length
	.cfi_endproc
                                        # -- End function
	.globl	get_hostname                    # -- Begin function get_hostname
	.p2align	4, 0x90
	.type	get_hostname,@function
get_hostname:                           # @get_hostname
.Lfunc_begin2:
	.loc	1 38 0 is_stmt 1                # src/prompt/log_info.c:38:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
.Ltmp4:
	.loc	1 43 11 prologue_end            # src/prompt/log_info.c:43:11
	movq	$0, -24(%rbp)
	.loc	1 44 8                          # src/prompt/log_info.c:44:8
	movabsq	$.L.str.2, %rdi
	callq	getenv
	.loc	1 44 6 is_stmt 0                # src/prompt/log_info.c:44:6
	movq	%rax, -32(%rbp)
.Ltmp5:
	.loc	1 45 10 is_stmt 1               # src/prompt/log_info.c:45:10
	cmpq	$0, -32(%rbp)
.Ltmp6:
	.loc	1 45 6 is_stmt 0                # src/prompt/log_info.c:45:6
	jne	.LBB2_2
# %bb.1:
.Ltmp7:
	.loc	1 46 3 is_stmt 1                # src/prompt/log_info.c:46:3
	movq	$0, -8(%rbp)
	jmp	.LBB2_9
.Ltmp8:
.LBB2_2:
	.loc	1 47 4                          # src/prompt/log_info.c:47:4
	movl	$0, -12(%rbp)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	.loc	1 48 9                          # src/prompt/log_info.c:48:9
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	1 48 16 is_stmt 0               # src/prompt/log_info.c:48:16
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	1 48 19                         # src/prompt/log_info.c:48:19
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	.loc	1 48 26                         # src/prompt/log_info.c:48:26
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$47, %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	.loc	1 48 33                         # src/prompt/log_info.c:48:33
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	1 48 36                         # src/prompt/log_info.c:48:36
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	1 48 43                         # src/prompt/log_info.c:48:43
	cmpl	$46, %eax
	setne	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	1 0 43                          # src/prompt/log_info.c:0:43
	movb	-33(%rbp), %al                  # 1-byte Reload
	.loc	1 48 2                          # src/prompt/log_info.c:48:2
	testb	$1, %al
	jne	.LBB2_7
	jmp	.LBB2_8
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	.loc	1 49 4 is_stmt 1                # src/prompt/log_info.c:49:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	.loc	1 48 2                          # src/prompt/log_info.c:48:2
	jmp	.LBB2_3
.LBB2_8:
	.loc	1 50 41                         # src/prompt/log_info.c:50:41
	movq	-32(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 50 20 is_stmt 0               # src/prompt/log_info.c:50:20
	callq	get_hostname_length
	.loc	1 50 49                         # src/prompt/log_info.c:50:49
	addl	$1, %eax
	.loc	1 50 20                         # src/prompt/log_info.c:50:20
	movslq	%eax, %rdi
	.loc	1 50 13                         # src/prompt/log_info.c:50:13
	callq	malloc
	.loc	1 50 11                         # src/prompt/log_info.c:50:11
	movq	%rax, -24(%rbp)
	.loc	1 51 13 is_stmt 1               # src/prompt/log_info.c:51:13
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	.loc	1 51 24 is_stmt 0               # src/prompt/log_info.c:51:24
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	.loc	1 51 53                         # src/prompt/log_info.c:51:53
	movq	-32(%rbp), %rdi
	movslq	-12(%rbp), %rax
	addq	%rax, %rdi
	.loc	1 51 32                         # src/prompt/log_info.c:51:32
	callq	get_hostname_length
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	.loc	1 51 61                         # src/prompt/log_info.c:51:61
	addl	$1, %eax
	.loc	1 51 32                         # src/prompt/log_info.c:51:32
	movslq	%eax, %rdx
	.loc	1 51 2                          # src/prompt/log_info.c:51:2
	callq	ft_strlcpy
	.loc	1 52 2 is_stmt 1                # src/prompt/log_info.c:52:2
	movq	-24(%rbp), %rax
	.loc	1 52 14 is_stmt 0               # src/prompt/log_info.c:52:14
	movb	$64, (%rax)
	.loc	1 53 10 is_stmt 1               # src/prompt/log_info.c:53:10
	movq	-24(%rbp), %rax
	.loc	1 53 2 is_stmt 0                # src/prompt/log_info.c:53:2
	movq	%rax, -8(%rbp)
.LBB2_9:
	.loc	1 54 1 is_stmt 1                # src/prompt/log_info.c:54:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp9:
.Lfunc_end2:
	.size	get_hostname, .Lfunc_end2-get_hostname
	.cfi_endproc
                                        # -- End function
	.globl	get_log_info                    # -- Begin function get_log_info
	.p2align	4, 0x90
	.type	get_log_info,@function
get_log_info:                           # @get_log_info
.Lfunc_begin3:
	.loc	1 57 0                          # src/prompt/log_info.c:57:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
.Ltmp10:
	.loc	1 63 13 prologue_end            # src/prompt/log_info.c:63:13
	movabsq	$.L.str.3, %rdi
	callq	getenv
	.loc	1 63 11 is_stmt 0               # src/prompt/log_info.c:63:11
	movq	%rax, -24(%rbp)
	.loc	1 64 13 is_stmt 1               # src/prompt/log_info.c:64:13
	callq	get_hostname
	.loc	1 64 11 is_stmt 0               # src/prompt/log_info.c:64:11
	movq	%rax, -16(%rbp)
	.loc	1 65 19 is_stmt 1               # src/prompt/log_info.c:65:19
	movq	-24(%rbp), %rdi
	.loc	1 65 29 is_stmt 0               # src/prompt/log_info.c:65:29
	movq	-16(%rbp), %rsi
	.loc	1 65 8                          # src/prompt/log_info.c:65:8
	callq	ft_strjoin
	.loc	1 65 6                          # src/prompt/log_info.c:65:6
	movq	%rax, -8(%rbp)
	.loc	1 66 28 is_stmt 1               # src/prompt/log_info.c:66:28
	movq	-8(%rbp), %rdi
	.loc	1 66 8 is_stmt 0                # src/prompt/log_info.c:66:8
	callq	set_log_info_colors
	.loc	1 66 6                          # src/prompt/log_info.c:66:6
	movq	%rax, -8(%rbp)
	.loc	1 67 24 is_stmt 1               # src/prompt/log_info.c:67:24
	movq	-8(%rbp), %rdi
	.loc	1 67 13 is_stmt 0               # src/prompt/log_info.c:67:13
	movabsq	$.L.str.4, %rsi
	callq	ft_strjoin
	.loc	1 67 11                         # src/prompt/log_info.c:67:11
	movq	%rax, -32(%rbp)
	.loc	1 68 7 is_stmt 1                # src/prompt/log_info.c:68:7
	movq	-8(%rbp), %rdi
	.loc	1 68 2 is_stmt 0                # src/prompt/log_info.c:68:2
	callq	free
	.loc	1 69 7 is_stmt 1                # src/prompt/log_info.c:69:7
	movq	-16(%rbp), %rdi
	.loc	1 69 2 is_stmt 0                # src/prompt/log_info.c:69:2
	callq	free
	.loc	1 70 10 is_stmt 1               # src/prompt/log_info.c:70:10
	movq	-32(%rbp), %rax
	.loc	1 70 2 is_stmt 0                # src/prompt/log_info.c:70:2
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end3:
	.size	get_log_info, .Lfunc_end3-get_log_info
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033[1m\033[32m"
	.size	.L.str, 10

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\033[0m"
	.size	.L.str.1, 5

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"SESSION_MANAGER"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"USER"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	":"
	.size	.L.str.4, 2

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
	.byte	1                               # Abbrev [1] 0xb:0x144 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x1 DW_TAG_pointer_type
	.byte	3                               # Abbrev [3] 0x2b:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	315                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x44:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x52:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x60:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string11                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0x6f:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string5                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	327                             # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x88:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x96:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.long	327                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xa5:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string7                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	315                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0xbe:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string13                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	39                              # DW_AT_decl_line
	.long	327                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xcc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0xda:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	41                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	3                               # Abbrev [3] 0xe9:0x52 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string8                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	315                             # DW_AT_type
                                        # DW_AT_external
	.byte	5                               # Abbrev [5] 0x102:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string10                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x110:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string12                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x11e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string14                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	5                               # Abbrev [5] 0x12c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string9                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.long	315                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x13b:0x5 DW_TAG_pointer_type
	.long	320                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x140:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	7                               # Abbrev [7] 0x147:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/prompt/log_info.c"         # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/cboukhal/minishell" # string offset=60
.Linfo_string3:
	.asciz	"set_log_info_colors"           # string offset=94
.Linfo_string4:
	.asciz	"char"                          # string offset=114
.Linfo_string5:
	.asciz	"get_hostname_length"           # string offset=119
.Linfo_string6:
	.asciz	"int"                           # string offset=139
.Linfo_string7:
	.asciz	"get_hostname"                  # string offset=143
.Linfo_string8:
	.asciz	"get_log_info"                  # string offset=156
.Linfo_string9:
	.asciz	"log_info"                      # string offset=169
.Linfo_string10:
	.asciz	"tmp"                           # string offset=178
.Linfo_string11:
	.asciz	"log_info_colorized"            # string offset=182
.Linfo_string12:
	.asciz	"hostname"                      # string offset=201
.Linfo_string13:
	.asciz	"i"                             # string offset=210
.Linfo_string14:
	.asciz	"username"                      # string offset=212
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_log_info_colors
	.addrsig_sym ft_strjoin
	.addrsig_sym free
	.addrsig_sym get_hostname_length
	.addrsig_sym get_hostname
	.addrsig_sym getenv
	.addrsig_sym malloc
	.addrsig_sym ft_strlcpy
	.section	.debug_line,"",@progbits
.Lline_table_start0:
