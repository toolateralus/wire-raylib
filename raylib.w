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

const i32 KEY_A = 65;
const i32 KEY_B = 66;
const i32 KEY_C = 67;
const i32 KEY_D = 68;
const i32 KEY_E = 69;
const i32 KEY_F = 70;
const i32 KEY_G = 71;
const i32 KEY_H = 72;
const i32 KEY_I = 73;
const i32 KEY_J = 74;
const i32 KEY_K = 75;
const i32 KEY_L = 76;
const i32 KEY_M = 77;
const i32 KEY_N = 78;
const i32 KEY_O = 79;
const i32 KEY_P = 80;
const i32 KEY_Q = 81;
const i32 KEY_R = 82;
const i32 KEY_S = 83;
const i32 KEY_T = 84;
const i32 KEY_U = 85;
const i32 KEY_V = 86;
const i32 KEY_W = 87;
const i32 KEY_X = 88;
const i32 KEY_Y = 89;
const i32 KEY_Z = 90;

const i32 KEY_ZERO = 48;
const i32 KEY_ONE = 49;
const i32 KEY_TWO = 50;
const i32 KEY_THREE = 51;
const i32 KEY_FOUR = 52;
const i32 KEY_FIVE = 53;
const i32 KEY_SIX = 54;
const i32 KEY_SEVEN = 55;
const i32 KEY_EIGHT = 56;
const i32 KEY_NINE = 57;

const i32 KEY_UP = 265;
const i32 KEY_DOWN = 264;
const i32 KEY_LEFT = 263;
const i32 KEY_RIGHT = 262;

const i32 KEY_SPACE = 32;
const i32 KEY_ENTER = 257;
const i32 KEY_ESCAPE = 256;

const i32 MOUSE_LEFT_BUTTON = 0;
const i32 MOUSE_RIGHT_BUTTON = 1;
const i32 MOUSE_MIDDLE_BUTTON = 2;

mut i32 HEIGHT = 600;
mut i32 WIDTH = 800;