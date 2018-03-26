#version 300 es
precision highp float;

layout(location = 0) in ivec2 a_px_map;
flat out int sh_index;
void main()
{
	int num_probes = 6;

	sh_index = gl_VertexID*num_probes*16;
	gl_Position = vec4((vec2(a_px_map)+vec2(0.5))*(2.0/1024.0)-1.0,0,1);
	gl_PointSize = 1.0/1024.0;
}