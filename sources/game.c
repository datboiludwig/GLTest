#include "game.h"

GameState g_State;
Renderer *g_Renderer;
GLboolean g_Keys[1024];
GLuint g_Width, g_Height;

texture_2D *tex_mwep;

void g_Init(GLuint width, GLuint height)
{
    g_State = GAME_ACTIVE;
    g_Width = width;
    g_Height = height;

    shader *sh = resMLoadShaderFromFile("C:/Users/Ludwig/source/repos/GLTest/shaders/fragment.glsl", "C:/Users/Ludwig/source/repos/GLTest/shaders/fragment.glsl", NULL);

    mat4 projection;
    glm_ortho(0.0f, g_Width,
              g_Height, 0.0f, -1.0f, 1.0f, projection);
    shSetInt(sh, "image", 0);
    shSetMatrix4(sh, "projection", projection);

    g_Renderer = r_Renderer(sh);

    tex_mwep = resMLoadTextureFromFile("C:/Users/Ludwig/source/repos/GLTest/textures/mwep.jpg", false);
}

void g_ProcessInput(GLfloat dt)
{
}

void g_Update(GLfloat dt)
{
}

void g_Render()
{
    r_DrawSprite(g_Renderer, tex_mwep, (vec2){200.0f, 200.0f}, (vec2){300.0f, 400.0f}, 45.0f, (vec3){0.0f, 1.0f, 0.0f});
}

void key_callback(GLFWwindow *window, int key, int scancode, int action, int mode)
{
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);
    if (key >= 0 && key < 1024)
    {
        if (action == GLFW_PRESS)
            g_Keys[key] = true;
        else if (action == GLFW_RELEASE)
            g_Keys[key] = false;
    }
}
