FILE = figa

all:
	as -o $(FILE).o $(FILE).s
	ld -o $(FILE) $(FILE).o

debug:
	as -g -o $(FILE).o $(FILE).s
	ld -o $(FILE) $(FILE).o

