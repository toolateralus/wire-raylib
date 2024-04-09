import raylib;
import libc;

// TODO: fix bug where putting !WindowShouldClose() int he while loop causes misused operands.
// movzx al, al is the problem instruction.
// TODO: fix the bug where if we put this loop inside of a function it just immediately segfaults.
// it seems to actually be a problem where if we call user defined functions or anything here it just crashes.
InitWindow(800, 450, "raylib [core] example - basic window");
SetTargetFPS(60);

mut auto x = 0;
mut auto y = 0;
auto speed = 5;

struct Rectangle {
  i32 h=25;
  i32 w=25;
}

// TODO: fix the segfault that occurs when this has to return min / max.
// probably some scope / variable offset issue.
i32 clamp(i32 v, i32 min, i32 max) {
  if (v < min) {
    return min;
  }
  if (v > max) {
    return max;
  }
  return v;
}

while (!WindowShouldClose()) {
  
  BeginDrawing();
  ClearBackground(Color::BLACK);
  DrawFPS(0,0);
  
  auto scale = Rectangle();
  
  if (IsKeyDown(Key::D)) {
    x = x + speed;
  }
  if (IsKeyDown(Key::A)) {
    x = x - speed;
  }
  if (IsKeyDown(Key::W)) {
    y = y - speed;
  }
  if (IsKeyDown(Key::S)) {
    y = y + speed;
  }
  if (y < HEIGHT - scale.h) {
    y = y + 1;
  } 
  
  // x = clamp(x, 0, WIDTH - scale.w);
  // y = clamp(y, 0, HEIGHT - scale.h);
  
  
  DrawRectangle(x, y, scale.w, scale.h, Color::WHITE);
  DrawText("This is running on :wire: lang.", 100, 0, 20, Color::WHITE);
  EndDrawing();
}

CloseWindow();
exit(0);