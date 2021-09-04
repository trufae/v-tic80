V-TIC-80
========

This is a hello world app written in V for the TIC-80.

--pancake

![Demo](video0.gif)

Notes
-----

This is the *work-in-progress* support for V in tic-80.

* V generates 80KB js for a hello world
  * Using swc this can be trimmed down to 36KB, but swc doesnt gets rid of es2020
* V depends on require, process and ES2020 js classes (Map, BigInt, ..)
  * Just prefix the output with stub.js to workaround this
* Methods in JS modules may produce name conflicts
  * Workarounded using different names for the pubcic APIs

Still, there's a large part of this JS code that is not used by the
program, so it will be ideal if V could only generate it when it's
required. But also, i guess there must be a way using babel or so
to remove that as a post process step.

How to use it:
--------------

* type `make`, that will compile, trim down and paste the output in the clipboard
* Open the TIC80 virtual console
  * Press ALT-1 or ESC to get into the editor
  * Press CMD-A to select all text and CMD-V to paste
  * Now Press CMD-S to save and CMD-R to run

Enjoy!
