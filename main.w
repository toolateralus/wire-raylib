import "raylib.w";

InitWindow(800, 450, "raylib [core] example - basic window");

SetTargetFPS(60);

for (mut auto i = 0; i < 100000; i = i + 1) {
  if (WindowShouldClose()) {
    CloseWindow();
    exit(0);
  }
  
  BeginDrawing();
  ClearBackground(black);
  DrawFPS(0,0);
  DrawText("Congrats! You created your first window!", WIDTH / 4, HEIGHT / 4, 20, white);
  EndDrawing();
}

exit(0);