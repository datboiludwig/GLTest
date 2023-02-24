#include "env.h"
#include "texture.h"

void texGenerate(texture_2D* tex, GLuint width, GLuint height, GLuchar *data)
{
    tex->Width = width;
    tex->Height = height;
    // create Texture
    glBindTexture(GL_TEXTURE_2D, tex->ID);
    glTexImage2D(GL_TEXTURE_2D, 0, tex->Internal_Format, width, height, 0, tex->Image_Format, GL_UNSIGNED_BYTE, data);
    // set Texture wrap and filter modes
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, tex->Wrap_S);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, tex->Wrap_T);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, tex->Filter_Min);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, tex->Filter_Max);
    // unbind texture
    glBindTexture(GL_TEXTURE_2D, 0);
}

void texBind(texture_2D* tex)
{
    glBindTexture(GL_TEXTURE_2D, tex->ID);
}
