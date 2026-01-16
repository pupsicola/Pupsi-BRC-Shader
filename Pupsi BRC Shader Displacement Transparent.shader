// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Shader (Displacement Transparent)"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		_Opacity("Opacity", Range( 0 , 1)) = 0.5
		_BaseColor("Base Color", Color) = (1,1,1,0)
		[NoScaleOffset][BigTexture]_MainTex("Base Texture", 2D) = "white" {}
		[Toggle]_ToggleScreenColorasBaseTexture("Toggle Screen Color as Base Texture", Float) = 0
		_ScreenColorDistortionTexture("Screen Color Distortion Texture", 2D) = "bump" {}
		_ScreenColorDistortionAmount("Screen Color Distortion Amount", Range( 0 , 1)) = 0.1
		_ScreenColorDistortionTiling("Screen Color Distortion Tiling", Vector) = (0.5,0.5,0,0)
		_ScreenColorDistortionScrolling("Screen Color Distortion Scrolling", Vector) = (0.5,0.5,0,0)
		[Toggle]_VertexColorsToggle("Vertex Colors Toggle", Float) = 1
		_VertexColorsOpacity("Vertex Colors Opacity", Range( 0 , 1)) = 1
		[Toggle]_ToggleDisplacement("Toggle Displacement", Float) = 0
		_DisplacementMultiplier("Displacement Multiplier", Float) = 0.01
		_DisplacementMinSize("Displacement Min Size", Float) = 0.01
		_DisplacementMaxSize("Displacement Max Size", Float) = 0.016
		[NoScaleOffset][BigTexture]_DisplacementTexture("Displacement Texture", 2D) = "white" {}
		[Toggle]_DisplacementusesVertexPositionUV("Displacement uses Vertex Position UV", Float) = 1
		_DisplacementTiling("Displacement Tiling", Vector) = (1,1,0,0)
		_DisplacementOffset("Displacement Offset", Vector) = (0,0,0,0)
		_DisplacementScrolling("Displacement Scrolling", Vector) = (0,1,0,0)
		_DisplacementRotation("Displacement Rotation", Range( 0 , 360)) = 0
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
		_EmissionHue("Emission Hue", Range( 0 , 1)) = 0
		_EmissionEmit("Emission Emit", Float) = 1
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		_CustomShadowColor("Custom Shadow Color", Color) = (0,0,0,0)
		_ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
		_ShadowIntensity("Shadow Intensity", Range( 0 , 1)) = 1
		_ShadowOffset("Shadow Offset", Range( -1 , 1)) = 0
		[Toggle]_ShadowTextureToggle("Shadow Texture Toggle", Float) = 1
		[NoScaleOffset][BigTexture]_ShadowTexture("Shadow Texture", 2D) = "white" {}
		_ShadowTextureTiling("Shadow Texture Tiling", Vector) = (14,14,0,0)
		_ShadowTextureBlend("Shadow Texture Blend", Range( 0 , 1)) = 0.5
		[Toggle]_HalftoneShadowToggle("Halftone Shadow Toggle", Float) = 0
		_HalftoneShadowSoftness("Halftone Shadow Softness", Float) = 0.5
		_HalftoneShadowScale("Halftone Shadow Scale", Float) = 15
		[Toggle]_ExtraLightToggle("Extra Light Toggle", Float) = 1
		_ExtraLightOffset("Extra Light Offset", Range( -1 , 0)) = -0.6
		_ExtraLightSoftness("Extra Light Softness", Range( 0.01 , 2)) = 0.01
		_ExtraLightBlend("Extra Light Opacity", Range( 0 , 10)) = 2
		[Toggle]_SpecularToggle("Specular Toggle", Float) = 1
		[Toggle]_SpecularCustomColorToggle("Specular Custom Color Toggle", Float) = 0
		_SpecularCustomColor("Specular Custom Color", Color) = (1,1,1,0)
		[NoScaleOffset][BigTexture]_SpecularMask("Specular Mask", 2D) = "white" {}
		[KeywordEnum(UV0,UV1,UV2,UV3)] _SpecularMaskUV("Specular Mask UV", Float) = 0
		_SpecularBrightness("Specular Brightness", Float) = 1
		_SpecularSoftness("Specular Softness", Range( 0 , 2)) = 0.01
		_SpecularOffset("Specular Offset", Range( -1 , 1)) = 1
		[Toggle]_RimLightShadowToggle("Rim Light/Shadow Toggle", Float) = 1
		_RimLightColor("Rim Light Color", Color) = (1,1,1,1)
		[Toggle]_RimLightBlendBaseTexture("Rim Light Blend Base Texture", Float) = 1
		_RimLightPower("Rim Light Power", Range( 0.01 , 10)) = 0.01
		_RimLightOffset("Rim Light Offset", Range( 0 , 1)) = 0.65
		_RimLightBlend("Rim Light Opacity", Range( 0 , 25)) = 25
		_RimShadowPower("Rim Shadow Power", Range( 0.01 , 10)) = 10
		_RimShadowOffset("Rim Shadow Offset", Range( -1 , 1)) = 0.65
		_RimShadowOpacity("Rim Shadow Opacity", Range( 0 , 1)) = 0.6676344
		_OutlineOpacity("Outline Opacity", Range( 0 , 1)) = 0.5
		[Toggle]_OutlineOpacityuseBaseTextureOpacity("Outline Opacity use Base Texture Opacity", Float) = 0
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		[Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
		[NoScaleOffset][BigTexture]OutlineTexture("Outline Texture", 2D) = "white" {}
		[KeywordEnum(BaseUV,ScreenPosition,VertexPosition)] _OutlineTextureUVSelection("Outline Texture UV Selection", Float) = 0
		[KeywordEnum(UV0,UV1,UV2,UV3)] _OutlineTextureBaseUVMap("Outline Texture Base UV Map", Float) = 0
		_OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
		_OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_VertexColorsDefineOutlineOpacity("Vertex Colors Define Outline Opacity", Float) = 0
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		[NoScaleOffset][BigTexture]_OutlineDisplacementTexture("Outline Displacement Texture", 2D) = "white" {}
		[Toggle]_OutlineDisplacementVertexPositionUV("Outline Displacement Vertex Position UV", Float) = 1
		_OutlineDisplacementTiling("Outline Displacement Tiling", Vector) = (1,1,0,0)
		_OutlineDisplacementOffset("Outline Displacement Offset", Vector) = (0,0,0,0)
		_OutlineDisplacementRotation("Outline Displacement Rotation", Range( 0 , 360)) = 0
		_OutlineDisplacementScrolling("Outline Displacement Scrolling", Vector) = (0,1,0,0)
		[Toggle]_VertexColorsDefineOutlineThickness("Vertex Colors Define Outline Thickness", Float) = 0
		_SilhouetteOpacity("Silhouette Opacity", Range( 0 , 1)) = 0.5
		_SilhouetteEmit("Silhouette Emit", Float) = 1
		_SilhouetteColor("Silhouette Color", Color) = (1,1,1,1)
		[Toggle]_VertexColorsDefineSilhouetteOutlineOpacity("Vertex Colors Define Silhouette Outline Opacity", Float) = 0
		[Toggle]_SilhouetteTextureToggle("Silhouette Texture Toggle", Float) = 0
		[NoScaleOffset][BigTexture]AuraTexture1("Silhouette Texture", 2D) = "white" {}
		[KeywordEnum(BaseUV,ScreenPosition,VertexPosition)] _SilhouetteTextureUVSelection("Silhouette Texture UV Selection", Float) = 0
		[KeywordEnum(UV0,UV1,UV2,UV3)] _SilhouetteTextureBaseUVMap("Silhouette Texture Base UV Map", Float) = 0
		_SilhouetteTextureTiling("Silhouette Texture Tiling", Vector) = (1,1,0,0)
		_SilhouetteTextureScroll("Silhouette Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_UseSilhouetteTextureasAlphaMask("Use Silhouette Texture as Alpha Mask", Float) = 0
		_SilhouetteOpacityFresnelScale("Silhouette Opacity Fresnel Scale", Float) = 1
		_SilhouetteOpacityFresnelPower("Silhouette Opacity Fresnel Power", Float) = 1
		_WorldLightStrength("World Light Strength", Range( 0 , 1)) = 1
		_GameLightStrength("Game Light Strength", Range( 0 , 1)) = 1
		[Toggle]_InvertSilhouetteOpacityFresnel("Invert Silhouette Opacity Fresnel", Float) = 0
		_SilhouetteMultiplier("Silhouette Multiplier", Float) = 0.01
		_GameShadowStrength("Game Shadow Strength", Range( 0 , 1)) = 1
		_SilhouetteMinSize("Silhouette Min Size", Float) = 0.01
		_SilhouetteMaxSize("Silhouette Max Size", Float) = 0.016
		[NoScaleOffset][BigTexture]_SilhouetteDisplacementTexture("Silhouette Displacement Texture", 2D) = "white" {}
		[Toggle]_SilhouetteDisplacementVertexPositionUV("Silhouette Displacement Vertex Position UV", Float) = 1
		_SilhouetteDisplacementTiling("Silhouette Displacement Tiling", Vector) = (1,1,0,0)
		_SilhouetteDisplacementOffset("Silhouette Displacement Offset", Vector) = (0,0,0,0)
		_SilhouetteDisplacementRotation("Silhouette Displacement Rotation", Range( 0 , 360)) = 0
		_SilhouetteDisplacementScrolling("Silhouette Displacement Scrolling", Vector) = (0,1,0,0)
		[Toggle]_VertexColorsDefineSilhouetteOutlineThickness("Vertex Colors Define Silhouette Outline Thickness", Float) = 0
		[Toggle]_SilhouetteOverlay("Silhouette Overlay", Float) = 0
		_SilhouetteOverlayOpacity("Silhouette Overlay Opacity", Range( 0 , 1)) = 0
		[Toggle]_SilhouetteRimLightToggle("Silhouette Rim Light Toggle", Float) = 0
		_SilhouetteRimLightPower("Silhouette Rim Light Power", Range( 0.01 , 10)) = 0.7925499
		_SilhouetteRimLightOffset("Silhouette Rim Light Offset", Range( 0 , 1)) = 0.65
		_SilhouetteRimLightBlend("Silhouette Rim Light Opacity", Range( 0 , 25)) = 25
		[Toggle]_CubemapToggle("Cubemap Toggle", Float) = 0
		[NoScaleOffset][BigTexture]_CubemapTexture("Cubemap Texture", CUBE) = "white" {}
		[NoScaleOffset][BigTexture]cubemapmask("Cubemap Mask", 2D) = "white" {}
		_CubemapBlend("Cubemap Opacity", Range( 0 , 1)) = 1
		_CubemapColorize("Cubemap Colorize", Range( 0 , 1)) = 0
		_CubemapFresnelBias("Cubemap Fresnel Bias", Range( 0 , 1)) = 0.5
		_CubemapFresnelScale("Cubemap Fresnel Scale", Float) = 0
		_CubemapFresnelPower("Cubemap Fresnel Power", Range( 0 , 15)) = 1
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

		GrabPass{ }

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
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3

			//This is a late directive
			
			uniform float _ToggleDisplacement;
			uniform float _DisplacementMultiplier;
			uniform float _DisplacementMinSize;
			uniform float _DisplacementMaxSize;
			uniform sampler2D _DisplacementTexture;
			uniform float _DisplacementusesVertexPositionUV;
			uniform float2 _DisplacementScrolling;
			uniform float2 _DisplacementTiling;
			uniform float2 _DisplacementOffset;
			uniform float _DisplacementRotation;
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
			uniform float _ToggleScreenColorasBaseTexture;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform sampler2D _ScreenColorDistortionTexture;
			uniform float2 _ScreenColorDistortionTiling;
			uniform float2 _ScreenColorDistortionScrolling;
			uniform float _ScreenColorDistortionAmount;
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
			uniform sampler2D _SpecularMask;
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
			uniform float _EmissionEmit;
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
			
			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
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

				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade1547 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult1546 = clamp( ( _DisplacementMultiplier * cameraDepthFade1547 ) , _DisplacementMinSize , _DisplacementMaxSize );
				float2 texCoord1556 = v.ase_texcoord.xyz * _DisplacementTiling + _DisplacementOffset;
				float temp_output_1532_0 = radians( _DisplacementRotation );
				float cos1557 = cos( temp_output_1532_0 );
				float sin1557 = sin( temp_output_1532_0 );
				float2 rotator1557 = mul( texCoord1556 - float2( 0.5,0.5 ) , float2x2( cos1557 , -sin1557 , sin1557 , cos1557 )) + float2( 0.5,0.5 );
				float2 panner1558 = ( 1.0 * _Time.y * _DisplacementScrolling + rotator1557);
				float cos1531 = cos( temp_output_1532_0 );
				float sin1531 = sin( temp_output_1532_0 );
				float2 rotator1531 = mul( ( ( v.vertex.xyz * float3( _DisplacementTiling ,  0.0 ) ) + float3( _DisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1531 , -sin1531 , sin1531 , cos1531 )) + float2( 0.5,0.5 );
				float2 panner1530 = ( 1.0 * _Time.y * _DisplacementScrolling + rotator1531);
				
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

				v.vertex.xyz += (( _ToggleDisplacement )?( ( float4( ( v.normal * clampResult1546 ) , 0.0 ) * tex2Dlod( _DisplacementTexture, float4( (( _DisplacementusesVertexPositionUV )?( panner1530 ):( panner1558 )), 0, 0.0) ) ) ):( float4( 0,0,0,0 ) )).rgb;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float4 lerpResult1601 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1605 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
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
				float4 lerpResult406 = lerp( lerpResult1601 , lerpResult1605 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1605 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float mulTime1569 = _Time.y * 0.1;
				float2 texCoord1571 = i.ase_texcoord1.xyz.xy * _ScreenColorDistortionTiling + ( _ScreenColorDistortionScrolling * mulTime1569 );
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float4 screenColor1566 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,( float4( UnpackScaleNormal( tex2D( _ScreenColorDistortionTexture, texCoord1571 ), _ScreenColorDistortionAmount ) , 0.0 ) + ase_grabScreenPosNorm ).xy);
				float4 temp_output_1356_0 = ( (( _ToggleScreenColorasBaseTexture )?( float4( (screenColor1566).rgb , 0.0 ) ):( tex2DNode76 )) * _BaseColor );
				float4 lerpResult1362 = lerp( temp_output_1356_0 , ( temp_output_1356_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1603 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1603 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1379 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1379 * tex2D( cubemapmask, uvcubemapmask881 ) ));
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
				float2 staticSwitch1625 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1625 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1625 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1625 = UV31136;
				#else
				float2 staticSwitch1625 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1626 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1626 = float4( i.ase_texcoord10.xyz , 0.0 );
				#else
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#endif
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( staticSwitch1626 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor ));
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
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1598 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1598 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1598 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1598 = UV31136;
				#else
				float2 staticSwitch1598 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1598 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1607 = cos( temp_output_604_0 );
				float sin1607 = sin( temp_output_604_0 );
				float2 rotator1607 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1607 , -sin1607 , sin1607 , cos1607 )) + float2( 0.5,0.5 );
				float2 panner1608 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1607);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( i.ase_texcoord10.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1610 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1610 = panner1608;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1610 = panner1437;
				#else
				float2 staticSwitch1610 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1610 ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				

				outColor = temp_output_472_0.rgb;
				outAlpha = ( tex2DNode76.a * _Opacity );
				clip(outAlpha);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		GrabPass{ }

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
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

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
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3


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
			uniform sampler2D _OutlineDisplacementTexture;
			uniform float2 _OutlineDisplacementScrolling;
			uniform float _OutlineDisplacementVertexPositionUV;
			uniform float2 _OutlineDisplacementTiling;
			uniform float2 _OutlineDisplacementOffset;
			uniform float _OutlineDisplacementRotation;
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
			uniform float _ToggleScreenColorasBaseTexture;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform sampler2D _ScreenColorDistortionTexture;
			uniform float2 _ScreenColorDistortionTiling;
			uniform float2 _ScreenColorDistortionScrolling;
			uniform float _ScreenColorDistortionAmount;
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
			uniform sampler2D _SpecularMask;
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
			uniform float _EmissionEmit;
			uniform float _VertexColorsDefineOutlineOpacity;
			uniform float _OutlineOpacityuseBaseTextureOpacity;
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
			
			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
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
				float2 texCoord1589 = v.ase_texcoord.xyz * float2( 1,1 ) + float2( 0,0 );
				float cos1476 = cos( radians( _OutlineDisplacementRotation ) );
				float sin1476 = sin( radians( _OutlineDisplacementRotation ) );
				float2 rotator1476 = mul( ( ( (( _OutlineDisplacementVertexPositionUV )?( v.vertex.xyz ):( float3( texCoord1589 ,  0.0 ) )) * float3( _OutlineDisplacementTiling ,  0.0 ) ) + float3( _OutlineDisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1476 , -sin1476 , sin1476 , cos1476 )) + float2( 0.5,0.5 );
				float2 panner1475 = ( 1.0 * _Time.y * _OutlineDisplacementScrolling + rotator1476);
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord3 = screenPos;
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
				
				o.ase_texcoord.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord1.xy = v.ase_texcoord1.xy;
				o.ase_texcoord1.zw = v.ase_texcoord2.xy;
				o.ase_texcoord2.xy = v.ase_texcoord3.xy;
				o.ase_texcoord4 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord2.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;
				o.ase_texcoord8.w = 0;
				o.ase_texcoord9.w = 0;

				v.vertex.xyz += ( ( float4( ( v.ase_normal * clampResult893 ) , 0.0 ) * (( _VertexColorsDefineOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ) * tex2Dlod( _OutlineDisplacementTexture, float4( panner1475, 0, 0.0) ) ).rgb;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outOutlineColor;
				float outOutlineAlpha;

				float2 texCoord1110 = i.ase_texcoord.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01113 = texCoord1110;
				float2 texCoord1111 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11114 = texCoord1111;
				float2 texCoord1112 = i.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21115 = texCoord1112;
				float2 texCoord1135 = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31136 = texCoord1135;
				#if defined(_OUTLINETEXTUREBASEUVMAP_UV0)
				float2 staticSwitch1617 = UV01113;
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1617 = UV11114;
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1617 = UV21115;
				#elif defined(_OUTLINETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1617 = UV31136;
				#else
				float2 staticSwitch1617 = UV01113;
				#endif
				float4 screenPos = i.ase_texcoord3;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_OUTLINETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1618 = float4( staticSwitch1617, 0.0 , 0.0 );
				#elif defined(_OUTLINETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1618 = ase_screenPosNorm;
				#elif defined(_OUTLINETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1618 = float4( i.ase_texcoord4.xyz , 0.0 );
				#else
				float4 staticSwitch1618 = float4( staticSwitch1617, 0.0 , 0.0 );
				#endif
				float4 tex2DNode1271 = tex2D( OutlineTexture, ( ( staticSwitch1618 * float4( _OutlineTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _OutlineTextureScroll ), 0.0 , 0.0 ) ).xy );
				float4 lerpResult1601 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1605 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
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
				float4 lerpResult406 = lerp( lerpResult1601 , lerpResult1605 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1605 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float mulTime1569 = _Time.y * 0.1;
				float2 texCoord1571 = i.ase_texcoord.xyz.xy * _ScreenColorDistortionTiling + ( _ScreenColorDistortionScrolling * mulTime1569 );
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float4 screenColor1566 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,( float4( UnpackScaleNormal( tex2D( _ScreenColorDistortionTexture, texCoord1571 ), _ScreenColorDistortionAmount ) , 0.0 ) + ase_grabScreenPosNorm ).xy);
				float4 temp_output_1356_0 = ( (( _ToggleScreenColorasBaseTexture )?( float4( (screenColor1566).rgb , 0.0 ) ):( tex2DNode76 )) * _BaseColor );
				float4 lerpResult1362 = lerp( temp_output_1356_0 , ( temp_output_1356_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1603 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1603 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1379 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1379 * tex2D( cubemapmask, uvcubemapmask881 ) ));
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
				float2 staticSwitch1625 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1625 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1625 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1625 = UV31136;
				#else
				float2 staticSwitch1625 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1626 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1626 = float4( i.ase_texcoord4.xyz , 0.0 );
				#else
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#endif
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( staticSwitch1626 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor ));
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
				float2 uv_ScrollMask607 = i.ase_texcoord.xyz.xy;
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1598 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1598 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1598 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1598 = UV31136;
				#else
				float2 staticSwitch1598 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1598 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1607 = cos( temp_output_604_0 );
				float sin1607 = sin( temp_output_604_0 );
				float2 rotator1607 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1607 , -sin1607 , sin1607 , cos1607 )) + float2( 0.5,0.5 );
				float2 panner1608 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1607);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( i.ase_texcoord4.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1610 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1610 = panner1608;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1610 = panner1437;
				#else
				float2 staticSwitch1610 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1610 ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				
				float temp_output_1488_0 = ( (( _OutlineOpacityuseBaseTextureOpacity )?( tex2DNode76.a ):( 1.0 )) * _OutlineOpacity );
				float4 temp_cast_123 = (temp_output_1488_0).xxxx;
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2DNode1271 ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2DNode1271 ):( _OutlineColor )) )).rgb;
				outOutlineAlpha = ( (( _VertexColorsDefineOutlineOpacity )?( ( i.ase_color * temp_output_1488_0 ) ):( temp_cast_123 )) * tex2DNode1271.a ).r;
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
			#define ASE_NEEDS_FRAG_COLOR
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
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
			};

			uniform float _SilhouetteMultiplier;
			uniform float _SilhouetteMinSize;
			uniform float _SilhouetteMaxSize;
			uniform float _VertexColorsDefineSilhouetteOutlineThickness;
			uniform sampler2D _SilhouetteDisplacementTexture;
			uniform float2 _SilhouetteDisplacementScrolling;
			uniform float _SilhouetteDisplacementVertexPositionUV;
			uniform float2 _SilhouetteDisplacementTiling;
			uniform float2 _SilhouetteDisplacementOffset;
			uniform float _SilhouetteDisplacementRotation;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteEmit;
			uniform float _InvertSilhouetteOpacityFresnel;
			uniform float _SilhouetteOpacityFresnelScale;
			uniform float _SilhouetteOpacityFresnelPower;
			uniform float _UseSilhouetteTextureasAlphaMask;
			uniform float _VertexColorsDefineSilhouetteOutlineOpacity;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform float _SilhouetteOpacity;


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
				float2 texCoord1581 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float cos1463 = cos( radians( _SilhouetteDisplacementRotation ) );
				float sin1463 = sin( radians( _SilhouetteDisplacementRotation ) );
				float2 rotator1463 = mul( ( ( (( _SilhouetteDisplacementVertexPositionUV )?( v.vertex.xyz ):( float3( texCoord1581 ,  0.0 ) )) * float3( _SilhouetteDisplacementTiling ,  0.0 ) ) + float3( _SilhouetteDisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1463 , -sin1463 , sin1463 , cos1463 )) + float2( 0.5,0.5 );
				float2 panner1464 = ( 1.0 * _Time.y * _SilhouetteDisplacementScrolling + rotator1463);
				
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord2 = screenPos;
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord4.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord5.xyz = ase_worldNormal;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				o.ase_texcoord.zw = v.ase_texcoord1.xy;
				o.ase_texcoord1.xy = v.ase_texcoord2.xy;
				o.ase_texcoord1.zw = v.ase_texcoord3.xy;
				o.ase_texcoord3 = v.vertex;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				v.vertex.xyz += ( ( float4( ( v.ase_normal * clampResult1290 ) , 0.0 ) * (( _VertexColorsDefineSilhouetteOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ) * tex2Dlod( _SilhouetteDisplacementTexture, float4( panner1464, 0, 0.0) ) ).rgb;
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
				float2 staticSwitch1625 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1625 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1625 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1625 = UV31136;
				#else
				float2 staticSwitch1625 = UV01113;
				#endif
				float4 screenPos = i.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1626 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1626 = float4( i.ase_texcoord3.xyz , 0.0 );
				#else
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#endif
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( staticSwitch1626 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy );
				
				float3 ase_worldPos = i.ase_texcoord4.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord5.xyz;
				float fresnelNdotV1496 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode1496 = ( 0.0 + _SilhouetteOpacityFresnelScale * pow( 1.0 - fresnelNdotV1496, _SilhouetteOpacityFresnelPower ) );
				float clampResult1501 = clamp( (( _InvertSilhouetteOpacityFresnel )?( ( 1.0 - fresnelNode1496 ) ):( fresnelNode1496 )) , 0.0 , 1.0 );
				float2 texCoord671 = i.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float temp_output_1490_0 = ( tex2DNode76.a * _SilhouetteOpacity );
				float4 temp_cast_10 = (temp_output_1490_0).xxxx;
				float4 temp_output_1492_0 = ( (( _VertexColorsDefineSilhouetteOutlineOpacity )?( ( i.ase_color * temp_output_1490_0 ) ):( temp_cast_10 )) * tex2DNode1301.a );
				float4 temp_cast_11 = (temp_output_1490_0).xxxx;
				

				outAuraColor = ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteEmit ).rgb;
				outAuraAlpha = ( clampResult1501 * (( _UseSilhouetteTextureasAlphaMask )?( ( temp_output_1492_0 * tex2DNode1301 ) ):( temp_output_1492_0 )) ).r;
				clip(outAuraAlpha);
				return float4(outAuraColor,outAuraAlpha);
			}
			ENDCG
		}

		GrabPass{ }

		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
			#else
			#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
			#endif

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_POSITION
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SILHOUETTETEXTUREUVSELECTION_BASEUV _SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION _SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SILHOUETTETEXTUREBASEUVMAP_UV0 _SILHOUETTETEXTUREBASEUVMAP_UV1 _SILHOUETTETEXTUREBASEUVMAP_UV2 _SILHOUETTETEXTUREBASEUVMAP_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _SCROLLINGUVSELECTION_BASEUV _SCROLLINGUVSELECTION_SCREENPOSITION _SCROLLINGUVSELECTION_VERTEXPOSITION
			#pragma shader_feature_local _SCROLLINGBASEUVMAP_UV0 _SCROLLINGBASEUVMAP_UV1 _SCROLLINGBASEUVMAP_UV2 _SCROLLINGBASEUVMAP_UV3

			//This is a late directive
			
			uniform float _ToggleDisplacement;
			uniform float _DisplacementMultiplier;
			uniform float _DisplacementMinSize;
			uniform float _DisplacementMaxSize;
			uniform sampler2D _DisplacementTexture;
			uniform float _DisplacementusesVertexPositionUV;
			uniform float2 _DisplacementScrolling;
			uniform float2 _DisplacementTiling;
			uniform float2 _DisplacementOffset;
			uniform float _DisplacementRotation;
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
			uniform float _ToggleScreenColorasBaseTexture;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
			uniform sampler2D _ScreenColorDistortionTexture;
			uniform float2 _ScreenColorDistortionTiling;
			uniform float2 _ScreenColorDistortionScrolling;
			uniform float _ScreenColorDistortionAmount;
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
			uniform sampler2D _SpecularMask;
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
			uniform float _EmissionEmit;
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
			
			inline float4 ASE_ComputeGrabScreenPos( float4 pos )
			{
				#if UNITY_UV_STARTS_AT_TOP
				float scale = -1.0;
				#else
				float scale = 1.0;
				#endif
				float4 o = pos;
				o.y = pos.w * 0.5f;
				o.y = ( pos.y - o.y ) * _ProjectionParams.x * scale + o.y;
				return o;
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

				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade1547 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult1546 = clamp( ( _DisplacementMultiplier * cameraDepthFade1547 ) , _DisplacementMinSize , _DisplacementMaxSize );
				float2 texCoord1556 = v.ase_texcoord.xyz * _DisplacementTiling + _DisplacementOffset;
				float temp_output_1532_0 = radians( _DisplacementRotation );
				float cos1557 = cos( temp_output_1532_0 );
				float sin1557 = sin( temp_output_1532_0 );
				float2 rotator1557 = mul( texCoord1556 - float2( 0.5,0.5 ) , float2x2( cos1557 , -sin1557 , sin1557 , cos1557 )) + float2( 0.5,0.5 );
				float2 panner1558 = ( 1.0 * _Time.y * _DisplacementScrolling + rotator1557);
				float cos1531 = cos( temp_output_1532_0 );
				float sin1531 = sin( temp_output_1532_0 );
				float2 rotator1531 = mul( ( ( v.vertex.xyz * float3( _DisplacementTiling ,  0.0 ) ) + float3( _DisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1531 , -sin1531 , sin1531 , cos1531 )) + float2( 0.5,0.5 );
				float2 panner1530 = ( 1.0 * _Time.y * _DisplacementScrolling + rotator1531);
				
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

				v.vertex.xyz += (( _ToggleDisplacement )?( ( float4( ( v.normal * clampResult1546 ) , 0.0 ) * tex2Dlod( _DisplacementTexture, float4( (( _DisplacementusesVertexPositionUV )?( panner1530 ):( panner1558 )), 0, 0.0) ) ) ):( float4( 0,0,0,0 ) )).rgb;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float4 lerpResult1601 = lerp( _CustomShadowColor , ShadowColor , _GameShadowStrength);
				float4 lerpResult1605 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
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
				float4 lerpResult406 = lerp( lerpResult1601 , lerpResult1605 , saturate( ( (( _HalftoneShadowToggle )?( halftone1153 ):( saturate( temp_output_57_0 ) )) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , lerpResult1605 , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float mulTime1569 = _Time.y * 0.1;
				float2 texCoord1571 = i.ase_texcoord1.xyz.xy * _ScreenColorDistortionTiling + ( _ScreenColorDistortionScrolling * mulTime1569 );
				float4 ase_grabScreenPos = ASE_ComputeGrabScreenPos( screenPos );
				float4 ase_grabScreenPosNorm = ase_grabScreenPos / ase_grabScreenPos.w;
				float4 screenColor1566 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,( float4( UnpackScaleNormal( tex2D( _ScreenColorDistortionTexture, texCoord1571 ), _ScreenColorDistortionAmount ) , 0.0 ) + ase_grabScreenPosNorm ).xy);
				float4 temp_output_1356_0 = ( (( _ToggleScreenColorasBaseTexture )?( float4( (screenColor1566).rgb , 0.0 ) ):( tex2DNode76 )) * _BaseColor );
				float4 lerpResult1362 = lerp( temp_output_1356_0 , ( temp_output_1356_0 * i.ase_color ) , _VertexColorsOpacity);
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
				float4 blendOpDest1128 = (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 ));
				float4 lerpBlendMode1128 = lerp(blendOpDest1128,( blendOpSrc1128 * blendOpDest1128 ),_DetailTextureBlend);
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1128 )) ):( (( _VertexColorsToggle )?( lerpResult1362 ):( temp_output_1356_0 )) )) );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1603 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * lerpResult1603 );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord9.xyz;
				float fresnelNdotV1174 = dot( normalizeWorldNormal, ase_worldViewDir );
				float fresnelNode1174 = ( _CubemapFresnelBias + _CubemapFresnelScale * pow( max( 1.0 - fresnelNdotV1174 , 0.0001 ), _CubemapFresnelPower ) );
				float clampResult1379 = clamp( fresnelNode1174 , 0.0 , 1.0 );
				float2 uvcubemapmask881 = i.ase_texcoord1.xyz.xy;
				float4 lerpResult1173 = lerp( temp_output_409_0 , ( saturate( lerpBlendMode1212 )) , ( clampResult1379 * tex2D( cubemapmask, uvcubemapmask881 ) ));
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
				float2 staticSwitch1625 = UV01113;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV1)
				float2 staticSwitch1625 = UV11114;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV2)
				float2 staticSwitch1625 = UV21115;
				#elif defined(_SILHOUETTETEXTUREBASEUVMAP_UV3)
				float2 staticSwitch1625 = UV31136;
				#else
				float2 staticSwitch1625 = UV01113;
				#endif
				#if defined(_SILHOUETTETEXTUREUVSELECTION_BASEUV)
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_SCREENPOSITION)
				float4 staticSwitch1626 = ase_screenPosNorm;
				#elif defined(_SILHOUETTETEXTUREUVSELECTION_VERTEXPOSITION)
				float4 staticSwitch1626 = float4( i.ase_texcoord10.xyz , 0.0 );
				#else
				float4 staticSwitch1626 = float4( staticSwitch1625, 0.0 , 0.0 );
				#endif
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( staticSwitch1626 * float4( _SilhouetteTextureTiling, 0.0 , 0.0 ) ) + float4( ( _Time.y * _SilhouetteTextureScroll ), 0.0 , 0.0 ) ).xy );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor ));
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
				#if defined(_SCROLLINGBASEUVMAP_UV0)
				float2 staticSwitch1598 = UV01113;
				#elif defined(_SCROLLINGBASEUVMAP_UV1)
				float2 staticSwitch1598 = UV11114;
				#elif defined(_SCROLLINGBASEUVMAP_UV2)
				float2 staticSwitch1598 = UV21115;
				#elif defined(_SCROLLINGBASEUVMAP_UV3)
				float2 staticSwitch1598 = UV31136;
				#else
				float2 staticSwitch1598 = UV01113;
				#endif
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( ( staticSwitch1598 * _ScrollTiling ) - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1607 = cos( temp_output_604_0 );
				float sin1607 = sin( temp_output_604_0 );
				float2 rotator1607 = mul( ( ase_screenPosNorm * float4( _ScrollTiling, 0.0 , 0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1607 , -sin1607 , sin1607 , cos1607 )) + float2( 0.5,0.5 );
				float2 panner1608 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1607);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( i.ase_texcoord10.xyz * float3( _ScrollTiling ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#if defined(_SCROLLINGUVSELECTION_BASEUV)
				float2 staticSwitch1610 = panner597;
				#elif defined(_SCROLLINGUVSELECTION_SCREENPOSITION)
				float2 staticSwitch1610 = panner1608;
				#elif defined(_SCROLLINGUVSELECTION_VERTEXPOSITION)
				float2 staticSwitch1610 = panner1437;
				#else
				float2 staticSwitch1610 = panner597;
				#endif
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, staticSwitch1610 ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				

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
Node;AmplifyShaderEditor.CommentaryNode;361;-826.0327,3069.306;Inherit;False;1487.958;514.1742;;14;666;665;668;664;667;559;562;561;560;358;360;359;356;671;Rotation & Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;226;1205.992,1592.955;Inherit;False;1266.631;394.3788;;6;1100;53;54;835;834;170;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1999.195,2770.979;Inherit;False;2130.969;1060.52;;27;1602;1603;409;1604;970;381;1605;408;1371;1370;1368;1369;1164;1280;769;857;378;624;406;60;59;57;74;58;1165;1601;1600;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;11;427;858;423;420;426;428;424;558;430;429;863;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;582;-427.4952,-647.8214;Inherit;False;2084.161;706.9561;;17;593;607;596;588;605;601;606;604;598;597;1437;1439;1442;1441;1517;1599;1610;ScrollingMasked;0.9008027,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;1935.712,-658.9301;Inherit;False;1931.061;541.7088;;8;609;587;586;584;603;602;589;585;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;3652.362,-525.8543;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;868;2243.345,2026.729;Inherit;False;1553.953;676.2176;;14;883;882;878;877;869;881;1213;1177;1215;1179;1212;1174;1173;1379;Cubemap;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;1568.403,5291.098;Inherit;False;2208.828;523.0707;;19;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1271;1272;1354;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;60;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;59;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;61;0;Create;True;0;0;0;False;0;False;0.01;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1036;1985.973,4314.623;Inherit;False;1815.989;416.4595;;10;822;771;823;676;687;678;688;768;677;702;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;62;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;46;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.WorldNormalVector;834;1806.679,1633.011;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;2265.713,1756.613;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1058;1680.904,901.0906;Inherit;False;2130.147;475.957;;21;1074;1073;1060;1065;1063;1064;1061;1046;1045;1051;1050;1042;1047;1049;1048;1138;1363;1364;1365;1366;1367;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1048;1928.45,942.5652;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1049;1747.5,949.0944;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1047;1695.457,1102.051;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1042;2076.874,942.8367;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1050;2075.756,1094.23;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;2284.404,946.442;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1045;2397.942,945.0647;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1046;2378.761,1053.084;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1063;3471.288,986.5499;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;55;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;52;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;51;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;1236.263,1687.058;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;30;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1126;743.1819,2712.691;Inherit;False;1190.214;628.0172;;12;1358;1128;1356;1355;76;1127;1134;1129;1357;1359;1361;1362;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;1121;1402.251,1309.626;Inherit;False;Property;_NormalMapUV;Normal Map UV;29;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
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
Node;AmplifyShaderEditor.StaticSwitch;1140;2433.567,1365.782;Inherit;False;Property;_SpecularMaskUV;Specular Mask UV;54;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1150;1950.633,4794.671;Inherit;False;1827.885;466.4214;;13;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;Halftone Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;854;2535.542,1483.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;47;0;Create;True;0;0;0;False;0;False;-0.6;0;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;2634.931,1593.814;Float;False;Property;_ExtraLightSoftness;Extra Light Softness;48;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;1.52;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3526.522,480.8262;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;882;2957.417,2103.48;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3950.549,366.7159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1248;2165.021,-104.3563;Inherit;False;1636.984;483.7798;;12;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1249;3287.513,233.0792;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;66;0;Create;True;0;0;0;False;0;False;0.6676344;0.276;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;3344.826,-58.49818;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1251;3563.497,-54.13026;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;2792.383,149.5396;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1253;2664.383,148.5396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1254;2200.382,117.5394;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1255;2424.384,37.5399;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1256;2200.382,-42.4601;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1257;2785.522,248.4332;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;64;0;Create;True;0;0;0;False;0;False;10;10;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1258;2360.383,293.5399;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;65;0;Create;True;0;0;0;False;0;False;0.65;0.53;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1259;2950.868,143.6488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1260;3110.38,-57.46034;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1213;3004.143,2321.712;Inherit;False;Property;_CubemapColorize;Cubemap Colorize;125;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;587;2528.248,-595.9348;Inherit;False;Property;_EmissionHue;Emission Hue;32;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3495.497,-458.4518;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;585;3270.88,-455.7204;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;602;3295.888,-300.9866;Inherit;False;Property;_EmissionEmit;Emission Emit;33;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;586;3148.466,-515.5188;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;584;2929.032,-533.7488;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1116;1204.251,1238.626;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1117;1199.251,1319.626;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1118;1201.251,1397.626;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1137;1208.396,1472.822;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;1173;3572.586,2100.637;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1212;3287.129,2127.974;Inherit;True;Multiply;True;3;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1099;3870.993,767.5627;Inherit;False;Property;_CubemapToggle;Cubemap Toggle;121;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1282;5867.152,458.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1283;5867.152,525.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1286;5867.152,346.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1287;1731.686,6510.917;Inherit;False;1707.826;491.2855;;17;1308;1306;1302;1301;1300;1299;1297;1295;1292;1291;1290;1289;1288;1353;1309;1303;1304;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1315;1756.276,7110.039;Inherit;False;1976.592;475.3736;;13;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4127.306,372.4348;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;58;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;5005.834,342.5815;Inherit;False;Property;_SpecularToggle;Specular Toggle;50;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;5074.196,593.3636;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1312;4695.196,745.3636;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;116;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1314;5305.196,362.3637;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;115;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1313;5221.181,489.6377;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1329;4382.865,474.7703;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1330;4490.865,463.7703;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;117;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1177;2952.084,2437.238;Inherit;False;Property;_CubemapFresnelBias;Cubemap Fresnel Bias;126;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;2961.982,2528.056;Inherit;False;Property;_CubemapFresnelScale;Cubemap Fresnel Scale;127;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1179;2974.084,2620.238;Inherit;False;Property;_CubemapFresnelPower;Cubemap Fresnel Power;128;0;Create;True;0;0;0;False;0;False;1;1;0;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1174;3241.386,2383.138;Inherit;True;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.05;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Opacity;63;0;Create;False;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;869;2479.349,2073.356;Inherit;True;Property;_CubemapTexture;Cubemap Texture;122;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;34b1a0522b0f44f48afe8efdffa7cb39;34b1a0522b0f44f48afe8efdffa7cb39;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;881;3479.681,2499.267;Inherit;True;Property;cubemapmask;Cubemap Mask;123;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;835;1512.257,1636.757;Inherit;True;Property;_NormalMap;Normal Map;28;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;53;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.855,-507.4146;Inherit;True;Property;_Emission;Emission Texture;31;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldReflectionVector;877;2260.083,2076.667;Inherit;True;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1916.417,1818.647;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;170;2018.346,1671.201;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4874.549,374.5685;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RotatorNode;356;-287.1256,3123.4;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;359;-814.1263,3121.401;Inherit;False;Property;_BaseRotationCenter;Base Rotation Center;22;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;360;-813.1261,3243.401;Inherit;False;Property;_BaseRotationSpeed;Base Rotation Speed;23;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;358;-577.1265,3246.401;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;256.9173,3356.452;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;666;451.9184,3258.453;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;668;95.9165,3350.452;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;664;98.9165,3135.455;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;-571.0063,3333.623;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;562;-813.0032,3329.113;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;-416.9966,3334.118;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;561;-812.7609,3409.414;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;21;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1145;441.3592,2804.401;Inherit;False;Property;_DetailTextureUV;Detail Texture UV;26;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1266;180.8577,2704.953;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1267;175.8577,2785.953;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;177.8577,2863.953;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1269;185.0027,2939.149;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;667;-191.0841,3269.453;Inherit;True;Property;RotationMask;Base Rotation Mask;20;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;76;796.9797,2755.466;Inherit;True;Property;_MainTex;Base Texture;2;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;fa7ef22070732074aa328345f82c8cc3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1355;1102.67,2764.708;Inherit;False;Property;_BaseColor;Base Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1356;1321.742,2764.691;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1127;802.7906,3064.463;Inherit;True;Property;_DetailTexture;Detail Texture;25;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1129;1682.331,3128.082;Inherit;False;Property;_DetailTextureToggle;Detail Texture Toggle;24;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1357;1302.104,2866.149;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1361;1033.288,2964.021;Inherit;False;Property;_VertexColorsOpacity;Vertex Colors Opacity;9;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1362;1493.316,2916.45;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1359;1671.288,2772.021;Inherit;False;Property;_VertexColorsToggle;Vertex Colors Toggle;8;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1128;1447.581,3150.246;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1358;1498.156,2823.131;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1134;834.5918,3263.055;Inherit;False;Property;_DetailTextureBlend;Detail Texture Opacity;27;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;883;2838.013,2224.182;Inherit;False;Property;_CubemapBlend;Cubemap Opacity;124;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Opacity;49;0;Create;False;0;0;0;False;0;False;2;0.84;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1363;3126.626,972.8997;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1364;2921.378,966.0604;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1365;2579.581,945.6411;Inherit;False;Property;_SpecularSoftness;Specular Softness;56;0;Create;True;0;0;0;False;0;False;0.01;1.49;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1366;2538.416,1019.938;Inherit;False;Property;_SpecularOffset;Specular Offset;57;0;Create;True;0;0;0;False;0;False;1;-0.6;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1367;2810.855,1043.504;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;3304.397,963.29;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;878;3663.182,2356.667;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1379;3517.939,2372.75;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5604.492,351.2195;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;671;-581.4872,3112.996;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1454;2481.949,7643.333;Inherit;False;1290.362;551.9576;;10;1461;1458;1459;1460;1469;1457;1463;1464;1467;1466;Silhouette Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1470;2354.5,5898.438;Inherit;False;1290.362;551.9576;;10;1481;1480;1479;1478;1477;1476;1475;1474;1473;1471;Outline Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1527;5851.897,-295.1775;Inherit;False;1439.202;547.705;;11;1538;1537;1536;1535;1534;1533;1532;1531;1530;1529;1528;Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.RadiansOpNode;1532;6359.738,137.2515;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1535;6077.598,141.2525;Inherit;False;Property;_DisplacementRotation;Displacement Rotation;19;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1528;6372.339,-221.0883;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1529;6174.826,-228.8984;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1530;6688.672,-212.4584;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1531;6499.728,-212.2826;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode;1538;5912.698,-258.1541;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1534;6166.354,-8.875324;Inherit;False;Property;_DisplacementOffset;Displacement Offset;17;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1537;6427.235,-95.48419;Inherit;False;Property;_DisplacementScrolling;Displacement Scrolling;18;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1536;5879.712,-102.319;Inherit;False;Property;_DisplacementTiling;Displacement Tiling;16;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;1533;6932.636,-217.1415;Inherit;True;Property;_DisplacementTexture;Displacement Texture;14;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1545;7243.621,-710.9155;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1546;7614.621,-673.9135;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1547;6988.662,-594.4904;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1550;7232.146,-607.6687;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1548;7406.946,-524.3221;Inherit;False;Property;_DisplacementMaxSize;Displacement Max Size;13;0;Create;True;0;0;0;False;0;False;0.016;0.015;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1551;7823.116,-613.4215;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1552;6949.146,-887.6718;Inherit;False;Property;_DisplacementMultiplier;Displacement Multiplier;11;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1549;7404.621,-601.9133;Inherit;False;Property;_DisplacementMinSize;Displacement Min Size;12;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1487;7433.076,628.1325;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1149;6996.522,725.1884;Inherit;False;Property;_Opacity;Opacity;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1281;7703.206,309.7404;Float;False;True;-1;2;ASEMaterialInspector;100;17;Pupsi/Pupsi BRC Shader (Displacement Transparent);c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Transparent=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1556;6016.658,-550.8832;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;1557;6263.774,-550.2012;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1558;6466.218,-382.4921;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1578;-486.1931,2006.544;Inherit;False;1552.491;593.5145;;12;1567;1566;1568;1572;1575;1576;1574;1577;1573;1571;1570;1569;Screen Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleTimeNode;1569;-277.3202,2416.469;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1570;540.6819,2272.47;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1571;-28.32007,2150.469;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1573;-434.6122,2426.16;Inherit;False;Constant;_Float2;Float 1;17;0;Create;True;0;0;0;False;0;False;0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GrabScreenPosition;1577;276.3838,2391.027;Inherit;False;0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1574;-337.6912,2134.129;Float;False;Property;_ScreenColorDistortionTiling;Screen Color Distortion Tiling;6;0;Create;True;0;0;0;False;0;False;0.5,0.5;20,20;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1576;-58.32007,2446.47;Float;False;Property;_ScreenColorDistortionAmount;Screen Color Distortion Amount;5;0;Create;True;0;0;0;False;0;False;0.1;0.017;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1575;-388.3202,2276.47;Float;False;Property;_ScreenColorDistortionScrolling;Screen Color Distortion Scrolling;7;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1572;-59.69214,2304.129;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;1568;234.6799,2176.469;Inherit;True;Property;_ScreenColorDistortionTexture;Screen Color Distortion Texture;4;0;Create;True;0;0;0;False;0;False;-1;None;d71623d130fbb09429400547f3584bca;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1562;1083.407,2559.803;Inherit;False;Property;_ToggleScreenColorasBaseTexture;Toggle Screen Color as Base Texture;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenColorNode;1566;658.9983,2248.565;Float;False;Global;_GrabScreen1;Grab Screen 0;2;0;Create;True;0;0;0;False;0;False;Object;-1;False;False;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ComponentMaskNode;1567;846.7444,2272.008;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1559;6743.518,-396.73;Inherit;False;Property;_DisplacementusesVertexPositionUV;Displacement uses Vertex Position UV;15;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1541;7508.216,159.9377;Inherit;False;Property;_ToggleDisplacement;Toggle Displacement;10;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1539;7362.385,-103.0423;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;591;1672.215,-635.2302;Inherit;False;Property;_ScrollToggle;Scroll Toggle;129;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;1411.18,-357.1161;Inherit;True;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;607;1035.823,-431.4196;Inherit;True;Property;_ScrollMask;Scroll Mask;134;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;596;1167.599,-221.808;Inherit;False;Property;_ScrollEmit;Scroll Emit;138;0;Create;True;0;0;0;False;0;False;1;0.38;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1442;628.1938,-373.926;Inherit;False;Property;_ScrollColor;Scroll Color;132;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,0.8744493,0.7877358,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1441;873.1938,-178.926;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RadiansOpNode;604;-109.4944,-98.39233;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;606;-394.6348,-97.39154;Inherit;False;Property;_ScrollRotation;Scroll Rotation;137;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;605;74.52506,-116.8549;Inherit;False;Property;_ScrollSpeed;Scroll Speed;136;0;Create;True;0;0;0;False;0;False;0,1;0,-0.5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RotatorNode;1443;72.19379,-732.926;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;593;512.1016,-187.7853;Inherit;True;Property;_ScrollTex;Scroll Tex;133;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;597;285.1138,-142.8278;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;601;-349.8132,-342.2057;Inherit;False;Property;_ScrollTiling;Scroll Tiling;135;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PannerNode;1437;158.1388,-587.103;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1439;-126.7071,-456.5433;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode;1517;-370.2456,-499.2236;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;598;111.6695,-308.537;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1594;-799.2455,-317.906;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1595;-804.2455,-236.906;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1596;-802.2455,-158.906;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1597;-795.1005,-83.71002;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1599;-101.4162,-234.867;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;2025.402,4382.855;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;677;2624.737,4397.03;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2200.138,4393.34;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;688;3154.867,4399.646;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;2991.99,4399.181;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;771;2024.908,4549.264;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;41;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;30,30;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1151;3084.796,4807.773;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1152;3129.358,4959.001;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1153;3531.401,4861.537;Inherit;False;halftone;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1154;2933.796,4935.773;Inherit;True;0;0;1;0;1;True;1;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;15;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.SmoothstepOpNode;1155;3299.797,4859.773;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1157;2674.359,5038.002;Inherit;False;Property;_HalftoneShadowScale;Halftone Shadow Scale;45;0;Create;True;0;0;0;False;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1158;1987.757,4831.729;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1159;2160.76,4831.729;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleDivideOpNode;1160;2325.76,4977.731;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1161;2204.164,5075.669;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1162;2460.704,4925.833;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenParams;1163;2019.161,5056.667;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1277;1612.494,5345.743;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;75;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1623.88,5632.951;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;76;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;1891.085,5588.784;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;1878.939,5363.468;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3268.065,5713.694;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;80;0;Create;True;0;0;0;False;0;False;0.008;0.008;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3267.065,5644.694;Inherit;False;Property;_OutlineMinSize;Outline Min Size;79;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3102.065,5539.691;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;893;3473.065,5576.694;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3621.59,5550.935;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2864.59,5566.935;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;78;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2288.977,5622.95;Inherit;False;Property;_OutlineColor;Outline Color;69;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.5943396,0.5943396,0.5943396,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2576.602,5497.326;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;71;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3485.643,5366.705;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;70;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1811.221,5494.229;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3383.438,4380.937;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0.5;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3310.075,5415.66;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1354;2083.96,5426.821;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode;676;2344.673,4395.454;Inherit;True;Property;_ShadowTexture;Shadow Texture;40;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;b9552255b337ed1468609738595c184a;6a470d8d82609b7479b03e6c05bb84b6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2260.699,5385.699;Inherit;True;Property;OutlineTexture;Outline Texture;72;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;823;3052.121,4626.952;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;42;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1447;4257.885,5611.396;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1446;3950.563,5649.57;Inherit;False;Property;_VertexColorsDefineOutlineThickness;Vertex Colors Define Outline Thickness;87;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1445;3807.494,5618.517;Inherit;False;Constant;_Float0;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1444;3762.531,5696.047;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1453;4249.801,5789.258;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1305;3545.108,6501.245;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1316;2538.59,7355.53;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;2378.591,7355.53;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1318;2250.591,7354.53;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1319;2698.588,7349.53;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;3227.458,7179.407;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1322;1786.593,7323.53;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1323;2010.596,7243.53;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;1786.593,7163.53;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1326;2371.73,7454.423;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;118;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1327;1946.594,7499.53;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;119;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1325;2948.491,7203.442;Inherit;False;1305;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1321;3463.401,7209.141;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;1968.895,6602.974;Inherit;False;2;2;0;FLOAT4;1,1,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;1990.652,6789.479;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1304;1755.584,6885.432;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;97;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;1303;1782.726,6809.978;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1309;1737.588,6694.351;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;96;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1353;2164.448,6655.516;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;3163.984,7400.805;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Opacity;120;0;Create;False;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1448;3875.242,6807.861;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1450;3424.851,6814.979;Inherit;False;Constant;_Float1;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1451;3379.887,6892.512;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1449;3567.92,6846.033;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineThickness;Vertex Colors Define Silhouette Outline Thickness;114;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1452;4049.308,6813.482;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1466;2865.25,7730.421;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1467;2667.737,7722.611;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1464;3181.583,7739.051;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1463;2992.638,7739.228;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1457;2840.95,8075.762;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1459;2659.265,7943.634;Inherit;False;Property;_SilhouetteDisplacementOffset;Silhouette Displacement Offset;111;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;1469;3425.546,7734.369;Inherit;True;Property;_SilhouetteDisplacementTexture;Silhouette Displacement Texture;108;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1458;2490.81,8074.762;Inherit;False;Property;_SilhouetteDisplacementRotation;Silhouette Displacement Rotation;112;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1461;2875.177,7854.017;Inherit;False;Property;_SilhouetteDisplacementScrolling;Silhouette Displacement Scrolling;113;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1460;2398.631,7864.949;Inherit;False;Property;_SilhouetteDisplacementTiling;Silhouette Displacement Tiling;110;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.VertexColorNode;1375;4344.817,6287.923;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1376;4572.85,6327.445;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1377;4753.85,6297.445;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineOpacity;Vertex Colors Define Silhouette Outline Opacity;91;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1492;5126.608,6375.74;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1373;4638.991,5237.8;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1488;4178.438,5257.261;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1489;3880.214,5313.029;Inherit;False;Property;_OutlineOpacity;Outline Opacity;67;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1493;5245.193,5274.025;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1495;5246.773,6677.474;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;1496;5188.554,6040.597;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1.24;False;3;FLOAT;0.65;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1499;4843.644,6047.962;Inherit;False;Property;_SilhouetteOpacityFresnelScale;Silhouette Opacity Fresnel Scale;99;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1500;4846.806,6145.756;Inherit;False;Property;_SilhouetteOpacityFresnelPower;Silhouette Opacity Fresnel Power;100;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1501;5692.042,6247.399;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1301;2647.992,6548.755;Inherit;True;Property;AuraTexture1;Silhouette Texture;93;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1297;2927.255,6546.368;Inherit;False;Property;_SilhouetteColor;Silhouette Color;90;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1302;3177.314,6559.684;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;92;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1497;5485.085,6074.242;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1504;5498.243,5942.419;Inherit;False;Property;_InvertSilhouetteOpacityFresnel;Invert Silhouette Opacity Fresnel;103;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1471;2737.8,5985.528;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1474;2540.287,5977.718;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1475;3054.133,5994.158;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1476;2865.188,5994.333;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1477;2713.5,6330.868;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1478;3298.096,5989.475;Inherit;True;Property;_OutlineDisplacementTexture;Outline Displacement Texture;81;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1479;2531.815,6197.741;Inherit;False;Property;_OutlineDisplacementOffset;Outline Displacement Offset;84;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1480;2431.36,6334.869;Inherit;False;Property;_OutlineDisplacementRotation;Outline Displacement Rotation;85;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1473;2262.181,6117.055;Inherit;False;Property;_OutlineDisplacementTiling;Outline Displacement Tiling;83;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1481;2792.696,6111.132;Inherit;False;Property;_OutlineDisplacementScrolling;Outline Displacement Scrolling;86;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.CameraDepthFade;977;2847.105,5656.117;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3090.59,5642.938;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;2639.542,6738.711;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1290;3010.542,6775.713;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1291;2384.583,6855.136;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1299;2802.868,6925.304;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;107;0;Create;True;0;0;0;False;0;False;0.016;0.015;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1306;2800.542,6847.713;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;106;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1289;2628.067,6841.958;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;3191.804,6758.14;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;2345.067,6561.955;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;104;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1284;5726.984,5315.69;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1374;4813.991,5199.8;Inherit;False;Property;_VertexColorsDefineOutlineOpacity;Vertex Colors Define Outline Opacity;77;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1579;3879.393,5127.752;Inherit;False;Property;_OutlineOpacityuseBaseTextureOpacity;Outline Opacity use Base Texture Opacity;68;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1498;5675.728,6424.383;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1285;5908.455,6431.673;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1494;5343.578,6460.636;Inherit;False;Property;_UseSilhouetteTextureasAlphaMask;Use Silhouette Texture as Alpha Mask;98;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1490;4143.29,6425.459;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1491;3845.065,6481.227;Inherit;False;Property;_SilhouetteOpacity;Silhouette Opacity;88;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;1514;2149.292,7610.142;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1581;2118.659,7777.387;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1502;3773.817,6651.277;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1503;3586.817,6717.277;Inherit;False;Property;_SilhouetteEmit;Silhouette Emit;89;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1372;4355.958,5034.277;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1588;1852.382,5853.701;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1589;1820.551,6020.948;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1590;2063.75,5955.948;Inherit;False;Property;_OutlineDisplacementVertexPositionUV;Outline Displacement Vertex Position UV;82;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1580;2360.659,7712.387;Inherit;False;Property;_SilhouetteDisplacementVertexPositionUV;Silhouette Displacement Vertex Position UV;109;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2791.886,4399.051;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;2828.796,4823.773;Inherit;False;Property;_HalftoneShadowSoftness;Halftone Shadow Softness;44;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2307.234,3158.459;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;74;2629.752,3158.332;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2426.297,3155.303;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;2020.789,3174.283;Float;False;Property;_ShadowOffset;Shadow Offset;38;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0.25;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;2026.864,3255.97;Float;False;Property;_ShadowSoftness;Shadow Softness;36;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.76;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;406;3050.963,3027.682;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;624;2016.233,2990.958;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;35;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;378;2267.58,2986.981;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3333.982,3065.915;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3587.181,3274.439;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;39;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;3414.553,3309.803;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1164;2786.976,3148.062;Inherit;False;Property;_HalftoneShadowToggle;Halftone Shadow Toggle;43;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1369;2625.055,3272.301;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;37;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1368;2895.055,3280.301;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1370;3055.055,3273.301;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1371;3198.055,3268.301;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightColorNode;408;3443.578,2974.31;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp;1605;2492.402,3574.553;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;381;2166.367,3330.842;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;970;2167.228,3501.399;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;34;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1604;2155.702,3684.954;Inherit;False;Property;_GameLightStrength;Game Light Strength;102;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3936.637,3121.006;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1603;3626.335,3011.718;Inherit;True;3;0;COLOR;1,1,1,0;False;1;COLOR;1,1,1,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1602;3310.811,3176.777;Inherit;False;Property;_WorldLightStrength;World Light Strength;101;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1601;2506.18,2908.911;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1165;2759.162,3015.686;Inherit;False;1153;halftone;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1600;2126.926,2856.839;Inherit;False;Property;_GameShadowStrength;Game Shadow Strength;105;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1606;-303.1169,-1079.908;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RotatorNode;1607;-95.11688,-1063.908;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1608;96.88306,-1063.908;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1609;-575.1171,-1079.908;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1598;-585.2454,-269.906;Inherit;False;Property;_ScrollingBaseUVMap;Scrolling Base UV Map;131;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1610;414.0259,-374.4786;Inherit;False;Property;_ScrollingUVSelection;Scrolling UV Selection;130;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1613;895.1763,5606.816;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1614;890.1763,5687.816;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1615;892.1763,5765.816;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1616;899.3213,5841.012;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode;1611;1145.763,5385.928;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;1612;1151.102,5201.084;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1617;1092.177,5652.816;Inherit;False;Property;_OutlineTextureBaseUVMap;Outline Texture Base UV Map;74;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1618;1398.511,5484.642;Inherit;False;Property;_OutlineTextureUVSelection;Outline Texture UV Selection;73;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.PosVertexDataNode;1619;1344.552,6462.828;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ScreenPosInputsNode;1620;1349.891,6277.984;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1621;1093.964,6683.716;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1622;1088.964,6764.716;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1623;1090.964,6842.716;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1624;1098.109,6917.912;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1626;1597.3,6561.542;Inherit;False;Property;_SilhouetteTextureUVSelection;Silhouette Texture UV Selection;94;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;3;BaseUV;ScreenPosition;VertexPosition;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;1625;1290.965,6729.716;Inherit;False;Property;_SilhouetteTextureBaseUVMap;Silhouette Texture Base UV Map;95;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
WireConnection;589;0;591;0
WireConnection;589;1;603;0
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
WireConnection;851;0;853;0
WireConnection;851;1;1230;0
WireConnection;853;0;54;0
WireConnection;853;1;854;0
WireConnection;852;0;851;0
WireConnection;866;0;855;0
WireConnection;866;1;867;0
WireConnection;855;1;1605;0
WireConnection;855;2;852;0
WireConnection;856;1;866;0
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
WireConnection;603;0;585;0
WireConnection;603;1;602;0
WireConnection;585;0;586;0
WireConnection;585;1;584;2
WireConnection;585;2;584;3
WireConnection;586;0;587;0
WireConnection;586;1;584;1
WireConnection;584;0;609;0
WireConnection;1173;0;409;0
WireConnection;1173;1;1212;0
WireConnection;1173;2;878;0
WireConnection;1212;0;409;0
WireConnection;1212;1;882;0
WireConnection;1212;2;1213;0
WireConnection;1099;0;409;0
WireConnection;1099;1;1173;0
WireConnection;475;0;1099;0
WireConnection;475;1;860;0
WireConnection;1088;0;1330;0
WireConnection;1088;1;1087;0
WireConnection;1311;0;1302;0
WireConnection;1311;1;1312;0
WireConnection;1314;0;1088;0
WireConnection;1314;1;1313;0
WireConnection;1313;0;1088;0
WireConnection;1313;1;1311;0
WireConnection;1329;0;475;0
WireConnection;1329;1;1321;0
WireConnection;1330;0;475;0
WireConnection;1330;1;1329;0
WireConnection;1174;1;1177;0
WireConnection;1174;2;1215;0
WireConnection;1174;3;1179;0
WireConnection;869;1;877;0
WireConnection;835;1;1121;0
WireConnection;835;5;1100;0
WireConnection;1060;1;1140;0
WireConnection;877;0;835;0
WireConnection;170;0;834;0
WireConnection;1087;0;1330;0
WireConnection;1087;1;1065;0
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
WireConnection;76;1;666;0
WireConnection;1356;0;1562;0
WireConnection;1356;1;1355;0
WireConnection;1127;1;1145;0
WireConnection;1129;0;1359;0
WireConnection;1129;1;1128;0
WireConnection;1362;0;1356;0
WireConnection;1362;1;1358;0
WireConnection;1362;2;1361;0
WireConnection;1359;0;1356;0
WireConnection;1359;1;1362;0
WireConnection;1128;0;1127;0
WireConnection;1128;1;1359;0
WireConnection;1128;2;1134;0
WireConnection;1358;0;1356;0
WireConnection;1358;1;1357;0
WireConnection;1363;0;1364;0
WireConnection;1364;0;1367;0
WireConnection;1364;1;1365;0
WireConnection;1367;0;1366;0
WireConnection;1367;1;1046;0
WireConnection;1061;0;1363;0
WireConnection;1061;1;1060;0
WireConnection;878;0;1379;0
WireConnection;878;1;881;0
WireConnection;1379;0;1174;0
WireConnection;472;0;1314;0
WireConnection;472;1;589;0
WireConnection;1532;0;1535;0
WireConnection;1528;0;1529;0
WireConnection;1528;1;1534;0
WireConnection;1529;0;1538;0
WireConnection;1529;1;1536;0
WireConnection;1530;0;1531;0
WireConnection;1530;2;1537;0
WireConnection;1531;0;1528;0
WireConnection;1531;2;1532;0
WireConnection;1533;1;1559;0
WireConnection;1545;0;1552;0
WireConnection;1545;1;1547;0
WireConnection;1546;0;1545;0
WireConnection;1546;1;1549;0
WireConnection;1546;2;1548;0
WireConnection;1551;0;1550;0
WireConnection;1551;1;1546;0
WireConnection;1487;0;76;4
WireConnection;1487;1;1149;0
WireConnection;1281;0;472;0
WireConnection;1281;1;1487;0
WireConnection;1281;2;1541;0
WireConnection;1556;0;1536;0
WireConnection;1556;1;1534;0
WireConnection;1557;0;1556;0
WireConnection;1557;2;1532;0
WireConnection;1558;0;1557;0
WireConnection;1558;2;1537;0
WireConnection;1569;0;1573;0
WireConnection;1570;0;1568;0
WireConnection;1570;1;1577;0
WireConnection;1571;0;1574;0
WireConnection;1571;1;1572;0
WireConnection;1572;0;1575;0
WireConnection;1572;1;1569;0
WireConnection;1568;1;1571;0
WireConnection;1568;5;1576;0
WireConnection;1562;0;76;0
WireConnection;1562;1;1567;0
WireConnection;1566;0;1570;0
WireConnection;1567;0;1566;0
WireConnection;1559;0;1558;0
WireConnection;1559;1;1530;0
WireConnection;1541;1;1539;0
WireConnection;1539;0;1551;0
WireConnection;1539;1;1533;0
WireConnection;591;0;588;0
WireConnection;588;0;607;1
WireConnection;588;1;1441;0
WireConnection;588;2;596;0
WireConnection;1441;0;593;0
WireConnection;1441;1;1442;0
WireConnection;604;0;606;0
WireConnection;1443;0;1439;0
WireConnection;1443;2;604;0
WireConnection;593;1;1610;0
WireConnection;597;0;598;0
WireConnection;597;2;605;0
WireConnection;1437;0;1443;0
WireConnection;1437;2;605;0
WireConnection;1439;0;1517;0
WireConnection;1439;1;601;0
WireConnection;598;0;1599;0
WireConnection;598;2;604;0
WireConnection;1599;0;1598;0
WireConnection;1599;1;601;0
WireConnection;677;0;57;0
WireConnection;768;0;702;0
WireConnection;768;1;771;0
WireConnection;688;0;687;0
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
WireConnection;1279;0;1618;0
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
WireConnection;1354;0;1279;0
WireConnection;1354;1;1274;0
WireConnection;676;1;768;0
WireConnection;1271;1;1354;0
WireConnection;1447;0;888;0
WireConnection;1447;1;1446;0
WireConnection;1446;0;1445;0
WireConnection;1446;1;1444;0
WireConnection;1453;0;1447;0
WireConnection;1453;1;1478;0
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
WireConnection;1308;0;1626;0
WireConnection;1308;1;1309;0
WireConnection;1295;0;1303;0
WireConnection;1295;1;1304;0
WireConnection;1353;0;1308;0
WireConnection;1353;1;1295;0
WireConnection;1448;0;1292;0
WireConnection;1448;1;1449;0
WireConnection;1449;0;1450;0
WireConnection;1449;1;1451;0
WireConnection;1452;0;1448;0
WireConnection;1452;1;1469;0
WireConnection;1466;0;1467;0
WireConnection;1466;1;1459;0
WireConnection;1467;0;1580;0
WireConnection;1467;1;1460;0
WireConnection;1464;0;1463;0
WireConnection;1464;2;1461;0
WireConnection;1463;0;1466;0
WireConnection;1463;2;1457;0
WireConnection;1457;0;1458;0
WireConnection;1469;1;1464;0
WireConnection;1376;0;1375;0
WireConnection;1376;1;1490;0
WireConnection;1377;0;1490;0
WireConnection;1377;1;1376;0
WireConnection;1492;0;1377;0
WireConnection;1492;1;1301;4
WireConnection;1373;0;1372;0
WireConnection;1373;1;1488;0
WireConnection;1488;0;1579;0
WireConnection;1488;1;1489;0
WireConnection;1493;0;1374;0
WireConnection;1493;1;1271;4
WireConnection;1495;0;1492;0
WireConnection;1495;1;1301;0
WireConnection;1496;2;1499;0
WireConnection;1496;3;1500;0
WireConnection;1501;0;1504;0
WireConnection;1301;1;1353;0
WireConnection;1302;0;1297;0
WireConnection;1302;1;1301;0
WireConnection;1497;0;1496;0
WireConnection;1504;0;1496;0
WireConnection;1504;1;1497;0
WireConnection;1471;0;1474;0
WireConnection;1471;1;1479;0
WireConnection;1474;0;1590;0
WireConnection;1474;1;1473;0
WireConnection;1475;0;1476;0
WireConnection;1475;2;1481;0
WireConnection;1476;0;1471;0
WireConnection;1476;2;1477;0
WireConnection;1477;0;1480;0
WireConnection;1478;1;1475;0
WireConnection;1288;0;1300;0
WireConnection;1288;1;1291;0
WireConnection;1290;0;1288;0
WireConnection;1290;1;1306;0
WireConnection;1290;2;1299;0
WireConnection;1292;0;1289;0
WireConnection;1292;1;1290;0
WireConnection;1284;0;924;0
WireConnection;1284;1;1493;0
WireConnection;1284;2;1453;0
WireConnection;1374;0;1488;0
WireConnection;1374;1;1373;0
WireConnection;1579;1;76;4
WireConnection;1498;0;1501;0
WireConnection;1498;1;1494;0
WireConnection;1285;0;1502;0
WireConnection;1285;1;1498;0
WireConnection;1285;2;1452;0
WireConnection;1494;0;1492;0
WireConnection;1494;1;1495;0
WireConnection;1490;0;76;4
WireConnection;1490;1;1491;0
WireConnection;1502;0;1302;0
WireConnection;1502;1;1503;0
WireConnection;1590;0;1589;0
WireConnection;1590;1;1588;0
WireConnection;1580;0;1581;0
WireConnection;1580;1;1514;0
WireConnection;678;0;677;0
WireConnection;678;1;676;0
WireConnection;58;0;54;0
WireConnection;58;1;59;0
WireConnection;74;0;57;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;406;0;1601;0
WireConnection;406;1;1605;0
WireConnection;406;2;1371;0
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;769;0;1280;0
WireConnection;769;1;822;0
WireConnection;1280;0;857;0
WireConnection;1280;1;1129;0
WireConnection;1164;0;74;0
WireConnection;1164;1;1165;0
WireConnection;1368;0;1369;0
WireConnection;1370;0;1164;0
WireConnection;1370;1;1368;0
WireConnection;1371;0;1370;0
WireConnection;1605;0;970;0
WireConnection;1605;1;381;0
WireConnection;1605;2;1604;0
WireConnection;409;0;769;0
WireConnection;409;1;1603;0
WireConnection;1603;1;408;0
WireConnection;1603;2;1602;0
WireConnection;1601;0;624;0
WireConnection;1601;1;378;0
WireConnection;1601;2;1600;0
WireConnection;1606;0;1609;0
WireConnection;1606;1;601;0
WireConnection;1607;0;1606;0
WireConnection;1607;2;604;0
WireConnection;1608;0;1607;0
WireConnection;1608;2;605;0
WireConnection;1598;1;1594;0
WireConnection;1598;0;1595;0
WireConnection;1598;2;1596;0
WireConnection;1598;3;1597;0
WireConnection;1610;1;597;0
WireConnection;1610;0;1608;0
WireConnection;1610;2;1437;0
WireConnection;1617;1;1613;0
WireConnection;1617;0;1614;0
WireConnection;1617;2;1615;0
WireConnection;1617;3;1616;0
WireConnection;1618;1;1617;0
WireConnection;1618;0;1612;0
WireConnection;1618;2;1611;0
WireConnection;1626;1;1625;0
WireConnection;1626;0;1620;0
WireConnection;1626;2;1619;0
WireConnection;1625;1;1621;0
WireConnection;1625;0;1622;0
WireConnection;1625;2;1623;0
WireConnection;1625;3;1624;0
ASEEND*/
//CHKSM=427E0B8F3BA4F55CD6A800FCAC46D876D83E7B90