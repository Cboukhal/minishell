/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   find_format.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:36:12 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:36:14 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	find_any_flags(char format)
{
	if ((format == '-')
		|| (format == '0')
		|| (format == '#')
		|| (format == ' ')
		|| (format == '+'))
		return (1);
	else
		return (0);
}

int	find_any_conversion(char format)
{
	if ((format == 'c')
		|| (format == 's')
		|| (format == 'p')
		|| (format == 'd')
		|| (format == 'i')
		|| (format == 'u')
		|| (format == 'x')
		|| (format == 'X')
		|| (format == '%'))
		return (1);
	else
		return (0);
}

int	find_specific_conversion(const char *format, char conversion)
{
	while (*format && *format != conversion)
	{
		if (find_any_conversion(*format) == 1)
			return (0);
		format++;
	}
	return (1);
}

int	find_zero(const char *format)
{
	while (*format && *format != '0')
	{
		if ((*format >= '1' && *format <= '9')
			|| (find_any_conversion(*format) == 1))
			return (0);
		format++;
	}
	return (1);
}

int	find_specific_flag(const char *format, char flag)
{
	while (*format && *format != flag)
	{
		if (find_any_conversion(*format) == 1)
			return (0);
		format++;
	}
	return (1);
}
