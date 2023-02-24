#include "env.h"

#include <stdio.h>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include "gl_error.h"
#include "game.h"
#include "window.h"
#include "shader.h"
#include "texture.h"
#include "resourcemanager.h"

GLFWwindow *m_window;

int main()
{

    if (!glfwInit())
    {
        glfwError();
        return -1;
    }
    else
    {

        m_window = initWindow(WIN_WIDTH, WIN_HEIGHT, WIN_TITLE);
        if (!m_window)
        {
            glfwError();
            return -1;
        }

        if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
        {
            fprintf(stderr, "Failed to load GLAD");
            return -1;
        }
        else
        {
            glEnable(GL_DEBUG_OUTPUT);
            glDebugMessageCallback(glErrMessageCallback, 0);

            glfwSetKeyCallback(m_window, key_callback);
            glViewport(0, 0, WIN_WIDTH, WIN_HEIGHT);
            glfwSetFramebufferSizeCallback(m_window, framebuffer_size_callback);

            glEnable(GL_BLEND);
            glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

            g_Init(WIN_WIDTH, WIN_HEIGHT);

            glClearColor(0.0, 0.5, 1.0, 1.0);

            float deltaTime = 0.0f;
            float lastFrame = 0.0f;

            while (!glfwWindowShouldClose(m_window))
            {
                float currentFrame = glfwGetTime();
                deltaTime = currentFrame - lastFrame;
                lastFrame = currentFrame;
                glfwPollEvents();

                g_ProcessInput(deltaTime);
                
                g_Update(deltaTime);
                
                glClear(GL_COLOR_BUFFER_BIT);
                g_Render();

                glfwSwapBuffers(m_window);
            }

            glDisable(GL_BLEND);
        }
    }
    glfwTerminate();
    return 0;
}