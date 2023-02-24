#include "shader.h"

void checkCompileErrors(shader *sh, GLuint object, GLchar* type);

shader shUse(shader *sh)
{
    glUseProgram(sh->ID);
    return *sh;
}

void shCompile(shader *sh, const GLchar *vertexSource, const GLchar *fragmentSource, const GLchar *geometrySource)
{
    GLuint sVertex, sFragment, gShader;
    // vertex Shader
    sVertex = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(sVertex, 1, &vertexSource, NULL);
    glCompileShader(sVertex);
    checkCompileErrors(sh, sVertex, "VERTEX");
    // fragment Shader
    sFragment = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(sFragment, 1, &fragmentSource, NULL);
    glCompileShader(sFragment);
    checkCompileErrors(sh, sFragment, "FRAGMENT");
    // if geometry shader source code is given, also compile geometry shader
    if (geometrySource != NULL)
    {
        gShader = glCreateShader(GL_GEOMETRY_SHADER);
        glShaderSource(gShader, 1, &geometrySource, NULL);
        glCompileShader(gShader);
        checkCompileErrors(sh, gShader, "GEOMETRY");
    }
    // shader program
    sh->ID = glCreateProgram();
    glAttachShader(sh->ID, sVertex);
    glAttachShader(sh->ID, sFragment);
    if (geometrySource != NULL)
        glAttachShader(sh->ID, gShader);
    glLinkProgram(sh->ID);
    checkCompileErrors(sh, sh->ID, "PROGRAM");
    // delete the shaders as they're linked into our program now and no longer necessary
    glDetachShader(sh->ID, sVertex);
    glDetachShader(sh->ID, sFragment);
    glDeleteShader(sVertex);
    glDeleteShader(sFragment);
    if (geometrySource != NULL)
        glDeleteShader(gShader);
}

void shSetFloat(shader *sh, const GLchar *name, GLfloat value)
{
    glUniform1f(glGetUniformLocation(sh->ID, name), value);
}

void shSetInt(shader *sh, const GLchar *name, GLint value)
{
    glUniform1i(glGetUniformLocation(sh->ID, name), value);
}

void shSetVector2f(shader *sh, const GLchar *name, GLfloat x, GLfloat y)
{
    glUniform2f(glGetUniformLocation(sh->ID, name), x, y);
}

void shSetGLMVector2f(shader *sh, const GLchar *name, vec2 v)
{
    glUniform2f(glGetUniformLocation(sh->ID, name), v[0], v[1]);
}

void shSetVector3f(shader *sh, const GLchar *name, GLfloat x, GLfloat y, GLfloat z)
{
    glUniform3f(glGetUniformLocation(sh->ID, name), x, y, z);
}

void shSetGLMVector3f(shader *sh, const GLchar *name, const vec3 v)
{
    glUniform3f(glGetUniformLocation(sh->ID, name), v[0], v[1], v[2]);
}

void shSetVector4f(shader *sh, const GLchar *name, GLfloat x, GLfloat y, GLfloat z, GLfloat w)
{
    glUniform4f(glGetUniformLocation(sh->ID, name), x, y, z, w);
}

void shSetGLMVector4f(shader *sh, const GLchar *name, const vec4 v)
{
    glUniform4f(glGetUniformLocation(sh->ID, name), v[0], v[1], v[2], v[3]);
}

void shSetMatrix4(shader *sh, const GLchar *name, const mat4 m)
{
    glUniformMatrix4fv(glGetUniformLocation(sh->ID, name), 1, false, &m[0][0]);
}

void checkCompileErrors(shader *sh, GLuint object, GLchar* type)
{
    int success;
    char infoLog[1024];
    if (type != "PROGRAM")
    {
        glGetShaderiv(object, GL_COMPILE_STATUS, &success);
        if (!success)
        {
            glGetShaderInfoLog(object, 1024, NULL, infoLog);
            printf("| ERROR::SHADER: Compile-time error: Type: %s\n%s\n -- --------------------------------------------------- -- \n", type, infoLog);
        }
    }
    else
    {
        glGetProgramiv(object, GL_LINK_STATUS, &success);
        if (!success)
        {
            glGetProgramInfoLog(object, 1024, NULL, infoLog);
            printf("| ERROR::SHADER: Link-time error: Type: %s\n%s\n -- --------------------------------------------------- -- \n", type, infoLog);
        }
    }
}