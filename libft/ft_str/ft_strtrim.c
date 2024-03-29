/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: glions <glions@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/13 08:53:45 by glions            #+#    #+#             */
/*   Updated: 2023/11/19 00:18:33 by glions           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

static int	ft_istrim(char const c, char const *t)
{
	int	i;

	i = 0;
	while (t[i] != '\0')
	{
		if (t[i] == c)
			return (1);
		i++;
	}
	return (0);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	size_t	start;
	size_t	end;
	size_t	len;

	if (!s1)
		return (NULL);
	start = 0;
	while (s1[start] != '\0' && ft_istrim(s1[start], set))
		start++;
	end = ft_strlen((char *)s1) - 1;
	while (end > start && ft_istrim(s1[end], set))
		end--;
	len = end - start + 1;
	return (ft_substr(s1, start, len));
}
