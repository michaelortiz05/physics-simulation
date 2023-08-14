#version 300 es
in vec4 position;
in vec3 normal;
out vec3 fnormal;
uniform mat4 p;
uniform mat4 mv;
uniform float radius;
void main() {
    gl_Position = p * mv * vec4(position.x * radius, position.y * radius, position.z * radius, 1);
    fnormal = mat3(mv) * normal; 
}