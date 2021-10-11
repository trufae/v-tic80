SRC=examples/witch.v

all: clean tool-swc
	mkdir tmp
	# v -enable-globals -b js_browser -o tmp/hello.js hello.v
	v -enable-globals -b js -o tmp/hello.js $(SRC)
	npx swc -o tmp/final.js tmp/hello.js
	cat tic/stub.js tmp/final.js > tmp/output.js
	cat tic/stub.js tmp/hello.js > tmp/output2.js
	-pbcopy < tmp/output.js
	grep -q TIC tmp/output.js
	du -hs tmp/output.js
	du -hs tmp/output2.js

clean:
	rm -rf tmp

tool-swc:
	npx swc --help > /dev/null 2> /dev/null || npm i @swc/core @swc/cli

update-swc:
	npm upgrade @swc/core @swc/cli

