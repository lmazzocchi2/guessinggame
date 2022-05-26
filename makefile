all: readme.md

readme.md: guessinggame.sh
	echo "#Project: guess number of files" >> readme.md
	echo "This doc has been printed" `date`>> readme.md
	echo guessinggame.sh has `cat guessinggame.sh | egrep '' -c` lines >> readme.me
  
clean:
	rm readme.md
