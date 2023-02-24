#ifndef GAME_H
#define GAME_H

#include "env.h"

#include <stdbool.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "renderer.h"
#include "resourcemanager.h"

typedef enum {
    GAME_ACTIVE,
    GAME_MENU,
    GAME_WIN
} GameState;

extern GameState g_State;
extern Renderer* g_Renderer;
extern GLboolean g_Keys[1024];
extern GLuint g_Width, g_Height;

extern texture_2D* tex_mwep;

void g_Init(GLuint width, GLuint height);

void g_ProcessInput(GLfloat dt);
void g_Update(GLfloat dt);
void g_Render();

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);

#endif