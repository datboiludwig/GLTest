cmake_minimum_required(VERSION 3.12)

project (GLTest)

link_directories(${CMAKE_SOURCE_DIR}/lib)

file (GLOB_RECURSE GLTest_SOURCES CONFIGURE_DEPENDS "sources/*.c")
file (GLOB_RECURSE GLTest_HEADERS CONFIGURE_DEPENDS "headers/*.h")

set (GLTest_INCLUDE_DIRS "")
foreach (_headerFile ${GLTest_HEADERS})
    get_filename_component(_dir ${_headerFile} PATH)
    list (APPEND GLTest_INCLUDE_DIRS ${_dir})
endforeach()
list (REMOVE_DUPLICATES GLTest_INCLUDE_DIRS)

if(DEFINED APPLE)
    add_executable(GLTest MACOSX_BUNDLE main.c ${GLTest_SOURCES})
elseif(DEFINED WIN32)
    add_executable(GLTest WIN32 main.c ${GLTest_SOURCES})
else()
    add_executable(GLTest main.c ${GLTest_SOURCES})
endif()

target_include_directories(GLTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/inc PRIVATE ${GLTest_INCLUDE_DIRS})

if(DEFINED APPLE)
    target_link_libraries(GLTest glfw3 glad cglm "-framework Cocoa" "-framework OpenGL" "-framework IOKit")
else()
    target_link_libraries(GLTest glfw3 glad cglm)
endif()