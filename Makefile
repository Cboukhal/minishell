# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 10:52:20 by agadea            #+#    #+#              #
#    Updated: 2024/04/27 11:26:21 by jbocktor         ###   ########.fr        #
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
						builtin/oldpwd.c \
						builtin/unset.c \
						builtin/builtin_utils.c \
						environment/env_array.c \
						environment/env_default.c \
						environment/env_setup.c \
						environment/env_variable.c \
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
						lexer/init_token.c \
						lexer/lexer_error.c \
						lexer/token_expansion.c \
						lexer/token_operator.c \
						lexer/token_quote.c \
						lexer/token_redirection.c \
						lexer/token_word.c \
						lexer/type_operator.c \
						lexer/type_word.c \
						memory/free_functions.c \
						memory/free_command.c \
						memory/free_utils.c \
						parsing/ast_node.c \
						parsing/boolean_parsing.c \
						parsing/command_arguments.c \
						parsing/command_assign.c \
						parsing/command_expansion.c \
						parsing/command_generation.c \
						parsing/command_path.c \
						parsing/command_redir_extract.c \
						parsing/command_redir_open.c \
						parsing/command_redir_utils.c \
						parsing/expand_variable.c \
						parsing/redir_extract.c \
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