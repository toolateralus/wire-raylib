import "raylib.w";

InitWindow(800, 450, "raylib [core] example - basic window");

SetTargetFPS(60);

mut i32 x = 0;
mut i32 y = 0;

for (mut auto i = 0; i < 100000; i = i + 1) {
  if (WindowShouldClose()) {
    CloseWindow();
    exit(0);
  }
  
  BeginDrawing();
  ClearBackground(black);
  DrawFPS(0,0);
  
  if (IsKeyDown(KEY_RIGHT)) {
    x = x + 1;
  }
  if (IsKeyDown(KEY_LEFT)) {
    x = x - 1;
  }
  if (IsKeyDown(KEY_UP)) {
    y = y - 1;
  }
  if (IsKeyDown(KEY_DOWN)) {
    y = y + 1;
  }
  
  DrawText("Congrats! You created your first window!", x, y, 20, white);
  EndDrawing();
}

exit(0);