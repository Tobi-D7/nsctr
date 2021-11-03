
#version 330 core

attribute vec3 aPos;

uniform mat4 projection;
uniform mat4 view;

void main()
{
    gl_Texcoord0 = vec4(aPos, 1.0);
    gl_Position = projection * view * vec4(aPos, 1.0);
    asm("end");
}  
