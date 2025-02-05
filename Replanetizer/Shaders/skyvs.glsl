#version 330 core

// Input vertex data, different for all executions of this shader.
layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec2 vertexUV;
layout(location = 2) in vec4 vertexRGBA;

// Output data ; will be interpolated for each fragment.
out vec2 UV;
out vec4 lightColor;

// Values that stay constant for the whole mesh.
uniform mat4 WorldToView;

void main() {
	// Output position of the vertex, in clip space : MVP * position
	gl_Position = WorldToView * vec4(vertexPosition, 1.0f);

	// UV of the vertex. No special space for this one.
	UV = vertexUV;

	lightColor = vertexRGBA;
}
