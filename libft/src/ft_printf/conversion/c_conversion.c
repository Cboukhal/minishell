/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   c_conversion.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jbocktor <jbocktor@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 09:17:19 by jbocktor          #+#    #+#             */
/*   Updated: 2024/04/30 09:17:20 by jbocktor         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	left_justify(char argument, int field_width)
{
	int	count;

	count = 0;
	count += write(1, &argument, 1);
	count += put_field_width(field_width, 1);
	return (count);
}

static int	field_width_only(char argument, int field_width)
{
	int	count;

	count = 0;
	count += put_field_width(field_width, 1);
	count += write(1, &argument, 1);
	return (count);
}

int	c_conversion(va_list ap, const char *format, int count)
{
	int				field_width;
	unsigned char	argument;

	count = 0;
	field_width = get_field_width(format);
	argument = (unsigned char) va_arg(ap, int);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, field_width);
	else
		count = field_width_only(argument, field_width);
	return (count);
}
