#version 300 es
precision highp float;
uniform vec3 lightdir;
uniform vec3 lightcolor;
uniform vec3 lightdir2;
uniform vec3 lightcolor2;
out vec4 fragColor;
in vec3 fnormal;
uniform vec4 color;
void main() {
    vec3 n = normalize(fnormal);
    float lambert = max(dot(lightdir, n), 0.0);
    float lambert2 = max(dot(lightdir2, n), 0.0);
    fragColor = vec4(
        color.rgb * (lightcolor * lambert + lightcolor2 * lambert2),
        1.0);
}