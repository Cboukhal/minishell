/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_utils.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:35:46 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:35:48 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

size_t	s_strlen(const char *argument)
{
	size_t	i;

	if (!argument)
		return (0);
	i = 0;
	while (argument[i])
		i++;
	return (i);
}

int	putchar_count(char argument, int count)
{
	count = write(1, &argument, 1);
	return (count);
}

int	putstr_precision_count(char *argument, int precision)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	if (argument == NULL)
	{
		if (precision >= 6)
		{
			count = write(1, "(null)", 6);
			return (count);
		}
		return (0);
	}
	while (argument[i] && i < precision)
	{
		count += write(1, &argument[i], 1);
		i++;
	}
	return (count);
}

int	putstr_count(char *argument)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	if (argument == NULL)
	{
		count = write(1, "(null)", 6);
		return (count);
	}
	while (argument[i])
	{
		count += write(1, &argument[i], 1);
		i++;
	}
	return (count);
}

int	putnbr_count(int argument, int count)
{
	count = 0;
	if (argument == -2147483648)
		count += write(1, "2147483648", 10);
	else if (argument < 0)
	{
		argument *= -1;
		count += putnbr_count(argument, count);
	}
	else if (argument >= 0 && argument <= 9)
	{
		count += putchar_count(argument + '0', count);
	}
	else
	{
		count = putnbr_count(argument / 10, count);
		count += putnbr_count(argument % 10, count);
	}
	return (count);
}
