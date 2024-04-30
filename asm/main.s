	.text
	.file	"main.c"
	.file	1 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/../include/minishell.h"
	.globl	test_mode                       # -- Begin function test_mode
	.p2align	4, 0x90
	.type	test_mode,@function
test_mode:                              # @test_mode
.Lfunc_begin0:
	.file	2 "/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" "src/main.c"
	.loc	2 75 0                          # src/main.c:75:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp0:
	.loc	2 78 11 prologue_end            # src/main.c:78:11
	cmpl	$2, -12(%rbp)
.Ltmp1:
	.loc	2 78 6 is_stmt 0                # src/main.c:78:6
	jne	.LBB0_2
# %bb.1:
.Ltmp2:
	.loc	2 80 20 is_stmt 1               # src/main.c:80:20
	movq	-8(%rbp), %rdi
	.loc	2 80 31 is_stmt 0               # src/main.c:80:31
	movq	-24(%rbp), %rsi
	.loc	2 80 3                          # src/main.c:80:3
	callq	lexical_analysis
	.loc	2 81 11 is_stmt 1               # src/main.c:81:11
	movq	-8(%rbp), %rdi
	.loc	2 81 3 is_stmt 0                # src/main.c:81:3
	callq	parsing
	.loc	2 82 13 is_stmt 1               # src/main.c:82:13
	movq	-8(%rbp), %rdi
	.loc	2 82 3 is_stmt 0                # src/main.c:82:3
	callq	execution
	.loc	2 83 17 is_stmt 1               # src/main.c:83:17
	movq	-8(%rbp), %rax
	.loc	2 83 28 is_stmt 0               # src/main.c:83:28
	movl	44(%rax), %eax
	.loc	2 83 15                         # src/main.c:83:15
	movl	%eax, -28(%rbp)
	.loc	2 84 17 is_stmt 1               # src/main.c:84:17
	movq	-8(%rbp), %rdi
	.loc	2 84 3 is_stmt 0                # src/main.c:84:3
	callq	clean_program
	.loc	2 85 8 is_stmt 1                # src/main.c:85:8
	movl	-28(%rbp), %edi
	.loc	2 85 3 is_stmt 0                # src/main.c:85:3
	callq	exit
.Ltmp3:
.LBB0_2:
	.loc	2 87 2 is_stmt 1                # src/main.c:87:2
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	ft_printf
	.loc	2 88 16                         # src/main.c:88:16
	movq	-8(%rbp), %rdi
	.loc	2 88 2 is_stmt 0                # src/main.c:88:2
	callq	clean_program
	.loc	2 89 2 is_stmt 1                # src/main.c:89:2
	movl	$1, %edi
	callq	exit
.Ltmp4:
.Lfunc_end0:
	.size	test_mode, .Lfunc_end0-test_mode
	.cfi_endproc
                                        # -- End function
	.globl	there_is_an_expenssion          # -- Begin function there_is_an_expenssion
	.p2align	4, 0x90
	.type	there_is_an_expenssion,@function
there_is_an_expenssion:                 # @there_is_an_expenssion
.Lfunc_begin1:
	.loc	2 93 0                          # src/main.c:93:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp5:
	.loc	2 97 4 prologue_end             # src/main.c:97:4
	movl	$0, -12(%rbp)
	.loc	2 98 4                          # src/main.c:98:4
	movl	$0, -16(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 99 9                          # src/main.c:99:9
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	.loc	2 99 2 is_stmt 0                # src/main.c:99:2
	cmpb	$0, (%rax,%rcx)
	je	.LBB1_5
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp6:
	.loc	2 101 7 is_stmt 1               # src/main.c:101:7
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	.loc	2 101 16 is_stmt 0              # src/main.c:101:16
	cmpl	$36, %eax
.Ltmp7:
	.loc	2 101 7                         # src/main.c:101:7
	jne	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
.Ltmp8:
	.loc	2 102 5 is_stmt 1               # src/main.c:102:5
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
.Ltmp9:
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	.loc	2 103 4                         # src/main.c:103:4
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
.Ltmp10:
	.loc	2 99 2                          # src/main.c:99:2
	jmp	.LBB1_1
.LBB1_5:
	.loc	2 105 10                        # src/main.c:105:10
	movl	-16(%rbp), %eax
	.loc	2 105 2 is_stmt 0               # src/main.c:105:2
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end1:
	.size	there_is_an_expenssion, .Lfunc_end1-there_is_an_expenssion
	.cfi_endproc
                                        # -- End function
	.globl	jspcmtappeler                   # -- Begin function jspcmtappeler
	.p2align	4, 0x90
	.type	jspcmtappeler,@function
jspcmtappeler:                          # @jspcmtappeler
.Lfunc_begin2:
	.loc	2 109 0 is_stmt 1               # src/main.c:109:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.Ltmp12:
	.loc	2 115 4 prologue_end            # src/main.c:115:4
	movl	$0, -36(%rbp)
	.loc	2 116 19                        # src/main.c:116:19
	movq	-8(%rbp), %rdi
	.loc	2 116 10 is_stmt 0              # src/main.c:116:10
	movl	$36, %esi
	callq	ft_split
	.loc	2 116 8                         # src/main.c:116:8
	movq	%rax, -24(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 117 8 is_stmt 1               # src/main.c:117:8
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 117 2 is_stmt 0               # src/main.c:117:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB2_8
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp13:
	.loc	2 119 9 is_stmt 1               # src/main.c:119:9
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	.loc	2 119 7 is_stmt 0               # src/main.c:119:7
	movq	%rax, -32(%rbp)
.Ltmp14:
	.loc	2 120 22 is_stmt 1              # src/main.c:120:22
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 120 7 is_stmt 0               # src/main.c:120:7
	movabsq	$.L.str.1, %rdi
	callq	ft_strcmp
	.loc	2 120 32                        # src/main.c:120:32
	cmpl	$0, %eax
.Ltmp15:
	.loc	2 120 7                         # src/main.c:120:7
	jne	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp16:
	.loc	2 121 23 is_stmt 1              # src/main.c:121:23
	movq	-16(%rbp), %rax
	.loc	2 121 34 is_stmt 0              # src/main.c:121:34
	movl	44(%rax), %edi
	.loc	2 121 15                        # src/main.c:121:15
	callq	ft_itoa
	movq	%rax, %rdx
	.loc	2 121 4                         # src/main.c:121:4
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 121 13                        # src/main.c:121:13
	movq	%rdx, (%rax,%rcx,8)
	.loc	2 121 4                         # src/main.c:121:4
	jmp	.LBB2_7
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp17:
	.loc	2 124 35 is_stmt 1              # src/main.c:124:35
	movq	-16(%rbp), %rax
	.loc	2 124 46 is_stmt 0              # src/main.c:124:46
	movq	56(%rax), %rdi
	.loc	2 124 51                        # src/main.c:124:51
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 124 15                        # src/main.c:124:15
	callq	get_expansion_value
	movq	%rax, %rdx
	.loc	2 124 4                         # src/main.c:124:4
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 124 13                        # src/main.c:124:13
	movq	%rdx, (%rax,%rcx,8)
.Ltmp18:
	.loc	2 125 9 is_stmt 1               # src/main.c:125:9
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
.Ltmp19:
	.loc	2 125 8 is_stmt 0               # src/main.c:125:8
	jne	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
.Ltmp20:
	.loc	2 126 26 is_stmt 1              # src/main.c:126:26
	movq	-8(%rbp), %rdi
	.loc	2 126 16 is_stmt 0              # src/main.c:126:16
	callq	ft_strdup
	movq	%rax, %rdx
	.loc	2 126 5                         # src/main.c:126:5
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	.loc	2 126 14                        # src/main.c:126:14
	movq	%rdx, (%rax,%rcx,8)
.Ltmp21:
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 0 14                          # src/main.c:0:14
	jmp	.LBB2_7
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	.loc	2 128 8 is_stmt 1               # src/main.c:128:8
	movq	-32(%rbp), %rdi
	.loc	2 128 3 is_stmt 0               # src/main.c:128:3
	callq	free
	.loc	2 129 4 is_stmt 1               # src/main.c:129:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.Ltmp22:
	.loc	2 117 2                         # src/main.c:117:2
	jmp	.LBB2_1
.LBB2_8:
	.loc	2 131 4                         # src/main.c:131:4
	movl	$0, -36(%rbp)
	.loc	2 132 4                         # src/main.c:132:4
	movl	$0, -40(%rbp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	.loc	2 133 9                         # src/main.c:133:9
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	.loc	2 133 2 is_stmt 0               # src/main.c:133:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	.loc	2 134 4 is_stmt 1               # src/main.c:134:4
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	.loc	2 133 2                         # src/main.c:133:2
	jmp	.LBB2_9
.LBB2_11:
.Ltmp23:
	.loc	2 135 8                         # src/main.c:135:8
	cmpl	$0, -40(%rbp)
.Ltmp24:
	.loc	2 135 6 is_stmt 0               # src/main.c:135:6
	je	.LBB2_21
# %bb.12:
.Ltmp25:
	.loc	2 137 4 is_stmt 1               # src/main.c:137:4
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.Ltmp26:
	.loc	2 138 17                        # src/main.c:138:17
	movq	-8(%rbp), %rdi
	.loc	2 138 24 is_stmt 0              # src/main.c:138:24
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 138 7                         # src/main.c:138:7
	callq	ft_strcmp
	.loc	2 138 34                        # src/main.c:138:34
	cmpl	$0, %eax
.Ltmp27:
	.loc	2 138 7                         # src/main.c:138:7
	je	.LBB2_14
# %bb.13:
.Ltmp28:
	.loc	2 139 20 is_stmt 1              # src/main.c:139:20
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	.loc	2 139 10 is_stmt 0              # src/main.c:139:10
	callq	ft_strdup
	.loc	2 139 8                         # src/main.c:139:8
	movq	%rax, -32(%rbp)
	.loc	2 139 4                         # src/main.c:139:4
	jmp	.LBB2_15
.LBB2_14:
	.loc	2 141 8 is_stmt 1               # src/main.c:141:8
	movq	$0, -32(%rbp)
.Ltmp29:
.LBB2_15:
	.loc	2 142 4                         # src/main.c:142:4
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	.loc	2 143 12                        # src/main.c:143:12
	cmpl	$0, -40(%rbp)
	.loc	2 143 3 is_stmt 0               # src/main.c:143:3
	jle	.LBB2_20
# %bb.17:                               #   in Loop: Header=BB2_16 Depth=1
.Ltmp30:
	.loc	2 145 18 is_stmt 1              # src/main.c:145:18
	movq	-8(%rbp), %rdi
	.loc	2 145 25 is_stmt 0              # src/main.c:145:25
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 145 8                         # src/main.c:145:8
	callq	ft_strcmp
	.loc	2 145 35                        # src/main.c:145:35
	cmpl	$0, %eax
.Ltmp31:
	.loc	2 145 8                         # src/main.c:145:8
	je	.LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_16 Depth=1
.Ltmp32:
	.loc	2 146 29 is_stmt 1              # src/main.c:146:29
	movq	-32(%rbp), %rdi
	.loc	2 146 34 is_stmt 0              # src/main.c:146:34
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 146 11                        # src/main.c:146:11
	callq	ft_strjoin_n_free
	.loc	2 146 9                         # src/main.c:146:9
	movq	%rax, -32(%rbp)
.Ltmp33:
.LBB2_19:                               #   in Loop: Header=BB2_16 Depth=1
	.loc	2 147 5 is_stmt 1               # src/main.c:147:5
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	.loc	2 148 5                         # src/main.c:148:5
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
.Ltmp34:
	.loc	2 143 3                         # src/main.c:143:3
	jmp	.LBB2_16
.LBB2_20:
	.loc	2 150 2                         # src/main.c:150:2
	jmp	.LBB2_21
.Ltmp35:
.LBB2_21:
	.loc	2 151 18                        # src/main.c:151:18
	movq	-24(%rbp), %rdi
	.loc	2 151 2 is_stmt 0               # src/main.c:151:2
	callq	free_char_array
	.loc	2 152 7 is_stmt 1               # src/main.c:152:7
	movq	-8(%rbp), %rdi
	.loc	2 152 2 is_stmt 0               # src/main.c:152:2
	callq	free
	.loc	2 153 10 is_stmt 1              # src/main.c:153:10
	movq	-32(%rbp), %rax
	.loc	2 153 2 is_stmt 0               # src/main.c:153:2
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp36:
.Lfunc_end2:
	.size	jspcmtappeler, .Lfunc_end2-jspcmtappeler
	.cfi_endproc
                                        # -- End function
	.globl	parse_input                     # -- Begin function parse_input
	.p2align	4, 0x90
	.type	parse_input,@function
parse_input:                            # @parse_input
.Lfunc_begin3:
	.loc	2 158 0 is_stmt 1               # src/main.c:158:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.Ltmp37:
	.loc	2 164 19 prologue_end           # src/main.c:164:19
	movq	-16(%rbp), %rdi
	.loc	2 164 10 is_stmt 0              # src/main.c:164:10
	movl	$32, %esi
	callq	ft_split
	.loc	2 164 8                         # src/main.c:164:8
	movq	%rax, -48(%rbp)
	.loc	2 165 4 is_stmt 1               # src/main.c:165:4
	movl	$0, -28(%rbp)
	.loc	2 166 4                         # src/main.c:166:4
	movq	$2, -40(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	.loc	2 167 9                         # src/main.c:167:9
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 167 2 is_stmt 0               # src/main.c:167:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB3_8
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp38:
	.loc	2 169 7 is_stmt 1               # src/main.c:169:7
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsbl	(%rax), %eax
	.loc	2 169 19 is_stmt 0              # src/main.c:169:19
	cmpl	$39, %eax
.Ltmp39:
	.loc	2 169 7                         # src/main.c:169:7
	jne	.LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp40:
	.loc	2 170 5 is_stmt 1               # src/main.c:170:5
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
.Ltmp41:
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 171 8                         # src/main.c:171:8
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsbl	(%rax), %eax
	.loc	2 171 20 is_stmt 0              # src/main.c:171:20
	cmpl	$36, %eax
	.loc	2 171 28                        # src/main.c:171:28
	jne	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 171 32                        # src/main.c:171:32
	movq	-40(%rbp), %rax
	.loc	2 171 34                        # src/main.c:171:34
	andq	$1, %rax
	.loc	2 171 38                        # src/main.c:171:38
	cmpq	$0, %rax
.Ltmp42:
	.loc	2 171 7                         # src/main.c:171:7
	jne	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
.Ltmp43:
	.loc	2 172 29 is_stmt 1              # src/main.c:172:29
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	.loc	2 172 39 is_stmt 0              # src/main.c:172:39
	movq	-24(%rbp), %rsi
	.loc	2 172 15                        # src/main.c:172:15
	callq	jspcmtappeler
	movq	%rax, %rdx
	.loc	2 172 4                         # src/main.c:172:4
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	.loc	2 172 13                        # src/main.c:172:13
	movq	%rdx, (%rax,%rcx,8)
.Ltmp44:
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	.loc	2 173 4 is_stmt 1               # src/main.c:173:4
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.Ltmp45:
	.loc	2 167 2                         # src/main.c:167:2
	jmp	.LBB3_1
.LBB3_8:
	.loc	2 175 4                         # src/main.c:175:4
	movl	$0, -28(%rbp)
	.loc	2 176 4                         # src/main.c:176:4
	movq	$0, -40(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	.loc	2 177 9                         # src/main.c:177:9
	movq	-48(%rbp), %rax
	.loc	2 177 15 is_stmt 0              # src/main.c:177:15
	movq	-40(%rbp), %rcx
	.loc	2 177 2                         # src/main.c:177:2
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_9 Depth=1
	.loc	2 178 4 is_stmt 1               # src/main.c:178:4
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	.loc	2 177 2                         # src/main.c:177:2
	jmp	.LBB3_9
.LBB3_11:
.Ltmp46:
	.loc	2 179 8                         # src/main.c:179:8
	cmpq	$1, -40(%rbp)
.Ltmp47:
	.loc	2 179 6 is_stmt 0               # src/main.c:179:6
	jne	.LBB3_13
# %bb.12:
.Ltmp48:
	.loc	2 180 19 is_stmt 1              # src/main.c:180:19
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	.loc	2 180 9 is_stmt 0               # src/main.c:180:9
	callq	ft_strdup
	.loc	2 180 7                         # src/main.c:180:7
	movq	%rax, -56(%rbp)
	.loc	2 180 3                         # src/main.c:180:3
	jmp	.LBB3_19
.LBB3_13:
.Ltmp49:
	.loc	2 181 13 is_stmt 1              # src/main.c:181:13
	cmpq	$0, -40(%rbp)
.Ltmp50:
	.loc	2 181 11 is_stmt 0              # src/main.c:181:11
	je	.LBB3_18
# %bb.14:
.Ltmp51:
	.loc	2 183 7 is_stmt 1               # src/main.c:183:7
	movq	-40(%rbp), %rax
	.loc	2 183 9 is_stmt 0               # src/main.c:183:9
	subq	$2, %rax
	.loc	2 183 5                         # src/main.c:183:5
	movq	%rax, -40(%rbp)
	.loc	2 184 20 is_stmt 1              # src/main.c:184:20
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	.loc	2 184 9 is_stmt 0               # src/main.c:184:9
	movabsq	$.L.str.2, %rsi
	callq	ft_strjoin
	.loc	2 184 7                         # src/main.c:184:7
	movq	%rax, -56(%rbp)
	.loc	2 185 27 is_stmt 1              # src/main.c:185:27
	movq	-56(%rbp), %rdi
	.loc	2 185 32 is_stmt 0              # src/main.c:185:32
	movq	-48(%rbp), %rax
	movq	8(%rax), %rsi
	.loc	2 185 9                         # src/main.c:185:9
	callq	ft_strjoin_n_free
	.loc	2 185 7                         # src/main.c:185:7
	movq	%rax, -56(%rbp)
	.loc	2 186 7 is_stmt 1               # src/main.c:186:7
	movl	-28(%rbp), %eax
	.loc	2 186 9 is_stmt 0               # src/main.c:186:9
	addl	$2, %eax
	.loc	2 186 5                         # src/main.c:186:5
	movl	%eax, -28(%rbp)
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	.loc	2 187 12 is_stmt 1              # src/main.c:187:12
	cmpq	$0, -40(%rbp)
	.loc	2 187 3 is_stmt 0               # src/main.c:187:3
	jbe	.LBB3_17
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
.Ltmp52:
	.loc	2 189 28 is_stmt 1              # src/main.c:189:28
	movq	-56(%rbp), %rdi
	.loc	2 189 10 is_stmt 0              # src/main.c:189:10
	movabsq	$.L.str.2, %rsi
	callq	ft_strjoin_n_free
	.loc	2 189 8                         # src/main.c:189:8
	movq	%rax, -56(%rbp)
	.loc	2 190 28 is_stmt 1              # src/main.c:190:28
	movq	-56(%rbp), %rdi
	.loc	2 190 33 is_stmt 0              # src/main.c:190:33
	movq	-48(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	.loc	2 190 10                        # src/main.c:190:10
	callq	ft_strjoin_n_free
	.loc	2 190 8                         # src/main.c:190:8
	movq	%rax, -56(%rbp)
	.loc	2 191 5 is_stmt 1               # src/main.c:191:5
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	2 192 5                         # src/main.c:192:5
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
.Ltmp53:
	.loc	2 187 3                         # src/main.c:187:3
	jmp	.LBB3_15
.LBB3_17:
	.loc	2 194 2                         # src/main.c:194:2
	jmp	.LBB3_18
.Ltmp54:
.LBB3_18:
	.loc	2 0 2 is_stmt 0                 # src/main.c:0:2
	jmp	.LBB3_19
.LBB3_19:
	.loc	2 195 18 is_stmt 1              # src/main.c:195:18
	movq	-48(%rbp), %rdi
	.loc	2 195 2 is_stmt 0               # src/main.c:195:2
	callq	free_char_array
.Ltmp55:
	.loc	2 196 8 is_stmt 1               # src/main.c:196:8
	cmpq	$0, -40(%rbp)
.Ltmp56:
	.loc	2 196 6 is_stmt 0               # src/main.c:196:6
	jne	.LBB3_21
# %bb.20:
.Ltmp57:
	.loc	2 197 11 is_stmt 1              # src/main.c:197:11
	movq	-16(%rbp), %rax
	.loc	2 197 3 is_stmt 0               # src/main.c:197:3
	movq	%rax, -8(%rbp)
	jmp	.LBB3_22
.LBB3_21:
.Ltmp58:
	.loc	2 200 8 is_stmt 1               # src/main.c:200:8
	movq	-16(%rbp), %rdi
	.loc	2 200 3 is_stmt 0               # src/main.c:200:3
	callq	free
	.loc	2 201 11 is_stmt 1              # src/main.c:201:11
	movq	-56(%rbp), %rax
	.loc	2 201 3 is_stmt 0               # src/main.c:201:3
	movq	%rax, -8(%rbp)
.Ltmp59:
.LBB3_22:
	.loc	2 203 1 is_stmt 1               # src/main.c:203:1
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp60:
.Lfunc_end3:
	.size	parse_input, .Lfunc_end3-parse_input
	.cfi_endproc
                                        # -- End function
	.globl	lexical_modification            # -- Begin function lexical_modification
	.p2align	4, 0x90
	.type	lexical_modification,@function
lexical_modification:                   # @lexical_modification
.Lfunc_begin4:
	.loc	2 206 0                         # src/main.c:206:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.Ltmp61:
	.loc	2 207 29 prologue_end           # src/main.c:207:29
	movq	-8(%rbp), %rax
	.loc	2 207 40 is_stmt 0              # src/main.c:207:40
	movq	16(%rax), %rdi
	.loc	2 207 6                         # src/main.c:207:6
	callq	there_is_an_expenssion
	.loc	2 207 47                        # src/main.c:207:47
	cmpl	$0, %eax
.Ltmp62:
	.loc	2 207 6                         # src/main.c:207:6
	je	.LBB4_2
# %bb.1:
.Ltmp63:
	.loc	2 208 34 is_stmt 1              # src/main.c:208:34
	movq	-8(%rbp), %rax
	.loc	2 208 45 is_stmt 0              # src/main.c:208:45
	movq	16(%rax), %rdi
	.loc	2 208 52                        # src/main.c:208:52
	movq	-8(%rbp), %rsi
	.loc	2 208 22                        # src/main.c:208:22
	callq	parse_input
	movq	%rax, %rcx
	.loc	2 208 3                         # src/main.c:208:3
	movq	-8(%rbp), %rax
	.loc	2 208 20                        # src/main.c:208:20
	movq	%rcx, 16(%rax)
.Ltmp64:
.LBB4_2:
	.loc	2 209 1 is_stmt 1               # src/main.c:209:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp65:
.Lfunc_end4:
	.size	lexical_modification, .Lfunc_end4-lexical_modification
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.loc	2 212 0                         # src/main.c:212:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp                      # imm = 0x120
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.Ltmp66:
	.loc	2 216 29 prologue_end           # src/main.c:216:29
	movq	-24(%rbp), %rsi
	.loc	2 216 2 is_stmt 0               # src/main.c:216:2
	leaq	-280(%rbp), %rdi
	callq	init_minishell
.Ltmp67:
	.loc	2 217 11 is_stmt 1              # src/main.c:217:11
	cmpl	$1, -8(%rbp)
.Ltmp68:
	.loc	2 217 6 is_stmt 0               # src/main.c:217:6
	jle	.LBB5_2
# %bb.1:
.Ltmp69:
	.loc	2 218 25 is_stmt 1              # src/main.c:218:25
	movl	-8(%rbp), %esi
	.loc	2 218 31 is_stmt 0              # src/main.c:218:31
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	.loc	2 218 3                         # src/main.c:218:3
	leaq	-280(%rbp), %rdi
	callq	test_mode
.Ltmp70:
.LBB5_2:
	.loc	2 219 2 is_stmt 1               # src/main.c:219:2
	jmp	.LBB5_3
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	.loc	2 219 25 is_stmt 0              # src/main.c:219:25
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, -272(%rbp)
	movb	%al, -285(%rbp)                 # 1-byte Spill
	.loc	2 219 32                        # src/main.c:219:32
	jne	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_3 Depth=1
	.loc	2 219 44                        # src/main.c:219:44
	cmpl	$3, g_signal
	setne	%al
	movb	%al, -285(%rbp)                 # 1-byte Spill
.LBB5_5:                                #   in Loop: Header=BB5_3 Depth=1
	.loc	2 0 44                          # src/main.c:0:44
	movb	-285(%rbp), %al                 # 1-byte Reload
	.loc	2 219 2                         # src/main.c:219:2
	testb	$1, %al
	jne	.LBB5_6
	jmp	.LBB5_9
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
.Ltmp71:
	.loc	2 221 25 is_stmt 1              # src/main.c:221:25
	leaq	-280(%rbp), %rdi
	addq	$32, %rdi
	.loc	2 221 3 is_stmt 0               # src/main.c:221:3
	callq	get_prompt
	.loc	2 222 40 is_stmt 1              # src/main.c:222:40
	movq	-248(%rbp), %rdi
	.loc	2 222 21 is_stmt 0              # src/main.c:222:21
	callq	readline
	.loc	2 222 19                        # src/main.c:222:19
	movq	%rax, -264(%rbp)
.Ltmp72:
	.loc	2 223 23 is_stmt 1              # src/main.c:223:23
	cmpq	$0, -264(%rbp)
.Ltmp73:
	.loc	2 223 7 is_stmt 0               # src/main.c:223:7
	jne	.LBB5_8
# %bb.7:
.Ltmp74:
	.loc	2 225 4 is_stmt 1               # src/main.c:225:4
	movl	$1, %edi
	movabsq	$.L.str.3, %rsi
	movl	$5, %edx
	callq	write
	.loc	2 226 4                         # src/main.c:226:4
	jmp	.LBB5_9
.Ltmp75:
.LBB5_8:                                #   in Loop: Header=BB5_3 Depth=1
	.loc	2 228 25                        # src/main.c:228:25
	movq	-264(%rbp), %rdi
	.loc	2 228 3 is_stmt 0               # src/main.c:228:3
	callq	add_history
	.loc	2 229 3 is_stmt 1               # src/main.c:229:3
	leaq	-280(%rbp), %rdi
	callq	lexical_modification
	.loc	2 230 42                        # src/main.c:230:42
	movq	-264(%rbp), %rsi
	.loc	2 230 3 is_stmt 0               # src/main.c:230:3
	leaq	-280(%rbp), %rdi
	callq	lexical_analysis
	.loc	2 231 3 is_stmt 1               # src/main.c:231:3
	leaq	-280(%rbp), %rdi
	callq	parsing
	.loc	2 232 3                         # src/main.c:232:3
	leaq	-280(%rbp), %rdi
	callq	execution
	.loc	2 233 3                         # src/main.c:233:3
	leaq	-280(%rbp), %rdi
	callq	clean_input
.Ltmp76:
	.loc	2 219 2                         # src/main.c:219:2
	jmp	.LBB5_3
.LBB5_9:
	.loc	2 235 26                        # src/main.c:235:26
	movl	-236(%rbp), %eax
	.loc	2 235 14 is_stmt 0              # src/main.c:235:14
	movl	%eax, -284(%rbp)
	.loc	2 236 2 is_stmt 1               # src/main.c:236:2
	leaq	-280(%rbp), %rdi
	callq	clean_program
	.loc	2 237 10                        # src/main.c:237:10
	movl	-284(%rbp), %eax
	.loc	2 237 2 is_stmt 0               # src/main.c:237:2
	addq	$288, %rsp                      # imm = 0x120
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp77:
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\001\033[1m\002\001\033[37m\002Test usage: ./minishell \"argument\"\n\001\033[0m\002"
	.size	.L.str, 55

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"?"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"exit\n"
	.size	.L.str.3, 6

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
	.file	14 "/usr/lib/llvm-12/lib/clang/12.0.1/include" "stddef.h"
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
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
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
	.byte	5                               # DW_FORM_data2
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
	.byte	14                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	60                              # DW_AT_declaration
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
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
	.byte	16                              # Abbreviation Code
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
	.byte	17                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
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
	.byte	20                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
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
	.byte	23                              # Abbreviation Code
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
	.byte	24                              # Abbreviation Code
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
	.byte	1                               # Abbrev [1] 0xb:0xc80 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	12                              # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0       # DW_AT_high_pc
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
	.byte	5                               # Abbrev [5] 0x56:0x1 DW_TAG_pointer_type
	.byte	6                               # Abbrev [6] 0x57:0x4e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string9                  # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x6c:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	606                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x7a:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string186                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x88:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x96:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xa5:0x44 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string10                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0xbe:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	92                              # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xcc:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string187                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0xda:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string188                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	95                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0xe9:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin2                   # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string12                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	594                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x102:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string30                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x110:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.long	606                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x11e:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string189                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.long	833                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x12c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string190                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x13a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	92
	.long	.Linfo_string187                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x148:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string188                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x157:0x6e DW_TAG_subprogram
	.quad	.Lfunc_begin3                   # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string14                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	594                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x170:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string22                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x17e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.long	606                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x18c:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	100
	.long	.Linfo_string187                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x19a:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string188                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.long	3199                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1a8:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string189                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	161                             # DW_AT_decl_line
	.long	833                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x1b6:0xe DW_TAG_variable
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string190                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.long	594                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	6                               # Abbrev [6] 0x1c5:0x24 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string15                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x1da:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.long	606                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	9                               # Abbrev [9] 0x1e9:0x62 DW_TAG_subprogram
	.quad	.Lfunc_begin5                   # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string16                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_external
	.byte	7                               # Abbrev [7] 0x202:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string186                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x210:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string192                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	833                             # DW_AT_type
	.byte	7                               # Abbrev [7] 0x21e:0xe DW_TAG_formal_parameter
	.byte	2                               # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string193                # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	211                             # DW_AT_decl_line
	.long	833                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x22c:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\350}"
	.long	.Linfo_string17                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	213                             # DW_AT_decl_line
	.long	611                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x23b:0xf DW_TAG_variable
	.byte	3                               # DW_AT_location
	.byte	145
	.ascii	"\344}"
	.long	.Linfo_string26                 # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0x24b:0x7 DW_TAG_base_type
	.long	.Linfo_string11                 # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x252:0x5 DW_TAG_pointer_type
	.long	599                             # DW_AT_type
	.byte	4                               # Abbrev [4] 0x257:0x7 DW_TAG_base_type
	.long	.Linfo_string13                 # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0x25e:0x5 DW_TAG_pointer_type
	.long	611                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x263:0xb DW_TAG_typedef
	.long	622                             # DW_AT_type
	.long	.Linfo_string185                # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	229                             # DW_AT_decl_line
	.byte	12                              # Abbrev [12] 0x26e:0xbe DW_TAG_structure_type
	.long	.Linfo_string184                # DW_AT_name
	.short	256                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	212                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x277:0xc DW_TAG_member
	.long	.Linfo_string18                 # DW_AT_name
	.long	812                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	214                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x283:0xc DW_TAG_member
	.long	.Linfo_string21                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	215                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x28f:0xc DW_TAG_member
	.long	.Linfo_string22                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	216                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x29b:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	833                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	217                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2a7:0xc DW_TAG_member
	.long	.Linfo_string24                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	218                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2b3:0xc DW_TAG_member
	.long	.Linfo_string25                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	219                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2bf:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	220                             # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2cb:0xc DW_TAG_member
	.long	.Linfo_string27                 # DW_AT_name
	.long	833                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	221                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2d7:0xc DW_TAG_member
	.long	.Linfo_string28                 # DW_AT_name
	.long	838                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	222                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2e3:0xc DW_TAG_member
	.long	.Linfo_string34                 # DW_AT_name
	.long	904                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	223                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2ef:0xc DW_TAG_member
	.long	.Linfo_string37                 # DW_AT_name
	.long	970                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	224                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x2fb:0xc DW_TAG_member
	.long	.Linfo_string78                 # DW_AT_name
	.long	1742                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	225                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x307:0xc DW_TAG_member
	.long	.Linfo_string84                 # DW_AT_name
	.long	1856                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	226                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x313:0xc DW_TAG_member
	.long	.Linfo_string141                # DW_AT_name
	.long	2688                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	227                             # DW_AT_decl_line
	.byte	240                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x31f:0xc DW_TAG_member
	.long	.Linfo_string170                # DW_AT_name
	.long	3037                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	228                             # DW_AT_decl_line
	.byte	248                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x32c:0x5 DW_TAG_pointer_type
	.long	817                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x331:0xb DW_TAG_typedef
	.long	828                             # DW_AT_type
	.long	.Linfo_string20                 # DW_AT_name
	.byte	3                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	14                              # Abbrev [14] 0x33c:0x5 DW_TAG_structure_type
	.long	.Linfo_string19                 # DW_AT_name
                                        # DW_AT_declaration
	.byte	10                              # Abbrev [10] 0x341:0x5 DW_TAG_pointer_type
	.long	594                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x346:0x5 DW_TAG_pointer_type
	.long	843                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x34b:0xb DW_TAG_typedef
	.long	854                             # DW_AT_type
	.long	.Linfo_string33                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	129                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x356:0x2d DW_TAG_structure_type
	.long	.Linfo_string32                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x35e:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	126                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x36a:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	127                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x376:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	899                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x383:0x5 DW_TAG_pointer_type
	.long	854                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x388:0x5 DW_TAG_pointer_type
	.long	909                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x38d:0xb DW_TAG_typedef
	.long	920                             # DW_AT_type
	.long	.Linfo_string36                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	173                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x398:0x2d DW_TAG_structure_type
	.long	.Linfo_string35                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	168                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3a0:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	170                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ac:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	171                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3b8:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	965                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	172                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x3c5:0x5 DW_TAG_pointer_type
	.long	920                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x3ca:0x5 DW_TAG_pointer_type
	.long	975                             # DW_AT_type
	.byte	11                              # Abbrev [11] 0x3cf:0xb DW_TAG_typedef
	.long	986                             # DW_AT_type
	.long	.Linfo_string77                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	210                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x3da:0x2d DW_TAG_structure_type
	.long	.Linfo_string76                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	205                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x3e2:0xc DW_TAG_member
	.long	.Linfo_string38                 # DW_AT_name
	.long	1031                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	207                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3ee:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	208                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x3fa:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1737                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	209                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x407:0x5 DW_TAG_pointer_type
	.long	1036                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x40c:0xb DW_TAG_typedef
	.long	1047                            # DW_AT_type
	.long	.Linfo_string75                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	203                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x417:0x51 DW_TAG_structure_type
	.long	.Linfo_string74                 # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	195                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x41f:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x42b:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	198                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x437:0xc DW_TAG_member
	.long	.Linfo_string41                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	199                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x443:0xc DW_TAG_member
	.long	.Linfo_string26                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	200                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x44f:0xc DW_TAG_member
	.long	.Linfo_string42                 # DW_AT_name
	.long	1133                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	201                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x45b:0xc DW_TAG_member
	.long	.Linfo_string73                 # DW_AT_name
	.long	1133                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	202                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x468:0x5 DW_TAG_pointer_type
	.long	587                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x46d:0x5 DW_TAG_pointer_type
	.long	1138                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x472:0xc9 DW_TAG_structure_type
	.long	.Linfo_string72                 # DW_AT_name
	.byte	112                             # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x47a:0xc DW_TAG_member
	.long	.Linfo_string39                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x486:0xc DW_TAG_member
	.long	.Linfo_string43                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	178                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x492:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	179                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x49e:0xc DW_TAG_member
	.long	.Linfo_string44                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4aa:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	181                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4b6:0xc DW_TAG_member
	.long	.Linfo_string23                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	182                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4c2:0xc DW_TAG_member
	.long	.Linfo_string45                 # DW_AT_name
	.long	1339                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4ce:0xc DW_TAG_member
	.long	.Linfo_string48                 # DW_AT_name
	.long	1393                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	184                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4da:0xc DW_TAG_member
	.long	.Linfo_string54                 # DW_AT_name
	.long	1454                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4e6:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1527                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4f2:0xc DW_TAG_member
	.long	.Linfo_string66                 # DW_AT_name
	.long	904                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x4fe:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1605                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	188                             # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x50a:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1683                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x516:0xc DW_TAG_member
	.long	.Linfo_string70                 # DW_AT_name
	.long	833                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	190                             # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x522:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1133                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x52e:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1133                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	192                             # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x53b:0x5 DW_TAG_pointer_type
	.long	1344                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x540:0xb DW_TAG_typedef
	.long	1355                            # DW_AT_type
	.long	.Linfo_string47                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x54b:0x21 DW_TAG_structure_type
	.long	.Linfo_string46                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	162                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x553:0xc DW_TAG_member
	.long	.Linfo_string30                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	164                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x55f:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1388                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	165                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x56c:0x5 DW_TAG_pointer_type
	.long	1355                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x571:0x5 DW_TAG_pointer_type
	.long	1398                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x576:0xb DW_TAG_typedef
	.long	1409                            # DW_AT_type
	.long	.Linfo_string53                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x581:0x2d DW_TAG_structure_type
	.long	.Linfo_string52                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x589:0xc DW_TAG_member
	.long	.Linfo_string49                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	149                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x595:0xc DW_TAG_member
	.long	.Linfo_string50                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5a1:0xc DW_TAG_member
	.long	.Linfo_string51                 # DW_AT_name
	.long	1128                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5ae:0x5 DW_TAG_pointer_type
	.long	1459                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5b3:0xb DW_TAG_typedef
	.long	1470                            # DW_AT_type
	.long	.Linfo_string65                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x5be:0x39 DW_TAG_structure_type
	.long	.Linfo_string64                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x5c6:0xc DW_TAG_member
	.long	.Linfo_string55                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5d2:0xc DW_TAG_member
	.long	.Linfo_string56                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5de:0xc DW_TAG_member
	.long	.Linfo_string57                 # DW_AT_name
	.long	1527                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	158                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x5ea:0xc DW_TAG_member
	.long	.Linfo_string61                 # DW_AT_name
	.long	1605                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	159                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x5f7:0x5 DW_TAG_pointer_type
	.long	1532                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x5fc:0xb DW_TAG_typedef
	.long	1543                            # DW_AT_type
	.long	.Linfo_string60                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	137                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x607:0x39 DW_TAG_structure_type
	.long	.Linfo_string59                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x60f:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	133                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x61b:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x627:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	135                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x633:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1600                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x640:0x5 DW_TAG_pointer_type
	.long	1543                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x645:0x5 DW_TAG_pointer_type
	.long	1610                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x64a:0xb DW_TAG_typedef
	.long	1621                            # DW_AT_type
	.long	.Linfo_string63                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x655:0x39 DW_TAG_structure_type
	.long	.Linfo_string62                 # DW_AT_name
	.byte	24                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	139                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x65d:0xc DW_TAG_member
	.long	.Linfo_string58                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	141                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x669:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	142                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x675:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	143                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x681:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1678                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	144                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x68e:0x5 DW_TAG_pointer_type
	.long	1621                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x693:0x5 DW_TAG_pointer_type
	.long	1688                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x698:0xb DW_TAG_typedef
	.long	1699                            # DW_AT_type
	.long	.Linfo_string69                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	109                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6a3:0x21 DW_TAG_structure_type
	.long	.Linfo_string68                 # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6ab:0xc DW_TAG_member
	.long	.Linfo_string29                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	107                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6b7:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1732                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x6c4:0x5 DW_TAG_pointer_type
	.long	1699                            # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6c9:0x5 DW_TAG_pointer_type
	.long	986                             # DW_AT_type
	.byte	10                              # Abbrev [10] 0x6ce:0x5 DW_TAG_pointer_type
	.long	1747                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x6d3:0xb DW_TAG_typedef
	.long	1758                            # DW_AT_type
	.long	.Linfo_string83                 # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0x6de:0x5d DW_TAG_structure_type
	.long	.Linfo_string82                 # DW_AT_name
	.byte	48                              # DW_AT_byte_size
	.byte	1                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x6e6:0xc DW_TAG_member
	.long	.Linfo_string40                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	113                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6f2:0xc DW_TAG_member
	.long	.Linfo_string79                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	114                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x6fe:0xc DW_TAG_member
	.long	.Linfo_string80                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	115                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x70a:0xc DW_TAG_member
	.long	.Linfo_string81                 # DW_AT_name
	.long	594                             # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x716:0xc DW_TAG_member
	.long	.Linfo_string67                 # DW_AT_name
	.long	1683                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	117                             # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x722:0xc DW_TAG_member
	.long	.Linfo_string71                 # DW_AT_name
	.long	1851                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x72e:0xc DW_TAG_member
	.long	.Linfo_string31                 # DW_AT_name
	.long	1851                            # DW_AT_type
	.byte	1                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x73b:0x5 DW_TAG_pointer_type
	.long	1758                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0x740:0x56 DW_TAG_structure_type
	.long	.Linfo_string140                # DW_AT_name
	.byte	152                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x748:0xc DW_TAG_member
	.long	.Linfo_string85                 # DW_AT_name
	.long	1876                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x754:0x1d DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x758:0xc DW_TAG_member
	.long	.Linfo_string86                 # DW_AT_name
	.long	1942                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x764:0xc DW_TAG_member
	.long	.Linfo_string88                 # DW_AT_name
	.long	1965                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x771:0xc DW_TAG_member
	.long	.Linfo_string134                # DW_AT_name
	.long	2635                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x77d:0xc DW_TAG_member
	.long	.Linfo_string138                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x789:0xc DW_TAG_member
	.long	.Linfo_string139                # DW_AT_name
	.long	2682                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	144                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0x796:0xb DW_TAG_typedef
	.long	1953                            # DW_AT_type
	.long	.Linfo_string87                 # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	72                              # DW_AT_decl_line
	.byte	10                              # Abbrev [10] 0x7a1:0x5 DW_TAG_pointer_type
	.long	1958                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x7a6:0x7 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x7a7:0x5 DW_TAG_formal_parameter
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7ad:0x5 DW_TAG_pointer_type
	.long	1970                            # DW_AT_type
	.byte	17                              # Abbrev [17] 0x7b2:0x11 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	18                              # Abbrev [18] 0x7b3:0x5 DW_TAG_formal_parameter
	.long	587                             # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7b8:0x5 DW_TAG_formal_parameter
	.long	1987                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x7bd:0x5 DW_TAG_formal_parameter
	.long	86                              # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0x7c3:0x5 DW_TAG_pointer_type
	.long	1992                            # DW_AT_type
	.byte	11                              # Abbrev [11] 0x7c8:0xb DW_TAG_typedef
	.long	2003                            # DW_AT_type
	.long	.Linfo_string133                # DW_AT_name
	.byte	6                               # DW_AT_decl_file
	.byte	124                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x7d3:0x1ff DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x7d7:0xc DW_TAG_member
	.long	.Linfo_string89                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7e3:0xc DW_TAG_member
	.long	.Linfo_string90                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7ef:0xc DW_TAG_member
	.long	.Linfo_string91                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x7fb:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x807:0xc DW_TAG_member
	.long	.Linfo_string93                 # DW_AT_name
	.long	2067                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	123                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x813:0x1be DW_TAG_union_type
	.byte	112                             # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	51                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x817:0xc DW_TAG_member
	.long	.Linfo_string94                 # DW_AT_name
	.long	2514                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	53                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x823:0xc DW_TAG_member
	.long	.Linfo_string96                 # DW_AT_name
	.long	2095                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x82f:0x1d DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	56                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x833:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	58                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x83f:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	59                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x84c:0xc DW_TAG_member
	.long	.Linfo_string101                # DW_AT_name
	.long	2136                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	68                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x858:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x85c:0xc DW_TAG_member
	.long	.Linfo_string102                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	65                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x868:0xc DW_TAG_member
	.long	.Linfo_string103                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	66                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x874:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2555                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	67                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x881:0xc DW_TAG_member
	.long	.Linfo_string109                # DW_AT_name
	.long	2189                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x88d:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	71                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x891:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	73                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x89d:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8a9:0xc DW_TAG_member
	.long	.Linfo_string104                # DW_AT_name
	.long	2555                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x8b6:0xc DW_TAG_member
	.long	.Linfo_string110                # DW_AT_name
	.long	2242                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	86                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x8c2:0x41 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	79                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x8c6:0xc DW_TAG_member
	.long	.Linfo_string97                 # DW_AT_name
	.long	2533                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	81                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8d2:0xc DW_TAG_member
	.long	.Linfo_string99                 # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	82                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8de:0xc DW_TAG_member
	.long	.Linfo_string111                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	83                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8ea:0xc DW_TAG_member
	.long	.Linfo_string112                # DW_AT_name
	.long	2599                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	84                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x8f6:0xc DW_TAG_member
	.long	.Linfo_string115                # DW_AT_name
	.long	2599                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	85                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x903:0xc DW_TAG_member
	.long	.Linfo_string116                # DW_AT_name
	.long	2319                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	105                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x90f:0x63 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x913:0xc DW_TAG_member
	.long	.Linfo_string117                # DW_AT_name
	.long	86                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	91                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x91f:0xc DW_TAG_member
	.long	.Linfo_string118                # DW_AT_name
	.long	2617                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	93                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x92b:0xc DW_TAG_member
	.long	.Linfo_string120                # DW_AT_name
	.long	2359                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	104                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	16                              # Abbrev [16] 0x937:0x3a DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	94                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x93b:0xc DW_TAG_member
	.long	.Linfo_string121                # DW_AT_name
	.long	2375                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	101                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x947:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	97                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x94b:0xc DW_TAG_member
	.long	.Linfo_string122                # DW_AT_name
	.long	86                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	99                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x957:0xc DW_TAG_member
	.long	.Linfo_string123                # DW_AT_name
	.long	86                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	100                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x964:0xc DW_TAG_member
	.long	.Linfo_string124                # DW_AT_name
	.long	2624                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	103                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x972:0xc DW_TAG_member
	.long	.Linfo_string126                # DW_AT_name
	.long	2430                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	112                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x97e:0x1d DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	108                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x982:0xc DW_TAG_member
	.long	.Linfo_string127                # DW_AT_name
	.long	2610                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	110                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x98e:0xc DW_TAG_member
	.long	.Linfo_string128                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	111                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x99b:0xc DW_TAG_member
	.long	.Linfo_string129                # DW_AT_name
	.long	2471                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x9a7:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	116                             # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x9ab:0xc DW_TAG_member
	.long	.Linfo_string130                # DW_AT_name
	.long	86                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9b7:0xc DW_TAG_member
	.long	.Linfo_string131                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	119                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0x9c3:0xc DW_TAG_member
	.long	.Linfo_string132                # DW_AT_name
	.long	79                              # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0x9d2:0xc DW_TAG_array_type
	.long	587                             # DW_AT_type
	.byte	21                              # Abbrev [21] 0x9d7:0x6 DW_TAG_subrange_type
	.long	2526                            # DW_AT_type
	.byte	28                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x9de:0x7 DW_TAG_base_type
	.long	.Linfo_string95                 # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	11                              # Abbrev [11] 0x9e5:0xb DW_TAG_typedef
	.long	587                             # DW_AT_type
	.long	.Linfo_string98                 # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	154                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9f0:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string100                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0x9fb:0xb DW_TAG_typedef
	.long	2566                            # DW_AT_type
	.long	.Linfo_string108                # DW_AT_name
	.byte	8                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	23                              # Abbrev [23] 0xa06:0x21 DW_TAG_union_type
	.long	.Linfo_string107                # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	8                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa0e:0xc DW_TAG_member
	.long	.Linfo_string105                # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa1a:0xc DW_TAG_member
	.long	.Linfo_string106                # DW_AT_name
	.long	86                              # DW_AT_type
	.byte	8                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xa27:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string114                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	156                             # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xa32:0x7 DW_TAG_base_type
	.long	.Linfo_string113                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	4                               # Abbrev [4] 0xa39:0x7 DW_TAG_base_type
	.long	.Linfo_string119                # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	11                              # Abbrev [11] 0xa40:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string125                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xa4b:0xb DW_TAG_typedef
	.long	2646                            # DW_AT_type
	.long	.Linfo_string137                # DW_AT_name
	.byte	9                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xa56:0x11 DW_TAG_structure_type
	.byte	128                             # DW_AT_byte_size
	.byte	9                               # DW_AT_decl_file
	.byte	5                               # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa5a:0xc DW_TAG_member
	.long	.Linfo_string135                # DW_AT_name
	.long	2663                            # DW_AT_type
	.byte	9                               # DW_AT_decl_file
	.byte	7                               # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	20                              # Abbrev [20] 0xa67:0xc DW_TAG_array_type
	.long	2675                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xa6c:0x6 DW_TAG_subrange_type
	.long	2526                            # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	4                               # Abbrev [4] 0xa73:0x7 DW_TAG_base_type
	.long	.Linfo_string136                # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	10                              # Abbrev [10] 0xa7a:0x5 DW_TAG_pointer_type
	.long	2687                            # DW_AT_type
	.byte	24                              # Abbrev [24] 0xa7f:0x1 DW_TAG_subroutine_type
                                        # DW_AT_prototyped
	.byte	10                              # Abbrev [10] 0xa80:0x5 DW_TAG_pointer_type
	.long	2693                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xa85:0xbd DW_TAG_structure_type
	.long	.Linfo_string169                # DW_AT_name
	.byte	144                             # DW_AT_byte_size
	.byte	10                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xa8d:0xc DW_TAG_member
	.long	.Linfo_string142                # DW_AT_name
	.long	2882                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xa99:0xc DW_TAG_member
	.long	.Linfo_string144                # DW_AT_name
	.long	2893                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaa5:0xc DW_TAG_member
	.long	.Linfo_string146                # DW_AT_name
	.long	2904                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	44                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xab1:0xc DW_TAG_member
	.long	.Linfo_string148                # DW_AT_name
	.long	2915                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xabd:0xc DW_TAG_member
	.long	.Linfo_string150                # DW_AT_name
	.long	2544                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xac9:0xc DW_TAG_member
	.long	.Linfo_string151                # DW_AT_name
	.long	2926                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xad5:0xc DW_TAG_member
	.long	.Linfo_string92                 # DW_AT_name
	.long	587                             # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	50                              # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xae1:0xc DW_TAG_member
	.long	.Linfo_string153                # DW_AT_name
	.long	2882                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	52                              # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaed:0xc DW_TAG_member
	.long	.Linfo_string154                # DW_AT_name
	.long	2937                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	57                              # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xaf9:0xc DW_TAG_member
	.long	.Linfo_string156                # DW_AT_name
	.long	2948                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb05:0xc DW_TAG_member
	.long	.Linfo_string158                # DW_AT_name
	.long	2959                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	64                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb11:0xc DW_TAG_member
	.long	.Linfo_string160                # DW_AT_name
	.long	2970                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	74                              # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb1d:0xc DW_TAG_member
	.long	.Linfo_string166                # DW_AT_name
	.long	2970                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	75                              # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb29:0xc DW_TAG_member
	.long	.Linfo_string167                # DW_AT_name
	.long	2970                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	76                              # DW_AT_decl_line
	.byte	104                             # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xb35:0xc DW_TAG_member
	.long	.Linfo_string168                # DW_AT_name
	.long	3025                            # DW_AT_type
	.byte	10                              # DW_AT_decl_file
	.byte	89                              # DW_AT_decl_line
	.byte	120                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xb42:0xb DW_TAG_typedef
	.long	2675                            # DW_AT_type
	.long	.Linfo_string143                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	145                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb4d:0xb DW_TAG_typedef
	.long	2675                            # DW_AT_type
	.long	.Linfo_string145                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb58:0xb DW_TAG_typedef
	.long	2675                            # DW_AT_type
	.long	.Linfo_string147                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb63:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string149                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb6e:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string152                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb79:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string155                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb84:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string157                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	175                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xb8f:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string159                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	180                             # DW_AT_decl_line
	.byte	15                              # Abbrev [15] 0xb9a:0x21 DW_TAG_structure_type
	.long	.Linfo_string165                # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	11                              # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xba2:0xc DW_TAG_member
	.long	.Linfo_string161                # DW_AT_name
	.long	3003                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbae:0xc DW_TAG_member
	.long	.Linfo_string163                # DW_AT_name
	.long	3014                            # DW_AT_type
	.byte	11                              # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xbbb:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string162                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xbc6:0xb DW_TAG_typedef
	.long	2610                            # DW_AT_type
	.long	.Linfo_string164                # DW_AT_name
	.byte	7                               # DW_AT_decl_file
	.byte	197                             # DW_AT_decl_line
	.byte	20                              # Abbrev [20] 0xbd1:0xc DW_TAG_array_type
	.long	3014                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xbd6:0x6 DW_TAG_subrange_type
	.long	2526                            # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	10                              # Abbrev [10] 0xbdd:0x5 DW_TAG_pointer_type
	.long	3042                            # DW_AT_type
	.byte	15                              # Abbrev [15] 0xbe2:0x69 DW_TAG_structure_type
	.long	.Linfo_string183                # DW_AT_name
	.byte	60                              # DW_AT_byte_size
	.byte	13                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0xbea:0xc DW_TAG_member
	.long	.Linfo_string171                # DW_AT_name
	.long	3147                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xbf6:0xc DW_TAG_member
	.long	.Linfo_string173                # DW_AT_name
	.long	3147                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc02:0xc DW_TAG_member
	.long	.Linfo_string174                # DW_AT_name
	.long	3147                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc0e:0xc DW_TAG_member
	.long	.Linfo_string175                # DW_AT_name
	.long	3147                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc1a:0xc DW_TAG_member
	.long	.Linfo_string176                # DW_AT_name
	.long	3158                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc26:0xc DW_TAG_member
	.long	.Linfo_string179                # DW_AT_name
	.long	3176                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	17                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc32:0xc DW_TAG_member
	.long	.Linfo_string180                # DW_AT_name
	.long	3188                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	13                              # Abbrev [13] 0xc3e:0xc DW_TAG_member
	.long	.Linfo_string182                # DW_AT_name
	.long	3188                            # DW_AT_type
	.byte	13                              # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc4b:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string172                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc56:0xb DW_TAG_typedef
	.long	3169                            # DW_AT_type
	.long	.Linfo_string178                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	4                               # Abbrev [4] 0xc61:0x7 DW_TAG_base_type
	.long	.Linfo_string177                # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	20                              # Abbrev [20] 0xc68:0xc DW_TAG_array_type
	.long	3158                            # DW_AT_type
	.byte	21                              # Abbrev [21] 0xc6d:0x6 DW_TAG_subrange_type
	.long	2526                            # DW_AT_type
	.byte	32                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	11                              # Abbrev [11] 0xc74:0xb DW_TAG_typedef
	.long	79                              # DW_AT_type
	.long	.Linfo_string181                # DW_AT_name
	.byte	12                              # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	11                              # Abbrev [11] 0xc7f:0xb DW_TAG_typedef
	.long	2675                            # DW_AT_type
	.long	.Linfo_string191                # DW_AT_name
	.byte	14                              # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 12.0.1-19ubuntu3" # string offset=0
.Linfo_string1:
	.asciz	"src/main.c"                    # string offset=38
.Linfo_string2:
	.asciz	"/mnt/nfs/homes/jbocktor/student/group_minishell/more_hope/minigroups" # string offset=49
.Linfo_string3:
	.asciz	"unsigned int"                  # string offset=118
.Linfo_string4:
	.asciz	"run"                           # string offset=131
.Linfo_string5:
	.asciz	"stop"                          # string offset=135
.Linfo_string6:
	.asciz	"success"                       # string offset=140
.Linfo_string7:
	.asciz	"failure"                       # string offset=148
.Linfo_string8:
	.asciz	"e_state"                       # string offset=156
.Linfo_string9:
	.asciz	"test_mode"                     # string offset=164
.Linfo_string10:
	.asciz	"there_is_an_expenssion"        # string offset=174
.Linfo_string11:
	.asciz	"int"                           # string offset=197
.Linfo_string12:
	.asciz	"jspcmtappeler"                 # string offset=201
.Linfo_string13:
	.asciz	"char"                          # string offset=215
.Linfo_string14:
	.asciz	"parse_input"                   # string offset=220
.Linfo_string15:
	.asciz	"lexical_modification"          # string offset=232
.Linfo_string16:
	.asciz	"main"                          # string offset=253
.Linfo_string17:
	.asciz	"minishell"                     # string offset=258
.Linfo_string18:
	.asciz	"dir"                           # string offset=268
.Linfo_string19:
	.asciz	"__dirstream"                   # string offset=272
.Linfo_string20:
	.asciz	"DIR"                           # string offset=284
.Linfo_string21:
	.asciz	"state"                         # string offset=288
.Linfo_string22:
	.asciz	"input"                         # string offset=294
.Linfo_string23:
	.asciz	"path"                          # string offset=300
.Linfo_string24:
	.asciz	"prompt"                        # string offset=305
.Linfo_string25:
	.asciz	"operator_nbr"                  # string offset=312
.Linfo_string26:
	.asciz	"exit_status"                   # string offset=325
.Linfo_string27:
	.asciz	"env_array"                     # string offset=337
.Linfo_string28:
	.asciz	"env"                           # string offset=347
.Linfo_string29:
	.asciz	"name"                          # string offset=351
.Linfo_string30:
	.asciz	"value"                         # string offset=356
.Linfo_string31:
	.asciz	"next"                          # string offset=362
.Linfo_string32:
	.asciz	"s_env"                         # string offset=367
.Linfo_string33:
	.asciz	"t_env"                         # string offset=373
.Linfo_string34:
	.asciz	"local"                         # string offset=379
.Linfo_string35:
	.asciz	"s_var"                         # string offset=385
.Linfo_string36:
	.asciz	"t_var"                         # string offset=391
.Linfo_string37:
	.asciz	"syntax_tree"                   # string offset=397
.Linfo_string38:
	.asciz	"node"                          # string offset=409
.Linfo_string39:
	.asciz	"id"                            # string offset=414
.Linfo_string40:
	.asciz	"type"                          # string offset=417
.Linfo_string41:
	.asciz	"pipe_fd"                       # string offset=422
.Linfo_string42:
	.asciz	"left"                          # string offset=430
.Linfo_string43:
	.asciz	"pid"                           # string offset=435
.Linfo_string44:
	.asciz	"wstatus"                       # string offset=439
.Linfo_string45:
	.asciz	"arg"                           # string offset=447
.Linfo_string46:
	.asciz	"s_arg"                         # string offset=451
.Linfo_string47:
	.asciz	"t_arg"                         # string offset=457
.Linfo_string48:
	.asciz	"pipe"                          # string offset=463
.Linfo_string49:
	.asciz	"to_close"                      # string offset=468
.Linfo_string50:
	.asciz	"write"                         # string offset=477
.Linfo_string51:
	.asciz	"read"                          # string offset=483
.Linfo_string52:
	.asciz	"s_pipe"                        # string offset=488
.Linfo_string53:
	.asciz	"t_pipe"                        # string offset=495
.Linfo_string54:
	.asciz	"redir"                         # string offset=502
.Linfo_string55:
	.asciz	"in_fd"                         # string offset=508
.Linfo_string56:
	.asciz	"out_fd"                        # string offset=514
.Linfo_string57:
	.asciz	"infile"                        # string offset=521
.Linfo_string58:
	.asciz	"fd"                            # string offset=528
.Linfo_string59:
	.asciz	"s_infile"                      # string offset=531
.Linfo_string60:
	.asciz	"t_infile"                      # string offset=540
.Linfo_string61:
	.asciz	"outfile"                       # string offset=549
.Linfo_string62:
	.asciz	"s_outfile"                     # string offset=557
.Linfo_string63:
	.asciz	"t_outfile"                     # string offset=567
.Linfo_string64:
	.asciz	"s_redir"                       # string offset=577
.Linfo_string65:
	.asciz	"t_redir"                       # string offset=585
.Linfo_string66:
	.asciz	"assign"                        # string offset=593
.Linfo_string67:
	.asciz	"expansion"                     # string offset=600
.Linfo_string68:
	.asciz	"s_expan"                       # string offset=610
.Linfo_string69:
	.asciz	"t_expan"                       # string offset=618
.Linfo_string70:
	.asciz	"arg_array"                     # string offset=626
.Linfo_string71:
	.asciz	"prev"                          # string offset=636
.Linfo_string72:
	.asciz	"s_cmd"                         # string offset=641
.Linfo_string73:
	.asciz	"right"                         # string offset=647
.Linfo_string74:
	.asciz	"s_ast_node"                    # string offset=653
.Linfo_string75:
	.asciz	"t_ast_node"                    # string offset=664
.Linfo_string76:
	.asciz	"s_ast"                         # string offset=675
.Linfo_string77:
	.asciz	"t_ast"                         # string offset=681
.Linfo_string78:
	.asciz	"token_stream"                  # string offset=687
.Linfo_string79:
	.asciz	"quote_nbr"                     # string offset=700
.Linfo_string80:
	.asciz	"length"                        # string offset=710
.Linfo_string81:
	.asciz	"lexeme"                        # string offset=717
.Linfo_string82:
	.asciz	"s_token"                       # string offset=724
.Linfo_string83:
	.asciz	"t_token"                       # string offset=732
.Linfo_string84:
	.asciz	"sighandler"                    # string offset=740
.Linfo_string85:
	.asciz	"__sigaction_handler"           # string offset=751
.Linfo_string86:
	.asciz	"sa_handler"                    # string offset=771
.Linfo_string87:
	.asciz	"__sighandler_t"                # string offset=782
.Linfo_string88:
	.asciz	"sa_sigaction"                  # string offset=797
.Linfo_string89:
	.asciz	"si_signo"                      # string offset=810
.Linfo_string90:
	.asciz	"si_errno"                      # string offset=819
.Linfo_string91:
	.asciz	"si_code"                       # string offset=828
.Linfo_string92:
	.asciz	"__pad0"                        # string offset=836
.Linfo_string93:
	.asciz	"_sifields"                     # string offset=843
.Linfo_string94:
	.asciz	"_pad"                          # string offset=853
.Linfo_string95:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=858
.Linfo_string96:
	.asciz	"_kill"                         # string offset=878
.Linfo_string97:
	.asciz	"si_pid"                        # string offset=884
.Linfo_string98:
	.asciz	"__pid_t"                       # string offset=891
.Linfo_string99:
	.asciz	"si_uid"                        # string offset=899
.Linfo_string100:
	.asciz	"__uid_t"                       # string offset=906
.Linfo_string101:
	.asciz	"_timer"                        # string offset=914
.Linfo_string102:
	.asciz	"si_tid"                        # string offset=921
.Linfo_string103:
	.asciz	"si_overrun"                    # string offset=928
.Linfo_string104:
	.asciz	"si_sigval"                     # string offset=939
.Linfo_string105:
	.asciz	"sival_int"                     # string offset=949
.Linfo_string106:
	.asciz	"sival_ptr"                     # string offset=959
.Linfo_string107:
	.asciz	"sigval"                        # string offset=969
.Linfo_string108:
	.asciz	"__sigval_t"                    # string offset=976
.Linfo_string109:
	.asciz	"_rt"                           # string offset=987
.Linfo_string110:
	.asciz	"_sigchld"                      # string offset=991
.Linfo_string111:
	.asciz	"si_status"                     # string offset=1000
.Linfo_string112:
	.asciz	"si_utime"                      # string offset=1010
.Linfo_string113:
	.asciz	"long int"                      # string offset=1019
.Linfo_string114:
	.asciz	"__clock_t"                     # string offset=1028
.Linfo_string115:
	.asciz	"si_stime"                      # string offset=1038
.Linfo_string116:
	.asciz	"_sigfault"                     # string offset=1047
.Linfo_string117:
	.asciz	"si_addr"                       # string offset=1057
.Linfo_string118:
	.asciz	"si_addr_lsb"                   # string offset=1065
.Linfo_string119:
	.asciz	"short"                         # string offset=1077
.Linfo_string120:
	.asciz	"_bounds"                       # string offset=1083
.Linfo_string121:
	.asciz	"_addr_bnd"                     # string offset=1091
.Linfo_string122:
	.asciz	"_lower"                        # string offset=1101
.Linfo_string123:
	.asciz	"_upper"                        # string offset=1108
.Linfo_string124:
	.asciz	"_pkey"                         # string offset=1115
.Linfo_string125:
	.asciz	"__uint32_t"                    # string offset=1121
.Linfo_string126:
	.asciz	"_sigpoll"                      # string offset=1132
.Linfo_string127:
	.asciz	"si_band"                       # string offset=1141
.Linfo_string128:
	.asciz	"si_fd"                         # string offset=1149
.Linfo_string129:
	.asciz	"_sigsys"                       # string offset=1155
.Linfo_string130:
	.asciz	"_call_addr"                    # string offset=1163
.Linfo_string131:
	.asciz	"_syscall"                      # string offset=1174
.Linfo_string132:
	.asciz	"_arch"                         # string offset=1183
.Linfo_string133:
	.asciz	"siginfo_t"                     # string offset=1189
.Linfo_string134:
	.asciz	"sa_mask"                       # string offset=1199
.Linfo_string135:
	.asciz	"__val"                         # string offset=1207
.Linfo_string136:
	.asciz	"long unsigned int"             # string offset=1213
.Linfo_string137:
	.asciz	"__sigset_t"                    # string offset=1231
.Linfo_string138:
	.asciz	"sa_flags"                      # string offset=1242
.Linfo_string139:
	.asciz	"sa_restorer"                   # string offset=1251
.Linfo_string140:
	.asciz	"sigaction"                     # string offset=1263
.Linfo_string141:
	.asciz	"statbuf"                       # string offset=1273
.Linfo_string142:
	.asciz	"st_dev"                        # string offset=1281
.Linfo_string143:
	.asciz	"__dev_t"                       # string offset=1288
.Linfo_string144:
	.asciz	"st_ino"                        # string offset=1296
.Linfo_string145:
	.asciz	"__ino_t"                       # string offset=1303
.Linfo_string146:
	.asciz	"st_nlink"                      # string offset=1311
.Linfo_string147:
	.asciz	"__nlink_t"                     # string offset=1320
.Linfo_string148:
	.asciz	"st_mode"                       # string offset=1330
.Linfo_string149:
	.asciz	"__mode_t"                      # string offset=1338
.Linfo_string150:
	.asciz	"st_uid"                        # string offset=1347
.Linfo_string151:
	.asciz	"st_gid"                        # string offset=1354
.Linfo_string152:
	.asciz	"__gid_t"                       # string offset=1361
.Linfo_string153:
	.asciz	"st_rdev"                       # string offset=1369
.Linfo_string154:
	.asciz	"st_size"                       # string offset=1377
.Linfo_string155:
	.asciz	"__off_t"                       # string offset=1385
.Linfo_string156:
	.asciz	"st_blksize"                    # string offset=1393
.Linfo_string157:
	.asciz	"__blksize_t"                   # string offset=1404
.Linfo_string158:
	.asciz	"st_blocks"                     # string offset=1416
.Linfo_string159:
	.asciz	"__blkcnt_t"                    # string offset=1426
.Linfo_string160:
	.asciz	"st_atim"                       # string offset=1437
.Linfo_string161:
	.asciz	"tv_sec"                        # string offset=1445
.Linfo_string162:
	.asciz	"__time_t"                      # string offset=1452
.Linfo_string163:
	.asciz	"tv_nsec"                       # string offset=1461
.Linfo_string164:
	.asciz	"__syscall_slong_t"             # string offset=1469
.Linfo_string165:
	.asciz	"timespec"                      # string offset=1487
.Linfo_string166:
	.asciz	"st_mtim"                       # string offset=1496
.Linfo_string167:
	.asciz	"st_ctim"                       # string offset=1504
.Linfo_string168:
	.asciz	"__glibc_reserved"              # string offset=1512
.Linfo_string169:
	.asciz	"stat"                          # string offset=1529
.Linfo_string170:
	.asciz	"term"                          # string offset=1534
.Linfo_string171:
	.asciz	"c_iflag"                       # string offset=1539
.Linfo_string172:
	.asciz	"tcflag_t"                      # string offset=1547
.Linfo_string173:
	.asciz	"c_oflag"                       # string offset=1556
.Linfo_string174:
	.asciz	"c_cflag"                       # string offset=1564
.Linfo_string175:
	.asciz	"c_lflag"                       # string offset=1572
.Linfo_string176:
	.asciz	"c_line"                        # string offset=1580
.Linfo_string177:
	.asciz	"unsigned char"                 # string offset=1587
.Linfo_string178:
	.asciz	"cc_t"                          # string offset=1601
.Linfo_string179:
	.asciz	"c_cc"                          # string offset=1606
.Linfo_string180:
	.asciz	"c_ispeed"                      # string offset=1611
.Linfo_string181:
	.asciz	"speed_t"                       # string offset=1620
.Linfo_string182:
	.asciz	"c_ospeed"                      # string offset=1628
.Linfo_string183:
	.asciz	"termios"                       # string offset=1637
.Linfo_string184:
	.asciz	"s_minishell"                   # string offset=1645
.Linfo_string185:
	.asciz	"t_minishell"                   # string offset=1657
.Linfo_string186:
	.asciz	"argc"                          # string offset=1669
.Linfo_string187:
	.asciz	"i"                             # string offset=1674
.Linfo_string188:
	.asciz	"j"                             # string offset=1676
.Linfo_string189:
	.asciz	"split"                         # string offset=1678
.Linfo_string190:
	.asciz	"pls"                           # string offset=1684
.Linfo_string191:
	.asciz	"size_t"                        # string offset=1688
.Linfo_string192:
	.asciz	"argv"                          # string offset=1695
.Linfo_string193:
	.asciz	"envp"                          # string offset=1700
	.ident	"Ubuntu clang version 12.0.1-19ubuntu3"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_mode
	.addrsig_sym lexical_analysis
	.addrsig_sym parsing
	.addrsig_sym execution
	.addrsig_sym clean_program
	.addrsig_sym exit
	.addrsig_sym ft_printf
	.addrsig_sym there_is_an_expenssion
	.addrsig_sym jspcmtappeler
	.addrsig_sym ft_split
	.addrsig_sym ft_strcmp
	.addrsig_sym ft_itoa
	.addrsig_sym get_expansion_value
	.addrsig_sym ft_strdup
	.addrsig_sym free
	.addrsig_sym ft_strjoin_n_free
	.addrsig_sym free_char_array
	.addrsig_sym parse_input
	.addrsig_sym ft_strjoin
	.addrsig_sym lexical_modification
	.addrsig_sym init_minishell
	.addrsig_sym get_prompt
	.addrsig_sym readline
	.addrsig_sym write
	.addrsig_sym add_history
	.addrsig_sym clean_input
	.addrsig_sym g_signal
	.section	.debug_line,"",@progbits
.Lline_table_start0:
