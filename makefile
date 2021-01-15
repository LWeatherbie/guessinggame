all: readme.md

readme.md:

	echo "# Guessing Game Bash Script [guessinggame.sh]" > README.md
	create_date=$(`date`)
	echo "" >> README.md
	echo "## Group Assignment for *The Unix Workbench* course offered by **Coursera.org**" >> README.md
	echo "" >> README.md
	echo "| ==============================================================================" >> README.md
	echo "|" >> README.md
	echo "| Name:" >> README.md
	echo "| File Count Guessing Game" >> README.md 
	echo "|" >> README.md
	echo "| Description:" >> README.md
	echo "| This bash scripe implements a simpe guessing game which asks the user to guess" >> README.md
	echo "| the number of files in the current directory. With each guess, the script tells" >> README.md
	echo "| the user whether their guess is too high, to low, or correct. If a correct guess" >> README.md
	echo "| is made, the scipt exits" >> README.md
	echo "|" >> README.md
	echo "| This script demonstrates the following bash features:" >> README.md
	echo "|	- user input" >> README.md
	echo "|	- functions" >> README.md
	echo "|	- while loops" >> README.md
	echo "|	- if then else" >> README.md
	echo "|" >> README.md
	echo "| Written by:" >> README.md
	echo "| Leo Weatherbie" >> README.md
	echo "|" >> README.md
	echo "| Date Written: 15 Jan 21" >> README.md
	echo "|" >> README.md
	echo "| Modification History:" >> README.md
	echo "|" >> README.md
	echo "| ==============================================================================" >> README.md
	echo "" >>README.md
	echo "makefile last run: "`date` >>README.md
	echo "guessinggame.sh contains "`egrep -v -c ^.*# guessinggame.sh`" lines of code." >> README.md
 
