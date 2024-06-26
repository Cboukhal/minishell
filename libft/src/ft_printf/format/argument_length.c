/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   argument_length.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:36:44 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:36:45 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	s_length(int precision, char *argument)
{
	int	argument_length;

	argument_length = s_strlen(argument);
	if (argument == NULL && precision >= 6)
		return (6);
	else if (precision >= argument_length)
		return (argument_length);
	return (precision);
}

int	p_length(unsigned long argument)
{
	int	length;

	length = 0;
	if (argument >= 0 && argument <= 15)
		length++;
	else
	{
		length = p_length(argument / 16);
		length += p_length(argument % 16);
	}
	return (length);
}

int	d_i_length(int argument)
{
	int	length;

	length = 0;
	if (argument < 0)
	{
		length++;
		argument *= -1;
		length += u_length(argument);
	}
	else if (argument >= 0 && argument <= 9)
		length++;
	else
	{
		length = d_i_length(argument / 10);
		length += d_i_length(argument % 10);
	}
	return (length);
}

int	u_length(unsigned int argument)
{
	int	length;

	length = 0;
	if (argument >= 0 && argument <= 9)
		length++;
	else
	{
		length = u_length(argument / 10);
		length += u_length(argument % 10);
	}
	return (length);
}

int	x_length(unsigned int argument)
{
	int	length;

	length = 0;
	if (argument >= 0 && argument <= 15)
		length++;
	else
	{
		length = x_length(argument / 16);
		length += x_length(argument % 16);
	}
	return (length);
}
