package game

import rl "vendor:raylib"

WINDOW_WIDTH :: 1280
WINDOW_HEIGHT :: 720
WINDOW_TITLE :: "Game"
WINDOW_CONFIG_FLAGS: rl.ConfigFlags : {.WINDOW_RESIZABLE}

Globals :: struct {
	is_exiting: bool,
}

g: ^Globals

init_globals :: proc() {
	g.is_exiting = false
}

hot_reloaded :: proc() {

}

update :: proc() {
	if rl.IsKeyPressed(.ESCAPE) {
		quit()
	}
}

draw :: proc() {
	rl.BeginDrawing()
	rl.ClearBackground(rl.BLACK)

	rl.DrawText("running...", 10, 10, 20, rl.WHITE)

	rl.EndDrawing()
}
