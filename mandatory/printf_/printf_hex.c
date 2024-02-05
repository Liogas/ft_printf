/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_hex.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 23:00:21 by glions            #+#    #+#             */
/*   Updated: 2024/01/31 23:51:22 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	printf_hex(unsigned int value, int upper)
{
	int		cput;
	char	*value_printable;

	cput = 0;
	value_printable = ft_itoa_hex((int)value);
	if (!value_printable)
		return (-1);
	if (upper)
		value_printable = ft_strupper(value_printable);
	ft_putstr_fd(value_printable, 1);
	cput = ft_strlen(value_printable);
	free(value_printable);
	return (cput);
}
