#ifndef SHADER_H
#define SHADER_H

#include "env.h"

#include <stdbool.h>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <cglm/cglm.h>
#include <stdio.h>

typedef struct GLShader {

    GLuint ID;

} shader;

shader shUse(shader* sh);
void shCompile(shader* sh, const GLchar *vertexSource, const GLchar *fragmentSource, const GLchar *geometrySource);

void    shSetFloat         (shader* sh, const GLchar *name, GLfloat value);
void    shSetInt           (shader* sh, const GLchar *name, GLint value);
void    shSetVector2f      (shader* sh, const GLchar *name, GLfloat x, GLfloat y);
void    shSetGLMVector2f   (shader* sh, const GLchar *name, vec2 v);
void    shSetVector3f      (shader* sh, const GLchar *name, GLfloat x, GLfloat y, GLfloat z);
void    shSetGLMVector3f   (shader* sh, const GLchar *name, const vec3 v);
void    shSetVector4f      (shader* sh, const GLchar *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w);
void    shSetGLMVector4f   (shader* sh, const GLchar *name, const vec4 v);
void    shSetMatrix4       (shader* sh, const GLchar *name, const mat4 m);


#endif