/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_format_error.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cboukhal <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/30 15:36:37 by cboukhal          #+#    #+#             */
/*   Updated: 2024/04/30 15:36:38 by cboukhal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	check_from_precision(const char *format)
{
	int	statut;

	format++;
	while (*format >= '0' && *format <= '9')
		format++;
	if (find_any_conversion(*format) == 1)
		statut = no_error;
	else
		statut = error;
	return (statut);
}

static int	check_from_field_width(const char *format)
{
	int	statut;

	if (*format >= '1' && *format <= '9')
		format++;
	while (*format >= '0' && *format <= '9')
		format++;
	if (*format == '.')
		statut = check_from_precision(format);
	else if (find_any_conversion(*format) == 1)
		statut = no_error;
	else
		statut = error;
	return (statut);
}

static int	check_from_flags(const char *format)
{
	int	statut;

	while (find_any_flags(*format) == 1)
		format++;
	if (*format >= '1' && *format <= '9')
		statut = check_from_field_width(format);
	else if (*format == '.')
		statut = check_from_precision(format);
	else if (find_any_conversion(*format) == 1)
		statut = no_error;
	else
		statut = error;
	return (statut);
}

int	check_format_error(const char *format)
{
	int	statut;

	statut = 0;
	if (*format == '.')
		statut = check_from_precision(format);
	else if (*format >= '1' && *format <= '9')
		statut = check_from_field_width(format);
	else if (find_any_flags(*format) == 1)
		statut = check_from_flags(format);
	else if (find_any_conversion(*format) == 1)
		statut = no_error;
	return (statut);
}
