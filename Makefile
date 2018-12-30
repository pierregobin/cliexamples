all : cliex.native

cliex.native : cliex.ml
	corebuild $@

clean :
	rm -rf _build
	rm cliex.native

