all : cliex.native cliex2.native cliex3.native

cliex.native : cliex.ml
	corebuild $@

cliex2.native : cliex2.ml
	corebuild $@

cliex3.native : cliex3.ml
	corebuild $@

clean :
	rm -rf _build
	rm cliex.native
	rm cliex2.native
	rm cliex3.native

