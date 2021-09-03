all: clean
	mkdir tmp
	v -enable-globals -b js_browser -o tmp/hello.js hello.v
	$$(npm bin)/uglifyjs < tmp/hello.js > tmp/hello2.js
	swc -o tmp/hello3.js tmp/hello2.js
	$$(npm bin)/uglifyjs < tmp/hello3.js | npx terser -c > tmp/hello4.js
	cat tic/stub.js tmp/hello4.js > tmp/output.js
	du -hs tmp/output.js
	pbcopy < tmp/output.js

clean:
	rm -rf tmp

c:
	v -enable-globals -o hello.c hello.v
