#include "renderer.h"

Renderer* r_Renderer(shader *shader)
{
    Renderer* r;
    r->sh = shader;
    r_initRenderData(r);
    return r;
}

void r_DestroyRenderer(Renderer* r)
{
    glDeleteVertexArrays(1, &r->quadVAO);
}

void r_DrawSprite(Renderer* r, texture_2D *texture, vec2 position, vec2 size, GLfloat rotate, vec3 color)
{
    shUse(r->sh);
    mat4 model = GLM_MAT4_IDENTITY_INIT;
    glm_translate_make(model, (vec3){position[0], position[1], 0.0f});

    glm_translate_make(model, (vec3){0.5f * size[0], 0.5f * size[1], 0.0f});
    glm_rotate_make(model, glm_rad(rotate), (vec3){0.0f, 0.0f, 1.0f});
    glm_translate_make(model, (vec3){-0.5f * size[0], -0.5f * size[1], 0.0f});

    glm_scale_make(model, (vec3){size[0], size[1], 1.0f}); 
  
    shSetMatrix4(r->sh, "model", model);
    shSetGLMVector3f(r->sh, "spriteColor", color);
  
    glActiveTexture(GL_TEXTURE0);
    texBind(texture);

    glBindVertexArray(r->quadVAO);
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glBindVertexArray(0);
}

void r_initRenderData(Renderer* r)
{
    // configure VAO/VBO
    GLuint VBO;
    float vertices[] = {
        // pos      // tex
        0.0f, 1.0f, 0.0f, 1.0f,
        1.0f, 0.0f, 1.0f, 0.0f,
        0.0f, 0.0f, 0.0f, 0.0f, 
    
        0.0f, 1.0f, 0.0f, 1.0f,
        1.0f, 1.0f, 1.0f, 1.0f,
        1.0f, 0.0f, 1.0f, 0.0f
    };

    glGenVertexArrays(1, &r->quadVAO);
    glGenBuffers(1, &VBO);
    
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindVertexArray(r->quadVAO);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(0, 4, GL_FLOAT, GL_FALSE, 4 * sizeof(GLfloat), (void*)0);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}