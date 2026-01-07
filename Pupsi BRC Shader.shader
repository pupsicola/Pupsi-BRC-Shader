// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Shader"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
      _AlphaClipping("Alpha Clipping", Range( 0 , 1)) = 0.5
      _BaseColor("Base Color", Color) = (1,1,1,0)
      [NoScaleOffset][BigTexture]_MainTex("Base Texture", 2D) = "white" {}
      [Toggle]_VertexColorsToggle("Vertex Colors Toggle", Float) = 0
      _VertexColorsOpacity("Vertex Colors Opacity", Range( 0 , 1)) = 1
      [NoScaleOffset][BigTexture]RotationMask("Base Rotation Mask", 2D) = "black" {}
      _BaseScrollSpeed("Base Scroll Speed", Vector) = (0,0,0,0)
      _BaseRotationCenter("Base Rotation Center", Vector) = (0,0,0,0)
      _BaseRotationSpeed("Base Rotation Speed", Float) = 0
      [Toggle]_DetailTextureToggle("Detail Texture Toggle", Float) = 0
      [NoScaleOffset][BigTexture]_DetailTexture("Detail Texture", 2D) = "white" {}
      [KeywordEnum(UV0,UV1,UV2,UV3)] _DetailTextureUV("Detail Texture UV", Float) = 0
      _DetailTextureBlend("Detail Texture Opacity", Range( 0 , 1)) = 1
      [NoScaleOffset][BigTexture]_NormalMap("Normal Map", 2D) = "bump" {}
      [KeywordEnum(UV0,UV1,UV2,UV3)] _NormalMapUV("Normal Map UV", Float) = 0
      _NormalMapIntensity("Normal Map Intensity", Float) = 1
      [NoScaleOffset][BigTexture]_Emission("Emission Texture", 2D) = "black" {}
      [NoScaleOffset][BigTexture]_EmissionMask("Emission Mask", 2D) = "white" {}
      _EmissionMaskScrollSpeed("Emission Mask Scroll Speed", Vector) = (0,0,0,0)
      _EmissionHue("Emission Hue", Range( 0 , 1)) = 0
      _EmissionEmit("Emission Emit", Float) = 1
      [Shadow Options][Toggle]_CustomLightingColorToggle("Custom Lighting Color Toggle", Float) = 0
      _CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
      [Shadow Options][Toggle]_CustomShadowColorToggle("Custom Shadow Color Toggle", Float) = 0
      _CustomShadowColor("Custom Shadow Color", Color) = (0,0,0,0)
      _ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
      _ShadowIntensity("Shadow Intensity", Range( 0 , 1)) = 1
      _ShadowOffset("Shadow Offset", Range( -1 , 1)) = 0
      [Toggle]_ShadowTextureToggle("Shadow Texture Toggle", Float) = 0
      [NoScaleOffset][BigTexture]_ShadowTexture("Shadow Texture", 2D) = "white" {}
      _ShadowTextureTiling("Shadow Texture Tiling", Vector) = (14,14,0,0)
      _ShadowTextureBlend("Shadow Texture Blend", Range( 0 , 1)) = 0.5
      [Toggle]_HalftoneShadowToggle("Halftone Shadow Toggle", Float) = 0
      _HalftoneShadowSoftness("Halftone Shadow Softness", Float) = 0.5
      _HalftoneShadowScale("Halftone Shadow Scale", Float) = 15
      [Toggle]_ExtraLightToggle("Extra Light Toggle", Float) = 0
      _ExtraLightOffset("Extra Light Offset", Range( -1 , 0)) = -0.6
      _ExtraLightSoftness("Extra Light Softness", Range( 0.01 , 2)) = 0.01
      _ExtraLightBlend("Extra Light Opacity", Range( 0 , 10)) = 2
      [Toggle]_SpecularToggle("Specular Toggle", Float) = 0
      [Toggle]_SpecularCustomColorToggle("Specular Custom Color Toggle", Float) = 0
      _SpecularCustomColor("Specular Custom Color", Color) = (1,1,1,0)
      [NoScaleOffset][BigTexture]_SpecularMask("Specular Mask", 2D) = "white" {}
      [KeywordEnum(UV0,UV1,UV2,UV3)] _SpecularMaskUV("Specular Mask UV", Float) = 0
      _SpecularBrightness("Specular Brightness", Float) = 1
      _SpecularSoftness("Specular Softness", Range( 0 , 2)) = 0.01
      _SpecularOffset("Specular Offset", Range( -1 , 1)) = 0
      [Toggle]_RimLightShadowToggle("Rim Light/Shadow Toggle", Float) = 0
      _RimLightColor("Rim Light Color", Color) = (1,1,1,1)
      [Toggle]_RimLightBlendBaseTexture("Rim Light Blend Base Texture", Float) = 1
      _RimLightPower("Rim Light Power", Range( 0.01 , 10)) = 0.01
      _RimLightOffset("Rim Light Offset", Range( 0 , 1)) = 0.65
      _RimLightBlend("Rim Light Opacity", Range( 0 , 25)) = 25
      _RimShadowPower("Rim Shadow Power", Range( 0.01 , 10)) = 10
      _RimShadowOffset("Rim Shadow Offset", Range( -1 , 1)) = 0.65
      _RimShadowOpacity("Rim Shadow Opacity", Range( 0 , 1)) = 0.6676344
      _OutlineMultiplier("Outline Multiplier", Float) = 0.005
      _OutlineMinSize("Outline Min Size", Float) = 0.002
      _OutlineMaxSize("Outline Max Size", Float) = 0.008
      [Toggle]_VertexColorsDefineOutlineCoverage("Vertex Colors Define Outline Coverage", Float) = 0
      _OutlineColor("Outline Color", Color) = (0,0,0,1)
      [Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
      [Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
      [NoScaleOffset][BigTexture]AuraTexture("Outline Texture", 2D) = "white" {}
      _OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
      _OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
      [Toggle]_CubemapToggle("Cubemap Toggle", Float) = 0
      [NoScaleOffset][BigTexture]_CubemapTexture("Cubemap Texture", CUBE) = "white" {}
      [NoScaleOffset][BigTexture]cubemapmask("Cubemap Mask", 2D) = "white" {}
      _CubemapBlend("Cubemap Opacity", Range( 0 , 1)) = 1
      _CubemapColorize("Cubemap Colorize", Range( 0 , 1)) = 1
      _CubemapFresnelBias("Cubemap Fresnel Bias", Range( 0 , 1)) = 0.5
      _CubemapFresnelScale("Cubemap Fresnel Scale", Float) = 0
      _CubemapFresnelPower("Cubemap Fresnel Power", Range( 0 , 15)) = 1
      [Toggle(_GLOWTOGGLE_ON)] _GlowToggle("Glow Toggle", Float) = 0
      [NoScaleOffset][BigTexture]_GlowMask("Glow Mask", 2D) = "white" {}
      _GlowColor("Glow Color", Color) = (1,0,0,1)
      [Toggle]_GlowCycle("Glow Cycle", Float) = 0
      _GlowSpeed("Glow Speed", Float) = 10
      _GlowEmit("Glow Emit", Float) = 1
      [Toggle]_FlipbookToggle("Flipbook Toggle", Float) = 0
      [NoScaleOffset][BigTexture]_FlipBookTexture("FlipBookTexture", 2D) = "white" {}
      [NoScaleOffset][BigTexture]_FlipBookMask("FlipBookMask", 2D) = "white" {}
      _FlipbookTiling("Flipbook Tiling", Vector) = (1,1,0,0)
      _FlipbookOffset("Flipbook Offset", Vector) = (0,0,0,0)
      _FlipbookColumns("Flipbook Columns", Float) = 8
      _FlipbookRows("Flipbook Rows", Float) = 8
      _FlipbookSpeed("Flipbook Speed", Float) = 1
      _FlipbookEmit("Flipbook Emit", Float) = 1
      [Toggle(_SCROLLTOGGLE_ON)] _ScrollToggle("Scroll Toggle", Float) = 0
      [Toggle]_ToggleWorldSpaceUV("Toggle World Space UV", Float) = 0
      _ScrollColor("Scroll Color", Color) = (1,1,1,0)
      [NoScaleOffset][BigTexture]_ScrollTex("Scroll Tex", 2D) = "white" {}
      [NoScaleOffset][BigTexture]_ScrollMask("Scroll Mask", 2D) = "white" {}
      _ScrollSize("Scroll Size", Vector) = (1,1,0,0)
      _ScrollOffset("Scroll Offset", Vector) = (0,0,0,0)
      _ScrollSpeed("Scroll Speed", Vector) = (0,1,0,0)
      _ScrollRotation("Scroll Rotation", Range( 0 , 360)) = 0
      _ScrollEmit("Scroll Emit", Float) = 1
      [HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="Transparent" }
	LOD 0

		Cull Off
		CGINCLUDE
		#pragma target 4.5
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 4.5
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull [_Cull]
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SpecularToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float _CustomShadowColorToggle;
			uniform float4 ShadowColor;
			uniform float4 _CustomShadowColor;
			uniform float _CustomLightingColorToggle;
			uniform float4 LightColor;
			uniform float4 _CustomLightingColor;
			uniform float _HalftoneShadowToggle;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ShadowIntensity;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform float _VertexColorsToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _BaseColor;
			uniform float _VertexColorsOpacity;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform samplerCUBE _CubemapTexture;
			uniform float _CubemapBlend;
			uniform float _CubemapColorize;
			uniform float _CubemapFresnelBias;
			uniform float _CubemapFresnelScale;
			uniform float _CubemapFresnelPower;
			uniform sampler2D cubemapmask;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimLightBlend;
			uniform float _FlipbookToggle;
			uniform sampler2D _FlipBookTexture;
			uniform float2 _FlipbookTiling;
			uniform float2 _FlipbookOffset;
			uniform float _FlipbookColumns;
			uniform float _FlipbookRows;
			uniform float _FlipbookSpeed;
			uniform sampler2D _FlipBookMask;
			uniform float _FlipbookEmit;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float _ToggleWorldSpaceUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float2 _EmissionMaskScrollSpeed;
			uniform float _EmissionEmit;
			uniform float _GlowCycle;
			uniform float4 _GlowColor;
			uniform float _GlowSpeed;
			uniform sampler2D _GlowMask;
			uniform float _GlowEmit;
			uniform float _AlphaClipping;
					float2 voronoihash1154( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1154( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
					{
						float2 n = floor( v );
						float2 f = frac( v );
						float F1 = 8.0;
						float F2 = 8.0; float2 mg = 0;
						for ( int j = -1; j <= 1; j++ )
						{
							for ( int i = -1; i <= 1; i++ )
						 	{
						 		float2 g = float2( i, j );
						 		float2 o = voronoihash1154( n + g );
								o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
								float d = 0.5 * dot( r, r );
						 		if( d<F1 ) {
						 			F2 = F1;
						 			F1 = d; mg = g; mr = r; id = o;
						 		} else if( d<F2 ) {
						 			F2 = d;
						
						 		}
						 	}
						}
						return F1;
					}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_color : COLOR;
				float4 ase_texcoord9 : TEXCOORD9;
			};

			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord7.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord8 = screenPos;
				float3 normalizeWorldNormal = normalize( UnityObjectToWorldNormal(v.normal) );
				o.ase_texcoord9.xyz = normalizeWorldNormal;
				
				o.ase_texcoord1.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord2.xy = v.ase_texcoord1.xy;
				o.ase_texcoord2.zw = v.ase_texcoord2.xy;
				o.ase_texcoord3.xy = v.ase_texcoord3.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord9.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 texCoord1110 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31136 = texCoord1135;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1121 = UV01113;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1121 = UV11114;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1121 = UV21115;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1121 = UV31136;
				#else
				float2 staticSwitch1121 = UV01113;
				#endif
				float3 tex2DNode835 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1121 ), _NormalMapIntensity );
				float3 ase_worldTangent = i.ase_texcoord4.xyz;
				float3 ase_worldNormal = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = tex2DNode835;
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 ase_worldPos = i.ase_texcoord7.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + _ShadowOffset ) / _ShadowSoftness );
				float time1154 = 0.0;
				float2 voronoiSmoothId1154 = 0;
				float4 screenPos = i.ase_texcoord8;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1159 = ase_screenPosNorm;
				float4 appendResult1162 = (float4(break1159.x , ( break1159.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1154 = appendResult1162.xy * _HalftoneShadowScale;
				float2 id1154 = 0;
				float2 uv1154 = 0;
				float voroi1154 = voronoi1154( coords1154, time1154, id1154, uv1154, 0, voronoiSmoothId1154 );
				float smoothstepResult1155 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1154 ) , dotResult54);
				float halftone1153 = smoothstepResult1155;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1283_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1287 = lerp( temp_output_1283_0 , ( temp_output_1283_0 * i.ase_color ) , _VertexColorsOpacity);
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1145 = UV01113;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1145 = UV11114;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1145 = UV21115;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1145 = UV31136;
				#else
				float2 staticSwitch1145 = UV01113;
				#endif
				float4 blendOpSrc1128 = tex2D( _DetailTexture, staticSwitch1145 );
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1303 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1303 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float2 texCoord631 = i.ase_texcoord1.xyz.xy * _FlipbookTiling + _FlipbookOffset;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles634 = _FlipbookColumns * _FlipbookRows;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset634 = 1.0f / _FlipbookColumns;
				float fbrowsoffset634 = 1.0f / _FlipbookRows;
				// Speed of animation
				float fbspeed634 = _Time[ 1 ] * _FlipbookSpeed;
				// UV Tiling (col and row offset)
				float2 fbtiling634 = float2(fbcolsoffset634, fbrowsoffset634);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex634 = round( fmod( fbspeed634 + 0.0, fbtotaltiles634) );
				fbcurrenttileindex634 += ( fbcurrenttileindex634 < 0) ? fbtotaltiles634 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox634 = round ( fmod ( fbcurrenttileindex634, _FlipbookColumns ) );
				// Multiply Offset X by coloffset
				float fboffsetx634 = fblinearindextox634 * fbcolsoffset634;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy634 = round( fmod( ( fbcurrenttileindex634 - fblinearindextox634 ) / _FlipbookColumns, _FlipbookRows ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy634 = (int)(_FlipbookRows-1) - fblinearindextoy634;
				// Multiply Offset Y by rowoffset
				float fboffsety634 = fblinearindextoy634 * fbrowsoffset634;
				// UV Offset
				float2 fboffset634 = float2(fboffsetx634, fboffsety634);
				// Flipbook UV
				half2 fbuv634 = texCoord631 * fbtiling634 + fboffset634;
				// *** END Flipbook UV Animation vars ***
				float2 uv_FlipBookMask637 = i.ase_texcoord1.xyz.xy;
				float4 temp_output_642_0 = ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + float4( (( _FlipbookToggle )?( ( (tex2D( _FlipBookTexture, fbuv634 )).rgb * tex2D( _FlipBookMask, uv_FlipBookMask637 ).r * _FlipbookEmit ) ):( float3( 0,0,0 ) )) , 0.0 ) );
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				#if defined(_SPECULARMASKUV_UV0)
				float2 staticSwitch1140 = UV01113;
				#elif defined(_SPECULARMASKUV_UV1)
				float2 staticSwitch1140 = UV11114;
				#elif defined(_SPECULARMASKUV_UV2)
				float2 staticSwitch1140 = UV21115;
				#elif defined(_SPECULARMASKUV_UV3)
				float2 staticSwitch1140 = UV31136;
				#else
				float2 staticSwitch1140 = UV01113;
				#endif
				float2 uv_ScrollMask607 = i.ase_texcoord1.xyz.xy;
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1304 = cos( temp_output_604_0 );
				float sin1304 = sin( temp_output_604_0 );
				float2 rotator1304 = mul( ( ( ase_worldPos * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1304 , -sin1304 , sin1304 , cos1304 )) + float2( 0.5,0.5 );
				float2 panner1305 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1304);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleWorldSpaceUV )?( panner1305 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float2 texCoord1264 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _EmissionMaskScrollSpeed );
				float3 hsvTorgb584 = RGBToHSV( ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, texCoord1264 ) ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float mulTime619 = _Time.y * _GlowSpeed;
				float2 uv_GlowMask622 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode622 = tex2D( _GlowMask, uv_GlowMask622 );
				float3 hsvTorgb617 = HSVToRGB( float3(( mulTime619 * 0.1 ),1.0,1.0) );
				#ifdef _GLOWTOGGLE_ON
				float3 staticSwitch590 = ( (( _GlowCycle )?( ( hsvTorgb617 * tex2DNode622.r ) ):( ( (_GlowColor).rgb * (0.0 + (sin( mulTime619 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * tex2DNode622.r ) )) * _GlowEmit );
				#else
				float3 staticSwitch590 = float3( 0,0,0 );
				#endif
				float4 temp_output_472_0 = ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outColor = temp_output_472_0.rgb;
				outAlpha = 1.0;
				clip(outAlpha);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			Name "Outline"
			Tags { "CullMode"="Front" }
			CGINCLUDE
			#pragma target 4.5
			ENDCG
			Blend Off
			AlphaToMask On
			Cull Front
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _GLOWTOGGLE_ON


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
			};

			//This is a late directive
			
			uniform float _OutlineMultiplier;
			uniform float _OutlineMinSize;
			uniform float _OutlineMaxSize;
			uniform float _OutlineBlendBaseTexture;
			uniform float _OutlineTextureToggle;
			uniform float4 _OutlineColor;
			uniform sampler2D AuraTexture;
			uniform float2 _OutlineTextureTiling;
			uniform float2 _OutlineTextureScroll;
			uniform float _SpecularToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float _CustomShadowColorToggle;
			uniform float4 ShadowColor;
			uniform float4 _CustomShadowColor;
			uniform float _CustomLightingColorToggle;
			uniform float4 LightColor;
			uniform float4 _CustomLightingColor;
			uniform float _HalftoneShadowToggle;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ShadowIntensity;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform float _VertexColorsToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _BaseColor;
			uniform float _VertexColorsOpacity;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform samplerCUBE _CubemapTexture;
			uniform float _CubemapBlend;
			uniform float _CubemapColorize;
			uniform float _CubemapFresnelBias;
			uniform float _CubemapFresnelScale;
			uniform float _CubemapFresnelPower;
			uniform sampler2D cubemapmask;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimLightBlend;
			uniform float _FlipbookToggle;
			uniform sampler2D _FlipBookTexture;
			uniform float2 _FlipbookTiling;
			uniform float2 _FlipbookOffset;
			uniform float _FlipbookColumns;
			uniform float _FlipbookRows;
			uniform float _FlipbookSpeed;
			uniform sampler2D _FlipBookMask;
			uniform float _FlipbookEmit;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float _ToggleWorldSpaceUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float2 _EmissionMaskScrollSpeed;
			uniform float _EmissionEmit;
			uniform float _GlowCycle;
			uniform float4 _GlowColor;
			uniform float _GlowSpeed;
			uniform sampler2D _GlowMask;
			uniform float _GlowEmit;
			uniform float _VertexColorsDefineOutlineCoverage;
			uniform float _AlphaClipping;
					float2 voronoihash1154( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1154( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
					{
						float2 n = floor( v );
						float2 f = frac( v );
						float F1 = 8.0;
						float F2 = 8.0; float2 mg = 0;
						for ( int j = -1; j <= 1; j++ )
						{
							for ( int i = -1; i <= 1; i++ )
						 	{
						 		float2 g = float2( i, j );
						 		float2 o = voronoihash1154( n + g );
								o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
								float d = 0.5 * dot( r, r );
						 		if( d<F1 ) {
						 			F2 = F1;
						 			F1 = d; mg = g; mr = r; id = o;
						 		} else if( d<F2 ) {
						 			F2 = d;
						
						 		}
						 	}
						}
						return F1;
					}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade977 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult893 = clamp( ( _OutlineMultiplier * cameraDepthFade977 ) , _OutlineMinSize , _OutlineMaxSize );
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord.xyz = ase_worldPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord7 = screenPos;
				float3 normalizeWorldNormal = normalize( UnityObjectToWorldNormal(v.ase_normal) );
				o.ase_texcoord8.xyz = normalizeWorldNormal;
				
				o.ase_texcoord1.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord2.xy = v.ase_texcoord1.xy;
				o.ase_texcoord2.zw = v.ase_texcoord2.xy;
				o.ase_texcoord3.xy = v.ase_texcoord3.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord8.w = 0;

				v.vertex.xyz += ( v.ase_normal * clampResult893 );
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outOutlineColor;
				float outOutlineAlpha;

				float3 ase_worldPos = i.ase_texcoord.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 texCoord1110 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31136 = texCoord1135;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1121 = UV01113;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1121 = UV11114;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1121 = UV21115;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1121 = UV31136;
				#else
				float2 staticSwitch1121 = UV01113;
				#endif
				float3 tex2DNode835 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1121 ), _NormalMapIntensity );
				float3 ase_worldTangent = i.ase_texcoord4.xyz;
				float3 ase_worldNormal = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = tex2DNode835;
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + _ShadowOffset ) / _ShadowSoftness );
				float time1154 = 0.0;
				float2 voronoiSmoothId1154 = 0;
				float4 screenPos = i.ase_texcoord7;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1159 = ase_screenPosNorm;
				float4 appendResult1162 = (float4(break1159.x , ( break1159.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1154 = appendResult1162.xy * _HalftoneShadowScale;
				float2 id1154 = 0;
				float2 uv1154 = 0;
				float voroi1154 = voronoi1154( coords1154, time1154, id1154, uv1154, 0, voronoiSmoothId1154 );
				float smoothstepResult1155 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1154 ) , dotResult54);
				float halftone1153 = smoothstepResult1155;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1283_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1287 = lerp( temp_output_1283_0 , ( temp_output_1283_0 * i.ase_color ) , _VertexColorsOpacity);
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1145 = UV01113;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1145 = UV11114;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1145 = UV21115;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1145 = UV31136;
				#else
				float2 staticSwitch1145 = UV01113;
				#endif
				float4 blendOpSrc1128 = tex2D( _DetailTexture, staticSwitch1145 );
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord8.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1303 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1303 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float2 texCoord631 = i.ase_texcoord1.xyz.xy * _FlipbookTiling + _FlipbookOffset;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles634 = _FlipbookColumns * _FlipbookRows;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset634 = 1.0f / _FlipbookColumns;
				float fbrowsoffset634 = 1.0f / _FlipbookRows;
				// Speed of animation
				float fbspeed634 = _Time[ 1 ] * _FlipbookSpeed;
				// UV Tiling (col and row offset)
				float2 fbtiling634 = float2(fbcolsoffset634, fbrowsoffset634);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex634 = round( fmod( fbspeed634 + 0.0, fbtotaltiles634) );
				fbcurrenttileindex634 += ( fbcurrenttileindex634 < 0) ? fbtotaltiles634 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox634 = round ( fmod ( fbcurrenttileindex634, _FlipbookColumns ) );
				// Multiply Offset X by coloffset
				float fboffsetx634 = fblinearindextox634 * fbcolsoffset634;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy634 = round( fmod( ( fbcurrenttileindex634 - fblinearindextox634 ) / _FlipbookColumns, _FlipbookRows ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy634 = (int)(_FlipbookRows-1) - fblinearindextoy634;
				// Multiply Offset Y by rowoffset
				float fboffsety634 = fblinearindextoy634 * fbrowsoffset634;
				// UV Offset
				float2 fboffset634 = float2(fboffsetx634, fboffsety634);
				// Flipbook UV
				half2 fbuv634 = texCoord631 * fbtiling634 + fboffset634;
				// *** END Flipbook UV Animation vars ***
				float2 uv_FlipBookMask637 = i.ase_texcoord1.xyz.xy;
				float4 temp_output_642_0 = ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + float4( (( _FlipbookToggle )?( ( (tex2D( _FlipBookTexture, fbuv634 )).rgb * tex2D( _FlipBookMask, uv_FlipBookMask637 ).r * _FlipbookEmit ) ):( float3( 0,0,0 ) )) , 0.0 ) );
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				#if defined(_SPECULARMASKUV_UV0)
				float2 staticSwitch1140 = UV01113;
				#elif defined(_SPECULARMASKUV_UV1)
				float2 staticSwitch1140 = UV11114;
				#elif defined(_SPECULARMASKUV_UV2)
				float2 staticSwitch1140 = UV21115;
				#elif defined(_SPECULARMASKUV_UV3)
				float2 staticSwitch1140 = UV31136;
				#else
				float2 staticSwitch1140 = UV01113;
				#endif
				float2 uv_ScrollMask607 = i.ase_texcoord1.xyz.xy;
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1304 = cos( temp_output_604_0 );
				float sin1304 = sin( temp_output_604_0 );
				float2 rotator1304 = mul( ( ( ase_worldPos * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1304 , -sin1304 , sin1304 , cos1304 )) + float2( 0.5,0.5 );
				float2 panner1305 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1304);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleWorldSpaceUV )?( panner1305 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float2 texCoord1264 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _EmissionMaskScrollSpeed );
				float3 hsvTorgb584 = RGBToHSV( ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, texCoord1264 ) ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float mulTime619 = _Time.y * _GlowSpeed;
				float2 uv_GlowMask622 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode622 = tex2D( _GlowMask, uv_GlowMask622 );
				float3 hsvTorgb617 = HSVToRGB( float3(( mulTime619 * 0.1 ),1.0,1.0) );
				#ifdef _GLOWTOGGLE_ON
				float3 staticSwitch590 = ( (( _GlowCycle )?( ( hsvTorgb617 * tex2DNode622.r ) ):( ( (_GlowColor).rgb * (0.0 + (sin( mulTime619 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * tex2DNode622.r ) )) * _GlowEmit );
				#else
				float3 staticSwitch590 = float3( 0,0,0 );
				#endif
				float4 temp_output_472_0 = ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				float4 temp_cast_33 = (1.0).xxxx;
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2D( AuraTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2D( AuraTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) )).rgb;
				outOutlineAlpha = (( _VertexColorsDefineOutlineCoverage )?( ( i.ase_color * 1.0 ) ):( temp_cast_33 )).r;
				clip(outOutlineAlpha);
				return float4(outOutlineColor,outOutlineAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SpecularToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float _CustomShadowColorToggle;
			uniform float4 ShadowColor;
			uniform float4 _CustomShadowColor;
			uniform float _CustomLightingColorToggle;
			uniform float4 LightColor;
			uniform float4 _CustomLightingColor;
			uniform float _HalftoneShadowToggle;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ShadowIntensity;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform float _VertexColorsToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _BaseColor;
			uniform float _VertexColorsOpacity;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform samplerCUBE _CubemapTexture;
			uniform float _CubemapBlend;
			uniform float _CubemapColorize;
			uniform float _CubemapFresnelBias;
			uniform float _CubemapFresnelScale;
			uniform float _CubemapFresnelPower;
			uniform sampler2D cubemapmask;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimLightBlend;
			uniform float _FlipbookToggle;
			uniform sampler2D _FlipBookTexture;
			uniform float2 _FlipbookTiling;
			uniform float2 _FlipbookOffset;
			uniform float _FlipbookColumns;
			uniform float _FlipbookRows;
			uniform float _FlipbookSpeed;
			uniform sampler2D _FlipBookMask;
			uniform float _FlipbookEmit;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float _ToggleWorldSpaceUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float2 _EmissionMaskScrollSpeed;
			uniform float _EmissionEmit;
			uniform float _GlowCycle;
			uniform float4 _GlowColor;
			uniform float _GlowSpeed;
			uniform sampler2D _GlowMask;
			uniform float _GlowEmit;
			uniform float _AlphaClipping;
					float2 voronoihash1154( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1154( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
					{
						float2 n = floor( v );
						float2 f = frac( v );
						float F1 = 8.0;
						float F2 = 8.0; float2 mg = 0;
						for ( int j = -1; j <= 1; j++ )
						{
							for ( int i = -1; i <= 1; i++ )
						 	{
						 		float2 g = float2( i, j );
						 		float2 o = voronoihash1154( n + g );
								o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
								float d = 0.5 * dot( r, r );
						 		if( d<F1 ) {
						 			F2 = F1;
						 			F1 = d; mg = g; mr = r; id = o;
						 		} else if( d<F2 ) {
						 			F2 = d;
						
						 		}
						 	}
						}
						return F1;
					}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RGBToHSV(float3 c)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
				float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
				float d = q.x - min( q.w, q.y );
				float e = 1.0e-10;
				return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
			}


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_tangent : TANGENT;
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_color : COLOR;
				float4 ase_texcoord9 : TEXCOORD9;
			};


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord4.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord7.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord8 = screenPos;
				float3 normalizeWorldNormal = normalize( UnityObjectToWorldNormal(v.normal) );
				o.ase_texcoord9.xyz = normalizeWorldNormal;
				
				o.ase_texcoord1.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord2.xy = v.ase_texcoord1.xy;
				o.ase_texcoord2.zw = v.ase_texcoord2.xy;
				o.ase_texcoord3.xy = v.ase_texcoord3.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord9.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 texCoord1110 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31136 = texCoord1135;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1121 = UV01113;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1121 = UV11114;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1121 = UV21115;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1121 = UV31136;
				#else
				float2 staticSwitch1121 = UV01113;
				#endif
				float3 tex2DNode835 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1121 ), _NormalMapIntensity );
				float3 ase_worldTangent = i.ase_texcoord4.xyz;
				float3 ase_worldNormal = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = tex2DNode835;
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 ase_worldPos = i.ase_texcoord7.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + _ShadowOffset ) / _ShadowSoftness );
				float time1154 = 0.0;
				float2 voronoiSmoothId1154 = 0;
				float4 screenPos = i.ase_texcoord8;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1159 = ase_screenPosNorm;
				float4 appendResult1162 = (float4(break1159.x , ( break1159.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1154 = appendResult1162.xy * _HalftoneShadowScale;
				float2 id1154 = 0;
				float2 uv1154 = 0;
				float voroi1154 = voronoi1154( coords1154, time1154, id1154, uv1154, 0, voronoiSmoothId1154 );
				float smoothstepResult1155 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1154 ) , dotResult54);
				float halftone1153 = smoothstepResult1155;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1283_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1287 = lerp( temp_output_1283_0 , ( temp_output_1283_0 * i.ase_color ) , _VertexColorsOpacity);
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1145 = UV01113;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1145 = UV11114;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1145 = UV21115;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1145 = UV31136;
				#else
				float2 staticSwitch1145 = UV01113;
				#endif
				float4 blendOpSrc1128 = tex2D( _DetailTexture, staticSwitch1145 );
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1287 ):( temp_output_1283_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1303 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1303 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float2 texCoord631 = i.ase_texcoord1.xyz.xy * _FlipbookTiling + _FlipbookOffset;
				// *** BEGIN Flipbook UV Animation vars ***
				// Total tiles of Flipbook Texture
				float fbtotaltiles634 = _FlipbookColumns * _FlipbookRows;
				// Offsets for cols and rows of Flipbook Texture
				float fbcolsoffset634 = 1.0f / _FlipbookColumns;
				float fbrowsoffset634 = 1.0f / _FlipbookRows;
				// Speed of animation
				float fbspeed634 = _Time[ 1 ] * _FlipbookSpeed;
				// UV Tiling (col and row offset)
				float2 fbtiling634 = float2(fbcolsoffset634, fbrowsoffset634);
				// UV Offset - calculate current tile linear index, and convert it to (X * coloffset, Y * rowoffset)
				// Calculate current tile linear index
				float fbcurrenttileindex634 = round( fmod( fbspeed634 + 0.0, fbtotaltiles634) );
				fbcurrenttileindex634 += ( fbcurrenttileindex634 < 0) ? fbtotaltiles634 : 0;
				// Obtain Offset X coordinate from current tile linear index
				float fblinearindextox634 = round ( fmod ( fbcurrenttileindex634, _FlipbookColumns ) );
				// Multiply Offset X by coloffset
				float fboffsetx634 = fblinearindextox634 * fbcolsoffset634;
				// Obtain Offset Y coordinate from current tile linear index
				float fblinearindextoy634 = round( fmod( ( fbcurrenttileindex634 - fblinearindextox634 ) / _FlipbookColumns, _FlipbookRows ) );
				// Reverse Y to get tiles from Top to Bottom
				fblinearindextoy634 = (int)(_FlipbookRows-1) - fblinearindextoy634;
				// Multiply Offset Y by rowoffset
				float fboffsety634 = fblinearindextoy634 * fbrowsoffset634;
				// UV Offset
				float2 fboffset634 = float2(fboffsetx634, fboffsety634);
				// Flipbook UV
				half2 fbuv634 = texCoord631 * fbtiling634 + fboffset634;
				// *** END Flipbook UV Animation vars ***
				float2 uv_FlipBookMask637 = i.ase_texcoord1.xyz.xy;
				float4 temp_output_642_0 = ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + float4( (( _FlipbookToggle )?( ( (tex2D( _FlipBookTexture, fbuv634 )).rgb * tex2D( _FlipBookMask, uv_FlipBookMask637 ).r * _FlipbookEmit ) ):( float3( 0,0,0 ) )) , 0.0 ) );
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				#if defined(_SPECULARMASKUV_UV0)
				float2 staticSwitch1140 = UV01113;
				#elif defined(_SPECULARMASKUV_UV1)
				float2 staticSwitch1140 = UV11114;
				#elif defined(_SPECULARMASKUV_UV2)
				float2 staticSwitch1140 = UV21115;
				#elif defined(_SPECULARMASKUV_UV3)
				float2 staticSwitch1140 = UV31136;
				#else
				float2 staticSwitch1140 = UV01113;
				#endif
				float2 uv_ScrollMask607 = i.ase_texcoord1.xyz.xy;
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1304 = cos( temp_output_604_0 );
				float sin1304 = sin( temp_output_604_0 );
				float2 rotator1304 = mul( ( ( ase_worldPos * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1304 , -sin1304 , sin1304 , cos1304 )) + float2( 0.5,0.5 );
				float2 panner1305 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1304);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleWorldSpaceUV )?( panner1305 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float2 texCoord1264 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _EmissionMaskScrollSpeed );
				float3 hsvTorgb584 = RGBToHSV( ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, texCoord1264 ) ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float mulTime619 = _Time.y * _GlowSpeed;
				float2 uv_GlowMask622 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode622 = tex2D( _GlowMask, uv_GlowMask622 );
				float3 hsvTorgb617 = HSVToRGB( float3(( mulTime619 * 0.1 ),1.0,1.0) );
				#ifdef _GLOWTOGGLE_ON
				float3 staticSwitch590 = ( (( _GlowCycle )?( ( hsvTorgb617 * tex2DNode622.r ) ):( ( (_GlowColor).rgb * (0.0 + (sin( mulTime619 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * tex2DNode622.r ) )) * _GlowEmit );
				#else
				float3 staticSwitch590 = float3( 0,0,0 );
				#endif
				float4 temp_output_472_0 = ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outColor = temp_output_472_0.rgb;
				outAlpha = 1.0;
				clip(outAlpha);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "PupsiBRCShaderGUI"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;361;-1469.229,3144.391;Inherit;False;1487.958;514.1742;;14;666;665;668;664;667;559;562;561;560;358;360;359;356;671;Rotation & Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;226;1205.992,1592.955;Inherit;False;1266.631;394.3788;;6;1100;53;54;835;834;170;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1951.908,2726.178;Inherit;False;1855.488;608.4642;;23;970;406;408;857;625;60;59;971;624;409;769;57;74;58;378;381;1164;1165;1280;1295;1296;1297;1298;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;11;427;858;423;420;426;428;424;558;430;429;863;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;581;1933.281,-1453.291;Inherit;False;1880.365;759.4941;;14;623;622;621;620;619;618;617;616;615;614;613;612;611;610;Glowing;0.4481132,0.6304269,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;582;-427.4952,-647.8214;Inherit;False;2077.342;538.7622;;13;593;607;596;588;605;601;600;606;604;599;598;597;1311;ScrollingMasked;0.9008027,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;1935.712,-658.9301;Inherit;False;1931.061;541.7088;;13;1265;1262;1263;1261;1264;609;587;586;584;603;602;589;585;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;627;2258.291,-1948.888;Inherit;False;1554.1;476.6765;;12;639;638;637;636;635;634;633;632;631;630;629;628;AnimatedTexture;0.4997601,0.4206123,0.6415094,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;3652.362,-525.8543;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PannerNode;597;305.5698,-286.0198;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;598;103.1255,-453.729;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;599;-143.9903,-454.411;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RadiansOpNode;604;-89.03839,-241.5844;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;618;2373.306,-1212.204;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;619;2178.635,-1123.892;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;621;2524.331,-1211.018;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;623;2558.015,-1021.639;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;620;2003.635,-1122.872;Inherit;False;Property;_GlowSpeed;Glow Speed;78;0;Create;True;0;0;0;False;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;615;2670.344,-1394.291;Inherit;False;Property;_GlowColor;Glow Color;76;0;Create;True;0;0;0;False;0;False;1,0,0,1;1,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;606;-374.1788,-240.5836;Inherit;False;Property;_ScrollRotation;Scroll Rotation;97;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;600;-358.7233,-361.7127;Inherit;False;Property;_ScrollOffset;Scroll Offset;95;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;601;-329.3572,-485.3978;Inherit;False;Property;_ScrollSize;Scroll Size;94;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;605;94.98107,-260.0469;Inherit;False;Property;_ScrollSpeed;Scroll Speed;96;0;Create;True;0;0;0;False;0;False;0,1;0,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;1431.636,-500.3082;Inherit;True;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;596;1184.055,-369.0001;Inherit;False;Property;_ScrollEmit;Scroll Emit;98;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;610;2927.588,-1265.903;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;611;3163.529,-981.9182;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;612;3162.736,-1232.939;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;617;2764.373,-886.1568;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;616;3404.858,-1079.179;Inherit;False;Property;_GlowCycle;Glow Cycle;77;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;868;2243.345,2026.729;Inherit;False;1553.953;676.2176;;14;883;882;877;869;881;1213;1177;1215;1179;1212;1174;1173;1281;1303;Cubemap;1,1,1,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;631;2484.292,-1866.888;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCFlipBookUVAnimation;634;2750.29,-1746.887;Inherit;False;0;0;6;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;636;3650.992,-1769.887;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;632;2308.291,-1898.887;Inherit;False;Property;_FlipbookTiling;Flipbook Tiling;83;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;633;2308.291,-1754.887;Inherit;False;Property;_FlipbookOffset;Flipbook Offset;84;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;630;2516.292,-1722.887;Inherit;False;Property;_FlipbookColumns;Flipbook Columns;85;0;Create;True;0;0;0;False;0;False;8;8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;629;2548.292,-1643.886;Inherit;False;Property;_FlipbookRows;Flipbook Rows;86;0;Create;True;0;0;0;False;0;False;8;8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;628;2548.292,-1563.886;Inherit;False;Property;_FlipbookSpeed;Flipbook Speed;87;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;640;3891.51,-1704.567;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;80;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;639;3406.238,-1867.111;Inherit;False;Property;_FlipbookEmit;Flipbook Emit;88;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;921;1530.545,4393.315;Inherit;False;2208.828;523.0707;;20;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1278;1271;1272;1282;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;49;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;48;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;50;0;Create;True;0;0;0;False;0;False;0.01;3.19;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1036;1948.115,3416.839;Inherit;False;1815.989;416.4595;;10;822;771;823;676;687;678;688;768;677;702;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;613;3466.646,-974.0479;Inherit;False;Property;_GlowEmit;Glow Emit;79;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;635;3292.997,-1770.924;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;614;3629.646,-1078.049;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;51;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;35;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.NormalizeNode;170;2031.346,1761.201;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;834;1806.679,1633.011;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;2265.713,1756.613;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1832.417,1804.647;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;1058;1680.904,901.0906;Inherit;False;2130.147;475.957;;21;1074;1073;1060;1065;1063;1064;1061;1046;1045;1051;1050;1042;1047;1049;1048;1138;1290;1291;1292;1293;1294;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1048;1928.45,942.5652;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1049;1747.5,949.0944;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1047;1695.457,1102.051;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1042;2076.874,942.8367;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1050;2075.756,1094.23;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;2284.404,946.442;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1045;2397.942,945.0647;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1046;2378.761,1053.084;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1063;3471.288,986.5499;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;44;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;41;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;40;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;642;4549.279,354.6125;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4697.74,353.3051;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;590;3840.299,-909.5723;Inherit;False;Property;_GlowToggle;Glow Toggle;74;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;1236.263,1687.058;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;15;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;911;5866.65,513.0403;Float;False;False;-1;2;ASEMaterialInspector;100;20;New Amplify Shader;fd5163ddf7350f946aff871fd3d7e3fe;True;Outline;0;1;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;0;False;;True;0;False;;True;False;13333;False;;33333;False;;True;1;CullMode=Front;True;5;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1126;56.49524,2712.691;Inherit;False;1876.9;690.8729;;12;1127;76;1284;1283;1134;1128;1129;1285;1286;1287;1288;1289;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;1121;1402.251,1309.626;Inherit;False;Property;_NormalMapUV;Normal Map UV;14;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1110;629.0278,1431.206;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1111;629.0278,1553.206;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1113;866.0278,1452.206;Inherit;False;UV0;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1114;872.0278,1577.206;Inherit;False;UV1;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1112;625.0278,1672.206;Inherit;False;2;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1115;878.0278,1684.206;Inherit;False;UV2;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1135;615.6724,1796.402;Inherit;False;3;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1136;868.6724,1808.402;Inherit;False;UV3;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1138;2235.567,1294.782;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1139;2230.567,1375.782;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1141;2232.567,1453.782;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1142;2239.712,1528.978;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1140;2433.567,1365.782;Inherit;False;Property;_SpecularMaskUV;Specular Mask UV;43;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;908;5867.152,346.1395;Float;False;True;-1;2;ASEMaterialInspector;0;20;Pupsi/Pupsi BRC Shader;fd5163ddf7350f946aff871fd3d7e3fe;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Transparent=RenderType;True;5;False;0;True;True;0;5;False;;10;False;;0;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_Cull;True;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;0;False;;True;0;False;;True;False;0;False;;0;False;;True;1;LightMode=ForwardBase;True;5;False;0;;0;0;Standard;0;0;3;True;True;True;False;;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;4827.026,340.3181;Inherit;False;Property;_SpecularToggle;Specular Toggle;39;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1150;1912.775,3896.888;Inherit;False;1827.885;466.4214;;13;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;Halftone Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4284.306,358.4348;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;47;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;971;2840.43,3203.384;Inherit;False;Property;_CustomLightingColorToggle;Custom Lighting Color Toggle;21;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;625;2468.434,2798.943;Inherit;False;Property;_CustomShadowColorToggle;Custom Shadow Color Toggle;23;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;1987.544,3485.072;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;677;2586.879,3499.247;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2162.28,3495.557;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;688;3117.009,3501.863;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2754.028,3501.268;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;2954.132,3501.398;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;771;1987.049,3651.481;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;30;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;14,14;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector4Node;381;2380.569,3152.827;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;408;3459.78,2774.295;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1151;3046.938,3909.99;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1152;3091.5,4061.218;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1153;3493.543,3963.754;Inherit;False;halftone;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1154;2895.938,4037.99;Inherit;True;0;0;1;0;1;True;1;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;15;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.SmoothstepOpNode;1155;3261.939,3961.99;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;2790.938,3925.99;Inherit;False;Property;_HalftoneShadowSoftness;Halftone Shadow Softness;33;0;Create;True;0;0;0;False;0;False;0.5;0.83;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1157;2636.501,4140.219;Inherit;False;Property;_HalftoneShadowScale;Halftone Shadow Scale;34;0;Create;True;0;0;0;False;0;False;15;249.57;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1158;1949.899,3933.945;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1159;2122.902,3933.945;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleDivideOpNode;1160;2287.902,4079.948;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1161;2166.306,4177.886;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1162;2422.846,4028.05;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenParams;1163;1981.303,4158.885;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1165;2746.718,2749.383;Inherit;False;1153;halftone;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;356;-930.3214,3198.485;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;359;-1457.322,3196.486;Inherit;False;Property;_BaseRotationCenter;Base Rotation Center;7;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;360;-1456.322,3318.486;Inherit;False;Property;_BaseRotationSpeed;Base Rotation Speed;8;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;358;-1220.322,3321.486;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;671;-1238.683,3186.081;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;-386.2785,3431.537;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;666;-191.2775,3333.538;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;668;-547.2794,3425.537;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;664;-544.2794,3210.54;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2262.436,2939.444;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;74;2584.954,2939.317;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2381.499,2936.288;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;1975.99,2955.268;Float;False;Property;_ShadowOffset;Shadow Offset;27;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;1982.065,3036.955;Float;False;Property;_ShadowSoftness;Shadow Softness;25;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1164;2743.178,2934.047;Inherit;False;Property;_HalftoneShadowToggle;Halftone Shadow Toggle;32;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;406;3006.165,2808.667;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector4Node;378;2222.782,2767.966;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;970;2598.43,3165.384;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;22;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;854;2535.542,1483.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;36;0;Create;True;0;0;0;False;0;False;-0.6;-0.326;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;2634.931,1593.814;Float;False;Property;_ExtraLightSoftness;Extra Light Softness;37;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;-1214.202,3408.708;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;562;-1456.199,3404.198;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;-1060.193,3409.203;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;561;-1455.957,3484.499;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;6;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3526.522,480.8262;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;882;2957.417,2103.48;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3950.549,366.7159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1248;2165.021,-104.3563;Inherit;False;1636.984;483.7798;;12;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;3344.826,-58.49818;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1251;3563.497,-54.13026;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;2792.383,149.5396;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1253;2664.383,148.5396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1254;2200.382,117.5394;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1255;2424.384,37.5399;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1256;2200.382,-42.4601;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1257;2785.522,248.4332;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;53;0;Create;True;0;0;0;False;0;False;10;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1258;2360.383,293.5399;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;54;0;Create;True;0;0;0;False;0;False;0.65;-0.292;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1259;2950.868,143.6488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1260;3110.38,-57.46034;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1213;3004.143,2321.712;Inherit;False;Property;_CubemapColorize;Cubemap Colorize;70;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;587;2528.248,-595.9348;Inherit;False;Property;_EmissionHue;Emission Hue;19;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;591;1672.215,-635.2302;Inherit;False;Property;_ScrollToggle;Scroll Toggle;89;0;Create;True;0;0;0;False;0;False;0;0;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1263;2322.949,-275.6747;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1262;1997.757,-300.4305;Inherit;False;Property;_EmissionMaskScrollSpeed;Emission Mask Scroll Speed;18;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3495.497,-458.4518;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;585;3270.88,-455.7204;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;602;3295.888,-300.9866;Inherit;False;Property;_EmissionEmit;Emission Emit;20;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;586;3148.466,-515.5188;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;584;2929.032,-533.7488;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1265;2978.995,-273.8162;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1116;1204.251,1238.626;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1117;1199.251,1319.626;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1118;1201.251,1397.626;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1137;1208.396,1472.822;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1264;2469.958,-302.1798;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1278;1555.419,4580.922;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;1277;1574.636,4447.96;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;64;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1586.022,4735.168;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;65;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;1853.227,4691.001;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;1841.081,4465.685;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3230.207,4815.911;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;58;0;Create;True;0;0;0;False;0;False;0.008;0.003;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3229.207,4746.911;Inherit;False;Property;_OutlineMinSize;Outline Min Size;57;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3064.207,4641.908;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3052.732,4745.156;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;893;3435.207,4678.911;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2809.247,4758.334;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3583.732,4653.152;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2826.732,4669.152;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;56;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2251.119,4725.167;Inherit;False;Property;_OutlineColor;Outline Color;60;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.4433962,0.4433962,0.4433962,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2538.744,4599.543;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;62;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3447.785,4468.922;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;61;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1773.363,4596.447;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3345.579,3483.154;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0.5;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1173;3572.586,2100.637;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3608.507,2751.897;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3289.184,2846.9;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1212;3287.129,2127.974;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3272.217,4517.877;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;912;4997.112,536.8265;Float;False;False;-1;2;ASEMaterialInspector;100;13;New Amplify Shader;fd5163ddf7350f946aff871fd3d7e3fe;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;0;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5134.691,338.9547;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClipNode;1148;5413.212,499.6556;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1149;5101.934,830.4199;Inherit;False;Property;_AlphaClipping;Alpha Clipping;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1099;3870.993,767.5627;Inherit;False;Property;_CubemapToggle;Cubemap Toggle;66;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1177;2980.084,2432.238;Inherit;False;Property;_CubemapFresnelBias;Cubemap Fresnel Bias;71;0;Create;True;0;0;0;False;0;False;0.5;0.05;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;2989.982,2523.056;Inherit;False;Property;_CubemapFresnelScale;Cubemap Fresnel Scale;72;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1179;3002.084,2615.238;Inherit;False;Property;_CubemapFresnelPower;Cubemap Fresnel Power;73;0;Create;True;0;0;0;False;0;False;1;0.05;0;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3539.284,3068.856;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;28;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;3383.186,3077.355;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1282;2046.956,4551.659;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1249;3287.513,233.0792;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;55;0;Create;True;0;0;0;False;0;False;0.6676344;0.332;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;676;2306.815,3497.671;Inherit;True;Property;_ShadowTexture;Shadow Texture;29;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;b9552255b337ed1468609738595c184a;b9552255b337ed1468609738595c184a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2222.841,4487.916;Inherit;True;Property;AuraTexture;Outline Texture;63;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;624;1971.434,2771.943;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;24;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;869;2479.349,2073.356;Inherit;True;Property;_CubemapTexture;Cubemap Texture;67;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;34b1a0522b0f44f48afe8efdffa7cb39;6d727751019dfb64a89da42f6849a10c;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;42;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.855,-507.4146;Inherit;True;Property;_Emission;Emission Texture;16;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;607;1056.279,-575.9648;Inherit;True;Property;_ScrollMask;Scroll Mask;93;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;593;484.5576,-309.3773;Inherit;True;Property;_ScrollTex;Scroll Tex;92;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;622;2755.8,-1117.635;Inherit;True;Property;_GlowMask;Glow Mask;75;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;637;3289.29,-1693.887;Inherit;True;Property;_FlipBookMask;FlipBookMask;82;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;638;3005.775,-1770.473;Inherit;True;Property;_FlipBookTexture;FlipBookTexture;81;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;667;-834.2799,3344.538;Inherit;True;Property;RotationMask;Base Rotation Mask;5;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1261;2685.608,-320.1377;Inherit;True;Property;_EmissionMask;Emission Mask;17;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldReflectionVector;877;2260.083,2076.667;Inherit;True;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;835;1512.257,1636.757;Inherit;True;Property;_NormalMap;Normal Map;13;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;b9275fa190e25044881bdca7115fc875;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1145;-293.7603,2734.588;Inherit;False;Property;_DetailTextureUV;Detail Texture UV;11;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1266;-554.2619,2635.14;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1267;-559.2619,2716.14;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;-557.2619,2794.14;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1269;-550.1169,2869.336;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1127;101.72,3166.692;Inherit;True;Property;_DetailTexture;Detail Texture;10;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;2e95b1e0bcb542941860e026ce4a7130;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;76;121.82,2782.291;Inherit;True;Property;_MainTex;Base Texture;2;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;3bd151116756bea4bad06a7605dcd374;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1284;413.0225,2792.296;Inherit;False;Property;_BaseColor;Base Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1283;638.2199,2798.644;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1129;1498.404,3208.984;Inherit;False;Property;_DetailTextureToggle;Detail Texture Toggle;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1285;884.383,2884.899;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1286;615.5671,2982.771;Inherit;False;Property;_VertexColorsOpacity;Vertex Colors Opacity;4;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1287;1075.595,2935.2;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;1070.435,2836.881;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1289;1253.567,2790.771;Inherit;False;Property;_VertexColorsToggle;Vertex Colors Toggle;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1128;1225.199,3103.12;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1134;413.1276,3258.312;Inherit;False;Property;_DetailTextureBlend;Detail Texture Opacity;12;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;823;3014.263,3729.169;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;883;2838.013,2224.182;Inherit;False;Property;_CubemapBlend;Cubemap Opacity;69;0;Create;False;0;0;0;False;0;False;1;0.016;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Opacity;38;0;Create;False;0;0;0;False;0;False;2;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Opacity;52;0;Create;False;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;3320.397,972.29;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1290;3180.404,971.4417;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1291;2980.156,958.6024;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1294;2851.633,1019.046;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1293;2570.194,1015.48;Inherit;False;Property;_SpecularOffset;Specular Offset;46;0;Create;True;0;0;0;False;0;False;0;-0.27;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1292;2570.359,939.1831;Inherit;False;Property;_SpecularSoftness;Specular Softness;45;0;Create;True;0;0;0;False;0;False;0.01;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1295;2885.899,3062.901;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1296;2615.899,3054.901;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;26;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1298;3188.899,3050.901;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1297;3045.899,3055.901;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1299;5475.268,841.8054;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1300;5703.301,881.3283;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1281;3697.306,2372.748;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1301;5884.301,851.3283;Inherit;False;Property;_VertexColorsDefineOutlineCoverage;Vertex Colors Define Outline Coverage;59;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;881;3493.681,2540.267;Inherit;True;Property;cubemapmask;Cubemap Mask;68;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FresnelNode;1174;3265.386,2383.138;Inherit;True;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.05;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1303;3557.479,2387.915;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;1304;59.50677,-1150.693;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1305;96.45179,-988.8701;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1306;325.7261,-788.8326;Inherit;False;Property;_ToggleWorldSpaceUV;Toggle World Space UV;90;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1307;-56.88115,-978.5004;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;-254.394,-986.3104;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1309;-425.7893,-989.7911;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ColorNode;1310;615.5066,-791.6928;Inherit;False;Property;_ScrollColor;Scroll Color;91;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;860.5067,-596.6928;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
WireConnection;589;0;591;0
WireConnection;589;1;603;0
WireConnection;589;2;590;0
WireConnection;597;0;598;0
WireConnection;597;2;605;0
WireConnection;598;0;599;0
WireConnection;598;2;604;0
WireConnection;599;0;601;0
WireConnection;599;1;600;0
WireConnection;604;0;606;0
WireConnection;618;0;619;0
WireConnection;619;0;620;0
WireConnection;621;0;618;0
WireConnection;623;0;619;0
WireConnection;588;0;607;1
WireConnection;588;1;1311;0
WireConnection;588;2;596;0
WireConnection;610;0;615;0
WireConnection;611;0;617;0
WireConnection;611;1;622;1
WireConnection;612;0;610;0
WireConnection;612;1;621;0
WireConnection;612;2;622;1
WireConnection;617;0;623;0
WireConnection;616;0;612;0
WireConnection;616;1;611;0
WireConnection;631;0;632;0
WireConnection;631;1;633;0
WireConnection;634;0;631;0
WireConnection;634;1;630;0
WireConnection;634;2;629;0
WireConnection;634;3;628;0
WireConnection;636;0;635;0
WireConnection;636;1;637;1
WireConnection;636;2;639;0
WireConnection;640;1;636;0
WireConnection;429;0;428;0
WireConnection;428;0;426;0
WireConnection;426;0;423;0
WireConnection;426;1;427;0
WireConnection;430;0;429;0
WireConnection;430;1;858;0
WireConnection;862;0;430;0
WireConnection;862;1;564;0
WireConnection;423;0;420;0
WireConnection;423;1;424;0
WireConnection;564;0;436;0
WireConnection;564;1;1099;0
WireConnection;635;0;638;0
WireConnection;614;0;616;0
WireConnection;614;1;613;0
WireConnection;851;0;853;0
WireConnection;851;1;1230;0
WireConnection;853;0;54;0
WireConnection;853;1;854;0
WireConnection;852;0;851;0
WireConnection;866;0;855;0
WireConnection;866;1;867;0
WireConnection;855;1;381;0
WireConnection;855;2;852;0
WireConnection;856;1;866;0
WireConnection;170;0;834;0
WireConnection;834;0;835;0
WireConnection;54;0;170;0
WireConnection;54;1;53;0
WireConnection;1048;0;1047;0
WireConnection;1048;1;1049;0
WireConnection;1050;0;1048;0
WireConnection;1051;0;1042;0
WireConnection;1051;1;1050;0
WireConnection;1045;0;1051;0
WireConnection;1046;0;1045;0
WireConnection;1046;1;170;0
WireConnection;1063;0;1061;0
WireConnection;1063;1;1064;0
WireConnection;1074;0;409;0
WireConnection;1074;1;1073;0
WireConnection;1065;0;1063;0
WireConnection;1065;1;1074;0
WireConnection;642;0;475;0
WireConnection;642;1;640;0
WireConnection;1087;0;642;0
WireConnection;1087;1;1065;0
WireConnection;590;0;614;0
WireConnection;911;0;924;0
WireConnection;911;1;1301;0
WireConnection;911;2;888;0
WireConnection;1121;1;1116;0
WireConnection;1121;0;1117;0
WireConnection;1121;2;1118;0
WireConnection;1121;3;1137;0
WireConnection;1113;0;1110;0
WireConnection;1114;0;1111;0
WireConnection;1115;0;1112;0
WireConnection;1136;0;1135;0
WireConnection;1140;1;1138;0
WireConnection;1140;0;1139;0
WireConnection;1140;2;1141;0
WireConnection;1140;3;1142;0
WireConnection;908;0;472;0
WireConnection;908;1;1148;0
WireConnection;1088;0;642;0
WireConnection;1088;1;1087;0
WireConnection;475;0;1099;0
WireConnection;475;1;860;0
WireConnection;971;0;381;0
WireConnection;971;1;970;0
WireConnection;625;0;378;0
WireConnection;625;1;624;0
WireConnection;677;0;57;0
WireConnection;768;0;702;0
WireConnection;768;1;771;0
WireConnection;688;0;687;0
WireConnection;678;0;677;0
WireConnection;678;1;676;0
WireConnection;687;0;678;0
WireConnection;1151;0;54;0
WireConnection;1151;1;1156;0
WireConnection;1152;0;1154;0
WireConnection;1153;0;1155;0
WireConnection;1154;0;1162;0
WireConnection;1154;2;1157;0
WireConnection;1155;0;54;0
WireConnection;1155;1;1151;0
WireConnection;1155;2;1152;0
WireConnection;1159;0;1158;0
WireConnection;1160;0;1159;1
WireConnection;1160;1;1161;0
WireConnection;1161;0;1163;1
WireConnection;1161;1;1163;2
WireConnection;1162;0;1159;0
WireConnection;1162;1;1160;0
WireConnection;356;0;671;0
WireConnection;356;1;359;0
WireConnection;356;2;358;0
WireConnection;358;0;360;0
WireConnection;665;0;559;0
WireConnection;665;1;668;0
WireConnection;666;0;664;0
WireConnection;666;1;665;0
WireConnection;668;0;667;0
WireConnection;664;0;356;0
WireConnection;664;1;667;0
WireConnection;58;0;54;0
WireConnection;58;1;59;0
WireConnection;74;0;57;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;1164;0;74;0
WireConnection;1164;1;1165;0
WireConnection;406;0;625;0
WireConnection;406;1;971;0
WireConnection;406;2;1298;0
WireConnection;560;0;562;0
WireConnection;560;1;561;0
WireConnection;559;1;560;0
WireConnection;863;0;862;0
WireConnection;863;1;558;0
WireConnection;882;0;869;0
WireConnection;882;1;883;0
WireConnection;860;0;1251;0
WireConnection;860;1;863;0
WireConnection;1250;0;1260;0
WireConnection;1250;1;1099;0
WireConnection;1251;0;1250;0
WireConnection;1251;1;1099;0
WireConnection;1251;2;1249;0
WireConnection;1252;0;1253;0
WireConnection;1253;0;1255;0
WireConnection;1253;1;1258;0
WireConnection;1255;0;1256;0
WireConnection;1255;1;1254;0
WireConnection;1259;0;1252;0
WireConnection;1260;0;1252;0
WireConnection;1260;1;1257;0
WireConnection;591;0;588;0
WireConnection;1263;0;562;0
WireConnection;1263;1;1262;0
WireConnection;603;0;585;0
WireConnection;603;1;602;0
WireConnection;585;0;586;0
WireConnection;585;1;584;2
WireConnection;585;2;584;3
WireConnection;586;0;587;0
WireConnection;586;1;584;1
WireConnection;584;0;1265;0
WireConnection;1265;0;609;0
WireConnection;1265;1;1261;0
WireConnection;1264;1;1263;0
WireConnection;1274;0;1276;0
WireConnection;1274;1;1275;0
WireConnection;1279;0;1278;0
WireConnection;1279;1;1277;0
WireConnection;892;0;889;0
WireConnection;892;1;977;0
WireConnection;893;0;892;0
WireConnection;893;1;894;0
WireConnection;893;2;895;0
WireConnection;888;0;887;0
WireConnection;888;1;893;0
WireConnection;1272;0;922;0
WireConnection;1272;1;1271;0
WireConnection;924;0;1272;0
WireConnection;924;1;923;0
WireConnection;822;0;688;0
WireConnection;822;1;1280;0
WireConnection;822;2;823;0
WireConnection;1173;0;409;0
WireConnection;1173;1;1212;0
WireConnection;1173;2;1281;0
WireConnection;409;0;769;0
WireConnection;409;1;408;0
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;1212;0;409;0
WireConnection;1212;1;882;0
WireConnection;1212;2;1213;0
WireConnection;923;0;472;0
WireConnection;923;1;1272;0
WireConnection;472;0;1088;0
WireConnection;472;1;589;0
WireConnection;1148;1;76;4
WireConnection;1148;2;1149;0
WireConnection;1099;0;409;0
WireConnection;1099;1;1173;0
WireConnection;769;0;1280;0
WireConnection;769;1;822;0
WireConnection;1280;0;857;0
WireConnection;1280;1;1129;0
WireConnection;1282;0;1279;0
WireConnection;1282;1;1274;0
WireConnection;676;1;768;0
WireConnection;1271;1;1282;0
WireConnection;869;1;877;0
WireConnection;1060;1;1140;0
WireConnection;593;1;1306;0
WireConnection;638;1;634;0
WireConnection;1261;1;1264;0
WireConnection;877;0;835;0
WireConnection;835;1;1121;0
WireConnection;835;5;1100;0
WireConnection;1145;1;1266;0
WireConnection;1145;0;1267;0
WireConnection;1145;2;1268;0
WireConnection;1145;3;1269;0
WireConnection;1127;1;1145;0
WireConnection;76;1;666;0
WireConnection;1283;0;76;0
WireConnection;1283;1;1284;0
WireConnection;1129;0;1289;0
WireConnection;1129;1;1128;0
WireConnection;1287;0;1283;0
WireConnection;1287;1;1288;0
WireConnection;1287;2;1286;0
WireConnection;1288;0;1283;0
WireConnection;1288;1;1285;0
WireConnection;1289;0;1283;0
WireConnection;1289;1;1287;0
WireConnection;1128;0;1127;0
WireConnection;1128;1;1289;0
WireConnection;1128;2;1134;0
WireConnection;1061;0;1290;0
WireConnection;1061;1;1060;0
WireConnection;1290;0;1291;0
WireConnection;1291;0;1294;0
WireConnection;1291;1;1292;0
WireConnection;1294;0;1293;0
WireConnection;1294;1;1046;0
WireConnection;1295;0;1296;0
WireConnection;1298;0;1297;0
WireConnection;1297;0;1164;0
WireConnection;1297;1;1295;0
WireConnection;1300;0;1299;0
WireConnection;1300;1;1148;0
WireConnection;1281;0;1303;0
WireConnection;1281;1;881;0
WireConnection;1301;0;1148;0
WireConnection;1301;1;1300;0
WireConnection;1174;1;1177;0
WireConnection;1174;2;1215;0
WireConnection;1174;3;1179;0
WireConnection;1303;0;1174;0
WireConnection;1304;0;1307;0
WireConnection;1304;2;604;0
WireConnection;1305;0;1304;0
WireConnection;1305;2;605;0
WireConnection;1306;0;597;0
WireConnection;1306;1;1305;0
WireConnection;1307;0;1308;0
WireConnection;1307;1;600;0
WireConnection;1308;0;1309;0
WireConnection;1308;1;601;0
WireConnection;1311;0;593;0
WireConnection;1311;1;1310;0
ASEEND*/
//CHKSM=9B485E3BB90F7BCF2E37BFBB5BA2ECF777082A13