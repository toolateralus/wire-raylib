import "raylib.w";
extern void printf(varargs);

InitWindow(800, 450, "raylib [core] example - basic window");

SetTargetFPS(60);

mut auto x = 0;
mut auto y = 0;
auto speed = 5;

// TODO: fix bug where putting !WindowShouldClose() int he while loop causes misused operands.
// movzx al, al is the problem instruction.

// TODO: fix the bug where if we put this loop inside of a function it just immediately segfaults.
while(true) {
  if (WindowShouldClose()) {
    break;
  }
  
  BeginDrawing();
  ClearBackground(black);
  DrawFPS(0,0);
  
  if (IsKeyDown(KEY_D)) {
    x = x + speed;
  }
  if (IsKeyDown(KEY_A)) {
    x = x - speed;
  }
  if (IsKeyDown(KEY_W)) {
    y = y - speed;
  }
  if (IsKeyDown(KEY_S)) {
    y = y + speed;
  }
  if (y < HEIGHT) {
    y = y + 1;
  }
  
  DrawRectangle(x, y, 100, 100, white);
  DrawText("Congrats! You created your first window!", x, y, 20, white);
  EndDrawing();
}

CloseWindow();
exit(0);