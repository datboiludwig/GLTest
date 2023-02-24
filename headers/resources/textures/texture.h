#ifndef TEXTURE_H
#define TEXTURE_H

#include "env.h"

#include <glad/glad.h>

typedef struct
{
    GLuint ID;
    
    GLuint Width, Height;
    
    GLuint Internal_Format;
    GLuint Image_Format;
    
    GLuint Wrap_S;
    GLuint Wrap_T;
    GLuint Filter_Min;
    GLuint Filter_Max;
} texture_2D;

void texGenerate(texture_2D* tex, GLuint width, GLuint height, GLuchar* data);

void texBind(texture_2D* tex);

#endif