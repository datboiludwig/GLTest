#ifndef WINDOW_H
#define WINDOW_H


#include "env.h"

#include <glad/glad.h>
#include <GLFW/glfw3.h>

GLFWwindow* initWindow(uint16_t width, uint16_t height, const char* title);

void framebuffer_size_callback(GLFWwindow* window, int width, int height);

#endif