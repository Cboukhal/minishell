# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agadea <agadea@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 10:52:20 by agadea            #+#    #+#              #
#    Updated: 2024/04/01 19:21:32 by agadea           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include colors.mk

###########################		     TARGET			###########################

NAME				= minishell
LIBFT				= libft/libft.a

###########################		 	  FLAG			###########################

CC					= clang
CFLAGS				= -g3 -Wall -Wextra -Werror
LFLAGS				= -lreadline -Llibft -lft 

###########################		 	 INCLUDE		###########################

INCLUDE_DIR			:= include
INCLUDE				:= colors.h minishell.h
INCLUDE				:= ${addprefix ${INCLUDE_DIR}/, ${INCLUDE}}

###########################		 	 SOURCE			###########################

SRC_DIR				:= src
SRC					:= builtin/cd.c \
						builtin/echo.c \
						builtin/env.c \
						builtin/exit.c \
						builtin/export.c \
						builtin/pwd.c \
						builtin/unset.c \
						builtin/builtin_utils.c \
						environment/env_array.c \
						environment/env_default.c \
						environment/env_setup.c \
						environment/env_utils.c \
						environment/env_variable.c \
						error/error_builtin.c \
						error/error.c \
						execution/boolean_exec.c \
						execution/exec_assign.c \
						execution/exec_builtin.c \
						execution/exec_child.c \
						execution/exec_list.c \
						execution/exec_pipe.c \
						execution/exec.c \
						init/init.c \
						init/path.c \
						lexer/boolean_operator.c \
						lexer/boolean_redirection.c \
						lexer/boolean_word.c \
						lexer/lexer.c \
						lexer/lexer_error.c \
						lexer/token_expansion.c \
						lexer/token_operator.c \
						lexer/token_quote.c \
						lexer/token_redirection.c \
						lexer/token_word.c \
						lexer/token.c \
						lexer/type_operator.c \
						lexer/type_word.c \
						memory/free_functions.c \
						memory/free_command.c \
						memory/free_utils.c \
						parsing/ast_node.c \
						parsing/boolean_parsing.c \
						parsing/command_arg.c \
						parsing/command_assign.c \
						parsing/command_create.c \
						parsing/command_expan_value.c \
						parsing/command_expan.c \
						parsing/command_path.c \
						parsing/command_redir_infile.c \
						parsing/command_redir_open.c \
						parsing/command_redir_outfile.c \
						parsing/command_redir.c \
						parsing/syntax_tree.c \
						prompt/dir_path.c \
						prompt/log_info.c \
						prompt/prompt.c \
						signal/handler.c \
						utils/function_tester.c \
						utils/print.c \
						utils/print2.c \
						main.c \

SRC					:= ${addprefix ${SRC_DIR}/, ${SRC}}

###########################		  COMPILATION		###########################

PP_DIR				:= pp
PP					:= ${patsubst ${SRC_DIR}/%.c, ${PP_DIR}/%.i, ${SRC}}

ASM_DIR				:= asm
ASM					:= ${patsubst ${SRC_DIR}/%.c, ${ASM_DIR}/%.s, ${SRC}}

OBJ_DIR				:= obj
OBJ					:= ${patsubst ${SRC_DIR}/%.c, ${OBJ_DIR}/%.o, ${SRC}}

###########################		 	 RULE			###########################

all: ${LIBFT} ${PP} ${ASM} ${NAME}

${NAME}: ${OBJ}
	${CC} ${CFLAGS} $^ ${LFLAGS} -o $@
	@echo "${GREEN}MINISHELL creation successful !${DEFAULT}"

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c ${INCLUDE}
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -c $< -o $@

# PREPROCESSING
${PP_DIR}/%.i: ${SRC_DIR}/%.c
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -E $< -o $@

# ASSEMBLY
${ASM_DIR}/%.s: ${SRC_DIR}/%.c
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -S $< -o $@

${LIBFT}:
	@${MAKE} -C libft

clean:
	${RM} -rf ${OBJ} ${PP} ${ASM}
	@echo "${YELLOW}MINISHELL objects removed !${DEFAULT}"

fclean: clean
	@${MAKE} -C libft fclean
	${RM} -rf ${OBJ_DIR} ${PP_DIR} ${ASM_DIR}
	${RM} ${NAME} ${LIBFT}
	@echo "${YELLOW}MINISHELL entirely cleaned !${DEFAULT}"

re: fclean all

.PHONY: all libft clean fclean re