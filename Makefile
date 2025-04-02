.PHONY: clean all

all: clean simple

simple: simple.ll
	clang -g simple.ll -o simple -lm

simple.ll:
	$${LLVM_BUILD}/bin/toyc-ch7 --emit=llvm ~/toy-progs/assign.toy 2> simple.ll

clean:
	rm -f simple simple.ll
