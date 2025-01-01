#version 330 core
layout(location = 0) in vec3 aPosition;  // Position
layout(location = 1) in vec3 aColor;     // Vertex Color

out vec3 Color;  // Output color to fragment shader

uniform mat4 mvpIn; 

void main() {
    gl_Position = mvpIn * vec4(aPosition, 1.0);
    Color = aColor;  // Pass color to fragment shader
}
