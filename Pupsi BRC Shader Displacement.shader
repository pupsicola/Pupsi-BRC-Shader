// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Shader (Displacement)"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		_AlphaClipping("Alpha Clipping", Range( 0 , 1)) = 0.5
		_BaseColor("Base Color", Color) = (1,1,1,0)
		[NoScaleOffset][BigTexture]_MainTex("Base Texture", 2D) = "white" {}
		[Toggle]_VertexColorsToggle("Vertex Colors Toggle", Float) = 1
		_VertexColorsOpacity("Vertex Colors Opacity", Range( 0 , 1)) = 1
		[Toggle]_ToggleDisplacement("Toggle Displacement", Float) = 0
		_DisplacementMultiplier("Displacement Multiplier", Float) = 0.01
		_DisplacementMinSize("Displacement Min Size", Float) = 0.01
		_DisplacementMaxSize("Displacement Max Size", Float) = 0.016
		[NoScaleOffset][BigTexture]_DisplacementTexture("Displacement Texture", 2D) = "white" {}
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
		[Shadow Options][Toggle]_CustomLightingColorToggle("Custom Lighting Color Toggle", Float) = 0
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		[Shadow Options][Toggle]_CustomShadowColorToggle("Custom Shadow Color Toggle", Float) = 0
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
		_SpecularOffset("Specular Offset", Range( -1 , 1)) = 0
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
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		[Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
		[NoScaleOffset][BigTexture]OutlineTexture("Outline Texture", 2D) = "white" {}
		_OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
		_OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_VertexColorsDefineOutlineOpacity("Vertex Colors Define Outline Opacity", Float) = 0
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		[NoScaleOffset][BigTexture]_OutlineDisplacementTexture("Outline Displacement Texture", 2D) = "white" {}
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
		_SilhouetteTextureTiling("Silhouette Texture Tiling", Vector) = (1,1,0,0)
		_SilhouetteTextureScroll("Silhouette Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_UseSilhouetteTextureasAlphaMask("Use Silhouette Texture as Alpha Mask", Float) = 0
		_SilhouetteOpacityFresnelScale("Silhouette Opacity Fresnel Scale", Float) = 1
		_SilhouetteOpacityFresnelPower("Silhouette Opacity Fresnel Power", Float) = 1
		[Toggle]_InvertSilhouetteOpacityFresnel("Invert Silhouette Opacity Fresnel", Float) = 0
		_SilhouetteMultiplier("Silhouette Multiplier", Float) = 0.01
		_SilhouetteMinSize("Silhouette Min Size", Float) = 0.01
		_SilhouetteMaxSize("Silhouette Max Size", Float) = 0.016
		[NoScaleOffset][BigTexture]_SilhouetteDisplacementTexture("Silhouette Displacement Texture", 2D) = "white" {}
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
		[Toggle]_ToggleVertexPositionUV("Toggle Vertex Position UV", Float) = 1
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
			Blend Off
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
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON

			//This is a late directive
			
			uniform float _ToggleDisplacement;
			uniform float _DisplacementMultiplier;
			uniform float _DisplacementMinSize;
			uniform float _DisplacementMaxSize;
			uniform sampler2D _DisplacementTexture;
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
			uniform float _ToggleVertexPositionUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform float _EmissionEmit;
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
				float cos1531 = cos( radians( _DisplacementRotation ) );
				float sin1531 = sin( radians( _DisplacementRotation ) );
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

				v.vertex.xyz += (( _ToggleDisplacement )?( ( float4( ( v.normal * clampResult1546 ) , 0.0 ) * tex2Dlod( _DisplacementTexture, float4( panner1530, 0, 0.0) ) ) ):( float4( 0,0,0,0 ) )).rgb;
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
				float4 temp_output_1356_0 = ( tex2DNode76 * _BaseColor );
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
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( i.ase_texcoord10.xyz * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy );
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
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( ( i.ase_texcoord10.xyz * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleVertexPositionUV )?( panner1437 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				
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
			#pragma target 3.0
			ENDCG
			Blend Off
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
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON


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
				float4 ase_color : COLOR;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
			};

			//This is a late directive
			
			uniform float _OutlineMultiplier;
			uniform float _OutlineMinSize;
			uniform float _OutlineMaxSize;
			uniform float _VertexColorsDefineOutlineThickness;
			uniform sampler2D _OutlineDisplacementTexture;
			uniform float2 _OutlineDisplacementScrolling;
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
			uniform float _ToggleVertexPositionUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform float _EmissionEmit;
			uniform float _VertexColorsDefineOutlineOpacity;
			uniform float _OutlineOpacity;
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
				float4 temp_cast_1 = (1.0).xxxx;
				float cos1476 = cos( radians( _OutlineDisplacementRotation ) );
				float sin1476 = sin( radians( _OutlineDisplacementRotation ) );
				float2 rotator1476 = mul( ( ( v.vertex.xyz * float3( _OutlineDisplacementTiling ,  0.0 ) ) + float3( _OutlineDisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1476 , -sin1476 , sin1476 , cos1476 )) + float2( 0.5,0.5 );
				float2 panner1475 = ( 1.0 * _Time.y * _OutlineDisplacementScrolling + rotator1476);
				
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
				o.ase_texcoord9 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord1.w = 0;
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord8.w = 0;

				v.vertex.xyz += ( ( float4( ( v.ase_normal * clampResult893 ) , 0.0 ) * (( _VertexColorsDefineOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ) * tex2Dlod( _OutlineDisplacementTexture, float4( panner1475, 0, 0.0) ) ).rgb;
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
				float4 tex2DNode1271 = tex2D( OutlineTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy );
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
				float4 temp_output_1356_0 = ( tex2DNode76 * _BaseColor );
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
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float3 worldRefl877 = normalize( reflect( -ase_worldViewDir, float3( dot( tanToWorld0, tex2DNode835 ), dot( tanToWorld1, tex2DNode835 ), dot( tanToWorld2, tex2DNode835 ) ) ) );
				float4 blendOpSrc1212 = temp_output_409_0;
				float4 blendOpDest1212 = ( texCUBE( _CubemapTexture, worldRefl877 ) * _CubemapBlend );
				float4 lerpBlendMode1212 = lerp(blendOpDest1212,( blendOpSrc1212 * blendOpDest1212 ),_CubemapColorize);
				float3 normalizeWorldNormal = i.ase_texcoord8.xyz;
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
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( i.ase_texcoord9.xyz * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy );
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
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( ( i.ase_texcoord9.xyz * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleVertexPositionUV )?( panner1437 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				
				float temp_output_1488_0 = ( tex2DNode76.a * _OutlineOpacity );
				float4 temp_cast_43 = (temp_output_1488_0).xxxx;
				float4 temp_cast_44 = (_AlphaClipping).xxxx;
				clip( ( (( _VertexColorsDefineOutlineOpacity )?( ( i.ase_color * temp_output_1488_0 ) ):( temp_cast_43 )) * tex2DNode1271.a ) - temp_cast_44);
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2DNode1271 ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2DNode1271 ):( _OutlineColor )) )).rgb;
				outOutlineAlpha = 1.0;
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


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
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
			uniform sampler2D _SilhouetteDisplacementTexture;
			uniform float2 _SilhouetteDisplacementScrolling;
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
				float cos1463 = cos( radians( _SilhouetteDisplacementRotation ) );
				float sin1463 = sin( radians( _SilhouetteDisplacementRotation ) );
				float2 rotator1463 = mul( ( ( v.vertex.xyz * float3( _SilhouetteDisplacementTiling ,  0.0 ) ) + float3( _SilhouetteDisplacementOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1463 , -sin1463 , sin1463 , cos1463 )) + float2( 0.5,0.5 );
				float2 panner1464 = ( 1.0 * _Time.y * _SilhouetteDisplacementScrolling + rotator1463);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
				
				o.ase_texcoord = v.vertex;
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;

				v.vertex.xyz += ( ( float4( ( v.ase_normal * clampResult1290 ) , 0.0 ) * (( _VertexColorsDefineSilhouetteOutlineThickness )?( v.ase_color ):( temp_cast_1 )) ) * tex2Dlod( _SilhouetteDisplacementTexture, float4( panner1464, 0, 0.0) ) ).rgb;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outAuraColor;
				float outAuraAlpha;

				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( i.ase_texcoord.xyz * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy );
				
				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float fresnelNdotV1496 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode1496 = ( 0.0 + _SilhouetteOpacityFresnelScale * pow( 1.0 - fresnelNdotV1496, _SilhouetteOpacityFresnelPower ) );
				float clampResult1501 = clamp( (( _InvertSilhouetteOpacityFresnel )?( ( 1.0 - fresnelNode1496 ) ):( fresnelNode1496 )) , 0.0 , 1.0 );
				float2 texCoord671 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord3.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord3.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode76 = tex2D( _MainTex, ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) ).rg );
				float temp_output_1490_0 = ( tex2DNode76.a * _SilhouetteOpacity );
				float4 temp_cast_7 = (temp_output_1490_0).xxxx;
				float4 temp_output_1492_0 = ( (( _VertexColorsDefineSilhouetteOutlineOpacity )?( ( i.ase_color * temp_output_1490_0 ) ):( temp_cast_7 )) * tex2DNode1301.a );
				float4 temp_cast_8 = (temp_output_1490_0).xxxx;
				

				outAuraColor = ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteEmit ).rgb;
				outAuraAlpha = ( clampResult1501 * (( _UseSilhouetteTextureasAlphaMask )?( ( temp_output_1492_0 * tex2DNode1301 ) ):( temp_output_1492_0 )) ).r;
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
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON

			//This is a late directive
			
			uniform float _ToggleDisplacement;
			uniform float _DisplacementMultiplier;
			uniform float _DisplacementMinSize;
			uniform float _DisplacementMaxSize;
			uniform sampler2D _DisplacementTexture;
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
			uniform float _ToggleVertexPositionUV;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float4 _ScrollColor;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform float _EmissionEmit;
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
				float cos1531 = cos( radians( _DisplacementRotation ) );
				float sin1531 = sin( radians( _DisplacementRotation ) );
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

				v.vertex.xyz += (( _ToggleDisplacement )?( ( float4( ( v.normal * clampResult1546 ) , 0.0 ) * tex2Dlod( _DisplacementTexture, float4( panner1530, 0, 0.0) ) ) ):( float4( 0,0,0,0 ) )).rgb;
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
				float4 temp_output_1356_0 = ( tex2DNode76 * _BaseColor );
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
				float4 tex2DNode1301 = tex2D( AuraTexture1, ( ( i.ase_texcoord10.xyz * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy );
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
				float2 texCoord599 = i.ase_texcoord1.xyz.xy * _ScrollSize + _ScrollOffset;
				float temp_output_604_0 = radians( _ScrollRotation );
				float cos598 = cos( temp_output_604_0 );
				float sin598 = sin( temp_output_604_0 );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float cos1443 = cos( temp_output_604_0 );
				float sin1443 = sin( temp_output_604_0 );
				float2 rotator1443 = mul( ( ( i.ase_texcoord10.xyz * float3( _ScrollSize ,  0.0 ) ) + float3( _ScrollOffset ,  0.0 ) ).xy - float2( 0.5,0.5 ) , float2x2( cos1443 , -sin1443 , sin1443 , cos1443 )) + float2( 0.5,0.5 );
				float2 panner1437 = ( 1.0 * _Time.y * _ScrollSpeed + rotator1443);
				#ifdef _SCROLLTOGGLE_ON
				float4 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * ( tex2D( _ScrollTex, (( _ToggleVertexPositionUV )?( panner1437 ):( panner597 )) ) * _ScrollColor ) * _ScrollEmit );
				#else
				float4 staticSwitch591 = float4( 0,0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord1.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
				float3 hsvTorgb585 = HSVToRGB( float3(( _EmissionHue + hsvTorgb584.x ),hsvTorgb584.y,hsvTorgb584.z) );
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2DNode1301 ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) + ( ( ( saturate( ( ( _SpecularOffset + dotResult1046 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, staticSwitch1140 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( (( _CubemapToggle )?( lerpResult1173 ):( temp_output_409_0 )) )) )) )) )) + ( staticSwitch591 + float4( ( hsvTorgb585 * _EmissionEmit ) , 0.0 ) ) );
				
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
Node;AmplifyShaderEditor.CommentaryNode;361;-826.0327,3069.306;Inherit;False;1487.958;514.1742;;14;666;665;668;664;667;559;562;561;560;358;360;359;356;671;Rotation & Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;226;1205.992,1592.955;Inherit;False;1266.631;394.3788;;6;1100;53;54;835;834;170;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1951.908,2726.178;Inherit;False;1855.488;608.4642;;23;970;406;408;857;625;60;59;971;624;409;769;57;74;58;378;381;1164;1165;1280;1368;1369;1370;1371;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;11;427;858;423;420;426;428;424;558;430;429;863;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;582;-427.4952,-647.8214;Inherit;False;2084.161;706.9561;;18;1440;1431;593;607;596;588;605;601;600;606;604;599;598;597;1437;1439;1442;1441;ScrollingMasked;0.9008027,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;1935.712,-658.9301;Inherit;False;1931.061;541.7088;;8;609;587;586;584;603;602;589;585;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;3652.362,-525.8543;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;868;2243.345,2026.729;Inherit;False;1553.953;676.2176;;14;883;882;878;877;869;881;1213;1177;1215;1179;1212;1174;1173;1379;Cubemap;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;1530.545,4393.315;Inherit;False;2208.828;523.0707;;20;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1278;1271;1272;1354;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;57;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;56;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;58;0;Create;True;0;0;0;False;0;False;0.01;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1036;1948.115,3416.839;Inherit;False;1815.989;416.4595;;10;822;771;823;676;687;678;688;768;677;702;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;59;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;43;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
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
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;52;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;49;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;48;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1100;1236.263,1687.058;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;25;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1126;743.1819,2712.691;Inherit;False;1190.214;628.0172;;12;1358;1128;1356;1355;76;1127;1134;1129;1357;1359;1361;1362;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;1121;1402.251,1309.626;Inherit;False;Property;_NormalMapUV;Normal Map UV;24;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
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
Node;AmplifyShaderEditor.StaticSwitch;1140;2433.567,1365.782;Inherit;False;Property;_SpecularMaskUV;Specular Mask UV;51;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1150;1912.775,3896.888;Inherit;False;1827.885;466.4214;;13;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;Halftone Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;971;2840.43,3203.384;Inherit;False;Property;_CustomLightingColorToggle;Custom Lighting Color Toggle;29;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;625;2468.434,2798.943;Inherit;False;Property;_CustomShadowColorToggle;Custom Shadow Color Toggle;31;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;1987.544,3485.072;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;677;2586.879,3499.247;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2162.28,3495.557;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;688;3117.009,3501.863;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2754.028,3501.268;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;2954.132,3501.398;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.Vector2Node;771;1987.049,3651.481;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;38;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;30,30;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector4Node;381;2380.569,3152.827;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;408;3459.78,2774.295;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1151;3046.938,3909.99;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1152;3091.5,4061.218;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1153;3493.543,3963.754;Inherit;False;halftone;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1154;2895.938,4037.99;Inherit;True;0;0;1;0;1;True;1;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;15;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.SmoothstepOpNode;1155;3261.939,3961.99;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;2790.938,3925.99;Inherit;False;Property;_HalftoneShadowSoftness;Halftone Shadow Softness;41;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1157;2636.501,4140.219;Inherit;False;Property;_HalftoneShadowScale;Halftone Shadow Scale;42;0;Create;True;0;0;0;False;0;False;15;15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1158;1949.899,3933.945;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1159;2122.902,3933.945;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleDivideOpNode;1160;2287.902,4079.948;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1161;2166.306,4177.886;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1162;2422.846,4028.05;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenParams;1163;1981.303,4158.885;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1165;2746.718,2749.383;Inherit;False;1153;halftone;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2262.436,2939.444;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;74;2584.954,2939.317;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2381.499,2936.288;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;1975.99,2955.268;Float;False;Property;_ShadowOffset;Shadow Offset;35;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0.25;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;1982.065,3036.955;Float;False;Property;_ShadowSoftness;Shadow Softness;33;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.76;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1164;2743.178,2934.047;Inherit;False;Property;_HalftoneShadowToggle;Halftone Shadow Toggle;40;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;406;3006.165,2808.667;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;624;1971.434,2771.943;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;32;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;378;2222.782,2767.966;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;970;2598.43,3165.384;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;30;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;854;2535.542,1483.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;44;0;Create;True;0;0;0;False;0;False;-0.6;0;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;2634.931,1593.814;Float;False;Property;_ExtraLightSoftness;Extra Light Softness;45;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;1.52;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3526.522,480.8262;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;882;2957.417,2103.48;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3950.549,366.7159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1248;2165.021,-104.3563;Inherit;False;1636.984;483.7798;;12;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1249;3287.513,233.0792;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;63;0;Create;True;0;0;0;False;0;False;0.6676344;0.276;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;3344.826,-58.49818;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1251;3563.497,-54.13026;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;2792.383,149.5396;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1253;2664.383,148.5396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1254;2200.382,117.5394;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1255;2424.384,37.5399;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1256;2200.382,-42.4601;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1257;2785.522,248.4332;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;61;0;Create;True;0;0;0;False;0;False;10;10;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1258;2360.383,293.5399;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;62;0;Create;True;0;0;0;False;0;False;0.65;0.53;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1259;2950.868,143.6488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1260;3110.38,-57.46034;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1213;3004.143,2321.712;Inherit;False;Property;_CubemapColorize;Cubemap Colorize;112;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;587;2528.248,-595.9348;Inherit;False;Property;_EmissionHue;Emission Hue;27;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;591;1672.215,-635.2302;Inherit;False;Property;_ScrollToggle;Scroll Toggle;116;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3495.497,-458.4518;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;585;3270.88,-455.7204;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;602;3295.888,-300.9866;Inherit;False;Property;_EmissionEmit;Emission Emit;28;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;586;3148.466,-515.5188;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RGBToHSVNode;584;2929.032,-533.7488;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1116;1204.251,1238.626;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1117;1199.251,1319.626;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1118;1201.251,1397.626;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1137;1208.396,1472.822;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1278;1555.419,4580.922;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;1277;1574.636,4447.96;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;69;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1586.022,4735.168;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;70;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;1853.227,4691.001;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;1841.081,4465.685;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3230.207,4815.911;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;74;0;Create;True;0;0;0;False;0;False;0.008;0.008;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3229.207,4746.911;Inherit;False;Property;_OutlineMinSize;Outline Min Size;73;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3064.207,4641.908;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;893;3435.207,4678.911;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3583.732,4653.152;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2826.732,4669.152;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;72;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2251.119,4725.167;Inherit;False;Property;_OutlineColor;Outline Color;65;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.5943396,0.5943396,0.5943396,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2538.744,4599.543;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;67;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3447.785,4468.922;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;66;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1773.363,4596.447;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3345.579,3483.154;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0.5;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1173;3572.586,2100.637;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3608.507,2751.897;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3289.184,2846.9;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3542.383,3055.424;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;36;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1212;3287.129,2127.974;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;3369.755,3090.788;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3272.217,4517.877;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1099;3870.993,767.5627;Inherit;False;Property;_CubemapToggle;Cubemap Toggle;108;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1282;5867.152,458.1395;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1283;5867.152,525.1395;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1286;5867.152,346.1395;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.CommentaryNode;1287;1693.828,5613.134;Inherit;False;1707.826;491.2855;;18;1308;1306;1302;1301;1300;1299;1297;1295;1292;1291;1290;1289;1288;1353;1309;1303;1304;1516;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1315;1718.418,6212.256;Inherit;False;1976.592;475.3736;;13;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4127.306,372.4348;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;55;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;5005.834,342.5815;Inherit;False;Property;_SpecularToggle;Specular Toggle;47;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;5074.196,593.3636;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1312;4695.196,745.3636;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;103;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1314;5305.196,362.3637;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;102;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1313;5221.181,489.6377;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1329;4382.865,474.7703;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1330;4490.865,463.7703;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;104;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1177;2952.084,2437.238;Inherit;False;Property;_CubemapFresnelBias;Cubemap Fresnel Bias;113;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;2961.982,2528.056;Inherit;False;Property;_CubemapFresnelScale;Cubemap Fresnel Scale;114;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1179;2974.084,2620.238;Inherit;False;Property;_CubemapFresnelPower;Cubemap Fresnel Power;115;0;Create;True;0;0;0;False;0;False;1;1;0;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;1174;3241.386,2383.138;Inherit;True;Standard;WorldNormal;ViewDir;True;True;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0.05;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1354;2046.102,4529.038;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Opacity;60;0;Create;False;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;869;2479.349,2073.356;Inherit;True;Property;_CubemapTexture;Cubemap Texture;109;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;34b1a0522b0f44f48afe8efdffa7cb39;34b1a0522b0f44f48afe8efdffa7cb39;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;676;2306.815,3497.671;Inherit;True;Property;_ShadowTexture;Shadow Texture;37;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;b9552255b337ed1468609738595c184a;6a470d8d82609b7479b03e6c05bb84b6;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2222.841,4487.916;Inherit;True;Property;OutlineTexture;Outline Texture;68;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;881;3479.681,2499.267;Inherit;True;Property;cubemapmask;Cubemap Mask;110;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;835;1512.257,1636.757;Inherit;True;Property;_NormalMap;Normal Map;23;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;50;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.855,-507.4146;Inherit;True;Property;_Emission;Emission Texture;26;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldReflectionVector;877;2260.083,2076.667;Inherit;True;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1916.417,1818.647;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;170;2018.346,1671.201;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4874.549,374.5685;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RotatorNode;356;-287.1256,3123.4;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;359;-814.1263,3121.401;Inherit;False;Property;_BaseRotationCenter;Base Rotation Center;17;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;360;-813.1261,3243.401;Inherit;False;Property;_BaseRotationSpeed;Base Rotation Speed;18;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;358;-577.1265,3246.401;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;256.9173,3356.452;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;666;451.9184,3258.453;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;668;95.9165,3350.452;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;664;98.9165,3135.455;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;-571.0063,3333.623;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;562;-813.0032,3329.113;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;-416.9966,3334.118;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;561;-812.7609,3409.414;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;16;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.StaticSwitch;1145;441.3592,2804.401;Inherit;False;Property;_DetailTextureUV;Detail Texture UV;21;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1266;180.8577,2704.953;Inherit;False;1113;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1267;175.8577,2785.953;Inherit;False;1114;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;177.8577,2863.953;Inherit;False;1115;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1269;185.0027,2939.149;Inherit;False;1136;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;667;-191.0841,3269.453;Inherit;True;Property;RotationMask;Base Rotation Mask;15;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;76;796.9797,2755.466;Inherit;True;Property;_MainTex;Base Texture;3;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;fa7ef22070732074aa328345f82c8cc3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1355;1102.67,2764.708;Inherit;False;Property;_BaseColor;Base Color;2;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1356;1321.742,2764.691;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1127;802.7906,3064.463;Inherit;True;Property;_DetailTexture;Detail Texture;20;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1129;1682.331,3128.082;Inherit;False;Property;_DetailTextureToggle;Detail Texture Toggle;19;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1357;1302.104,2866.149;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1361;1033.288,2964.021;Inherit;False;Property;_VertexColorsOpacity;Vertex Colors Opacity;5;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1362;1493.316,2916.45;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1359;1671.288,2772.021;Inherit;False;Property;_VertexColorsToggle;Vertex Colors Toggle;4;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1128;1447.581,3150.246;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1358;1498.156,2823.131;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1134;834.5918,3263.055;Inherit;False;Property;_DetailTextureBlend;Detail Texture Opacity;22;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;823;3014.263,3729.169;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;39;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;883;2838.013,2224.182;Inherit;False;Property;_CubemapBlend;Cubemap Opacity;111;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Opacity;46;0;Create;False;0;0;0;False;0;False;2;0.84;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1363;3126.626,972.8997;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1364;2921.378,966.0604;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1365;2579.581,945.6411;Inherit;False;Property;_SpecularSoftness;Specular Softness;53;0;Create;True;0;0;0;False;0;False;0.01;1.49;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1366;2538.416,1019.938;Inherit;False;Property;_SpecularOffset;Specular Offset;54;0;Create;True;0;0;0;False;0;False;0;-0.6;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1367;2810.855,1043.504;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;3304.397,963.29;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1368;2850.257,3061.286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1369;2580.257,3053.286;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;34;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1370;3010.257,3054.286;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1371;3153.257,3049.286;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;878;3663.182,2356.667;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1379;3517.939,2372.75;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5604.492,351.2195;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;671;-581.4872,3112.996;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;1411.18,-357.1161;Inherit;True;3;3;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;607;1035.823,-431.4196;Inherit;True;Property;_ScrollMask;Scroll Mask;120;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;596;1167.599,-221.808;Inherit;False;Property;_ScrollEmit;Scroll Emit;125;0;Create;True;0;0;0;False;0;False;1;0.38;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1442;628.1938,-373.926;Inherit;False;Property;_ScrollColor;Scroll Color;118;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,0.8744493,0.7877358,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1441;873.1938,-178.926;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1447;4220.027,4713.614;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1446;3912.705,4751.787;Inherit;False;Property;_VertexColorsDefineOutlineThickness;Vertex Colors Define Outline Thickness;80;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1445;3769.636,4720.734;Inherit;False;Constant;_Float0;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1444;3724.672,4798.264;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1453;4211.943,4891.475;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PannerNode;597;285.1138,-142.8278;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;599;-164.4463,-311.219;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RadiansOpNode;604;-109.4944,-98.39233;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;606;-394.6348,-97.39154;Inherit;False;Property;_ScrollRotation;Scroll Rotation;124;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;600;-379.1793,-218.5206;Inherit;False;Property;_ScrollOffset;Scroll Offset;122;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;601;-349.8132,-342.2057;Inherit;False;Property;_ScrollSize;Scroll Size;121;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;605;74.52506,-116.8549;Inherit;False;Property;_ScrollSpeed;Scroll Speed;123;0;Create;True;0;0;0;False;0;False;0,1;0,-0.5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RotatorNode;598;82.66949,-310.537;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1443;72.19379,-732.926;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PannerNode;1437;109.1388,-571.103;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1440;-44.19415,-560.7334;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1439;-241.7071,-568.5433;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;593;512.1016,-187.7853;Inherit;True;Property;_ScrollTex;Scroll Tex;119;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1454;2444.091,6745.55;Inherit;False;1290.362;551.9576;;11;1461;1458;1459;1460;1469;1457;1463;1464;1468;1467;1466;Silhouette Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1470;2316.641,5000.656;Inherit;False;1290.362;551.9576;;10;1481;1480;1479;1478;1477;1476;1475;1474;1473;1471;Outline Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1305;3507.25,5603.462;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1316;2500.732,6457.747;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;2340.733,6457.747;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1318;2212.733,6456.747;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1319;2660.73,6451.747;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;3189.599,6281.624;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1322;1748.735,6425.747;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1323;1972.737,6345.747;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;1748.735,6265.747;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1326;2333.872,6556.64;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;105;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1327;1908.736,6601.747;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;106;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1325;2910.633,6305.659;Inherit;False;1305;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1321;3425.543,6311.358;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;1931.037,5705.191;Inherit;False;2;2;0;FLOAT3;1,1,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;1952.794,5891.697;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1304;1717.726,5987.649;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;88;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;1303;1744.868,5912.195;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1309;1699.73,5796.568;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;87;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1353;2126.59,5757.733;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;3126.126,6503.022;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Opacity;107;0;Create;False;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1448;3837.384,5910.078;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1450;3386.993,5917.197;Inherit;False;Constant;_Float1;Float 0;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1451;3342.029,5994.729;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1449;3530.062,5948.25;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineThickness;Vertex Colors Define Silhouette Outline Thickness;101;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1452;4011.451,5915.699;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1466;2827.392,6832.638;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1468;2458.484,6821.347;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1467;2629.879,6824.828;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1464;3143.725,6841.268;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1463;2954.78,6841.445;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1457;2803.092,7177.979;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1459;2621.407,7045.851;Inherit;False;Property;_SilhouetteDisplacementOffset;Silhouette Displacement Offset;98;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;1469;3387.688,6836.586;Inherit;True;Property;_SilhouetteDisplacementTexture;Silhouette Displacement Texture;96;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1458;2452.952,7176.979;Inherit;False;Property;_SilhouetteDisplacementRotation;Silhouette Displacement Rotation;99;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1461;2837.319,6956.234;Inherit;False;Property;_SilhouetteDisplacementScrolling;Silhouette Displacement Scrolling;100;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1460;2360.773,6967.166;Inherit;False;Property;_SilhouetteDisplacementTiling;Silhouette Displacement Tiling;97;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1487;5632.297,529.6273;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1149;5336.743,559.6833;Inherit;False;Property;_Opacity;Opacity;1;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;1375;4306.959,5390.14;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1376;4534.992,5429.662;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1377;4715.992,5399.662;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineOpacity;Vertex Colors Define Silhouette Outline Opacity;84;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1490;4105.432,5527.677;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1491;3807.207,5583.444;Inherit;False;Property;_SilhouetteOpacity;Silhouette Opacity;81;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1492;5088.75,5477.957;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1372;4373.1,4300.494;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1374;4788.133,4339.017;Inherit;False;Property;_VertexColorsDefineOutlineOpacity;Vertex Colors Define Outline Opacity;71;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1488;4140.58,4359.478;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1489;3842.356,4415.246;Inherit;False;Property;_OutlineOpacity;Outline Opacity;64;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1493;5207.335,4376.242;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1495;5208.915,5779.691;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FresnelNode;1496;5150.696,5142.814;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1.24;False;3;FLOAT;0.65;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1285;5870.597,5533.89;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.RangedFloatNode;1499;4805.786,5150.179;Inherit;False;Property;_SilhouetteOpacityFresnelScale;Silhouette Opacity Fresnel Scale;90;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1500;4808.948,5247.973;Inherit;False;Property;_SilhouetteOpacityFresnelPower;Silhouette Opacity Fresnel Power;91;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1498;5676.87,5514.6;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClampOpNode;1501;5654.184,5349.616;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1301;2610.134,5650.972;Inherit;True;Property;AuraTexture1;Silhouette Texture;86;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;1297;2889.397,5648.585;Inherit;False;Property;_SilhouetteColor;Silhouette Color;83;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1302;3139.456,5661.901;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;85;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1502;3735.959,5753.494;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1503;3548.959,5819.494;Inherit;False;Property;_SilhouetteEmit;Silhouette Emit;82;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1497;5447.227,5176.459;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1504;5460.385,5044.636;Inherit;False;Property;_InvertSilhouetteOpacityFresnel;Invert Silhouette Opacity Fresnel;92;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1494;5281.72,5571.853;Inherit;False;Property;_UseSilhouetteTextureasAlphaMask;Use Silhouette Texture as Alpha Mask;89;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1505;6875.762,779.3174;Inherit;False;Property;_AlphaClipping;Alpha Clipping;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClipNode;1506;7187.04,448.5532;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1527;5851.897,-295.1775;Inherit;False;1439.202;547.705;;11;1538;1537;1536;1535;1534;1533;1532;1531;1530;1529;1528;Displacement;0.610557,0,0.8207547,1;0;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1284;5689.126,4417.907;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;0;5;False;;10;False;;0;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.PosVertexDataNode;1514;2261.434,6803.359;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1517;-456.2456,-567.2236;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1471;2699.942,5087.745;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1474;2502.429,5079.935;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1475;3016.275,5096.375;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1476;2827.33,5096.551;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RadiansOpNode;1477;2675.642,5433.085;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1478;3260.238,5091.692;Inherit;True;Property;_OutlineDisplacementTexture;Outline Displacement Texture;75;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1479;2493.957,5299.958;Inherit;False;Property;_OutlineDisplacementOffset;Outline Displacement Offset;77;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1480;2393.502,5437.086;Inherit;False;Property;_OutlineDisplacementRotation;Outline Displacement Rotation;78;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1473;2224.323,5219.272;Inherit;False;Property;_OutlineDisplacementTiling;Outline Displacement Tiling;76;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1481;2754.838,5213.349;Inherit;False;Property;_OutlineDisplacementScrolling;Outline Displacement Scrolling;79;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PosVertexDataNode;1515;2257.309,5063.437;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RadiansOpNode;1532;6359.738,137.2515;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1535;6077.598,141.2525;Inherit;False;Property;_DisplacementRotation;Displacement Rotation;14;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2809.247,4758.334;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3052.732,4745.156;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1281;7703.206,309.7404;Float;False;True;-1;2;ASEMaterialInspector;100;16;Pupsi/Pupsi BRC Shader (Displacement);c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Transparent=RenderType;True;2;False;0;True;True;0;5;False;;10;False;;0;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1528;6372.339,-221.0883;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1529;6174.826,-228.8984;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PannerNode;1530;6688.672,-212.4584;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,1;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;1531;6499.728,-212.2826;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode;1538;5912.698,-258.1541;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;1534;6166.354,-8.875324;Inherit;False;Property;_DisplacementOffset;Displacement Offset;12;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1537;6427.235,-95.48419;Inherit;False;Property;_DisplacementScrolling;Displacement Scrolling;13;0;Create;True;0;0;0;False;0;False;0,1;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1536;5879.712,-102.319;Inherit;False;Property;_DisplacementTiling;Displacement Tiling;11;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;1533;6932.636,-217.1415;Inherit;True;Property;_DisplacementTexture;Displacement Texture;10;1;[NoScaleOffset];Create;True;0;0;0;False;1;BigTexture;False;-1;None;3c8cc44fb4eabd64a9138c767fa00e2b;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1516;1721.843,5648.931;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;2601.684,5840.928;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1290;2972.684,5877.93;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1291;2346.725,5957.353;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1299;2765.01,6027.521;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;95;0;Create;True;0;0;0;False;0;False;0.016;0.015;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1306;2762.684,5949.93;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;94;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1289;2590.209,5944.175;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;3153.946,5860.357;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;2307.209,5664.172;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;93;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1539;7582.385,-158.0423;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1541;7496.216,144.9377;Inherit;False;Property;_ToggleDisplacement;Toggle Displacement;6;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1545;7243.621,-710.9155;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1546;7614.621,-673.9135;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1547;6988.662,-594.4904;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1550;7232.146,-607.6687;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1548;7406.946,-524.3221;Inherit;False;Property;_DisplacementMaxSize;Displacement Max Size;9;0;Create;True;0;0;0;False;0;False;0.016;0.015;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1551;7823.116,-613.4215;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1552;6949.146,-887.6718;Inherit;False;Property;_DisplacementMultiplier;Displacement Multiplier;7;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1549;7404.621,-601.9133;Inherit;False;Property;_DisplacementMinSize;Displacement Min Size;8;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1373;4603.133,4343.017;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClipNode;1508;5401.444,4375.374;Inherit;True;3;0;FLOAT;1;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1431;338.4131,-371.0658;Inherit;False;Property;_ToggleVertexPositionUV;Toggle Vertex Position UV;117;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
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
WireConnection;855;1;381;0
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
WireConnection;58;0;54;0
WireConnection;58;1;59;0
WireConnection;74;0;57;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;1164;0;74;0
WireConnection;1164;1;1165;0
WireConnection;406;0;625;0
WireConnection;406;1;971;0
WireConnection;406;2;1371;0
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
WireConnection;603;0;585;0
WireConnection;603;1;602;0
WireConnection;585;0;586;0
WireConnection;585;1;584;2
WireConnection;585;2;584;3
WireConnection;586;0;587;0
WireConnection;586;1;584;1
WireConnection;584;0;609;0
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
WireConnection;1173;2;878;0
WireConnection;409;0;769;0
WireConnection;409;1;408;0
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;769;0;1280;0
WireConnection;769;1;822;0
WireConnection;1212;0;409;0
WireConnection;1212;1;882;0
WireConnection;1212;2;1213;0
WireConnection;1280;0;857;0
WireConnection;1280;1;1129;0
WireConnection;923;0;472;0
WireConnection;923;1;1272;0
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
WireConnection;1354;0;1279;0
WireConnection;1354;1;1274;0
WireConnection;869;1;877;0
WireConnection;676;1;768;0
WireConnection;1271;1;1354;0
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
WireConnection;1356;0;76;0
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
WireConnection;1368;0;1369;0
WireConnection;1370;0;1164;0
WireConnection;1370;1;1368;0
WireConnection;1371;0;1370;0
WireConnection;878;0;1379;0
WireConnection;878;1;881;0
WireConnection;1379;0;1174;0
WireConnection;472;0;1314;0
WireConnection;472;1;589;0
WireConnection;588;0;607;1
WireConnection;588;1;1441;0
WireConnection;588;2;596;0
WireConnection;1441;0;593;0
WireConnection;1441;1;1442;0
WireConnection;1447;0;888;0
WireConnection;1447;1;1446;0
WireConnection;1446;0;1445;0
WireConnection;1446;1;1444;0
WireConnection;1453;0;1447;0
WireConnection;1453;1;1478;0
WireConnection;597;0;598;0
WireConnection;597;2;605;0
WireConnection;599;0;601;0
WireConnection;599;1;600;0
WireConnection;604;0;606;0
WireConnection;598;0;599;0
WireConnection;598;2;604;0
WireConnection;1443;0;1440;0
WireConnection;1443;2;604;0
WireConnection;1437;0;1443;0
WireConnection;1437;2;605;0
WireConnection;1440;0;1439;0
WireConnection;1440;1;600;0
WireConnection;1439;0;1517;0
WireConnection;1439;1;601;0
WireConnection;593;1;1431;0
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
WireConnection;1308;0;1516;0
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
WireConnection;1467;0;1514;0
WireConnection;1467;1;1460;0
WireConnection;1464;0;1463;0
WireConnection;1464;2;1461;0
WireConnection;1463;0;1466;0
WireConnection;1463;2;1457;0
WireConnection;1457;0;1458;0
WireConnection;1469;1;1464;0
WireConnection;1487;1;1149;0
WireConnection;1376;0;1375;0
WireConnection;1376;1;1490;0
WireConnection;1377;0;1490;0
WireConnection;1377;1;1376;0
WireConnection;1490;0;76;4
WireConnection;1490;1;1491;0
WireConnection;1492;0;1377;0
WireConnection;1492;1;1301;4
WireConnection;1374;0;1488;0
WireConnection;1374;1;1373;0
WireConnection;1488;0;76;4
WireConnection;1488;1;1489;0
WireConnection;1493;0;1374;0
WireConnection;1493;1;1271;4
WireConnection;1495;0;1492;0
WireConnection;1495;1;1301;0
WireConnection;1496;2;1499;0
WireConnection;1496;3;1500;0
WireConnection;1285;0;1502;0
WireConnection;1285;1;1498;0
WireConnection;1285;2;1452;0
WireConnection;1498;0;1501;0
WireConnection;1498;1;1494;0
WireConnection;1501;0;1504;0
WireConnection;1301;1;1353;0
WireConnection;1302;0;1297;0
WireConnection;1302;1;1301;0
WireConnection;1502;0;1302;0
WireConnection;1502;1;1503;0
WireConnection;1497;0;1496;0
WireConnection;1504;0;1496;0
WireConnection;1504;1;1497;0
WireConnection;1494;0;1492;0
WireConnection;1494;1;1495;0
WireConnection;1506;1;76;4
WireConnection;1506;2;1505;0
WireConnection;1284;0;924;0
WireConnection;1284;1;1508;0
WireConnection;1284;2;1453;0
WireConnection;1471;0;1474;0
WireConnection;1471;1;1479;0
WireConnection;1474;0;1515;0
WireConnection;1474;1;1473;0
WireConnection;1475;0;1476;0
WireConnection;1475;2;1481;0
WireConnection;1476;0;1471;0
WireConnection;1476;2;1477;0
WireConnection;1477;0;1480;0
WireConnection;1478;1;1475;0
WireConnection;1532;0;1535;0
WireConnection;1281;0;472;0
WireConnection;1281;1;1506;0
WireConnection;1281;2;1541;0
WireConnection;1528;0;1529;0
WireConnection;1528;1;1534;0
WireConnection;1529;0;1538;0
WireConnection;1529;1;1536;0
WireConnection;1530;0;1531;0
WireConnection;1530;2;1537;0
WireConnection;1531;0;1528;0
WireConnection;1531;2;1532;0
WireConnection;1533;1;1530;0
WireConnection;1288;0;1300;0
WireConnection;1288;1;1291;0
WireConnection;1290;0;1288;0
WireConnection;1290;1;1306;0
WireConnection;1290;2;1299;0
WireConnection;1292;0;1289;0
WireConnection;1292;1;1290;0
WireConnection;1539;0;1551;0
WireConnection;1539;1;1533;0
WireConnection;1541;1;1539;0
WireConnection;1545;0;1552;0
WireConnection;1545;1;1547;0
WireConnection;1546;0;1545;0
WireConnection;1546;1;1549;0
WireConnection;1546;2;1548;0
WireConnection;1551;0;1550;0
WireConnection;1551;1;1546;0
WireConnection;1373;0;1372;0
WireConnection;1373;1;1488;0
WireConnection;1508;1;1493;0
WireConnection;1508;2;1505;0
WireConnection;1431;0;597;0
WireConnection;1431;1;1437;0
ASEEND*/
//CHKSM=35F8613EE19CA80F2957316BEDE0F3E48AEF1093