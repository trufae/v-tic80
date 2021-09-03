import tic

struct State {
mut:
	x int
	y int
}

__global state = State{}

[export: 'TIC']
fn tick(a int) {
	tic.cls_(int(tic.Color.ocean))
	tic.print_('hello V world!', 10, 10)
	if tic.btn_(.up) || tic.key_(.k) {
		tic.print_('UP!', 20, 20)
		state.y -= 10
	}
	if tic.btn_(.down) || tic.key_(.j) {
		tic.print_('DOWN!', 20, 40)
		state.y += 10
	}
	if tic.btn_(.left) || tic.key_(.h) {
		tic.print_('LEFT!', 0, 30)
		state.x -= 10
	}
	if tic.btn_(.right) || tic.key_(.l) {
		tic.print_('RIGHT!', 30, 30)
		state.x += 10
	}
	if state.x < 0 {
		state.x = 0
	}
	if state.y < 0 {
		state.y = 0
	}

	tic.rect_(state.x, state.y, 10, 10, int(tic.Color.yellow))
}
