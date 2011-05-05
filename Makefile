infile=fsm.gv.txt
outfile=fsm.gv.png

dot:
	dot -Tpng $(infile) > $(outfile)
show:
	firefox $(outfile)
x: dot show
