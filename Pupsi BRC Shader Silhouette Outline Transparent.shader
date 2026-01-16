// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Shader (Silhouette Outline Transparent)"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		_Opacity("Opacity", Range( 0 , 1)) = 1
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
		_WorldLightStrength("World Light Strength", Range( 0 , 1)) = 1
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		_CustomShadowColor("Custom Shadow Color", Color) = (0,0,0,0)
		_GameLightStrength("Game Light Strength", Range( 0 , 1)) = 1
		_GameShadowStrength("Game Shadow Strength", Range( 0 , 1)) = 1
		_ShadowIntensity("Shadow Intensity", Range( 0 , 1)) = 1
		_ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
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
		_RimShadowOpacity("Rim Shadow Opacity", Range( 0 , 1)) = 1
		_OutlineOpacity("Outline Opacity", Range( 0 , 1)) = 1
		[Toggle]_OutlineuseBaseTextureAlpha("Outline use Base Texture Alpha", Float) = 0
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		[Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
		[NoScaleOffset][BigTexture]OutlineTexture("Outline Texture", 2D) = "white" {}
		[KeywordEnum(BaseUV,ScreenPosition,VertexPosition)] _OutlineTextureUVSelection("Outline Texture UV Selection", Float) = 0
		[KeywordEnum(UV0,UV1,UV2,UV3)] _OutlineTextureBaseUVMap("Outline Texture Base UV Map", Float) = 0
		_OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
		_OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		[Toggle]_VertexColorsDefineOutlineOpacity("Vertex Colors Define Outline Opacity", Float) = 0
		[Toggle]_VertexColorsDefineOutlineThickness("Vertex Colors Define Outline Thickness", Float) = 0
		_SilhouetteOutlineOpacity("Silhouette Outline Opacity", Range( 0 , 1)) = 1
		[Toggle]_SilhouetteOutlineuseBaseTextureAlpha("Silhouette Outline use Base Texture Alpha", Float) = 0
		_SilhouetteColor("Silhouette Color", Color) = (1,1,1,1)
		[Toggle]_SilhouetteTextureToggle("Silhouette Texture Toggle", Float) = 0
		[NoScaleOffset][BigTexture]AuraTexture1("Silhouette Texture", 2D) = "white" {}
		[KeywordEnum(BaseUV,ScreenPosition,VertexPosition)] _SilhouetteTextureUVSelection("Silhouette Texture UV Selection", Float) = 0
		[KeywordEnum(UV0,UV1,UV2,UV3)] _SilhouetteTextureBaseUVMap("Silhouette Texture Base UV Map", Float) = 0
		_SilhouetteTextureTiling("Silhouette Texture Tiling", Vector) = (1,1,0,0)
		_SilhouetteTextureScroll("Silhouette Texture Scroll", Vector) = (0,0,0,0)
		_SilhouetteMultiplier("Silhouette Multiplier", Float) = 0.01
		_SilhouetteMinSize("Silhouette Min Size", Float) = 0.01
		_SilhouetteMaxSize("Silhouette Max Size", Float) = 0.016
		[Toggle]_VertexColorsDefineSilhouetteOutlineOpacity("Vertex Colors Define Silhouette Outline Opacity", Float) = 0
		[Toggle]_VertexColorsDefineSilhouetteOutlineThickness("Vertex Colors Define Silhouette Outline Thickness", Float) = 0
		[Toggle]_SilhouetteOverlay("Silhouette Overlay", Float) = 0
		_SilhouetteOverlayOpacity("Silhouette Overlay Opacity", Range( 0 , 1)) = 0
		[Toggle]_SilhouetteRimLightToggle("Silhouette Rim Light Toggle", Float) = 0
		_SilhouetteRimLightPower("Silhouette Rim Light Power", Range( 0.01 , 10)) = 0.7925499
		_SilhouetteRimLightOffset("Silhouette Rim Light Offset", Range( 0 , 1)) = 0.65
		_SilhouetteRimLightBlend("Silhouette Rim Light Blend", Range( 0 , 25)) = 25
		[Toggle]_CubemapToggle("Cubemap Toggle", Float) = 0
		[NoScaleOffset][BigTexture]_CubemapTexture("Cubemap Texture", CUBE) = "white" {}
		[NoScaleOffset][BigTexture]cubemapmask("Cubemap Mask", 2D) = "white" {}
		_CubemapBlend("Cubemap Opacity", Range( 0 , 1)) = 1
		_CubemapColorize("Cubemap Colorize", Range( 0 , 1)) = 0
		_CubemapFresnelBias("Cubemap Fresnel Bias", Range( 0 , 1)) = 0.5
		_CubemapFresnelScale("Cubemap Fresnel Scale", Float) = 0
		_CubemapFresnelPower("Cubemap Fresnel Power", Range( 0 , 15)) = 1
		[Toggle(_GLOWTOGGLE_ON)] _GlowToggle("Glow Toggle", Float) = 0
		[NoScaleOffset][BigTexture]_GlowMask("Glow Mask", 2D) = "white" {}
		_GlowColor("Glow Color", Color) = (1,0,0,1)
		[Toggle]_GlowCycle("Glow Cycle", Float) = 0
		_GlowSpeed("Glow Speed", Float) = 10
		_GlowEmit("Glow Emit", Float) = 1
		[Toggle(_SCROLLTOGGLE_ON)] _ScrollToggle("Scroll Toggle", Float) = 0
		[KeywordEnum(BaseUV,ScreenPosition,VertexPosition)] _ScrollingUVSelection("Scrolling UV Selection", Float) = 0
		[KeywordEnum(UV0,UV1,UV2,UV3)] _ScrollingBaseUVMap("Scrolling Base UV Map", Float) = 0
		_ScrollColor("Scroll Color", Color) = (1,1,1,0)
		[NoScaleOffset][BigTexture]_ScrollTex("Scroll Tex", 2D) = "white" {}
		[NoScaleOffset][BigTexture]_ScrollMask("Scroll Mask", 2D) = "white" {}
		_ScrollTiling("Scroll Tiling", Vector) = (1,1,0,0)
		_ScrollSpeed("Scroll Speed", Vector) = (0,1,0,0)
		_ScrollRotation("Scroll Rotation", Range( 0 , 360)) = 0
		_ScrollEmit("Scroll Emit", Float) = 1
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="Transparent" }
	LOD 100

		Cull [_Cull]
		CGINCLUDE
		#pragma target 3.0
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull [_Cull]
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref 50
				Comp Always
				Pass Replace
				Fail Replace
				ZFail Replace
			}
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
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
			uniform float _SpecularToggle;
			uniform float _SilhouetteRimLightToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomShadowColor;
			uniform float4 ShadowColor;
			uniform float _GameShadowStrength;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
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
			uniform float _WorldLightStrength;
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
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollTiling;
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
			uniform float _Opacity;
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
				float4 ase_texcoord10 : TEXCOORD10;
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
				o.ase_texcoord10 = v.vertex;
				
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

				float4 lerpResult1400 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1404 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
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
				float4 lerpResult406 = lerp( lerpResult1400 , lerpResult1404 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1404 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1343_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1349 = lerp( temp_output_1343_0 , ( temp_output_1343_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1402 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1402 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1368 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1368 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				#if defined(_SILHOUETTETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1421 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1421 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1421 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1421 = UV31136;
				#else
				float2 staticSwitch1421 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1420 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1420 = float4( i.ase_texcoord10.xyz , 0.0 );
				#else
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#endif
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_ScrollMask607 = i.ase_texcoord1.xyz.xy;
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1393 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1393 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1393 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1393 = UV31136;
				#else
				float2 staticSwitch1393 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1393 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1406 = cos( temp_output_604_0 );
				float sin1406 = sin( temp_output_604_0 );
				float2 rotator1406 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1406 , -sin1406 , sin1406 , cos1406 )) + float2( 0.5,0.5 );
				float2 panner1407 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1406);
				float cos1369 = cos( temp_output_604_0 );
				float sin1369 = sin( temp_output_604_0 );
				float2 rotator1369 = mul( ( i.ase_texcoord10.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1369 , -sin1369 , sin1369 , cos1369 )) + float2( 0.5,0.5 );
				float2 panner1370 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1369);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1409 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1409 = panner1407;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1409 = panner1370;
				#else
				float2 staticSwitch1409 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1409 ) * _ScrollColor ) * _ScrollEmit );
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
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				

				outColor = temp_output_472_0.rgb;
				outAlpha = ( tex2DNode76.a * _Opacity );
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
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull Front
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref 50
				Comp GEqual
				Pass Replace
				Fail Replace
				ZFail Replace
			}
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
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _OUTLINETEXTUREUVSELECTION_BASEUV _OUTLINETEXTUREUVSELECTION_SCREENPOSITION _OUTLINETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _OUTLINETEXTUREBASEUVMAP_UV0 _OUTLINETEXTUREBASEUVMAP_UV1 _OUTLINETEXTUREBASEUVMAP_UV2 _OUTLINETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3
			#pragma shader_feature_local _GLOWTOGGLE_ON


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_tangent : TANGENT;
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
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_color : COLOR;
				float4 ase_texcoord9 : TEXCOORD9;
			};

			//This is a late directive
			
			uniform float _OutlineMultiplier;
			uniform float _OutlineMinSize;
			uniform float _OutlineMaxSize;
			uniform float _VertexColorsDefineOutlineThickness;
			uniform float _OutlineBlendBaseTexture;
			uniform float _OutlineTextureToggle;
			uniform float4 _OutlineColor;
			uniform sampler2D OutlineTexture;
			uniform float2 _OutlineTextureTiling;
			uniform float2 _OutlineTextureScroll;
			uniform float _SilhouetteOverlay;
			uniform float _SpecularToggle;
			uniform float _SilhouetteRimLightToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomShadowColor;
			uniform float4 ShadowColor;
			uniform float _GameShadowStrength;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
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
			uniform float _WorldLightStrength;
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
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollTiling;
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
			uniform float _VertexColorsDefineOutlineOpacity;
			uniform float _OutlineuseBaseTextureAlpha;
			uniform float _OutlineOpacity;
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
				float4 temp_cast_1 = (1.0).xxxx;
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord = screenPos;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord6.xyz = ase_worldNormal;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord7.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord8.xyz = ase_worldPos;
				float3 normalizeWorldNormal = normalize( UnityObjectToWorldNormal(v.ase_normal) );
				o.ase_texcoord9.xyz = normalizeWorldNormal;
				
				o.ase_texcoord1 = v.vertex;
				o.ase_texcoord2.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord3.xy = v.ase_texcoord1.xy;
				o.ase_texcoord3.zw = v.ase_texcoord2.xy;
				o.ase_texcoord4.xy = v.ase_texcoord3.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				o.ase_texcoord9.w = 0;

				v.vertex.xyz += ( float4( ( v.ase_normal * clampResult893 ) , 0.0 ) * (( _VertexColorsDefineOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ).rgb;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outOutlineColor;
				float outOutlineAlpha;

				#if defined(_OUTLINETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1412 = float2( 0,0 );
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1412 = float2( 0,0 );
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1412 = float2( 0,0 );
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1412 = float2( 0,0 );
				#else
				float2 staticSwitch1412 = float2( 0,0 );
				#endif
				float4 screenPos = i.ase_texcoord;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_OUTLINETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1413 = float4( staticSwitch1412, 0.0 , 0.0 );
				#elif defined(_OUTLINETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1413 = ase_screenPosNorm;
				#elif defined(_OUTLINETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1413 = float4( i.ase_texcoord1.xyz , 0.0 );
				#else
				float4 staticSwitch1413 = float4( staticSwitch1412, 0.0 , 0.0 );
				#endif
				float4 lerpResult1400 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1404 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
				float2 texCoord1110 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord3.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
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
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldNormal = i.ase_texcoord6.xyz;
				float3 ase_worldBitangent = i.ase_texcoord7.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = tex2DNode835;
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 ase_worldPos = i.ase_texcoord8.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + _ShadowOffset ) / _ShadowSoftness );
				float time1154 = 0.0;
				float2 voronoiSmoothId1154 = 0;
				float4 break1159 = ase_screenPosNorm;
				float4 appendResult1162 = (float4(break1159.x , ( break1159.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1154 = appendResult1162.xy * _HalftoneShadowScale;
				float2 id1154 = 0;
				float2 uv1154 = 0;
				float voroi1154 = voronoi1154( coords1154, time1154, id1154, uv1154, 0, voronoiSmoothId1154 );
				float smoothstepResult1155 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1154 ) , dotResult54);
				float halftone1153 = smoothstepResult1155;
				float4 lerpResult406 = lerp( lerpResult1400 , lerpResult1404 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1404 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord2.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1343_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1349 = lerp( temp_output_1343_0 , ( temp_output_1343_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1402 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1402 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1368 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord2.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1368 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				#if defined(_SILHOUETTETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1421 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1421 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1421 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1421 = UV31136;
				#else
				float2 staticSwitch1421 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1420 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1420 = float4( i.ase_texcoord1.xyz , 0.0 );
				#else
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#endif
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_ScrollMask607 = i.ase_texcoord2.xyz.xy;
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1393 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1393 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1393 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1393 = UV31136;
				#else
				float2 staticSwitch1393 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1393 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1406 = cos( temp_output_604_0 );
				float sin1406 = sin( temp_output_604_0 );
				float2 rotator1406 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1406 , -sin1406 , sin1406 , cos1406 )) + float2( 0.5,0.5 );
				float2 panner1407 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1406);
				float cos1369 = cos( temp_output_604_0 );
				float sin1369 = sin( temp_output_604_0 );
				float2 rotator1369 = mul( ( i.ase_texcoord1.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1369 , -sin1369 , sin1369 , cos1369 )) + float2( 0.5,0.5 );
				float2 panner1370 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1369);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1409 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1409 = panner1407;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1409 = panner1370;
				#else
				float2 staticSwitch1409 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1409 ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord2.xyz.xy;
				float2 texCoord1264 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + ( _Time.y * _EmissionMaskScrollSpeed );
				float3 hsvTorgb584 = RGBToHSV( ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, texCoord1264 ) ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float mulTime619 = _Time.y * _GlowSpeed;
				float2 uv_GlowMask622 = i.ase_texcoord2.xyz.xy;
				float4 tex2DNode622 = tex2D( _GlowMask, uv_GlowMask622 );
				float3 hsvTorgb617 = HSVToRGB( float3(( mulTime619 * 0.1 ),1.0,1.0) );
				#ifdef _GLOWTOGGLE_ON
				float3 staticSwitch590 = ( (( _GlowCycle )?( ( hsvTorgb617 * tex2DNode622.r ) ):( ( (_GlowColor).rgb * (0.0 + (sin( mulTime619 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * tex2DNode622.r ) )) * _GlowEmit );
				#else
				float3 staticSwitch590 = float3( 0,0,0 );
				#endif
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				
				float4 temp_cast_102 = ((( _OutlineuseBaseTextureAlpha )?( ( tex2DNode76.a * _OutlineOpacity ) ):( _OutlineOpacity ))).xxxx;
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( staticSwitch1413 * float4( _OutlineTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _OutlineTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( staticSwitch1413 * float4( _OutlineTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _OutlineTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _OutlineColor )) )).rgb;
				outOutlineAlpha = (( _VertexColorsDefineOutlineOpacity )?( ( i.ase_color * (( _OutlineuseBaseTextureAlpha )?( ( tex2DNode76.a * _OutlineOpacity ) ):( _OutlineOpacity )) ) ):( temp_cast_102 )).r;
				clip(outOutlineAlpha);
				return float4(outOutlineColor,outOutlineAlpha);
			}
			ENDCG
		}
		
				
		Pass
		{
			Name "Aura"
			Tags { "CullMode"="Front" }
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			Stencil
			{
				Ref 0
				WriteMask 0
				Comp GEqual
				Pass DecrWrap
				Fail DecrWrap
				ZFail DecrWrap
			}
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
			};

			uniform float _SilhouetteMultiplier;
			uniform float _SilhouetteMinSize;
			uniform float _SilhouetteMaxSize;
			uniform float _VertexColorsDefineSilhouetteOutlineThickness;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _VertexColorsDefineSilhouetteOutlineOpacity;
			uniform float _SilhouetteOutlineuseBaseTextureAlpha;
			uniform float _SilhouetteOutlineOpacity;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade1291 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult1290 = clamp( ( _SilhouetteMultiplier * cameraDepthFade1291 ) , _SilhouetteMinSize , _SilhouetteMaxSize );
				float4 temp_cast_1 = (1.0).xxxx;
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord2 = screenPos;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_texcoord.zw = v.ase_texcoord1.xy;
				o.ase_texcoord1.xy = v.ase_texcoord2.xy;
				o.ase_texcoord1.zw = v.ase_texcoord3.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;

				v.vertex.xyz += ( float4( ( v.ase_normal * clampResult1290 ) , 0.0 ) * (( _VertexColorsDefineSilhouetteOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ).rgb;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outAuraColor;
				float outAuraAlpha;

				float2 texCoord1110 = i.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV31136 = texCoord1135;
				#if defined(_SILHOUETTETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1421 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1421 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1421 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1421 = UV31136;
				#else
				float2 staticSwitch1421 = UV01113;
				#endif
				float4 screenPos = i.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1420 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1420 = float4( i.ase_texcoord3.xyz , 0.0 );
				#else
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#endif
				
				float2 texCoord671 = i.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_cast_10 = ((( _SilhouetteOutlineuseBaseTextureAlpha )?( ( _SilhouetteOutlineOpacity * tex2DNode76.a ) ):( _SilhouetteOutlineOpacity ))).xxxx;
				

				outAuraColor = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor )).rgb;
				outAuraAlpha = (( _VertexColorsDefineSilhouetteOutlineOpacity )?( ( i.ase_color * (( _SilhouetteOutlineuseBaseTextureAlpha )?( ( _SilhouetteOutlineOpacity * tex2DNode76.a ) ):( _SilhouetteOutlineOpacity )) ) ):( temp_cast_10 )).r;
				clip(outAuraAlpha);
				return float4(outAuraColor,outAuraAlpha);
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
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
			uniform float _SpecularToggle;
			uniform float _SilhouetteRimLightToggle;
			uniform float _RimLightShadowToggle;
			uniform float _CubemapToggle;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomShadowColor;
			uniform float4 ShadowColor;
			uniform float _GameShadowStrength;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
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
			uniform float _WorldLightStrength;
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
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform sampler2D _ScrollMask;
			uniform sampler2D _ScrollTex;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollTiling;
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
			uniform float _Opacity;
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
				float4 ase_texcoord10 : TEXCOORD10;
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
				o.ase_texcoord10 = v.vertex;
				
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

				float4 lerpResult1400 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1404 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
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
				float4 lerpResult406 = lerp( lerpResult1400 , lerpResult1404 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1404 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float4 temp_output_1343_0 = ( tex2DNode76 * _BaseColor );
				float4 lerpResult1349 = lerp( temp_output_1343_0 , ( temp_output_1343_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1349 ):( temp_output_1343_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1402 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1402 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1368 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1368 * tex2D( cubemapmask, uvcubemapmask881 ) ));
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) );
				float4 blendOpDest1251 = (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				#if defined(_SILHOUETTETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1421 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1421 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1421 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1421 = UV31136;
				#else
				float2 staticSwitch1421 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1420 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1420 = float4( i.ase_texcoord10.xyz , 0.0 );
				#else
				float4 staticSwitch1420 = float4( staticSwitch1421, 0.0 , 0.0 );
				#endif
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_ScrollMask607 = i.ase_texcoord1.xyz.xy;
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1393 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1393 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1393 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1393 = UV31136;
				#else
				float2 staticSwitch1393 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1393 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1406 = cos( temp_output_604_0 );
				float sin1406 = sin( temp_output_604_0 );
				float2 rotator1406 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1406 , -sin1406 , sin1406 , cos1406 )) + float2( 0.5,0.5 );
				float2 panner1407 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1406);
				float cos1369 = cos( temp_output_604_0 );
				float sin1369 = sin( temp_output_604_0 );
				float2 rotator1369 = mul( ( i.ase_texcoord10.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1369 , -sin1369 , sin1369 , cos1369 )) + float2( 0.5,0.5 );
				float2 panner1370 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1369);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1409 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1409 = panner1407;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1409 = panner1370;
				#else
				float2 staticSwitch1409 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1409 ) * _ScrollColor ) * _ScrollEmit );
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
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( staticSwitch1420 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) + float4( staticSwitch590 , 0.0 ) ) );
				

				outColor = temp_output_472_0.rgb;
				outAlpha = ( tex2DNode76.a * _Opacity );
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
Node;AmplifyShaderEditor.CommentaryNode;361;-1402.585,3318.34;Inherit;False;1487.958;514.1742;;14;666;665;668;664;667;559;562;561;560;358;360;359;356;671;Rotation & Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;226;1205.992,1592.955;Inherit;False;1266.631;394.3788;;6;1100;53;54;835;834;170;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1951.908,2726.178;Inherit;False;1875.004;951.9534;;26;1400;1399;408;1360;1359;1358;1357;1280;769;857;970;378;624;406;1164;60;59;57;74;58;1165;381;1404;1403;1401;1402;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;11;427;858;423;420;426;428;424;558;430;429;863;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;581;1933.281,-1453.291;Inherit;False;1880.365;759.4941;;14;623;622;621;620;619;618;617;616;615;614;613;612;611;610;Glowing;0.4481132,0.6304269,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;582;-427.4952,-647.8214;Inherit;False;2077.342;538.7622;;13;593;607;596;588;605;601;606;604;598;597;1376;1398;1409;ScrollingMasked;0.9008027,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;1935.712,-658.9301;Inherit;False;1931.061;541.7088;;13;1265;1262;1263;1261;1264;609;587;586;584;603;602;589;585;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;3652.362,-525.8543;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PannerNode;597;305.5698,-286.0198;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;598;103.1255,-453.729;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;604;-89.03839,-241.5844;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;618;2373.306,-1212.204;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;619;2178.635,-1123.892;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;621;2524.331,-1211.018;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;623;2558.015,-1021.639;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;620;2003.635,-1122.872;Inherit;False;Property;_GlowSpeed;Glow Speed;104;0;Create;True;0;0;0;False;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;615;2670.344,-1394.291;Inherit;False;Property;_GlowColor;Glow Color;102;0;Create;True;0;0;0;False;0;False;1,0,0,1;1,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;606;-374.1788,-240.5836;Inherit;False;Property;_ScrollRotation;Scroll Rotation;114;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;605;94.98107,-260.0469;Inherit;False;Property;_ScrollSpeed;Scroll Speed;113;0;Create;True;0;0;0;False;0;False;0,1;0,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;1431.636,-500.3082;Inherit;True;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;596;1184.055,-369.0001;Inherit;False;Property;_ScrollEmit;Scroll Emit;115;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;610;2927.588,-1265.903;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;611;3163.529,-981.9182;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;612;3162.736,-1232.939;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;617;2764.373,-886.1568;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;616;3404.858,-1079.179;Inherit;False;Property;_GlowCycle;Glow Cycle;103;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;868;2243.345,2026.729;Inherit;False;1553.953;676.2176;;14;883;882;878;877;869;881;1213;1177;1215;1179;1212;1174;1173;1368;Cubemap;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;1559.731,5444.021;Inherit;False;2208.828;523.0707;;19;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1271;1272;1341;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;50;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;49;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;51;0;Create;True;0;0;0;False;0;False;0.01;3.19;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1036;1977.301,4467.544;Inherit;False;1815.989;416.4595;;10;822;771;823;676;687;678;688;768;677;702;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;613;3466.646,-974.0479;Inherit;False;Property;_GlowEmit;Glow Emit;105;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;614;3629.646,-1078.049;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;52;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;36;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.NormalizeNode;170;2031.346,1761.201;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;834;1806.679,1633.011;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;2265.713,1756.613;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1832.417,1804.647;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;1058;1680.904,901.0906;Inherit;False;2130.147;475.957;;20;1074;1073;1060;1065;1063;1064;1046;1045;1051;1050;1042;1047;1049;1048;1138;1352;1353;1354;1355;1356;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1048;1928.45,942.5652;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1049;1747.5,949.0944;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1047;1695.457,1102.051;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1042;2076.874,942.8367;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1050;2075.756,1094.23;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;2284.404,946.442;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1045;2397.942,945.0647;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1046;2378.761,1053.084;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1063;3471.288,986.5499;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;45;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;42;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;41;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;590;3840.299,-909.5723;Inherit;False;Property;_GlowToggle;Glow Toggle;100;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;1236.263,1687.058;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;15;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1126;137.8489,2712.691;Inherit;False;1795.547;696.6783;;11;1127;76;1343;1342;1134;1128;1347;1348;1349;1350;1351;Base Texture;1,1,1,1;0;0
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
Node;AmplifyShaderEditor.StaticSwitch;1140;2433.567,1365.782;Inherit;False;Property;_SpecularMaskUV;Specular Mask UV;44;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1150;1941.961,4947.593;Inherit;False;1827.885;466.4214;;13;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;Halftone Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.WorldReflectionVector;877;2260.083,2076.667;Inherit;True;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;1129;1721.02,2984.691;Inherit;False;Property;_DetailTextureToggle;Detail Texture Toggle;9;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;854;2535.542,1483.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;37;0;Create;True;0;0;0;False;0;False;-0.6;-0.326;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;2634.931,1593.814;Float;False;Property;_ExtraLightSoftness;Extra Light Softness;38;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3526.522,480.8262;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;882;2957.417,2103.48;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3950.549,366.7159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1248;2165.021,-104.3563;Inherit;False;1636.984;483.7798;;12;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1249;3287.513,233.0792;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;56;0;Create;True;0;0;0;False;0;False;1;0.332;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;3344.826,-58.49818;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1251;3563.497,-54.13026;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;2792.383,149.5396;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1253;2664.383,148.5396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1254;2200.382,117.5394;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1255;2424.384,37.5399;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1256;2200.382,-42.4601;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1257;2785.522,248.4332;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;54;0;Create;True;0;0;0;False;0;False;10;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1258;2360.383,293.5399;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;55;0;Create;True;0;0;0;False;0;False;0.65;-0.292;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1259;2950.868,143.6488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1260;3110.38,-57.46034;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1213;3004.143,2321.712;Inherit;False;Property;_CubemapColorize;Cubemap Colorize;96;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;587;2528.248,-595.9348;Inherit;False;Property;_EmissionHue;Emission Hue;19;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;591;1672.215,-635.2302;Inherit;False;Property;_ScrollToggle;Scroll Toggle;106;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
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
Node;AmplifyShaderEditor.LerpOp;1173;3572.586,2100.637;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1212;3287.129,2127.974;Inherit;True;Multiply;True;3;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1099;3870.993,767.5627;Inherit;False;Property;_CubemapToggle;Cubemap Toggle;92;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1282;5867.152,458.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1283;5867.152,525.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1286;5867.152,346.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1287;1643.065,6048.673;Inherit;False;1707.826;491.2855;;15;1308;1306;1302;1301;1300;1299;1297;1295;1292;1291;1290;1289;1288;1340;1378;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1315;1667.655,6647.795;Inherit;False;1976.592;475.3736;;13;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;5005.834,342.5815;Inherit;False;Property;_SpecularToggle;Specular Toggle;40;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;5074.196,593.3636;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1312;4695.196,745.3636;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;87;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5592.5,362.2181;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1314;5305.196,362.3637;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;86;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1313;5221.181,489.6377;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1177;2952.084,2437.238;Inherit;False;Property;_CubemapFresnelBias;Cubemap Fresnel Bias;97;0;Create;True;0;0;0;False;0;False;0.5;0.05;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;2961.982,2528.056;Inherit;False;Property;_CubemapFresnelScale;Cubemap Fresnel Scale;98;0;Create;True;0;0;0;False;0;False;0;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1179;2974.084,2620.238;Inherit;False;Property;_CubemapFresnelPower;Cubemap Fresnel Power;99;0;Create;True;0;0;0;False;0;False;1;0.05;0;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1174;3241.386,2383.138;Inherit;True;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.05;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4864.549,402.5685;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1281;5867.152,346.1395;Float;False;True;-1;2;ASEMaterialInspector;100;17;Pupsi/Pupsi BRC Shader (Silhouette Outline Transparent);c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Transparent=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Opacity;53;0;Create;False;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1261;2685.608,-320.1377;Inherit;True;Property;_EmissionMask;Emission Mask;17;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.855,-507.4146;Inherit;True;Property;_Emission;Emission Texture;16;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;622;2755.8,-1117.635;Inherit;True;Property;_GlowMask;Glow Mask;101;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;607;1056.279,-574.6116;Inherit;True;Property;_ScrollMask;Scroll Mask;111;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;593;484.5576,-309.3773;Inherit;True;Property;_ScrollTex;Scroll Tex;110;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;43;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;835;1512.257,1636.757;Inherit;True;Property;_NormalMap;Normal Map;13;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;b9275fa190e25044881bdca7115fc875;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;869;2479.349,2073.356;Inherit;True;Property;_CubemapTexture;Cubemap Texture;93;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;34b1a0522b0f44f48afe8efdffa7cb39;6d727751019dfb64a89da42f6849a10c;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;881;3479.681,2499.267;Inherit;True;Property;cubemapmask;Cubemap Mask;94;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4132.818,368.3005;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;48;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1329;4272.616,462.3673;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1330;4404.044,370.0581;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;88;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1344;5693.858,557.645;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1333;5360.396,560.8961;Inherit;False;Property;_Opacity;Opacity;0;0;Create;True;1;(Set Render Queue to Transparent);0;0;False;0;False;1;0.687;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1334;5244.906,795.86;Inherit;False;Property;_OutlineOpacity;Outline Opacity;57;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1331;5521.202,885.8962;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1338;5247.233,1082.771;Inherit;False;Property;_SilhouetteOutlineOpacity;Silhouette Outline Opacity;72;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1345;5668.947,789.9876;Inherit;False;Property;_OutlineuseBaseTextureAlpha;Outline use Base Texture Alpha;58;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1335;5519.101,1186.665;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;356;-863.6768,3372.434;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;359;-1390.678,3370.435;Inherit;False;Property;_BaseRotationCenter;Base Rotation Center;7;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;360;-1389.678,3492.435;Inherit;False;Property;_BaseRotationSpeed;Base Rotation Speed;8;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;358;-1153.678,3495.435;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;671;-1172.039,3360.03;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;-319.6341,3605.486;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;666;-124.6331,3507.487;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;668;-480.6349,3599.486;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;664;-477.6349,3384.489;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;-1147.558,3582.657;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;562;-1389.555,3578.147;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;-993.5477,3583.152;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;561;-1389.313,3658.448;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;6;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;667;-767.6353,3518.487;Inherit;True;Property;RotationMask;Base Rotation Mask;5;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1145;-147.2768,2961.257;Inherit;False;Property;_DetailTextureUV;Detail Texture UV;11;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1266;-407.7781,2861.809;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1267;-412.7781,2942.809;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;-410.7781,3020.809;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1269;-403.6331,3096.005;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1127;194.8091,3203.175;Inherit;True;Property;_DetailTexture;Detail Texture;10;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;2e95b1e0bcb542941860e026ce4a7130;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;76;180.778,2776.656;Inherit;True;Property;_MainTex;Base Texture;2;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;3bd151116756bea4bad06a7605dcd374;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1342;472.7307,2782.787;Inherit;False;Property;_BaseColor;Base Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1343;693.6508,2783.783;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1128;1475.982,3119.24;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1347;554.1479,2965.662;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1348;285.3319,3063.534;Inherit;False;Property;_VertexColorsOpacity;Vertex Colors Opacity;4;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1349;745.36,3015.963;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1350;740.2,2917.644;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1351;979.3319,2928.534;Inherit;False;Property;_VertexColorsToggle;Vertex Colors Toggle;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1134;1148.769,3262.105;Inherit;False;Property;_DetailTextureBlend;Detail Texture Opacity;12;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;883;2838.013,2224.182;Inherit;False;Property;_CubemapBlend;Cubemap Opacity;95;0;Create;False;0;0;0;False;0;False;1;0.016;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Opacity;39;0;Create;False;0;0;0;False;0;False;2;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1352;3181.871,962.4926;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1353;2976.623,955.6533;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1354;2634.826,935.234;Inherit;False;Property;_SpecularSoftness;Specular Softness;46;0;Create;True;0;0;0;False;0;False;0.01;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1355;2593.661,1009.531;Inherit;False;Property;_SpecularOffset;Specular Offset;47;0;Create;True;0;0;0;False;0;False;0;-0.27;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1356;2866.1,1033.096;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;878;3651.182,2349.667;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1346;5667.895,1077.277;Inherit;False;Property;_SilhouetteOutlineuseBaseTextureAlpha;Silhouette Outline use Base Texture Alpha;73;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1284;6278.084,751.4065;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.VertexColorNode;1362;5669.511,906.8081;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1363;5897.544,946.3311;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1365;5268.511,1394.808;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1366;5496.544,1434.331;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1368;3515.866,2364.823;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;1369;37.55204,-1082.245;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1370;74.49701,-920.4229;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1373;-276.3488,-917.863;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1376;876.5524,-361.2458;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1375;593.5524,-723.2458;Inherit;False;Property;_ScrollColor;Scroll Color;109;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1367;5683.544,1432.331;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineOpacity;Vertex Colors Define Silhouette Outline Opacity;84;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1364;6084.544,945.3311;Inherit;False;Property;_VertexColorsDefineOutlineOpacity;Vertex Colors Define Outline Opacity;70;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PosVertexDataNode;1385;-628.4587,-838.636;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;601;-330.3572,-485.3978;Inherit;False;Property;_ScrollTiling;Scroll Tiling;112;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.GetLocalVarNode;1394;-786.2039,-438.623;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1395;-791.2039,-357.6231;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1396;-789.2039,-279.6229;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1397;-782.0589,-204.427;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1398;-88.37471,-355.5841;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;2016.73,4535.777;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;677;2616.066,4549.952;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2191.467,4546.262;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;688;3146.196,4552.568;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2783.215,4551.973;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;2983.319,4552.103;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;823;3043.45,4779.874;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;32;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;771;2016.235,4702.186;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;31;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;14,14;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1151;3076.125,4960.695;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1152;3120.687,5111.923;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1153;3522.73,5014.459;Inherit;False;halftone;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1154;2925.125,5088.695;Inherit;True;0;0;1;0;1;True;1;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;15;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.SmoothstepOpNode;1155;3291.126,5012.695;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;2820.125,4976.695;Inherit;False;Property;_HalftoneShadowSoftness;Halftone Shadow Softness;34;0;Create;True;0;0;0;False;0;False;0.5;0.83;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1157;2665.688,5190.925;Inherit;False;Property;_HalftoneShadowScale;Halftone Shadow Scale;35;0;Create;True;0;0;0;False;0;False;15;249.57;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1158;1979.085,4984.65;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1159;2152.089,4984.65;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleDivideOpNode;1160;2317.089,5130.653;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1161;2195.493,5228.592;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1162;2452.033,5078.755;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenParams;1163;2010.489,5209.59;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1277;1603.822,5498.666;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;65;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1615.208,5785.874;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;66;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;1882.413,5741.707;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;1870.267,5516.391;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3259.394,5866.617;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;69;0;Create;True;0;0;0;False;0;False;0.008;0.003;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3258.394,5797.617;Inherit;False;Property;_OutlineMinSize;Outline Min Size;68;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3093.394,5692.614;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3081.919,5795.861;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;893;3464.394,5729.617;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2838.434,5809.04;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3612.919,5703.857;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2855.919,5719.857;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;67;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2280.306,5775.873;Inherit;False;Property;_OutlineColor;Outline Color;59;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.4433962,0.4433962,0.4433962,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2567.931,5650.249;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;61;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3476.972,5519.627;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;60;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1802.549,5647.152;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3374.766,4533.859;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0.5;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3301.404,5568.583;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;2550.923,6276.467;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1289;2539.448,6379.714;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;1290;2921.923,6313.469;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1291;2295.964,6392.892;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;1858.255,6346.691;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode;1297;2965.636,6094.125;Inherit;False;Property;_SilhouetteColor;Silhouette Color;74;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1299;2714.249,6463.06;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;83;0;Create;True;0;0;0;False;0;False;0.016;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;2256.448,6099.711;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;81;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1302;3179.695,6133.44;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;75;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1303;1640.602,6328.28;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1304;1628.051,6443.858;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;80;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1306;2711.923,6385.469;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;82;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;1736.666,6142.65;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1305;3456.489,6039.001;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1316;2449.971,6893.286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;2289.972,6893.286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1318;2161.972,6892.286;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1319;2609.969,6887.286;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;3138.838,6717.163;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1322;1697.972,6861.286;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1323;1921.974,6781.286;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;1697.972,6701.286;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1326;2283.111,6992.179;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;89;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1327;1857.973,7037.286;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;90;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;3075.365,6938.562;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Blend;91;0;Create;True;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1325;2859.872,6741.198;Inherit;False;1305;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1321;3374.782,6746.897;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1340;2116.775,6235.435;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1341;2094.432,5589.685;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode;676;2336.002,4548.376;Inherit;True;Property;_ShadowTexture;Shadow Texture;30;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;b9552255b337ed1468609738595c184a;b9552255b337ed1468609738595c184a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2252.028,5538.622;Inherit;True;Property;OutlineTexture;Outline Texture;62;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1301;2660.373,6091.511;Inherit;True;Property;AuraTexture1;Silhouette Texture;76;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1285;3815.438,6153.313;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1377;3612.218,6369.981;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1378;3161.827,6377.102;Inherit;False;Constant;_Float1;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1379;3116.863,6454.632;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1380;3304.896,6408.155;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineThickness;Vertex Colors Define Silhouette Outline Thickness;85;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;3081.406,6273.468;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1381;4248.854,5737.728;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1382;3798.462,5744.848;Inherit;False;Constant;_Float2;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1383;3753.498,5822.378;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1384;3941.531,5775.9;Inherit;False;Property;_VertexColorsDefineOutlineThickness;Vertex Colors Define Outline Thickness;71;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector4Node;381;2384.472,3301.151;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1165;2750.621,2897.708;Inherit;False;1153;halftone;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2266.339,3087.769;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;74;2588.857,3087.641;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2385.402,3084.613;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;1979.893,3103.593;Float;False;Property;_ShadowOffset;Shadow Offset;28;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;1985.968,3185.28;Float;False;Property;_ShadowSoftness;Shadow Softness;27;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1164;2747.081,3082.372;Inherit;False;Property;_HalftoneShadowToggle;Halftone Shadow Toggle;33;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;406;3010.068,2956.991;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;624;1975.337,2920.268;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;23;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;378;2226.685,2916.291;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3293.087,2995.224;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3546.286,3203.749;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;29;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;3373.658,3239.113;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.OneMinusNode;1357;2849.764,3207.294;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1358;2579.764,3199.294;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;26;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1359;3009.764,3200.294;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1360;3152.764,3195.294;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;408;3394.683,2913.619;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3930.41,2947.221;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;970;2602.333,3313.708;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;22;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1403;2589.924,3532.341;Inherit;False;Property;_GameLightStrength;Game Light Strength;24;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1404;2908.4,3448.407;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1399;2109.549,2830.357;Inherit;False;Property;_GameShadowStrength;Game Shadow Strength;25;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1400;2478.4,2853.407;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1401;3328.638,3103.232;Inherit;False;Property;_WorldLightStrength;World Light Strength;21;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1402;3595.638,2898.232;Inherit;True;3;0;COLOR;1,1,1,0;False;1;COLOR;1,1,1,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1405;-348.1028,-1299.759;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RotatorNode;1406;-140.1028,-1283.759;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1407;51.89717,-1283.759;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1408;-620.1028,-1299.759;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1393;-572.2039,-390.6231;Inherit;False;Property;_ScrollingBaseUVMap;Scrolling Base UV Map;108;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1409;371.8972,-595.7594;Inherit;False;Property;_ScrollingUVSelection;Scrolling UV Selection;107;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode;1410;1165.26,5543.331;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;1411;1170.599,5358.486;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1412;1111.674,5810.218;Inherit;False;Property;_OutlineTextureBaseUVMap;Outline Texture Base UV Map;64;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1413;1418.008,5642.044;Inherit;False;Property;_OutlineTextureUVSelection;Outline Texture UV Selection;63;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.PosVertexDataNode;1414;906.9728,6194.43;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;1415;912.3118,6009.585;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1416;656.3847,6415.317;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1417;651.3847,6496.317;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1418;653.3847,6574.317;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1419;660.5297,6649.514;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1420;1159.721,6293.144;Inherit;False;Property;_SilhouetteTextureUVSelection;Silhouette Texture UV Selection;77;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;1421;853.3859,6461.317;Inherit;False;Property;_SilhouetteTextureBaseUVMap;Silhouette Texture Base UV Map;78;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1309;1439.866,6120.049;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;79;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
WireConnection;589;0;591;0
WireConnection;589;1;603;0
WireConnection;589;2;590;0
WireConnection;597;0;598;0
WireConnection;597;2;605;0
WireConnection;598;0;1398;0
WireConnection;598;2;604;0
WireConnection;604;0;606;0
WireConnection;618;0;619;0
WireConnection;619;0;620;0
WireConnection;621;0;618;0
WireConnection;623;0;619;0
WireConnection;588;0;607;1
WireConnection;588;1;1376;0
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
WireConnection;614;0;616;0
WireConnection;614;1;613;0
WireConnection;851;0;853;0
WireConnection;851;1;1230;0
WireConnection;853;0;54;0
WireConnection;853;1;854;0
WireConnection;852;0;851;0
WireConnection;866;0;855;0
WireConnection;866;1;867;0
WireConnection;855;1;1404;0
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
WireConnection;1063;0;1352;0
WireConnection;1063;1;1064;0
WireConnection;1074;0;409;0
WireConnection;1074;1;1073;0
WireConnection;1065;0;1063;0
WireConnection;1065;1;1074;0
WireConnection;590;0;614;0
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
WireConnection;877;0;835;0
WireConnection;1129;0;1351;0
WireConnection;1129;1;1128;0
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
WireConnection;1173;0;409;0
WireConnection;1173;1;1212;0
WireConnection;1173;2;878;0
WireConnection;1212;0;409;0
WireConnection;1212;1;882;0
WireConnection;1212;2;1213;0
WireConnection;1099;0;409;0
WireConnection;1099;1;1173;0
WireConnection;1088;0;1330;0
WireConnection;1088;1;1087;0
WireConnection;1311;0;1302;0
WireConnection;1311;1;1312;0
WireConnection;472;0;1314;0
WireConnection;472;1;589;0
WireConnection;1314;0;1088;0
WireConnection;1314;1;1313;0
WireConnection;1313;0;1088;0
WireConnection;1313;1;1311;0
WireConnection;1174;1;1177;0
WireConnection;1174;2;1215;0
WireConnection;1174;3;1179;0
WireConnection;1087;0;1330;0
WireConnection;1087;1;1065;0
WireConnection;1281;0;472;0
WireConnection;1281;1;1344;0
WireConnection;1261;1;1264;0
WireConnection;593;1;1409;0
WireConnection;1060;1;1140;0
WireConnection;835;1;1121;0
WireConnection;835;5;1100;0
WireConnection;869;1;877;0
WireConnection;475;0;1099;0
WireConnection;475;1;860;0
WireConnection;1329;0;475;0
WireConnection;1329;1;1321;0
WireConnection;1330;0;475;0
WireConnection;1330;1;1329;0
WireConnection;1344;0;76;4
WireConnection;1344;1;1333;0
WireConnection;1331;0;76;4
WireConnection;1331;1;1334;0
WireConnection;1345;0;1334;0
WireConnection;1345;1;1331;0
WireConnection;1335;0;1338;0
WireConnection;1335;1;76;4
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
WireConnection;560;0;562;0
WireConnection;560;1;561;0
WireConnection;559;1;560;0
WireConnection;1145;1;1266;0
WireConnection;1145;0;1267;0
WireConnection;1145;2;1268;0
WireConnection;1145;3;1269;0
WireConnection;1127;1;1145;0
WireConnection;76;1;666;0
WireConnection;1343;0;76;0
WireConnection;1343;1;1342;0
WireConnection;1128;0;1127;0
WireConnection;1128;1;1351;0
WireConnection;1128;2;1134;0
WireConnection;1349;0;1343;0
WireConnection;1349;1;1350;0
WireConnection;1349;2;1348;0
WireConnection;1350;0;1343;0
WireConnection;1350;1;1347;0
WireConnection;1351;0;1343;0
WireConnection;1351;1;1349;0
WireConnection;1352;0;1353;0
WireConnection;1353;0;1356;0
WireConnection;1353;1;1354;0
WireConnection;1356;0;1355;0
WireConnection;1356;1;1046;0
WireConnection;878;0;1368;0
WireConnection;878;1;881;0
WireConnection;1346;0;1338;0
WireConnection;1346;1;1335;0
WireConnection;1284;0;924;0
WireConnection;1284;1;1364;0
WireConnection;1284;2;1381;0
WireConnection;1363;0;1362;0
WireConnection;1363;1;1345;0
WireConnection;1366;0;1365;0
WireConnection;1366;1;1346;0
WireConnection;1368;0;1174;0
WireConnection;1369;0;1373;0
WireConnection;1369;2;604;0
WireConnection;1370;0;1369;0
WireConnection;1370;2;605;0
WireConnection;1373;0;1385;0
WireConnection;1373;1;601;0
WireConnection;1376;0;593;0
WireConnection;1376;1;1375;0
WireConnection;1367;0;1346;0
WireConnection;1367;1;1366;0
WireConnection;1364;0;1345;0
WireConnection;1364;1;1363;0
WireConnection;1398;0;1393;0
WireConnection;1398;1;601;0
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
WireConnection;1274;0;1276;0
WireConnection;1274;1;1275;0
WireConnection;1279;0;1413;0
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
WireConnection;923;0;472;0
WireConnection;923;1;1272;0
WireConnection;1288;0;1300;0
WireConnection;1288;1;1291;0
WireConnection;1290;0;1288;0
WireConnection;1290;1;1306;0
WireConnection;1290;2;1299;0
WireConnection;1295;0;1303;0
WireConnection;1295;1;1304;0
WireConnection;1302;0;1297;0
WireConnection;1302;1;1301;0
WireConnection;1308;0;1420;0
WireConnection;1308;1;1309;0
WireConnection;1305;0;1302;0
WireConnection;1316;0;1317;0
WireConnection;1317;0;1318;0
WireConnection;1318;0;1323;0
WireConnection;1318;1;1327;0
WireConnection;1319;0;1316;0
WireConnection;1319;1;1326;0
WireConnection;1320;0;1319;0
WireConnection;1320;1;1325;0
WireConnection;1323;0;1324;0
WireConnection;1323;1;1322;0
WireConnection;1321;0;1320;0
WireConnection;1321;1;1328;0
WireConnection;1340;0;1308;0
WireConnection;1340;1;1295;0
WireConnection;1341;0;1279;0
WireConnection;1341;1;1274;0
WireConnection;676;1;768;0
WireConnection;1271;1;1341;0
WireConnection;1301;1;1340;0
WireConnection;1285;0;1302;0
WireConnection;1285;1;1367;0
WireConnection;1285;2;1377;0
WireConnection;1377;0;1292;0
WireConnection;1377;1;1380;0
WireConnection;1380;0;1378;0
WireConnection;1380;1;1379;0
WireConnection;1292;0;1289;0
WireConnection;1292;1;1290;0
WireConnection;1381;0;888;0
WireConnection;1381;1;1384;0
WireConnection;1384;0;1382;0
WireConnection;1384;1;1383;0
WireConnection;58;0;54;0
WireConnection;58;1;59;0
WireConnection;74;0;57;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;1164;0;74;0
WireConnection;1164;1;1165;0
WireConnection;406;0;1400;0
WireConnection;406;1;1404;0
WireConnection;406;2;1360;0
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;769;0;1280;0
WireConnection;769;1;822;0
WireConnection;1280;0;857;0
WireConnection;1280;1;1129;0
WireConnection;1357;0;1358;0
WireConnection;1359;0;1164;0
WireConnection;1359;1;1357;0
WireConnection;1360;0;1359;0
WireConnection;409;0;769;0
WireConnection;409;1;1402;0
WireConnection;1404;0;970;0
WireConnection;1404;1;381;0
WireConnection;1404;2;1403;0
WireConnection;1400;0;624;0
WireConnection;1400;1;378;0
WireConnection;1400;2;1399;0
WireConnection;1402;1;408;0
WireConnection;1402;2;1401;0
WireConnection;1405;0;1408;0
WireConnection;1405;1;601;0
WireConnection;1406;0;1405;0
WireConnection;1406;2;604;0
WireConnection;1407;0;1406;0
WireConnection;1407;2;605;0
WireConnection;1393;1;1394;0
WireConnection;1393;0;1395;0
WireConnection;1393;2;1396;0
WireConnection;1393;3;1397;0
WireConnection;1409;1;597;0
WireConnection;1409;0;1407;0
WireConnection;1409;2;1370;0
WireConnection;1413;1;1412;0
WireConnection;1413;0;1411;0
WireConnection;1413;2;1410;0
WireConnection;1420;1;1421;0
WireConnection;1420;0;1415;0
WireConnection;1420;2;1414;0
WireConnection;1421;1;1416;0
WireConnection;1421;0;1417;0
WireConnection;1421;2;1418;0
WireConnection;1421;3;1419;0
ASEEND*/
//CHKSM=F989D10D311B8DEEB7AFD4DB695EA8D4476B1C17