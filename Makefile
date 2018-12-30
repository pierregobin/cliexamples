all : cliex.native cliex2.native

cliex.native : cliex.ml
	corebuild $@

cliex2.native : cliex2.ml
	corebuild $@

clean :
	rm -rf _build
	rm cliex.native
	rm cliex2.native

