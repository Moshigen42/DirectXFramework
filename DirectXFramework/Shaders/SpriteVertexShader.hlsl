struct VSOut {
	float2 tex : TexCoord;
	float4 pos: SV_Position;
};

cbuffer CBuf {
	matrix transform;
};

VSOut main(float2 pos : Position, float2 tex : TexCoord)
{
	VSOut vso;
	vso.pos = mul(float4(pos, 1.0f, 1.0f), transform);
	vso.tex = tex;
	return vso;
}