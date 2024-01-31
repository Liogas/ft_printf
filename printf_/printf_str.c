/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   printf_str.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/31 22:56:55 by glions            #+#    #+#             */
/*   Updated: 2024/01/31 23:49:48 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	printf_str(char *value)
{
	if (!value)
		return (ft_putstr_fd("(null)", 1), (6));
	return (ft_putstr_fd(value, 1), ft_strlen(value));
}
