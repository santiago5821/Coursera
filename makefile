
all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# This is my first project in Coursera!!" > README.md
	echo "Today is" `date` >> README.md
	echo "This file has" `cat guessinggame.sh | wc -l` "code lines" >> README.md

