# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fvivaudo <fvivaudo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/07/16 09:42:25 by fvivaudo          #+#    #+#              #
#    Updated: 2014/12/05 17:24:52 by fvivaudo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Werror -Wextra

OBJ	= ${SRC:.s=.o}

SRC = 	srcs/ft_bzero.s		\
		srcs/ft_strcat.s	\
		srcs/ft_isalpha.s	\
		srcs/ft_isdigit.s	\
		srcs/ft_isalnum.s	\
		srcs/ft_isascii.s	\
		srcs/ft_isprint.s	\
		srcs/ft_toupper.s	\
		srcs/ft_tolower.s	\
		srcs/ft_puts.s		\
		srcs/ft_strlen.s	\
		srcs/ft_memset.s	\
		srcs/ft_memcpy.s	\
		srcs/ft_strdup.s	\
		srcs/ft_cat.s

NAME = libasm.a

all : $(NAME)

$(NAME) :
	nasm -f macho64 srcs/ft_bzero.s
	nasm -f macho64 srcs/ft_strcat.s
	nasm -f macho64 srcs/ft_isalpha.s
	nasm -f macho64 srcs/ft_isdigit.s
	nasm -f macho64 srcs/ft_isalnum.s
	nasm -f macho64 srcs/ft_isascii.s
	nasm -f macho64 srcs/ft_isprint.s
	nasm -f macho64 srcs/ft_toupper.s
	nasm -f macho64 srcs/ft_tolower.s
	nasm -f macho64 srcs/ft_puts.s
	nasm -f macho64 srcs/ft_strlen.s
	nasm -f macho64 srcs/ft_memset.s
	nasm -f macho64 srcs/ft_memcpy.s
	nasm -f macho64 srcs/ft_strdup.s
	nasm -f macho64 srcs/ft_cat.s
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	@rm -Rf $(OBJ)

fclean: clean
	@rm -Rf $(NAME)

re: fclean all
