#include "raylib.h"
#include <iostream>
int main(void)
{
    const int screenWidth = 800;
    const int screenHeight = 450;
    SetConfigFlags(FLAG_WINDOW_RESIZABLE);
    InitWindow(screenWidth, screenHeight, "raylib [core] example - basic window");
    int TextWidth = MeasureText("Congrats! You created your first window!", 20);
    SetTargetFPS(60); 
    while (!WindowShouldClose())
    {
        BeginDrawing();
            ClearBackground(PURPLE);
            DrawText("Congrats! You created your first window!", GetScreenWidth() / 2.0 - TextWidth / 2.0, GetScreenHeight() / 2.0 - 10, 20, LIGHTGRAY);
            std::cout << "Screen Width: " << GetScreenWidth() << " Screen Height: " << GetScreenHeight() << "\n";int MeasureText(const char *text, int fontSize);
        EndDrawing();
    }


    CloseWindow(); 

    return 0;
}