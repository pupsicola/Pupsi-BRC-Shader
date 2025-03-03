// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi BRC Shader Silhouette Outline"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		_AlphaClipping("Alpha Clipping", Range( 0 , 1)) = 0.5
		[NoScaleOffset]_MainTex("Base Texture", 2D) = "white" {}
		[NoScaleOffset]RotationMask("Base Rotation Mask", 2D) = "black" {}
		_BaseScrollSpeed("Base Scroll Speed", Vector) = (0,0,0,0)
		_BaseRotationCenter("Base Rotation Center", Vector) = (0,0,0,0)
		_BaseRotationSpeed("Base Rotation Speed", Float) = 0
		[Toggle]_DetailTextureToggle("Detail Texture Toggle", Float) = 0
		[NoScaleOffset]_DetailTexture("Detail Texture", 2D) = "white" {}
		[KeywordEnum(UV0,UV1,UV2,UV3)] _DetailTextureUV("Detail Texture UV", Float) = 0
		_DetailTextureBlend("Detail Texture Blend", Range( 0 , 1)) = 1
		[Toggle(_NORMALMAPTOGGLE_ON)] _NormalMapToggle("Normal Map Toggle", Float) = 0
		[NoScaleOffset]_NormalMap("Normal Map", 2D) = "bump" {}
		[KeywordEnum(UV0,UV1,UV2,UV3)] _NormalMapUV("Normal Map UV", Float) = 0
		[NoScaleOffset]_Emission("Emission Texture", 2D) = "black" {}
		_NormalMapIntensity("Normal Map Intensity", Float) = 1
		_EmissionHue("Emission Hue", Range( 0 , 1)) = 0
		_EmissionEmit("Emission Emit", Float) = 1
		[Shadow Options][Toggle]_CustomLightingColorToggle("Custom Lighting Color Toggle", Float) = 0
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		[Shadow Options][Toggle]_CustomShadowColorToggle("Custom Shadow Color Toggle", Float) = 0
		_CustomShadowColor("Custom Shadow Color", Color) = (0,0,0,0)
		_ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
		_ShadowOffset("Shadow Offset", Range( -1 , 1)) = 0
		[Toggle]_AnimatedShadowOffsetToggle("Animated Shadow Offset Toggle", Float) = 0
		_AnimatedShadowOffsetSpeed("Animated Shadow Offset Speed", Float) = 14
		_AnimatedShadowOffsetMin("Animated Shadow Offset Min", Float) = 0
		_AnimatedShadowOffsetMax("Animated Shadow Offset Max", Float) = 0.05
		[Toggle]_ShadowTextureToggle("Shadow Texture Toggle", Float) = 0
		[NoScaleOffset]_ShadowTexture("Shadow Texture", 2D) = "white" {}
		_ShadowTextureTiling("Shadow Texture Tiling", Vector) = (14,14,0,0)
		_ShadowTextureBlend("Shadow Texture Blend", Range( 0 , 1)) = 0.5
		[Toggle]_HalftoneShadowToggle("Halftone Shadow Toggle", Float) = 0
		_HalftoneShadowSoftness("Halftone Shadow Softness", Float) = 0.5
		_HalftoneShadowScale("Halftone Shadow Scale", Float) = 15
		[Toggle]_SpecularToggle("Specular Toggle", Float) = 0
		[Toggle]_SpecularCustomColorToggle("Specular Custom Color Toggle", Float) = 0
		_SpecularCustomColor("Specular Custom Color", Color) = (1,1,1,0)
		[NoScaleOffset]_SpecularMask("Specular Mask", 2D) = "white" {}
		[KeywordEnum(UV0,UV1,UV2,UV3)] _SpecularMaskUV("Specular Mask UV", Float) = 0
		_SpecularBrightness("Specular Brightness", Float) = 1
		_SpecularPower("Specular Power", Float) = 15
		[Toggle]_ExtraLightToggle("Extra Light Toggle", Float) = 0
		_ExtraLightOffset("Extra Light Offset", Range( -1 , 0)) = -0.6
		_ExtraLightBlend("Extra Light Blend", Range( 0 , 10)) = 2
		[Toggle]_RimLightShadowToggle("Rim Light/Shadow Toggle", Float) = 0
		_RimLightColor("Rim Light Color", Color) = (1,1,1,1)
		[Toggle]_RimLightBlendBaseTexture("Rim Light Blend Base Texture", Float) = 1
		_RimLightPower("Rim Light Power", Range( 0.01 , 10)) = 0.01
		_RimLightOffset("Rim Light Offset", Range( 0 , 1)) = 0.65
		_RimLightBlend("Rim Light Blend", Range( 0 , 25)) = 25
		_RimShadowPower("Rim Shadow Power", Range( 0.01 , 10)) = 10
		_RimShadowOffset("Rim Shadow Offset", Range( -1 , 1)) = 0.65
		_RimShadowOpacity("Rim Shadow Opacity", Range( 0 , 1)) = 0.6676344
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		_SilhouetteColor("Silhouette Color", Color) = (1,1,1,1)
		[Toggle]_SilhouetteTextureToggle("Silhouette Texture Toggle", Float) = 0
		[NoScaleOffset]AuraTexture("Silhouette Texture", 2D) = "white" {}
		_SilhouetteTextureTiling("Silhouette Texture Tiling", Vector) = (1,1,0,0)
		_SilhouetteTextureScroll("Silhouette Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_SilhouetteOverlay("Silhouette Overlay", Float) = 0
		_SilhouetteOverlayOpacity("Silhouette Overlay Opacity", Range( 0 , 1)) = 0
		_SilhouetteMultiplier("Silhouette Multiplier", Float) = 0.01
		_SilhouetteMinSize("Silhouette Min Size", Float) = 0.01
		_SilhouetteMaxSize("Silhouette Max Size", Float) = 0.016
		[Toggle]_SilhouetteRimLightToggle("Silhouette Rim Light Toggle", Float) = 0
		_SilhouetteRimLightPower("Silhouette Rim Light Power", Range( 0.01 , 10)) = 0.7925499
		_SilhouetteRimLightOffset("Silhouette Rim Light Offset", Range( 0 , 1)) = 0.65
		_SilhouetteRimLightBlend("Silhouette Rim Light Blend", Range( 0 , 25)) = 25
		[NoScaleOffset]_MainTex1("Screen Space Texture", 2D) = "white" {}
		[NoScaleOffset]RotationMask1("Screen Space Mask", 2D) = "black" {}
		[Toggle]_ScreenSpaceEmit("Screen Space Emit", Float) = 0
		[Toggle]_ScreenSpaceMaskisScreenSpace("Screen Space Mask is Screen Space", Float) = 0
		_ScreenSpaceTiling("Screen Space Tiling", Float) = 1
		_ScreenSpaceScrollYSpeed("Screen Space Scroll Y Speed", Float) = 0
		_ScreenSpaceScrollXSpeed("Screen Space Scroll X Speed", Float) = 0
		[Toggle]_CubemapToggle("Cubemap Toggle", Float) = 0
		[NoScaleOffset]_CubemapTexture("Cubemap Texture", CUBE) = "white" {}
		[NoScaleOffset]cubemapmask("Cubemap Mask", 2D) = "white" {}
		_CubemapBlend("Cubemap Blend", Range( 0 , 1)) = 1
		[Toggle(_GLOWTOGGLE_ON)] _GlowToggle("Glow Toggle", Float) = 0
		[NoScaleOffset]_GlowMask("Glow Mask", 2D) = "white" {}
		_GlowColor("Glow Color", Color) = (1,0,0,1)
		[Toggle]_GlowCycle("Glow Cycle", Float) = 0
		_GlowSpeed("Glow Speed", Float) = 10
		_GlowEmit("Glow Emit", Float) = 1
		[Toggle]_FlipbookToggle("Flipbook Toggle", Float) = 0
		[NoScaleOffset]_FlipBookTexture("FlipBookTexture", 2D) = "white" {}
		[NoScaleOffset]_FlipBookMask("FlipBookMask", 2D) = "white" {}
		_FlipbookTiling("Flipbook Tiling", Vector) = (1,1,0,0)
		_FlipbookOffset("Flipbook Offset", Vector) = (0,0,0,0)
		_FlipbookColumns("Flipbook Columns", Float) = 8
		_FlipbookRows("Flipbook Rows", Float) = 8
		_FlipbookSpeed("Flipbook Speed", Float) = 1
		_FlipbookEmit("Flipbook Emit", Float) = 1
		[Toggle(_SCROLLTOGGLE_ON)] _ScrollToggle("Scroll Toggle", Float) = 0
		[NoScaleOffset]_ScrollTex("Scroll Tex", 2D) = "white" {}
		[NoScaleOffset]_ScrollMask("Scroll Mask", 2D) = "white" {}
		_ScrollHue("Scroll Hue", Range( 0 , 1)) = 0
		_ScrollSize("Scroll Size", Vector) = (1,1,0,0)
		_ScrollOffset("Scroll Offset", Vector) = (0,0,0,0)
		_ScrollSpeed("Scroll Speed", Vector) = (0,1,0,0)
		_ScrollRotation("Scroll Rotation", Range( 0 , 360)) = 0
		_ScrollEmit("Scroll Emit", Float) = 0
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
			Blend One Zero, SrcAlpha OneMinusSrcAlpha
			AlphaToMask Off
			Cull Off
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
			#pragma shader_feature_local _NORMALMAPTOGGLE_ON
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
			uniform float _CubemapToggle;
			uniform float _ScreenSpaceEmit;
			uniform float _SpecularToggle;
			uniform float _SilhouetteRimLightToggle;
			uniform float _RimLightShadowToggle;
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
			uniform float _AnimatedShadowOffsetToggle;
			uniform float _ShadowOffset;
			uniform float _AnimatedShadowOffsetSpeed;
			uniform float _AnimatedShadowOffsetMin;
			uniform float _AnimatedShadowOffsetMax;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D RotationMask1;
			uniform float _ScreenSpaceMaskisScreenSpace;
			uniform sampler2D _MainTex1;
			uniform float _ScreenSpaceScrollXSpeed;
			uniform float _ScreenSpaceScrollYSpeed;
			uniform float _ScreenSpaceTiling;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
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
			uniform sampler2D AuraTexture;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _FlipbookToggle;
			uniform sampler2D _FlipBookTexture;
			uniform float2 _FlipbookTiling;
			uniform float2 _FlipbookOffset;
			uniform float _FlipbookColumns;
			uniform float _FlipbookRows;
			uniform float _FlipbookSpeed;
			uniform sampler2D _FlipBookMask;
			uniform float _FlipbookEmit;
			uniform float _SpecularPower;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform samplerCUBE _CubemapTexture;
			uniform sampler2D cubemapmask;
			uniform float _CubemapBlend;
			uniform sampler2D _ScrollMask;
			uniform float _ScrollHue;
			uniform sampler2D _ScrollTex;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform float _EmissionEmit;
			uniform float _GlowCycle;
			uniform float4 _GlowColor;
			uniform float _GlowSpeed;
			uniform sampler2D _GlowMask;
			uniform float _GlowEmit;
			uniform float _SilhouetteOverlayOpacity;
			uniform float _AlphaClipping;
					float2 voronoihash1480( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1480( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
						 		float2 o = voronoihash1480( n + g );
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
			};

			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord1.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord7.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord8 = screenPos;
				
				o.ase_texcoord2.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord3.xy = v.ase_texcoord1.xy;
				o.ase_texcoord3.zw = v.ase_texcoord2.xy;
				o.ase_texcoord4.xy = v.ase_texcoord3.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float2 texCoord1515 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01517 = texCoord1515;
				float2 texCoord1516 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11518 = texCoord1516;
				float2 texCoord1519 = i.ase_texcoord3.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21520 = texCoord1519;
				float2 texCoord1521 = i.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31522 = texCoord1521;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1525 = UV01517;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1525 = UV11518;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1525 = UV21520;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1525 = UV31522;
				#else
				float2 staticSwitch1525 = UV01517;
				#endif
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1525 ), _NormalMapIntensity );
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				#ifdef _NORMALMAPTOGGLE_ON
				float3 staticSwitch843 = worldNormal834;
				#else
				float3 staticSwitch843 = ase_worldNormal;
				#endif
				float3 normalizeResult170 = normalize( staticSwitch843 );
				float3 ase_worldPos = i.ase_texcoord7.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + (( _AnimatedShadowOffsetToggle )?( (_AnimatedShadowOffsetMin + (sin( ( _Time.y * _AnimatedShadowOffsetSpeed ) ) - 0.0) * (_AnimatedShadowOffsetMax - _AnimatedShadowOffsetMin) / (1.0 - 0.0)) ):( _ShadowOffset )) ) / _ShadowSoftness );
				float time1480 = 0.0;
				float2 voronoiSmoothId1480 = 0;
				float4 screenPos = i.ase_texcoord8;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1494 = ase_screenPosNorm;
				float4 appendResult1496 = (float4(break1494.x , ( break1494.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1480 = appendResult1496.xy * _HalftoneShadowScale;
				float2 id1480 = 0;
				float2 uv1480 = 0;
				float voroi1480 = voronoi1480( coords1480, time1480, id1480, uv1480, 0, voronoiSmoothId1480 );
				float smoothstepResult1481 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1480 ) , dotResult54);
				float halftone1484 = smoothstepResult1481;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , (( _HalftoneShadowToggle )?( halftone1484 ):( saturate( temp_output_57_0 ) )));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ShadowSoftness ) ));
				float2 texCoord671 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord2.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 temp_output_666_0 = ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) );
				float4 tex2DNode76 = tex2D( _MainTex, temp_output_666_0.rg );
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1537 = UV01517;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1537 = UV11518;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1537 = UV21520;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1537 = UV31522;
				#else
				float2 staticSwitch1537 = UV01517;
				#endif
				float4 blendOpSrc1542 = tex2D( _DetailTexture, staticSwitch1537 );
				float4 blendOpDest1542 = tex2DNode76;
				float4 lerpBlendMode1542 = lerp(blendOpDest1542,( blendOpSrc1542 * blendOpDest1542 ),_DetailTextureBlend);
				float4 tex2DNode998 = tex2D( RotationMask1, (( _ScreenSpaceMaskisScreenSpace )?( ase_screenPosNorm ):( temp_output_666_0 )).xy );
				float4 temp_output_1001_0 = ( 1.0 - tex2DNode998 );
				float mulTime962 = _Time.y * _ScreenSpaceScrollXSpeed;
				float mulTime968 = _Time.y * _ScreenSpaceScrollYSpeed;
				float4 appendResult965 = (float4(mulTime962 , mulTime968 , 0.0 , 0.0));
				float4 temp_output_964_0 = ( ase_screenPosNorm + appendResult965 );
				float4 temp_output_1033_0 = ( tex2D( _MainTex1, ( temp_output_964_0 * _ScreenSpaceTiling ).xy ) * tex2DNode998 );
				float4 temp_output_1034_0 = ( ( (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1542 )) ):( tex2DNode76 )) * temp_output_1001_0 ) + temp_output_1033_0 );
				float4 temp_output_158_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * temp_output_1034_0 );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_158_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_158_0 )) * ase_lightColor );
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult992 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_981_0 = saturate( ( dotResult992 + _RimShadowOffset ) );
				float4 blendOpSrc994 = ( pow( temp_output_981_0 , _RimShadowPower ) * temp_output_409_0 );
				float4 blendOpDest994 = temp_output_409_0;
				float4 lerpBlendMode994 = lerp(blendOpDest994,min( blendOpSrc994 , blendOpDest994 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1228 = dot( normalizedWorldNormal , ase_worldViewDir );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 texCoord1209 = i.ase_texcoord2.xyz.xy * ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ).xy + ( _Time.y * _SilhouetteTextureScroll );
				float4 AuraTex1235 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture, texCoord1209 ) ):( _SilhouetteColor ));
				float2 texCoord631 = i.ase_texcoord2.xyz.xy * _FlipbookTiling + _FlipbookOffset;
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
				float2 uv_FlipBookMask637 = i.ase_texcoord2.xyz.xy;
				float4 temp_output_642_0 = ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode994 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( temp_output_409_0 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( ( temp_output_409_0 + temp_output_1033_0 ) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1228 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1235 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode994 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( temp_output_409_0 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( ( temp_output_409_0 + temp_output_1033_0 ) )) )) + float4( (( _FlipbookToggle )?( ( (tex2D( _FlipBookTexture, fbuv634 )).rgb * tex2D( _FlipBookMask, uv_FlipBookMask637 ).r * _FlipbookEmit ) ):( float3( 0,0,0 ) )) , 0.0 ) );
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , staticSwitch843 );
				#if defined(_SPECULARMASKUV_UV0)
				float2 staticSwitch1532 = UV01517;
				#elif defined(_SPECULARMASKUV_UV1)
				float2 staticSwitch1532 = UV11518;
				#elif defined(_SPECULARMASKUV_UV2)
				float2 staticSwitch1532 = UV21520;
				#elif defined(_SPECULARMASKUV_UV3)
				float2 staticSwitch1532 = UV31522;
				#else
				float2 staticSwitch1532 = UV01517;
				#endif
				float3 worldRefl877 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, staticSwitch843 ), dot( tanToWorld1, staticSwitch843 ), dot( tanToWorld2, staticSwitch843 ) ) );
				float2 uvcubemapmask881 = i.ase_texcoord2.xyz.xy;
				float2 uv_ScrollMask607 = i.ase_texcoord2.xyz.xy;
				float2 texCoord599 = i.ase_texcoord2.xyz.xy * _ScrollSize + _ScrollOffset;
				float cos598 = cos( radians( _ScrollRotation ) );
				float sin598 = sin( radians( _ScrollRotation ) );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float3 hsvTorgb592 = RGBToHSV( tex2D( _ScrollTex, panner597 ).rgb );
				float3 hsvTorgb595 = HSVToRGB( float3(( _ScrollHue + hsvTorgb592.x ),hsvTorgb592.y,hsvTorgb592.z) );
				#ifdef _SCROLLTOGGLE_ON
				float3 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * hsvTorgb595 * _ScrollEmit );
				#else
				float3 staticSwitch591 = float3( 0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord2.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
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
				float4 temp_output_472_0 = ( (( _CubemapToggle )?( ( (( _ScreenSpaceEmit )?( ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + temp_output_1033_0 ) ):( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) )) + ( ( texCUBE( _CubemapTexture, worldRefl877 ) * tex2D( cubemapmask, uvcubemapmask881 ) ) * _CubemapBlend ) ) ):( (( _ScreenSpaceEmit )?( ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + temp_output_1033_0 ) ):( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) )) )) + float4( ( staticSwitch591 + ( hsvTorgb585 * _EmissionEmit ) + staticSwitch590 ) , 0.0 ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outColor = (( _SilhouetteOverlay )?( ( temp_output_472_0 + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture, texCoord1209 ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( temp_output_472_0 )).rgb;
				outAlpha = 1.0;
				clip(outAlpha);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			Name "Outline"
			Tags { "CullMode"="Front" "RenderType"="Transparent" }
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend One Zero, SrcAlpha OneMinusSrcAlpha
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
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _NORMALMAPTOGGLE_ON
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3


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
			};

			//This is a late directive
			
			uniform float _OutlineMultiplier;
			uniform float _OutlineMinSize;
			uniform float _OutlineMaxSize;
			uniform float _OutlineBlendBaseTexture;
			uniform float4 _OutlineColor;
			uniform float _CustomShadowColorToggle;
			uniform float4 ShadowColor;
			uniform float4 _CustomShadowColor;
			uniform float _CustomLightingColorToggle;
			uniform float4 LightColor;
			uniform float4 _CustomLightingColor;
			uniform float _HalftoneShadowToggle;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _AnimatedShadowOffsetToggle;
			uniform float _ShadowOffset;
			uniform float _AnimatedShadowOffsetSpeed;
			uniform float _AnimatedShadowOffsetMin;
			uniform float _AnimatedShadowOffsetMax;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D RotationMask1;
			uniform float _ScreenSpaceMaskisScreenSpace;
			uniform sampler2D _MainTex1;
			uniform float _ScreenSpaceScrollXSpeed;
			uniform float _ScreenSpaceScrollYSpeed;
			uniform float _ScreenSpaceTiling;
			uniform float _AlphaClipping;
					float2 voronoihash1480( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1480( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
						 		float2 o = voronoihash1480( n + g );
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
			


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade977 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult893 = clamp( ( _OutlineMultiplier * cameraDepthFade977 ) , _OutlineMinSize , _OutlineMaxSize );
				
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord3.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord4.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord5.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord6 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				o.ase_texcoord1.zw = v.ase_texcoord1.xy;
				o.ase_texcoord2.xy = v.ase_texcoord2.xy;
				o.ase_texcoord2.zw = v.ase_texcoord3.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				v.vertex.xyz += ( v.ase_normal * clampResult893 );
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outOutlineColor;
				float outOutlineAlpha;

				float3 ase_worldNormal = i.ase_texcoord.xyz;
				float2 texCoord1515 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01517 = texCoord1515;
				float2 texCoord1516 = i.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV11518 = texCoord1516;
				float2 texCoord1519 = i.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV21520 = texCoord1519;
				float2 texCoord1521 = i.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV31522 = texCoord1521;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1525 = UV01517;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1525 = UV11518;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1525 = UV21520;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1525 = UV31522;
				#else
				float2 staticSwitch1525 = UV01517;
				#endif
				float3 ase_worldTangent = i.ase_texcoord3.xyz;
				float3 ase_worldBitangent = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1525 ), _NormalMapIntensity );
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				#ifdef _NORMALMAPTOGGLE_ON
				float3 staticSwitch843 = worldNormal834;
				#else
				float3 staticSwitch843 = ase_worldNormal;
				#endif
				float3 normalizeResult170 = normalize( staticSwitch843 );
				float3 ase_worldPos = i.ase_texcoord5.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + (( _AnimatedShadowOffsetToggle )?( (_AnimatedShadowOffsetMin + (sin( ( _Time.y * _AnimatedShadowOffsetSpeed ) ) - 0.0) * (_AnimatedShadowOffsetMax - _AnimatedShadowOffsetMin) / (1.0 - 0.0)) ):( _ShadowOffset )) ) / _ShadowSoftness );
				float time1480 = 0.0;
				float2 voronoiSmoothId1480 = 0;
				float4 screenPos = i.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1494 = ase_screenPosNorm;
				float4 appendResult1496 = (float4(break1494.x , ( break1494.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1480 = appendResult1496.xy * _HalftoneShadowScale;
				float2 id1480 = 0;
				float2 uv1480 = 0;
				float voroi1480 = voronoi1480( coords1480, time1480, id1480, uv1480, 0, voronoiSmoothId1480 );
				float smoothstepResult1481 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1480 ) , dotResult54);
				float halftone1484 = smoothstepResult1481;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , (( _HalftoneShadowToggle )?( halftone1484 ):( saturate( temp_output_57_0 ) )));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ShadowSoftness ) ));
				float2 texCoord671 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord1.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord1.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 temp_output_666_0 = ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) );
				float4 tex2DNode76 = tex2D( _MainTex, temp_output_666_0.rg );
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1537 = UV01517;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1537 = UV11518;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1537 = UV21520;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1537 = UV31522;
				#else
				float2 staticSwitch1537 = UV01517;
				#endif
				float4 blendOpSrc1542 = tex2D( _DetailTexture, staticSwitch1537 );
				float4 blendOpDest1542 = tex2DNode76;
				float4 lerpBlendMode1542 = lerp(blendOpDest1542,( blendOpSrc1542 * blendOpDest1542 ),_DetailTextureBlend);
				float4 tex2DNode998 = tex2D( RotationMask1, (( _ScreenSpaceMaskisScreenSpace )?( ase_screenPosNorm ):( temp_output_666_0 )).xy );
				float4 temp_output_1001_0 = ( 1.0 - tex2DNode998 );
				float mulTime962 = _Time.y * _ScreenSpaceScrollXSpeed;
				float mulTime968 = _Time.y * _ScreenSpaceScrollYSpeed;
				float4 appendResult965 = (float4(mulTime962 , mulTime968 , 0.0 , 0.0));
				float4 temp_output_964_0 = ( ase_screenPosNorm + appendResult965 );
				float4 temp_output_1033_0 = ( tex2D( _MainTex1, ( temp_output_964_0 * _ScreenSpaceTiling ).xy ) * tex2DNode998 );
				float4 temp_output_1034_0 = ( ( (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1542 )) ):( tex2DNode76 )) * temp_output_1001_0 ) + temp_output_1033_0 );
				float4 temp_output_158_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * temp_output_1034_0 );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_158_0 * _OutlineColor ) ):( _OutlineColor )).rgb;
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


			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
			};

			uniform float _SilhouetteMultiplier;
			uniform float _SilhouetteMinSize;
			uniform float _SilhouetteMaxSize;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform float _AlphaClipping;


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade1111 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult1108 = clamp( ( _SilhouetteMultiplier * cameraDepthFade1111 ) , _SilhouetteMinSize , _SilhouetteMaxSize );
				float3 temp_output_1112_0 = ( v.ase_normal * clampResult1108 );
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord1.xyz = ase_worldPos;
				
				o.ase_texcoord.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.zw = 0;
				o.ase_texcoord1.w = 0;

				v.vertex.xyz += temp_output_1112_0;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outAuraColor;
				float outAuraAlpha;

				float3 ase_worldPos = i.ase_texcoord1.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 texCoord1209 = i.ase_texcoord.xy * ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ).xy + ( _Time.y * _SilhouetteTextureScroll );
				
				float2 texCoord671 = i.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 temp_output_666_0 = ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) );
				float4 tex2DNode76 = tex2D( _MainTex, temp_output_666_0.rg );
				clip( tex2DNode76.a - _AlphaClipping);
				

				outAuraColor = ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture, texCoord1209 ) ):( _SilhouetteColor )) * 1.0 ).rgb;
				outAuraAlpha = 1.0;
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
			#pragma shader_feature_local _NORMALMAPTOGGLE_ON
			#pragma shader_feature_local _NORMALMAPUV_UV0 _NORMALMAPUV_UV1 _NORMALMAPUV_UV2 _NORMALMAPUV_UV3
			#pragma shader_feature_local _DETAILTEXTUREUV_UV0 _DETAILTEXTUREUV_UV1 _DETAILTEXTUREUV_UV2 _DETAILTEXTUREUV_UV3
			#pragma shader_feature_local _SPECULARMASKUV_UV0 _SPECULARMASKUV_UV1 _SPECULARMASKUV_UV2 _SPECULARMASKUV_UV3
			#pragma shader_feature_local _SCROLLTOGGLE_ON
			#pragma shader_feature_local _GLOWTOGGLE_ON

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
			uniform float _CubemapToggle;
			uniform float _ScreenSpaceEmit;
			uniform float _SpecularToggle;
			uniform float _SilhouetteRimLightToggle;
			uniform float _RimLightShadowToggle;
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
			uniform float _AnimatedShadowOffsetToggle;
			uniform float _ShadowOffset;
			uniform float _AnimatedShadowOffsetSpeed;
			uniform float _AnimatedShadowOffsetMin;
			uniform float _AnimatedShadowOffsetMax;
			uniform float _ShadowSoftness;
			uniform float _HalftoneShadowSoftness;
			uniform float _HalftoneShadowScale;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightBlend;
			uniform float _DetailTextureToggle;
			uniform sampler2D _MainTex;
			uniform float2 _BaseRotationCenter;
			uniform float _BaseRotationSpeed;
			uniform sampler2D RotationMask;
			uniform float2 _BaseScrollSpeed;
			uniform sampler2D _DetailTexture;
			uniform float _DetailTextureBlend;
			uniform sampler2D RotationMask1;
			uniform float _ScreenSpaceMaskisScreenSpace;
			uniform sampler2D _MainTex1;
			uniform float _ScreenSpaceScrollXSpeed;
			uniform float _ScreenSpaceScrollYSpeed;
			uniform float _ScreenSpaceTiling;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
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
			uniform sampler2D AuraTexture;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _FlipbookToggle;
			uniform sampler2D _FlipBookTexture;
			uniform float2 _FlipbookTiling;
			uniform float2 _FlipbookOffset;
			uniform float _FlipbookColumns;
			uniform float _FlipbookRows;
			uniform float _FlipbookSpeed;
			uniform sampler2D _FlipBookMask;
			uniform float _FlipbookEmit;
			uniform float _SpecularPower;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform samplerCUBE _CubemapTexture;
			uniform sampler2D cubemapmask;
			uniform float _CubemapBlend;
			uniform sampler2D _ScrollMask;
			uniform float _ScrollHue;
			uniform sampler2D _ScrollTex;
			uniform float2 _ScrollSpeed;
			uniform float2 _ScrollSize;
			uniform float2 _ScrollOffset;
			uniform float _ScrollRotation;
			uniform float _ScrollEmit;
			uniform float _EmissionHue;
			uniform sampler2D _Emission;
			uniform float _EmissionEmit;
			uniform float _GlowCycle;
			uniform float4 _GlowColor;
			uniform float _GlowSpeed;
			uniform sampler2D _GlowMask;
			uniform float _GlowEmit;
			uniform float _SilhouetteOverlayOpacity;
			uniform float _AlphaClipping;
					float2 voronoihash1480( float2 p )
					{
						p = p - 1 * floor( p / 1 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1480( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
						 		float2 o = voronoihash1480( n + g );
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
			};


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord1.xyz = ase_worldNormal;
				float3 ase_worldTangent = UnityObjectToWorldDir(v.ase_tangent);
				o.ase_texcoord5.xyz = ase_worldTangent;
				float ase_vertexTangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord7.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord8 = screenPos;
				
				o.ase_texcoord2.xyz = v.ase_texcoord.xyz;
				o.ase_texcoord3.xy = v.ase_texcoord1.xy;
				o.ase_texcoord3.zw = v.ase_texcoord2.xy;
				o.ase_texcoord4.xy = v.ase_texcoord3.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord4.zw = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord7.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float2 texCoord1515 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV01517 = texCoord1515;
				float2 texCoord1516 = i.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV11518 = texCoord1516;
				float2 texCoord1519 = i.ase_texcoord3.zw * float2( 1,1 ) + float2( 0,0 );
				float2 UV21520 = texCoord1519;
				float2 texCoord1521 = i.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float2 UV31522 = texCoord1521;
				#if defined(_NORMALMAPUV_UV0)
				float2 staticSwitch1525 = UV01517;
				#elif defined(_NORMALMAPUV_UV1)
				float2 staticSwitch1525 = UV11518;
				#elif defined(_NORMALMAPUV_UV2)
				float2 staticSwitch1525 = UV21520;
				#elif defined(_NORMALMAPUV_UV3)
				float2 staticSwitch1525 = UV31522;
				#else
				float2 staticSwitch1525 = UV01517;
				#endif
				float3 ase_worldTangent = i.ase_texcoord5.xyz;
				float3 ase_worldBitangent = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_worldTangent.x, ase_worldBitangent.x, ase_worldNormal.x );
				float3 tanToWorld1 = float3( ase_worldTangent.y, ase_worldBitangent.y, ase_worldNormal.y );
				float3 tanToWorld2 = float3( ase_worldTangent.z, ase_worldBitangent.z, ase_worldNormal.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, staticSwitch1525 ), _NormalMapIntensity );
				float3 worldNormal834 = float3(dot(tanToWorld0,tanNormal834), dot(tanToWorld1,tanNormal834), dot(tanToWorld2,tanNormal834));
				#ifdef _NORMALMAPTOGGLE_ON
				float3 staticSwitch843 = worldNormal834;
				#else
				float3 staticSwitch843 = ase_worldNormal;
				#endif
				float3 normalizeResult170 = normalize( staticSwitch843 );
				float3 ase_worldPos = i.ase_texcoord7.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_57_0 = ( ( dotResult54 + (( _AnimatedShadowOffsetToggle )?( (_AnimatedShadowOffsetMin + (sin( ( _Time.y * _AnimatedShadowOffsetSpeed ) ) - 0.0) * (_AnimatedShadowOffsetMax - _AnimatedShadowOffsetMin) / (1.0 - 0.0)) ):( _ShadowOffset )) ) / _ShadowSoftness );
				float time1480 = 0.0;
				float2 voronoiSmoothId1480 = 0;
				float4 screenPos = i.ase_texcoord8;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 break1494 = ase_screenPosNorm;
				float4 appendResult1496 = (float4(break1494.x , ( break1494.y / ( _ScreenParams.x / _ScreenParams.y ) ) , 0.0 , 0.0));
				float2 coords1480 = appendResult1496.xy * _HalftoneShadowScale;
				float2 id1480 = 0;
				float2 uv1480 = 0;
				float voroi1480 = voronoi1480( coords1480, time1480, id1480, uv1480, 0, voronoiSmoothId1480 );
				float smoothstepResult1481 = smoothstep( ( dotResult54 + _HalftoneShadowSoftness ) , ( 1.0 - voroi1480 ) , dotResult54);
				float halftone1484 = smoothstepResult1481;
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , (( _HalftoneShadowToggle )?( halftone1484 ):( saturate( temp_output_57_0 ) )));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ShadowSoftness ) ));
				float2 texCoord671 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + float2( 0,0 );
				float mulTime358 = _Time.y * _BaseRotationSpeed;
				float cos356 = cos( mulTime358 );
				float sin356 = sin( mulTime358 );
				float2 rotator356 = mul( texCoord671 - _BaseRotationCenter , float2x2( cos356 , -sin356 , sin356 , cos356 )) + _BaseRotationCenter;
				float2 uvRotationMask667 = i.ase_texcoord2.xyz.xy;
				float4 tex2DNode667 = tex2D( RotationMask, uvRotationMask667 );
				float2 texCoord559 = i.ase_texcoord2.xyz.xy * float2( 1,1 ) + ( _Time.y * _BaseScrollSpeed );
				float4 temp_output_666_0 = ( ( float4( rotator356, 0.0 , 0.0 ) * tex2DNode667 ) + ( float4( texCoord559, 0.0 , 0.0 ) * ( 1.0 - tex2DNode667 ) ) );
				float4 tex2DNode76 = tex2D( _MainTex, temp_output_666_0.rg );
				#if defined(_DETAILTEXTUREUV_UV0)
				float2 staticSwitch1537 = UV01517;
				#elif defined(_DETAILTEXTUREUV_UV1)
				float2 staticSwitch1537 = UV11518;
				#elif defined(_DETAILTEXTUREUV_UV2)
				float2 staticSwitch1537 = UV21520;
				#elif defined(_DETAILTEXTUREUV_UV3)
				float2 staticSwitch1537 = UV31522;
				#else
				float2 staticSwitch1537 = UV01517;
				#endif
				float4 blendOpSrc1542 = tex2D( _DetailTexture, staticSwitch1537 );
				float4 blendOpDest1542 = tex2DNode76;
				float4 lerpBlendMode1542 = lerp(blendOpDest1542,( blendOpSrc1542 * blendOpDest1542 ),_DetailTextureBlend);
				float4 tex2DNode998 = tex2D( RotationMask1, (( _ScreenSpaceMaskisScreenSpace )?( ase_screenPosNorm ):( temp_output_666_0 )).xy );
				float4 temp_output_1001_0 = ( 1.0 - tex2DNode998 );
				float mulTime962 = _Time.y * _ScreenSpaceScrollXSpeed;
				float mulTime968 = _Time.y * _ScreenSpaceScrollYSpeed;
				float4 appendResult965 = (float4(mulTime962 , mulTime968 , 0.0 , 0.0));
				float4 temp_output_964_0 = ( ase_screenPosNorm + appendResult965 );
				float4 temp_output_1033_0 = ( tex2D( _MainTex1, ( temp_output_964_0 * _ScreenSpaceTiling ).xy ) * tex2DNode998 );
				float4 temp_output_1034_0 = ( ( (( _DetailTextureToggle )?( ( saturate( lerpBlendMode1542 )) ):( tex2DNode76 )) * temp_output_1001_0 ) + temp_output_1033_0 );
				float4 temp_output_158_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * temp_output_1034_0 );
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_158_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_158_0 )) * ase_lightColor );
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult992 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_981_0 = saturate( ( dotResult992 + _RimShadowOffset ) );
				float4 blendOpSrc994 = ( pow( temp_output_981_0 , _RimShadowPower ) * temp_output_409_0 );
				float4 blendOpDest994 = temp_output_409_0;
				float4 lerpBlendMode994 = lerp(blendOpDest994,min( blendOpSrc994 , blendOpDest994 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1228 = dot( normalizedWorldNormal , ase_worldViewDir );
				ase_worldViewDir = normalize(ase_worldViewDir);
				float2 texCoord1209 = i.ase_texcoord2.xyz.xy * ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ).xy + ( _Time.y * _SilhouetteTextureScroll );
				float4 AuraTex1235 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture, texCoord1209 ) ):( _SilhouetteColor ));
				float2 texCoord631 = i.ase_texcoord2.xyz.xy * _FlipbookTiling + _FlipbookOffset;
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
				float2 uv_FlipBookMask637 = i.ase_texcoord2.xyz.xy;
				float4 temp_output_642_0 = ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode994 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( temp_output_409_0 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( ( temp_output_409_0 + temp_output_1033_0 ) )) + ( ( pow( ( 1.0 - saturate( ( dotResult1228 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1235 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode994 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( temp_output_409_0 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( ( temp_output_409_0 + temp_output_1033_0 ) )) )) + float4( (( _FlipbookToggle )?( ( (tex2D( _FlipBookTexture, fbuv634 )).rgb * tex2D( _FlipBookMask, uv_FlipBookMask637 ).r * _FlipbookEmit ) ):( float3( 0,0,0 ) )) , 0.0 ) );
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , staticSwitch843 );
				#if defined(_SPECULARMASKUV_UV0)
				float2 staticSwitch1532 = UV01517;
				#elif defined(_SPECULARMASKUV_UV1)
				float2 staticSwitch1532 = UV11518;
				#elif defined(_SPECULARMASKUV_UV2)
				float2 staticSwitch1532 = UV21520;
				#elif defined(_SPECULARMASKUV_UV3)
				float2 staticSwitch1532 = UV31522;
				#else
				float2 staticSwitch1532 = UV01517;
				#endif
				float3 worldRefl877 = reflect( -ase_worldViewDir, float3( dot( tanToWorld0, staticSwitch843 ), dot( tanToWorld1, staticSwitch843 ), dot( tanToWorld2, staticSwitch843 ) ) );
				float2 uvcubemapmask881 = i.ase_texcoord2.xyz.xy;
				float2 uv_ScrollMask607 = i.ase_texcoord2.xyz.xy;
				float2 texCoord599 = i.ase_texcoord2.xyz.xy * _ScrollSize + _ScrollOffset;
				float cos598 = cos( radians( _ScrollRotation ) );
				float sin598 = sin( radians( _ScrollRotation ) );
				float2 rotator598 = mul( texCoord599 - float2( 0.5,0.5 ) , float2x2( cos598 , -sin598 , sin598 , cos598 )) + float2( 0.5,0.5 );
				float2 panner597 = ( 1.0 * _Time.y * _ScrollSpeed + rotator598);
				float3 hsvTorgb592 = RGBToHSV( tex2D( _ScrollTex, panner597 ).rgb );
				float3 hsvTorgb595 = HSVToRGB( float3(( _ScrollHue + hsvTorgb592.x ),hsvTorgb592.y,hsvTorgb592.z) );
				#ifdef _SCROLLTOGGLE_ON
				float3 staticSwitch591 = ( tex2D( _ScrollMask, uv_ScrollMask607 ).r * hsvTorgb595 * _ScrollEmit );
				#else
				float3 staticSwitch591 = float3( 0,0,0 );
				#endif
				float2 uv_Emission609 = i.ase_texcoord2.xyz.xy;
				float3 hsvTorgb584 = RGBToHSV( tex2D( _Emission, uv_Emission609 ).rgb );
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
				float4 temp_output_472_0 = ( (( _CubemapToggle )?( ( (( _ScreenSpaceEmit )?( ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + temp_output_1033_0 ) ):( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) )) + ( ( texCUBE( _CubemapTexture, worldRefl877 ) * tex2D( cubemapmask, uvcubemapmask881 ) ) * _CubemapBlend ) ) ):( (( _ScreenSpaceEmit )?( ( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) + temp_output_1033_0 ) ):( (( _SpecularToggle )?( ( temp_output_642_0 + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, staticSwitch1532 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_409_0 )) ) ) ):( temp_output_642_0 )) )) )) + float4( ( staticSwitch591 + ( hsvTorgb585 * _EmissionEmit ) + staticSwitch590 ) , 0.0 ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outColor = (( _SilhouetteOverlay )?( ( temp_output_472_0 + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture, texCoord1209 ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( temp_output_472_0 )).rgb;
				outAlpha = 1.0;
				clip(outAlpha);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;361;5.289223,2814.344;Inherit;False;1487.958;514.1742;;14;666;665;668;664;667;559;562;561;560;358;360;359;356;671;Rotation & Scroll;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;226;1492.356,1591.644;Inherit;False;980.267;403.8341;;7;835;834;170;843;53;837;54;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1942.888,2189.487;Inherit;False;1855.488;608.4642;;19;995;970;406;857;158;625;60;971;624;409;769;57;74;58;378;381;1485;1486;1545;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;14;427;858;423;420;426;428;424;558;863;862;564;436;430;429;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;581;1942.14,-2144.311;Inherit;False;1880.365;759.4941;;14;623;622;621;620;619;618;617;616;615;614;613;612;611;610;Glowing;0.4481132,0.6304269,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;582;78.50445,-1372.546;Inherit;False;2077.342;538.7622;;16;593;607;596;588;605;601;600;606;608;604;599;598;597;595;594;592;ScrollingMasked;0.9008027,1,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;2439.924,-1365.071;Inherit;False;1382.785;524.939;;8;609;603;602;589;587;586;585;584;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;627;2267.151,-2639.908;Inherit;False;1554.1;476.6765;;12;639;638;637;636;635;634;633;632;631;630;629;628;AnimatedTexture;0.4997601,0.4206123,0.6415094,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;868;2980.31,1749.076;Inherit;False;824.413;427.9334;;6;881;883;882;878;869;877;Cubemap;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;2855.465,4306.558;Inherit;False;945.1694;488.8861;;11;977;889;893;888;887;892;923;924;894;895;922;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;969;1544.624,2822.211;Inherit;False;2258.01;547.0607;;19;1028;1033;1034;1035;1001;1000;999;998;1002;964;966;967;965;968;962;927;1038;1037;1089;Screen Space;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;979;2179.384,-779.6459;Inherit;False;1636.984;483.7798;;12;983;997;989;988;993;992;991;982;981;994;986;996;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1036;1991.853,3391.234;Inherit;False;1815.989;416.4595;;10;822;771;823;676;687;678;688;768;677;702;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;42;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;854;2676.542,1597.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;43;0;Create;True;0;0;0;False;0;False;-0.6;-0.326;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Blend;44;0;Create;True;0;0;0;False;0;False;2;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;356;544.196,2868.438;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;359;17.19561,2866.439;Inherit;False;Property;_BaseRotationCenter;Base Rotation Center;5;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;360;18.19586,2988.439;Inherit;False;Property;_BaseRotationSpeed;Base Rotation Speed;6;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;358;254.1956,2991.439;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;560;260.3157,3078.661;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;561;18.56097,3154.452;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;4;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;562;18.31866,3074.151;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;378;2213.762,2231.275;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2372.479,2399.597;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3528.409,2528.495;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;28;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.NormalizeNode;170;2031.346,1759.89;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;834;1806.679,1631.7;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StaticSwitch;843;1994.343,1644.323;Inherit;False;Property;_NormalMapToggle;Normal Map Toggle;11;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;837;1636.024,1802.262;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldReflectionVector;877;2997.047,1799.014;Inherit;True;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;2265.713,1755.302;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;878;3511.147,1804.014;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;882;3658.647,1809.214;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;883;3498.244,1905.915;Inherit;False;Property;_CubemapBlend;Cubemap Blend;84;0;Create;True;0;0;0;False;0;False;1;0.016;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3635.287,2233.906;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;624;1962.414,2235.252;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;21;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;971;2831.41,2666.693;Inherit;False;Property;_CustomLightingColorToggle;Custom Lighting Color Toggle;18;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;60;1973.045,2500.264;Float;False;Property;_ShadowSoftness;Shadow Softness;22;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;625;2459.414,2262.252;Inherit;False;Property;_CustomShadowColorToggle;Custom Shadow Color Toggle;20;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;158;3328.924,2528.264;Inherit;True;2;2;0;COLOR;1,1,1,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3223.679,2407.756;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;406;2990.145,2248.976;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;970;2579.41,2614.693;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;19;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;667;640.2374,3014.491;Inherit;True;Property;RotationMask;Base Rotation Mask;3;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;665;1088.238,3101.49;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;666;1283.239,3003.491;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;668;927.2375,3095.49;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;664;930.2375,2880.493;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;998;2189.127,2994.838;Inherit;True;Property;RotationMask1;Screen Space Mask;75;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;999;2720.127,2986.087;Inherit;True;2;2;0;FLOAT2;0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1000;2945.127,2942.088;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.OneMinusNode;1001;2524.127,3090.087;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;2031.282,3459.466;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2206.018,3469.952;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;688;3160.747,3476.257;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2797.766,3475.662;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;2997.87,3475.792;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;676;2350.554,3472.065;Inherit;True;Property;_ShadowTexture;Shadow Texture;29;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;b9552255b337ed1468609738595c184a;b9552255b337ed1468609738595c184a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;823;3058.002,3703.564;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;31;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;771;2030.787,3625.875;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;30;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;14,14;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.BlendOpsNode;822;3334.001,3473.563;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0.5;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1033;3291.926,3114.498;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1058;1680.904,901.0906;Inherit;False;2130.147;475.957;;19;1053;1074;1073;1060;1065;1063;1064;1061;1062;1052;1046;1045;1051;1050;1042;1047;1049;1048;1528;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;869;3216.314,1795.703;Inherit;True;Property;_CubemapTexture;Cubemap Texture;82;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;34b1a0522b0f44f48afe8efdffa7cb39;6d727751019dfb64a89da42f6849a10c;True;0;False;white;Auto;False;Object;-1;Auto;Cube;8;0;SAMPLERCUBE;;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1048;1928.45,942.5652;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldPosInputsNode;1049;1747.5,949.0944;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;1047;1695.457,1102.051;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1042;2076.874,942.8367;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1050;2075.756,1094.23;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1051;2284.404,946.442;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1045;2397.942,945.0647;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1046;2378.761,1053.084;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1052;2590.986,951.3604;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1063;3471.288,986.5499;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;40;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1053;2762.142,948.0969;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1062;2567.571,1187.652;Inherit;False;Property;_SpecularPower;Specular Power;41;0;Create;True;0;0;0;False;0;False;15;3.99;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;37;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;3247.397,956.29;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;36;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1089;1948.795,3201.959;Inherit;False;Property;_ScreenSpaceMaskisScreenSpace;Screen Space Mask is Screen Space;77;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1035;3247.265,2891.171;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1034;3516.164,2904.469;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;38;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;881;3209.646,1985.614;Inherit;True;Property;cubemapmask;Cubemap Mask;83;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1100;2091.633,4830.728;Inherit;False;1707.826;491.2855;;16;1206;1210;1209;1204;1199;1101;1109;1130;1103;1112;1111;1108;1107;1106;1465;1473;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1193;-48.56503,2358.598;Inherit;False;1137.636;410.3912;;9;1192;59;1191;1187;1188;1190;1183;1186;1189;Animated Shadow Offset;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleTimeNode;1186;71.39043,2420.297;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1183;601.3903,2434.297;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;0.1;False;4;FLOAT;0.15;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;1188;435.3901,2433.297;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1187;275.3904,2423.297;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;505.4065,2698.072;Float;False;Property;_ShadowOffset;Shadow Offset;23;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1191;273.2403,2607.166;Inherit;False;Property;_AnimatedShadowOffsetMax;Animated Shadow Offset Max;27;0;Create;True;0;0;0;False;0;False;0.05;0.05;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1190;276.2403,2538.166;Inherit;False;Property;_AnimatedShadowOffsetMin;Animated Shadow Offset Min;26;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1192;775.8061,2590.546;Inherit;False;Property;_AnimatedShadowOffsetToggle;Animated Shadow Offset Toggle;24;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1189;-36.53212,2503.411;Inherit;False;Property;_AnimatedShadowOffsetSpeed;Animated Shadow Offset Speed;25;0;Create;True;0;0;0;False;0;False;14;14;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1028;2931.695,3167.118;Inherit;True;Property;_MainTex1;Screen Space Texture;74;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RGBToHSVNode;584;2799.906,-1155.321;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.HSVToRGBNode;585;3161.641,-1133.619;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;586;3036.72,-1156.643;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;589;3608.298,-1231.995;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RGBToHSVNode;592;1270.728,-1035.155;Inherit;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleAddOpNode;594;1497.541,-1104.478;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.HSVToRGBNode;595;1630.46,-1016.454;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PannerNode;597;811.5696,-1010.746;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RotatorNode;598;609.1254,-1178.454;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;599;362.0096,-1179.136;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RadiansOpNode;604;416.9614,-966.3102;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;618;2382.166,-1903.224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;619;2187.495,-1814.912;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;621;2533.191,-1902.038;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;623;2566.875,-1712.659;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;620;2012.494,-1813.892;Inherit;False;Property;_GlowSpeed;Glow Speed;89;0;Create;True;0;0;0;False;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;615;2679.204,-2085.311;Inherit;False;Property;_GlowColor;Glow Color;87;0;Create;True;0;0;0;False;0;False;1,0,0,1;1,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;608;1206.323,-1106.162;Inherit;False;Property;_ScrollHue;Scroll Hue;103;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;606;131.8209,-965.3095;Inherit;False;Property;_ScrollRotation;Scroll Rotation;107;0;Create;True;0;0;0;False;0;False;0;0;0;360;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;600;147.2764,-1086.439;Inherit;False;Property;_ScrollOffset;Scroll Offset;105;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;601;176.6427,-1210.123;Inherit;False;Property;_ScrollSize;Scroll Size;104;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;605;600.981,-984.7728;Inherit;False;Property;_ScrollSpeed;Scroll Speed;106;0;Create;True;0;0;0;False;0;False;0,1;0,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;588;1937.635,-1225.034;Inherit;True;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;587;2528.385,-1243.576;Inherit;False;Property;_EmissionHue;Emission Hue;16;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;602;3195.339,-986.4895;Inherit;False;Property;_EmissionEmit;Emission Emit;17;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;596;1690.054,-1093.726;Inherit;False;Property;_ScrollEmit;Scroll Emit;108;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;610;2936.448,-1956.923;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;611;3172.389,-1672.938;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;612;3171.596,-1923.959;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.HSVToRGBNode;617;2773.233,-1577.177;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;616;3413.718,-1770.199;Inherit;False;Property;_GlowCycle;Glow Cycle;88;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;607;1562.278,-1299.337;Inherit;True;Property;_ScrollMask;Scroll Mask;102;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;593;990.5574,-1034.103;Inherit;True;Property;_ScrollTex;Scroll Tex;101;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;631;2493.152,-2557.908;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCFlipBookUVAnimation;634;2759.15,-2437.907;Inherit;False;0;0;6;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;1;False;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;636;3659.852,-2460.907;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;632;2317.151,-2589.907;Inherit;False;Property;_FlipbookTiling;Flipbook Tiling;94;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;633;2317.151,-2445.907;Inherit;False;Property;_FlipbookOffset;Flipbook Offset;95;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;630;2525.152,-2413.907;Inherit;False;Property;_FlipbookColumns;Flipbook Columns;96;0;Create;True;0;0;0;False;0;False;8;8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;629;2557.152,-2334.906;Inherit;False;Property;_FlipbookRows;Flipbook Rows;97;0;Create;True;0;0;0;False;0;False;8;8;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;628;2557.152,-2254.906;Inherit;False;Property;_FlipbookSpeed;Flipbook Speed;98;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;640;3900.37,-2395.587;Inherit;False;Property;_FlipbookToggle;Flipbook Toggle;91;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;639;3415.098,-2558.131;Inherit;False;Property;_FlipbookEmit;Flipbook Emit;99;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;637;3298.15,-2384.907;Inherit;True;Property;_FlipBookMask;FlipBookMask;93;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;638;3014.635,-2461.493;Inherit;True;Property;_FlipBookTexture;FlipBookTexture;92;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3403.638,-1070.089;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;613;3475.506,-1665.068;Inherit;False;Property;_GlowEmit;Glow Emit;90;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;635;3301.857,-2461.944;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;614;3638.506,-1769.069;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;622;2764.66,-1808.655;Inherit;True;Property;_GlowMask;Glow Mask;86;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.993,-1155.056;Inherit;True;Property;_Emission;Emission Texture;14;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;590;3849.159,-1600.593;Inherit;False;Property;_GlowToggle;Glow Toggle;85;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1220;1821.39,-138.7443;Inherit;False;1976.592;475.3736;;13;1234;1233;1230;1229;1228;1227;1226;1225;1224;1223;1222;1221;1236;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;1221;2603.706,106.7455;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1222;2443.707,106.7455;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1223;2315.707,105.7455;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1224;2763.704,100.7454;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1225;3292.573,-69.37746;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1226;3505.752,-62.40767;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1227;1851.707,74.74543;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1228;2075.709,-5.25426;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1229;1851.707,-85.25428;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1236;3013.607,-45.3421;Inherit;False;1235;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3995.849,358.916;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1040;3869.151,362.2333;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;642;4839.709,345.7217;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4988.171,344.4143;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1096;5266.609,449.5989;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1098;5600.359,443.2872;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5921.122,333.0639;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1099;5662.938,334.4982;Inherit;False;Property;_CubemapToggle;Cubemap Toggle;81;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1216;6066.669,410.18;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1218;5866.684,509.906;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1238;4400.771,346.5269;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;996;3301.876,-442.2102;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;53;0;Create;True;0;0;0;False;0;False;0.6676344;0.332;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;986;3359.189,-733.788;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;994;3577.86,-729.4199;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;981;2806.746,-525.75;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;982;2678.746,-526.75;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;991;2214.745,-557.7501;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;992;2438.747,-637.7498;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;993;2214.745,-717.7497;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;988;2799.885,-426.8564;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;51;0;Create;True;0;0;0;False;0;False;10;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;989;2374.746,-381.7498;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;52;0;Create;True;0;0;0;False;0;False;0.65;-0.292;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;997;2965.231,-531.6407;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;983;3124.743,-732.7501;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3517.522,488.8262;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Blend;50;0;Create;True;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;47;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;46;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;48;0;Create;True;0;0;0;False;0;False;0.01;3.19;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;49;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1002;2503.127,2866.091;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleTimeNode;962;1872,3040;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleTimeNode;968;1856,3104;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;966;1568,3024;Inherit;False;Property;_ScreenSpaceScrollXSpeed;Screen Space Scroll X Speed;80;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;967;1552,3104;Inherit;False;Property;_ScreenSpaceScrollYSpeed;Screen Space Scroll Y Speed;79;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;965;2032,3040;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;927;1856,2864;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;964;2096,2864;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1037;2747.465,3200.477;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;2;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1038;2522.804,3296.824;Inherit;False;Property;_ScreenSpaceTiling;Screen Space Tiling;78;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1455;6443.949,440.0132;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1456;6443.949,508.1345;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1459;6443.949,329.1345;Float;False;False;-1;2;ASEMaterialInspector;100;16;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1097;5419.624,331.8596;Inherit;False;Property;_ScreenSpaceEmit;Screen Space Emit;76;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1219;5487.684,661.906;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;66;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1217;6210.684,336.9061;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;65;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1233;2436.846,205.6387;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;71;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1234;2011.708,250.7458;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;72;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;3229.1,152.0222;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Blend;73;0;Create;True;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;3171.379,4348.409;Inherit;False;Property;_OutlineColor;Outline Color;54;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.4433961,0.4433961,0.4433961,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;894;3308.666,4636.753;Inherit;False;Property;_OutlineMinSize;Outline Min Size;57;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3533.045,4349.165;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;55;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3387.115,4347.116;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3143.666,4531.751;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3132.191,4634.998;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;893;3514.666,4568.753;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2930.191,4365.995;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;56;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2888.706,4648.176;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3663.191,4542.995;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3309.666,4705.753;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;58;0;Create;True;0;0;0;False;0;False;0.008;0.003;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1106;2999.49,5058.521;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1107;2988.015,5161.769;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;1108;3370.49,5095.523;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1111;2744.531,5174.946;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1112;3519.015,5069.766;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1209;2492.016,5016.513;Inherit;True;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1452;3890.828,5020.491;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1457;3884.762,4421.949;Float;False;False;-1;2;ASEMaterialInspector;100;20;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;0;1;False;;0;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;2;CullMode=Front;RenderType=Transparent=RenderType;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1210;2306.823,5128.746;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.PosVertexDataNode;1461;4056.415,4609.904;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;1462;4237.414,4612.904;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformPositionNode;1464;4359.414,4612.904;Inherit;False;Object;Clip;False;Fast;True;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1465;2369.39,4918.338;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1101;3414.203,4876.179;Inherit;False;Property;_SilhouetteColor;Silhouette Color;59;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1204;3531.94,5182.565;Inherit;False;Property;_SilhouetteOpacity;Silhouette Opacity;60;0;Create;True;0;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1130;3162.816,5245.114;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;69;0;Create;True;0;0;0;False;0;False;0.016;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1109;2705.015,4881.766;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;67;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1199;3108.94,4873.565;Inherit;True;Property;AuraTexture;Silhouette Texture;62;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1197;3628.262,4915.495;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;61;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1206;2089.17,5110.334;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1470;2076.619,5225.913;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;64;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;1235;3916.056,4906.056;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1103;3160.49,5167.523;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;68;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1453;3714.828,5064.491;Inherit;False;Constant;_Float1;Float 1;106;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1473;2185.234,4924.705;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;1472;1957.233,4983.705;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;63;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1477;1900.233,4824.705;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;677;2632.618,3470.641;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2255.416,2409.753;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1482;2194.822,3827.825;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;995;2858.311,2454.093;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;74;2577.934,2400.626;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1491;2239.385,3979.052;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1484;2641.425,3881.589;Inherit;False;halftone;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1480;2043.822,3955.825;Inherit;True;0;0;1;0;1;True;1;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;15;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.SmoothstepOpNode;1481;2409.822,3879.825;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1485;2572.925,2495.388;Inherit;False;1484;halftone;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1486;2766.385,2353.052;Inherit;False;Property;_HalftoneShadowToggle;Halftone Shadow Toggle;32;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1483;1938.822,3843.825;Inherit;False;Property;_HalftoneShadowSoftness;Halftone Shadow Softness;33;0;Create;True;0;0;0;False;0;False;0.5;0.83;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1487;1784.385,4058.052;Inherit;False;Property;_HalftoneShadowScale;Halftone Shadow Scale;34;0;Create;True;0;0;0;False;0;False;15;249.57;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;1489;1104.923,3968.354;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;1494;1277.923,3968.354;Inherit;False;FLOAT4;1;0;FLOAT4;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.SimpleDivideOpNode;1495;1442.923,4114.355;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1498;1321.327,4212.292;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1496;1577.867,4062.458;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ScreenParams;1497;1136.327,4193.292;Inherit;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;835;1512.257,1635.446;Inherit;True;Property;_NormalMap;Normal Map;12;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;b9275fa190e25044881bdca7115fc875;True;0;True;bump;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;1528;2220.605,1277.519;Inherit;False;1517;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1529;2215.605,1358.519;Inherit;False;1518;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1530;2217.605,1436.519;Inherit;False;1520;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1531;2224.75,1511.715;Inherit;False;1522;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1532;2418.605,1348.519;Inherit;False;Property;_SpecularMaskUV;Specular Mask UV;39;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1515;151.1529,1014.959;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;1516;151.1529,1136.959;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1517;388.153,1035.959;Inherit;False;UV0;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1518;394.153,1160.959;Inherit;False;UV1;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1519;147.1528,1255.959;Inherit;False;2;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1520;400.153,1267.959;Inherit;False;UV2;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1521;137.7976,1380.155;Inherit;False;3;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1522;390.7978,1392.155;Inherit;False;UV3;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1538;1140.439,2164.946;Inherit;False;772.3755;613.7186;;5;1543;1542;1541;1540;76;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode;1541;1172.439,2436.946;Inherit;True;Property;_DetailTexture;Detail Texture;8;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;2e95b1e0bcb542941860e026ce4a7130;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BlendOpsNode;1542;1476.439,2420.946;Inherit;False;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1543;1460.439,2564.946;Inherit;False;Property;_DetailTextureBlend;Detail Texture Blend;10;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;76;1172.675,2228.895;Inherit;True;Property;_MainTex;Base Texture;1;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1540;1685.156,2425.484;Inherit;False;Property;_DetailTextureToggle;Detail Texture Toggle;7;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1533;625.3599,1914.815;Inherit;False;1517;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1534;620.3599,1995.815;Inherit;False;1518;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1535;622.3599,2073.815;Inherit;False;1520;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1536;629.5048,2149.011;Inherit;False;1522;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1537;823.3596,1985.815;Inherit;False;Property;_DetailTextureUV;Detail Texture UV;9;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1544;1207.918,1699.898;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;15;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1876.383,1833.578;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector4Node;381;2371.549,2616.136;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;1545;3399.464,2237.535;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;5117.457,331.4273;Inherit;False;Property;_SpecularToggle;Specular Toggle;35;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4123.306,356.4348;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;45;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1237;4540.392,336.6;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;70;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;591;2178.215,-1359.955;Inherit;False;Property;_ScrollToggle;Scroll Toggle;100;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1454;6460.949,341.0132;Float;False;True;-1;2;ASEMaterialInspector;100;20;Pupsi BRC Shader Silhouette Outline;c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;2;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Transparent=RenderType;True;2;False;0;True;True;0;1;False;;0;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.GetLocalVarNode;1523;1315.771,1301.365;Inherit;False;1517;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1524;1310.771,1382.365;Inherit;False;1518;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1525;1513.771,1372.365;Inherit;False;Property;_NormalMapUV;Normal Map UV;13;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1526;1312.771,1460.365;Inherit;False;1520;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1527;1319.916,1535.561;Inherit;False;1522;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1546;-536.4021,2868.314;Inherit;False;1517;UV0;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1547;-541.4021,2949.314;Inherit;False;1518;UV1;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1549;-539.4021,3027.314;Inherit;False;1520;UV2;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1550;-532.2571,3102.51;Inherit;False;1522;UV3;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;671;259.8348,2856.034;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.StaticSwitch;1548;-338.4021,2939.314;Inherit;False;Property;_BaseTextureUV;Base Texture UV;2;0;Create;True;0;0;0;False;0;False;0;0;0;True;;KeywordEnum;4;UV0;UV1;UV2;UV3;Create;True;True;All;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;559;414.3253,3079.156;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClipNode;1551;6253.198,656.939;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1552;5952.419,828.1028;Inherit;False;Property;_AlphaClipping;Alpha Clipping;0;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1458;4073.838,5034.746;Float;False;False;-1;2;ASEMaterialInspector;100;20;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
WireConnection;851;0;853;0
WireConnection;851;1;60;0
WireConnection;853;0;54;0
WireConnection;853;1;854;0
WireConnection;852;0;851;0
WireConnection;866;0;855;0
WireConnection;866;1;867;0
WireConnection;855;1;381;0
WireConnection;855;2;852;0
WireConnection;856;1;866;0
WireConnection;356;0;671;0
WireConnection;356;1;359;0
WireConnection;356;2;358;0
WireConnection;358;0;360;0
WireConnection;560;0;562;0
WireConnection;560;1;561;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;769;0;158;0
WireConnection;769;1;822;0
WireConnection;170;0;843;0
WireConnection;834;0;835;0
WireConnection;843;1;837;0
WireConnection;843;0;834;0
WireConnection;877;0;843;0
WireConnection;54;0;170;0
WireConnection;54;1;53;0
WireConnection;878;0;869;0
WireConnection;878;1;881;0
WireConnection;882;0;878;0
WireConnection;882;1;883;0
WireConnection;409;0;769;0
WireConnection;409;1;1545;0
WireConnection;971;0;381;0
WireConnection;971;1;970;0
WireConnection;625;0;378;0
WireConnection;625;1;624;0
WireConnection;158;0;857;0
WireConnection;158;1;1034;0
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;406;0;625;0
WireConnection;406;1;971;0
WireConnection;406;2;1486;0
WireConnection;665;0;559;0
WireConnection;665;1;668;0
WireConnection;666;0;664;0
WireConnection;666;1;665;0
WireConnection;668;0;667;0
WireConnection;664;0;356;0
WireConnection;664;1;667;0
WireConnection;998;1;1089;0
WireConnection;999;0;559;0
WireConnection;999;1;1001;0
WireConnection;1000;0;1002;0
WireConnection;1000;1;999;0
WireConnection;1001;0;998;0
WireConnection;768;0;702;0
WireConnection;768;1;771;0
WireConnection;688;0;687;0
WireConnection;678;0;677;0
WireConnection;678;1;676;0
WireConnection;687;0;678;0
WireConnection;676;1;768;0
WireConnection;822;0;688;0
WireConnection;822;1;158;0
WireConnection;822;2;823;0
WireConnection;1033;0;1028;0
WireConnection;1033;1;998;0
WireConnection;869;1;877;0
WireConnection;1048;0;1047;0
WireConnection;1048;1;1049;0
WireConnection;1050;0;1048;0
WireConnection;1051;0;1042;0
WireConnection;1051;1;1050;0
WireConnection;1045;0;1051;0
WireConnection;1046;0;1045;0
WireConnection;1046;1;843;0
WireConnection;1052;0;1046;0
WireConnection;1063;0;1061;0
WireConnection;1063;1;1064;0
WireConnection;1053;0;1052;0
WireConnection;1053;1;1062;0
WireConnection;1061;0;1053;0
WireConnection;1061;1;1060;0
WireConnection;1074;0;409;0
WireConnection;1074;1;1073;0
WireConnection;1065;0;1063;0
WireConnection;1065;1;1074;0
WireConnection;1089;0;666;0
WireConnection;1089;1;927;0
WireConnection;1035;0;1540;0
WireConnection;1035;1;1001;0
WireConnection;1034;0;1035;0
WireConnection;1034;1;1033;0
WireConnection;1060;1;1532;0
WireConnection;1183;0;1188;0
WireConnection;1183;3;1190;0
WireConnection;1183;4;1191;0
WireConnection;1188;0;1187;0
WireConnection;1187;0;1186;0
WireConnection;1187;1;1189;0
WireConnection;1192;0;59;0
WireConnection;1192;1;1183;0
WireConnection;1028;1;1037;0
WireConnection;584;0;609;0
WireConnection;585;0;586;0
WireConnection;585;1;584;2
WireConnection;585;2;584;3
WireConnection;586;0;587;0
WireConnection;586;1;584;1
WireConnection;589;0;591;0
WireConnection;589;1;603;0
WireConnection;589;2;590;0
WireConnection;592;0;593;0
WireConnection;594;0;608;0
WireConnection;594;1;592;1
WireConnection;595;0;594;0
WireConnection;595;1;592;2
WireConnection;595;2;592;3
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
WireConnection;588;1;595;0
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
WireConnection;593;1;597;0
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
WireConnection;638;1;634;0
WireConnection;603;0;585;0
WireConnection;603;1;602;0
WireConnection;635;0;638;0
WireConnection;614;0;616;0
WireConnection;614;1;613;0
WireConnection;590;0;614;0
WireConnection;1221;0;1222;0
WireConnection;1222;0;1223;0
WireConnection;1223;0;1228;0
WireConnection;1223;1;1234;0
WireConnection;1224;0;1221;0
WireConnection;1224;1;1233;0
WireConnection;1225;0;1224;0
WireConnection;1225;1;1236;0
WireConnection;1226;0;1225;0
WireConnection;1226;1;1230;0
WireConnection;1228;0;1229;0
WireConnection;1228;1;1227;0
WireConnection;860;0;994;0
WireConnection;860;1;863;0
WireConnection;1040;0;409;0
WireConnection;1040;1;1033;0
WireConnection;642;0;1237;0
WireConnection;642;1;640;0
WireConnection;1087;0;642;0
WireConnection;1087;1;1065;0
WireConnection;1096;0;1088;0
WireConnection;1096;1;1033;0
WireConnection;1098;0;1097;0
WireConnection;1098;1;882;0
WireConnection;472;0;1099;0
WireConnection;472;1;589;0
WireConnection;1099;0;1097;0
WireConnection;1099;1;1098;0
WireConnection;1216;0;472;0
WireConnection;1216;1;1218;0
WireConnection;1218;0;1197;0
WireConnection;1218;1;1219;0
WireConnection;1238;0;475;0
WireConnection;1238;1;1226;0
WireConnection;986;0;983;0
WireConnection;986;1;409;0
WireConnection;994;0;986;0
WireConnection;994;1;409;0
WireConnection;994;2;996;0
WireConnection;981;0;982;0
WireConnection;982;0;992;0
WireConnection;982;1;989;0
WireConnection;992;0;993;0
WireConnection;992;1;991;0
WireConnection;997;0;981;0
WireConnection;983;0;981;0
WireConnection;983;1;988;0
WireConnection;429;0;428;0
WireConnection;428;0;426;0
WireConnection;426;0;423;0
WireConnection;426;1;427;0
WireConnection;430;0;429;0
WireConnection;430;1;858;0
WireConnection;862;0;430;0
WireConnection;862;1;564;0
WireConnection;863;0;862;0
WireConnection;863;1;558;0
WireConnection;423;0;420;0
WireConnection;423;1;424;0
WireConnection;564;0;436;0
WireConnection;564;1;409;0
WireConnection;1002;0;964;0
WireConnection;1002;1;998;0
WireConnection;962;0;966;0
WireConnection;968;0;967;0
WireConnection;965;0;962;0
WireConnection;965;1;968;0
WireConnection;964;0;927;0
WireConnection;964;1;965;0
WireConnection;1037;0;964;0
WireConnection;1037;1;1038;0
WireConnection;1097;0;1088;0
WireConnection;1097;1;1096;0
WireConnection;1217;0;472;0
WireConnection;1217;1;1216;0
WireConnection;924;0;922;0
WireConnection;924;1;923;0
WireConnection;923;0;158;0
WireConnection;923;1;922;0
WireConnection;892;0;889;0
WireConnection;892;1;977;0
WireConnection;893;0;892;0
WireConnection;893;1;894;0
WireConnection;893;2;895;0
WireConnection;888;0;887;0
WireConnection;888;1;893;0
WireConnection;1106;0;1109;0
WireConnection;1106;1;1111;0
WireConnection;1108;0;1106;0
WireConnection;1108;1;1103;0
WireConnection;1108;2;1130;0
WireConnection;1112;0;1107;0
WireConnection;1112;1;1108;0
WireConnection;1209;0;1473;0
WireConnection;1209;1;1210;0
WireConnection;1452;0;1197;0
WireConnection;1452;1;1453;0
WireConnection;1457;0;924;0
WireConnection;1457;1;1551;0
WireConnection;1457;2;888;0
WireConnection;1210;0;1206;0
WireConnection;1210;1;1470;0
WireConnection;1462;0;1461;0
WireConnection;1462;1;1112;0
WireConnection;1464;0;1462;0
WireConnection;1199;1;1209;0
WireConnection;1197;0;1101;0
WireConnection;1197;1;1199;0
WireConnection;1235;0;1197;0
WireConnection;1473;0;1477;0
WireConnection;1473;1;1472;0
WireConnection;677;0;57;0
WireConnection;58;0;54;0
WireConnection;58;1;1192;0
WireConnection;1482;0;54;0
WireConnection;1482;1;1483;0
WireConnection;995;0;1034;0
WireConnection;995;1;971;0
WireConnection;74;0;57;0
WireConnection;1491;0;1480;0
WireConnection;1484;0;1481;0
WireConnection;1480;0;1496;0
WireConnection;1480;2;1487;0
WireConnection;1481;0;54;0
WireConnection;1481;1;1482;0
WireConnection;1481;2;1491;0
WireConnection;1486;0;74;0
WireConnection;1486;1;1485;0
WireConnection;1494;0;1489;0
WireConnection;1495;0;1494;1
WireConnection;1495;1;1498;0
WireConnection;1498;0;1497;1
WireConnection;1498;1;1497;2
WireConnection;1496;0;1494;0
WireConnection;1496;1;1495;0
WireConnection;835;1;1525;0
WireConnection;835;5;1544;0
WireConnection;1532;1;1528;0
WireConnection;1532;0;1529;0
WireConnection;1532;2;1530;0
WireConnection;1532;3;1531;0
WireConnection;1517;0;1515;0
WireConnection;1518;0;1516;0
WireConnection;1520;0;1519;0
WireConnection;1522;0;1521;0
WireConnection;1541;1;1537;0
WireConnection;1542;0;1541;0
WireConnection;1542;1;76;0
WireConnection;1542;2;1543;0
WireConnection;76;1;666;0
WireConnection;1540;0;76;0
WireConnection;1540;1;1542;0
WireConnection;1537;1;1533;0
WireConnection;1537;0;1534;0
WireConnection;1537;2;1535;0
WireConnection;1537;3;1536;0
WireConnection;1088;0;642;0
WireConnection;1088;1;1087;0
WireConnection;475;0;1040;0
WireConnection;475;1;860;0
WireConnection;1237;0;475;0
WireConnection;1237;1;1238;0
WireConnection;591;0;588;0
WireConnection;1454;0;1217;0
WireConnection;1454;1;1551;0
WireConnection;1525;1;1523;0
WireConnection;1525;0;1524;0
WireConnection;1525;2;1526;0
WireConnection;1525;3;1527;0
WireConnection;1548;1;1546;0
WireConnection;1548;0;1547;0
WireConnection;1548;2;1549;0
WireConnection;1548;3;1550;0
WireConnection;559;1;560;0
WireConnection;1551;1;76;4
WireConnection;1551;2;1552;0
WireConnection;1458;0;1452;0
WireConnection;1458;1;1551;0
WireConnection;1458;2;1112;0
ASEEND*/
//CHKSM=0F235BDF84882589B24168AB92ED44C9E038EBDC