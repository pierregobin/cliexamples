BUILD=dune build 
all : cliex.exe cliex3.exe cliex4.exe

cliex.exe : cliex.ml
	$(BUILD) $@

cliex3.exe : cliex3.ml
	$(BUILD) $@

cliex4.exe : cliex4.ml
	$(BUILD) $@

clean :
	rm -rf _build
