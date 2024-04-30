/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_precision.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:36:01 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:36:02 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	find_precision(char format)
{
	if (format == '.')
		return (1);
	else if (find_any_conversion(format) == 1)
		return (-1);
	return (0);
}

static int	extract_value(const char *format, int start, int end)
{
	char	*precision;
	int		value;
	int		i;

	precision = malloc((end - start) + 1);
	if (!precision)
		return (0);
	i = 0;
	while (start < end)
	{
		precision[i] = format[start];
		start++;
		i++;
	}
	precision[i] = '\0';
	value = atoi(precision);
	free(precision);
	return (value);
}

int	get_precision(const char *format)
{
	int		precision;
	size_t	start;
	size_t	end;
	size_t	i;

	i = 0;
	while (find_precision(format[i]) == 0)
		i++;
	if (find_precision(format[i]) == -1)
		return (0);
	i++;
	while (format[i] == '0')
		i++;
	start = i;
	while (format[i] >= '0' && format[i] <= '9')
		i++;
	end = i;
	precision = extract_value(format, start, end);
	return (precision);
}
