#version 460
// Triangle positions
layout (location = 0) in vec3 position;              // Vertex position
layout (location = 1) in vec2 textureCoordinatesVertex; // Texture coordinates

// Texture coordinates to send to fragment shader
out vec2 textureCoordinatesFrag;

// MVP matrix passed from main
uniform mat4 mvpIn;

void main()
{
    // Apply transformation (mvp)
    gl_Position = mvpIn * vec4(position, 1.0);
    
    // Pass texture coordinates to the fragment shader
    textureCoordinatesFrag = textureCoordinatesVertex;
}
