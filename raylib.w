extern {
  void InitWindow(i32 width, i32 height, string title),
  void CloseWindow(),
  i8 IsWindowReady(),
  i8 WindowShouldClose(),
  void BeginDrawing(),
  void EndDrawing(),
  void ClearBackground(i32 color),
  
  void DrawFPS(i32 x, i32 y),
  void SetTargetFPS(i32 fps),
  
  i32 GetScreenWidth(),
  i32 GetScreenHeight(),
  i32 GetFrameTime(),
  
  void exit(i32 v),
};

struct Vector2 {
  i32 x;
  i32 y;
};

// DRAWING
extern {
  void DrawRectangle(i32 x, i32 y, i32 width, i32 height, i32 color),
  void DrawText(string text, i32 x, i32 y, i32 fontSize, i32 color),
  void DrawCircle(i32 x, i32 y, i32 radius, i32 color),
  void DrawCircleGradient(i32 x, i32 y, i32 radius, i32 color1, i32 color2),
  void DrawCircleLines(i32 x, i32 y, i32 radius, i32 color),
}

// INPUT 
extern {
  i32 GetMouseX(),
  i32 GetMouseY(),
  i32 GetRandomValue(i32 min, i32 max),
  i8 IsKeyPressed(i32 key),
  i8 IsKeyDown(i32 key),
  i8 IsKeyReleased(i32 key),
  i8 IsKeyUp(i32 key),
  i8 IsMouseButtonPressed(i32 button),
  i8 IsMouseButtonDown(i32 button),
};

const i32 black = 0;
const i32 white = 4294967295;
const i32 red = 16711680;
const i32 lime = 65280;
const i32 blue = 255;
const i32 yellow = 16776960;
const i32 cyan = 65535;
const i32 magenta = 16711935;
const i32 silver = 12632256;
const i32 gray = 8421504;
const i32 maroon = 8388608;
const i32 olive = 8421376;
const i32 green = 32768;
const i32 purple = 8388736;
const i32 teal = 32896;
const i32 navy = 128;

const i8 false = 0;
const i8 true = 1;
const i32 HEIGHT = 600;
const i32 WIDTH = 800;