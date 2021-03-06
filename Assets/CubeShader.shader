﻿//UNITY_SHADER_NO_UPGRADE

Shader "Unlit/CubeShader"
{
	SubShader
	{
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

			#include "UnityCG.cginc"

			struct vertIn
			{
				float4 vertex : POSITION;
				// Task 3
				// float4 color : COLOR;
			};

			struct vertOut
			{
				float4 vertex : SV_POSITION;
				// Task 3
				// float4 color : COLOR;
			};

			// Implementation of the vertex shader
			vertOut vert(vertIn v)
			{
				vertOut o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				// Task 3
				// o.color = v.color;
				return o;
			}
			
			// Implementation of the fragment shader
			fixed4 frag(vertOut v) : SV_Target
			{
				// Task 3 -- comment/remove the next line
				return float4(0.0f, 0.0f, 0.0f, 1.0f);
				// Task 3
				// return v.color;
			}
			ENDCG
		}
	}
}
