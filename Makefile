NAME = 	libftprintf.a
HDRS = 	ft_printf.h
DIRSR =	srcs/
DIROB =	objs/
DIRLI =	includes/
FILEH = ft_printf.h
FILEC = ft_printf.c ft_printf_string.c ft_printf_number.c
SRCS =	$(addprefix $(DIRSR), $(FILEC))
OBJS =	$(addprefix $(DIROB), $(FILEC:.c=.o))
HDRS =	$(addprefix $(DIRLI), $(FILEH))
FLAGS = -Wall -Werror -Wextra
CC = cc
AR = ar -rcs

all:		initdir	$(NAME)		

$(NAME):	$(OBJS)	
			$(AR) $(NAME) $(OBJS)	

$(DIROB)%.o:		$(DIRSR)%.c	
					$(CC) $(FLAGS) -c $< -o $@ -I.$(DIRLI)

# Création du dossier obj/ si nécessaire
initdir:
			mkdir -p $(DIROB)

clean:	
			rm -rf $(OBJS)	

fclean:		clean	
			rm -rf $(NAME)	

re:			fclean all

.PHONY:		all clean fclean re