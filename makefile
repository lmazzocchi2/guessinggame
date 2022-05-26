all: README.md

README.md: guessinggame.sh
	echo "**Project: guess number of files**\/n" >> README.md
	echo "- This doc has been printed" `date`>> README.md
	echo - guessinggame.sh has `cat guessinggame.sh | egrep '' -c` lines >> README.md
  
clean:
	rm readme.md
