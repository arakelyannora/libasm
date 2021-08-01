NAME	=	libasm.a

SRCS	=	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJS	=	$(SRCS:.s=.o)

AR		= ar rcs

RM		= rm -f

.s.o:
	./nasm -f macho64 $< -o $@

$(NAME): $(OBJS)
			$(AR) $(NAME) $(OBJS)
			ranlib $(NAME)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:		fclean all

.PHONY:	all re clean fclean