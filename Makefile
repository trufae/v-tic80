all: clean tool-swc
	mkdir tmp
	v -enable-globals -b js_browser -o tmp/hello.js hello.v
	npx swc -o tmp/final.js tmp/hello.js
	cat tic/stub.js tmp/final.js > tmp/output.js
	du -hs tmp/output.js
	-pbcopy < tmp/output.js

clean:
	rm -rf tmp

c:
	v -enable-globals -o hello.c hello.v

tool-swc:
	npx swc --help > /dev/null 2> /dev/null || npm i @swc/core @swc/cli

