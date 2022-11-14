NAME = bsh

SRCS = srcs/main.c srcs/hello.c srcs/world.c
OBJS = $(SRCS:.c=.o)
INCLUDES = includes
CC = gcc -Wall -Wextra -Werror
RM = rm -rf

all : $(NAME)

$(NAME): $(OBJS)
	$(CC) $(OBJS) -o $(NAME)

.c.o:
	$(CC) -c $< -o $@ -I ${INCLUDES}

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY : all clean fclean re
