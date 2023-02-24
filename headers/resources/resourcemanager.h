#ifndef RESOURCE_MANAGER_H
#define RESOURCE_MANAGER_H

#include "env.h"

#include <string.h>
#include <glad/glad.h>

#include "texture.h"
#include "shader.h"

void resMClearShaders(shader* shaders, texture_2D* textures);
shader* resMLoadShaderFromFile(const GLchar *vShaderFile, const GLchar *fShaderFile, const GLchar *gShaderFile);
texture_2D* resMLoadTextureFromFile(const GLchar *file, GLboolean alpha);

#endif