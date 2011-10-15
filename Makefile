infile=fsm.gv.txt
outfile=fsm.gv.png
browser=chromium-browser

dot:
	dot -Tpng $(infile) > $(outfile)
show:
	$(browser) $(outfile)
x: dot show
