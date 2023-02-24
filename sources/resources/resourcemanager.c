#include "resourcemanager.h"


#ifndef STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>
#endif

void resMClearShaders(shader *shaders, texture_2D *textures)
{
    int i;

    for (i = 0; i < sizeof(shaders) / sizeof(shader); i++)
        glDeleteProgram(shaders[i].ID);

    for (i = 0; i < sizeof(textures) / sizeof(texture_2D); i++)
        glDeleteTextures(1, &textures[i].ID);
}

shader* resMLoadShaderFromFile(const GLchar *vShaderFile, const GLchar *fShaderFile, const GLchar *gShaderFile)
{
    char* vertexCode;

    FILE* shaderFile = fopen(vShaderFile, "rb");
    fseek(shaderFile, 0L, SEEK_END);
    long size = ftell(shaderFile)+1;
    fclose(shaderFile);

    /* Read File for Content */
    shaderFile = fopen(vShaderFile, "r");
    vertexCode = memset(malloc(size), '\0', size);
    fread(vertexCode, 1, size-1, shaderFile);
    fclose(shaderFile);

    char* fragmentCode;

    shaderFile = fopen(fShaderFile, "rb");
    fseek(shaderFile, 0L, SEEK_END);
    size = ftell(shaderFile)+1;
    fclose(shaderFile);

    /* Read File for Content */
    shaderFile = fopen(vShaderFile, "r");
    vertexCode = memset(malloc(size), '\0', size);
    fread(vertexCode, 1, size-1, shaderFile);
    fclose(shaderFile);


    char* geometryCode = NULL;

    if (gShaderFile != NULL)
    {

        shaderFile = fopen(fShaderFile, "rb");
        fseek(shaderFile, 0L, SEEK_END);
        size = ftell(shaderFile)+1;
        fclose(shaderFile);

        /* Read File for Content */
        shaderFile = fopen(gShaderFile, "r");
        geometryCode = memset(malloc(size), '\0', size);
        fread(geometryCode, 1, size-1, shaderFile);
        fclose(shaderFile);
    }

    shader* sh;
    shCompile(sh, vertexCode, fragmentCode, gShaderFile != NULL ? geometryCode : NULL);
    return sh;
}

texture_2D *resMLoadTextureFromFile(const GLchar *file, GLboolean alpha)
{
    texture_2D* texture;
    if (alpha)
    {
        texture->Internal_Format = GL_RGBA;
        texture->Image_Format = GL_RGBA;
    }
    
    int width, height, nrChannels;
    GLuchar* data = stbi_load(file, &width, &height, &nrChannels, 0);
    
    texGenerate(texture, width, height, data);
    
    stbi_image_free(data);
    return texture;
}