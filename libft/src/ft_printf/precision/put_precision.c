/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   put_precision.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:35:54 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:35:55 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	global_length(int precision, int argument_length)
{
	if (precision > argument_length)
		argument_length += precision - argument_length;
	return (argument_length);
}

int	put_precision(int precision, int argument_length)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	precision = precision - argument_length;
	while (i < precision)
	{
		count += write(1, "0", 1);
		i++;
	}
	return (count);
}
