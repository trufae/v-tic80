import tic

struct State {
mut:
	x int
	y int
}

__global state = State{}

[export: 'TIC']
fn tick(a int) {
	tic.clear(int(tic.Color.ocean))
	tic.printxy('hello V world!', 10, 10)
	if tic.button(.up) || tic.keypress(.k) {
		tic.printxy('UP!', 20, 20)
		state.y -= 10
	}
	if tic.button(.down) || tic.keypress(.j) {
		tic.printxy('DOWN!', 20, 40)
		state.y += 10
	}
	if tic.button(.left) || tic.keypress(.h) {
		tic.printxy('LEFT!', 0, 30)
		state.x -= 10
	}
	if tic.button(.right) || tic.keypress(.l) {
		tic.printxy('RIGHT!', 30, 30)
		state.x += 10
	}
	if state.x < 0 {
		state.x = 0
	}
	if state.y < 0 {
		state.y = 0
	}

	tic.rectangle(state.x, state.y, 10, 10, int(tic.Color.yellow))
}
