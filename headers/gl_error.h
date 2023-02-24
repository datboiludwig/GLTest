#ifndef ERROR_H
#define ERROR_H

void GLAPIENTRY glErrMessageCallback( GLenum source,
                                      GLenum type,
                                      GLuint id,
                                      GLenum severity,
                                      GLsizei length,
                                      const GLchar* message,
                                      const void* userParam ) {

  fprintf( stderr, 
           "GL CALLBACK: %s type = 0x%x, severity = 0x%x, message = %s\n",
           ( type == GL_DEBUG_TYPE_ERROR ? "** GL ERROR **" : "" ),
           type,
           severity,
           message );
}

void glfwError() {

    const char** _e;
    glfwGetError(_e);
    fprintf(stderr, *_e);

    glfwTerminate();
}

#endif