#pragma once

#include <GLFW/glfw3.h>
#include "glm/ext/vector_float3.hpp"
#include <glm/gtc/type_ptr.hpp>

//Called on window resize
void framebuffer_size_callback(GLFWwindow* window, int width, int height);
//Called on mouse movement
void mouse_callback(GLFWwindow* window, double xpos, double ypos);

//Processes user input
void ProcessUserInput(GLFWwindow* WindowIn, glm::vec3& carPosition);

// The 2 programs dependent on shader
GLuint terrainProgram;
GLuint carProgram;