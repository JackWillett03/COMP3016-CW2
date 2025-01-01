#version 460
// Output color
out vec4 FragColor;

// Texture coordinates passed from vertex shader
in vec2 textureCoordinatesFrag;

// The texture uniform
uniform sampler2D textureIn;

void main()
{
    // Sample the texture at the given texture coordinates, set the fragment color
    FragColor = texture(textureIn, textureCoordinatesFrag);
}
