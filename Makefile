all:
	gcc -fPIC -c bignum.c -o bignum.o
	gcc -fPIC -c memzero.c -o memzero.o
	gcc -shared -Wl,-soname,libtrz.so.0 -o libtrz.so.0 bignum.o memzero.o -lc
	sudo cp -uf libtrz.so.0 /usr/local/lib
	sudo ldconfig
clean:
	rm -rf *.o *.0
