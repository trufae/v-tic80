module tic

fn JS.tstamp() int
fn JS.btn(b int) bool
fn JS.key(b int) bool
fn JS.cls(c int)
fn JS.rect(x int, y int, w int, h int, c int)
fn JS.pix(x int, y int) int
fn JS.spr(x int, y int, c int, s int, f int, r int, w int, h int)


// this assumes the default color palete
pub enum Color {
	black = 0
	pink = 1
	red = 2
	orange = 3
	yellow = 4
	green = 5
	ocean = 32
}

pub enum Button {
	up = 0
	down = 1
	left = 2
	right = 3
	a = 4
	b = 5
}

pub enum Key {
	a = 1
	b = 2
	c = 3
	d = 4
	e = 5
	f = 6
	g = 7
	h = 8
	i = 9
	j = 10
	k = 11
	l = 12
	m = 13
	n = 14
	o = 15
	p = 16
	q = 17
	r = 18
	s = 19
	t = 20
	u = 21
	v = 22
	w = 23
	x = 24
	y = 25
	z = 26

	n0 = 27
	n1 = 28
	n2 = 29
	n3 = 30
	n4 = 31
	n5 = 32
	n6 = 33
	n7 = 34
	n8 = 35
	n9 = 36

	minus = 37
	equals = 38
	lbracket = 39
	rbracket = 40
	backslash = 41
	semicolon = 42
	apostrophe = 43
	grave = 44
	comma = 45
	period = 46
	slash = 47

	space = 48
	tab = 49

	enter = 50
	backspace = 51
	supr = 52 // delete
	insert = 53

	pageup = 54
	pagedown = 55
	home = 56
	end = 57
	up = 58
	down = 59
	left = 60
	right = 61

	capslock = 62
	control = 63
	shift = 64
	alt = 65
}

pub fn printxy(s string, x int, y int) {
	#print(s.str, x.valueOf(), y.valueOf())
}

pub fn rectangle(x int, y int, w int, h int, c int) {
	JS.rect(x, y, w, h, c)
}

pub fn rectb_(x int, y int, w int, h int, c int) {
	#rectb(x.valueOf(), y.valueOf(), w.valueOf(), h.valueOf(), c.valueOf());
}

pub fn circ_(x int, y int, radius int, color int) {
	#circ(x.valueOf(), y.valueOf(), radius.valueOf(), color.valueOf());
}

pub fn circb_(x int, y int, radius int, color int) {
	#circb(x.valueOf(), y.valueOf(), radius.valueOf(), color.valueOf());
}

// spr id x y [colorkey=-1] [scale=1] [flip=0] [rotate=0] [w=1 h=1]
pub fn sprite(id int, x int, y int) {
	#spr(id.valueOf(), x.valueOf(), y.valueOf());
}

pub fn sprite_full(id int, x int, y int, color int, scale int, flip int, rotate int, w int, h int) {
	#spr(id.valueOf(), x.valueOf(), y.valueOf(), color.valueOf(), scale.valueOf(), flip.valueOf(), rotate.valueOf(), w.valueOf(), h.valueOf());
	// JS.spr(id, x, y, color, scale, flip, rotate, w, h)
}

pub fn pix_get(x int, y int) int {
	#return pix(x.valueOf(), y.valueOf());
	return JS.pix(x, y)
}

pub fn pix_set(x int, y int, c int) {
	// JS.pix(x, y, c)
	#pix(x.valueOf(), y.valueOf(), c.valueOf());
}

pub fn clear(n int) {
	// JS.cls(int(n))
	#cls(n.valueOf())
}

pub fn memcpy_(d int, s int, l int) {
	#memcpy(d.valueOf(), s.valueOf(), l.valueOf())
}

pub fn memset_(d int, v int, l int) {
	// v should be between 0 and 255
	#memset(d.valueOf(), v.valueOf(), l.valueOf());
}

pub fn peek_(a int) int {
	// v should be between 0 and 255
	#return peek(a.valueOf());
	return 0
}

pub fn poke_(a int, v int) {
	// v should be between 0 and 255
	#poke(a.valueOf(), v.valueOf());
}

pub fn reset_() {
	#reset();
}

pub fn exit_() {
	#exit();
}

pub fn time_() int {
	#return time();
	return 0
}

pub fn timestamp(a int, v int) int {
	return JS.tstamp()
}

pub fn trace_(s string) {
	println(s.str)
}

pub fn keypress(n Key) bool {
	return JS.key(int(n))
}

pub fn button(n Button) bool {
	return JS.btn(int(n))
}
