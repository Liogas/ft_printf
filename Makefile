CC			=	cc
CFLAGS		=	-Wall -Wextra -Werror

SRCS		=	ft_printf.c \
				printf_/printf_int.c \
				printf_/printf_u.c \
				printf_/printf_hex.c \
				printf_/printf_p.c \
				printf_/printf_str.c
OBJS		=	$(SRCS:.c=.o)

SRCS_LIBFT	=	libft/ft_char/ft_isalpha.c \
				libft/ft_char/ft_isdigit.c \
				libft/ft_char/ft_isalnum.c \
				libft/ft_char/ft_isascii.c \
				libft/ft_char/ft_isprint.c \
				libft/ft_char/ft_toupper.c \
				libft/ft_char/ft_tolower.c \
\
				libft/ft_mem/ft_memset.c \
				libft/ft_mem/ft_bzero.c \
				libft/ft_mem/ft_memcpy.c \
				libft/ft_mem/ft_memmove.c \
				libft/ft_mem/ft_memchr.c \
				libft/ft_mem/ft_memcmp.c \
\
				libft/ft_str/ft_strlcpy.c \
				libft/ft_str/ft_strlcat.c \
				libft/ft_str/ft_strlen.c \
				libft/ft_str/ft_strchr.c \
				libft/ft_str/ft_strrchr.c \
				libft/ft_str/ft_strncmp.c \
				libft/ft_str/ft_strcmp.c \
				libft/ft_str/ft_strnstr.c \
				libft/ft_str/ft_strupper.c \
				libft/ft_str/ft_strdup.c \
				libft/ft_str/ft_strndup.c \
				libft/ft_str/ft_substr.c \
				libft/ft_str/ft_strjoin.c \
				libft/ft_str/ft_constr.c \
				libft/ft_str/ft_strtrim.c \
				libft/ft_str/ft_split.c \
				libft/ft_str/ft_strmapi.c \
				libft/ft_str/ft_striteri.c \
\
				libft/ft_conv/ft_atoi.c \
				libft/ft_conv/ft_itoa.c \
				libft/ft_conv/ft_utoa.c \
				libft/ft_conv/ft_ptoa.c \
				libft/ft_conv/ft_itoa_hex.c \
\
				libft/ft_put/ft_putchar_fd.c \
				libft/ft_put/ft_putstr_fd.c \
				libft/ft_put/ft_putendl_fd.c \
				libft/ft_put/ft_putnbr_fd.c \
				libft/ft_put/ft_putnbr_u_fd.c \
				libft/ft_put/ft_putnbr_hex_fd.c \
				libft/ft_put/ft_putptr_hex_fd.c \
\
				libft/ft_lst/ft_lstnew.c \
				libft/ft_lst/ft_lstadd_front.c \
				libft/ft_lst/ft_lstsize.c \
				libft/ft_lst/ft_lstlast.c \
				libft/ft_lst/ft_lstadd_back.c \
				libft/ft_lst/ft_lstdelone.c \
				libft/ft_lst/ft_lstclear.c \
				libft/ft_lst/ft_lstiter.c \
				libft/ft_lst/ft_lstmap.c \
\
				libft/ft_alloc/ft_calloc.c 
OBJS_LIBFT	=	$(SRCS_LIBFT:.c=.o)

NAME		=	libftprintf.a
AR			=	ar -rcs

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): $(OBJS_LIBFT) $(OBJS)
	$(AR) $@ $^

clean:
	rm -f $(OBJS_LIBFT) $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

