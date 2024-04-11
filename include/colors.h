/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   colors.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/09 12:08:02 by agadea            #+#    #+#             */
/*   Updated: 2023/07/02 19:47:00 by agadea           ###   ########.fr       */
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

# define DEFAULT "\033[0m"
# define BOLD "\033[1m"
# define ITALIC "\033[3m"
# define SLOW_BLINK "\033[5m"
# define RAPID_BLINK "\033[6m"
# define FRAKTUR "\033[20m"

/*		COLORS		*/

# define BLACK "\033[30m"
# define RED "\033[31m"
# define GREEN "\033[32m"
# define YELLOW "\033[33m"
# define BLUE "\033[34m"
# define MAGENTA "\033[35m"
# define CYAN "\033[36m"
# define WHITE "\033[37m"

# define BLACK_BACKGROUND "\033[40m"
# define RED_BACKGROUND "\033[41m"
# define GREEN_BACKGROUND "\033[42m"
# define YELLOW_BACKGROUND "\033[43m"
# define BLUE_BACKGROUND "\033[44m"
# define MAGENTA_BACKGROUND "\033[45m"
# define CYAN_BACKGROUND "\033[46m"
# define WHITE_BACKGROUND "\033[47m"

# define BRIGHT_BLACK "\033[90m"
# define BRIGHT_RED "\033[91m"
# define BRIGHT_GREEN "\033[92m"
# define BRIGHT_YELLOW "\033[93m"
# define BRIGHT_BLUE "\033[94m"
# define BRIGHT_MAGENTA "\033[95m"
# define BRIGHT_CYAN "\033[96m"
# define BRIGHT_WHITE "\033[97m"

# define BRIGHT_BLACK_BACKGROUND "\033[100m"
# define BRIGHT_RED_BACKGROUND "\033[101m"
# define BRIGHT_GREEN_BACKGROUND "\033[102m"
# define BRIGHT_YELLOW_BACKGROUND "\033[103m"
# define BRIGHT_BLUE_BACKGROUND "\033[104m"
# define BRIGHT_MAGENTA_BACKGROUND "\033[105m"
# define BRIGHT_CYAN_BACKGROUND "\033[106m"
# define BRIGHT_WHITE_BACKGROUND "\033[107m"

#endif