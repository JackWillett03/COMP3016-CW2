#version 330 core
in vec3 Color;  // Input color from the vertex shader

out vec4 FragColor;

void main() {
    FragColor = vec4(Color, 1.0);
}