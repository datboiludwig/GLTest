#ifndef RENDERER_H
#define RENDERER_H

#include <cglm/cglm.h>

#include "shader.h"
#include "texture.h"

typedef struct {
    shader* sh;
    GLuint quadVAO;
} Renderer;

Renderer* r_Renderer(shader* shader);
void r_DestroyRenderer(Renderer* r);

void r_DrawSprite(Renderer* r, texture_2D* texture, vec2 position, vec2 size, GLfloat rotate, vec3 color);

void r_initRenderData(Renderer* r);

#endif