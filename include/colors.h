/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   colors.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/09 12:08:02 by agadea            #+#    #+#             */
/*   Updated: 2024/04/16 11:37:55 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef COLORS_H
# define COLORS_H

/*
	ANSI ESCAPE SEQUENCE
	char		:	\e[m
	octal		:	\033[m
	decimal		:	\27[m
	hexadecimal	:	\x1B[m
*/

# define DEFAULT "\1\033[0m\2"
# define BOLD "\1\033[1m\2"
# define ITALIC "\1\033[3m\2"
# define SLOW_BLINK "\1\033[5m\2"
# define RAPID_BLINK "\1\033[6m\2"
# define FRAKTUR "\1\033[20m\2"

/*		COLORS		*/

# define BLACK "\1\033[30m\2"
# define RED "\1\033[31m\2"
# define GREEN "\1\033[32m\2"
# define YELLOW "\1\033[33m\2"
# define BLUE "\1\033[34m\2"
# define MAGENTA "\1\033[35m\2"
# define CYAN "\1\033[36m\2"
# define WHITE "\1\033[37m\2"

# define BLACK_BACKGROUND "\1\033[40m\2"
# define RED_BACKGROUND "\1\033[41m\2"
# define GREEN_BACKGROUND "\1\033[42m\2"
# define YELLOW_BACKGROUND "\1\033[43m\2"
# define BLUE_BACKGROUND "\1\033[44m\2"
# define MAGENTA_BACKGROUND "\1\033[45m\2"
# define CYAN_BACKGROUND "\1\033[46m\2"
# define WHITE_BACKGROUND "\1\033[47m\2"

# define BRIGHT_BLACK "\1\033[90m\2"
# define BRIGHT_RED "\1\033[91m\2"
# define BRIGHT_GREEN "\1\033[92m\2"
# define BRIGHT_YELLOW "\1\033[93m\2"
# define BRIGHT_BLUE "\1\033[94m\2"
# define BRIGHT_MAGENTA "\1\033[95m\2"
# define BRIGHT_CYAN "\1\033[96m\2"
# define BRIGHT_WHITE "\1\033[97m\2"

# define BRIGHT_BLACK_BACKGROUND "\1\033[100m\2"
# define BRIGHT_RED_BACKGROUND "\1\033[101m\2"
# define BRIGHT_GREEN_BACKGROUND "\1\033[102m\2"
# define BRIGHT_YELLOW_BACKGROUND "\1\033[103m\2"
# define BRIGHT_BLUE_BACKGROUND "\1\033[104m\2"
# define BRIGHT_MAGENTA_BACKGROUND "\1\033[105m\2"
# define BRIGHT_CYAN_BACKGROUND "\1\033[106m\2"
# define BRIGHT_WHITE_BACKGROUND "\1\033[107m\2"

#endif