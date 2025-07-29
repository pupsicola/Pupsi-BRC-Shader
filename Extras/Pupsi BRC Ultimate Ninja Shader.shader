// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Extras/Pupsi BRC Ultimate Ninja Shader"
{
	Properties 
  { 
      [HideInInspector] shader_is_using_thry_editor("", Float)=0 
      [HideInInspector] shader_is_using_thry_editor("", Float)=0
	
				[HideInInspector] shader_master_label("<color=#1fc>Pupsi</color> <color=#ffffff>BRC Ultimate Ninja Shader</color>", Float) = 0
		[HideInInspector] footer_github ("{texture:{name:icon-githubpupsi,height:64},action:{type:URL,data:https://github.com/pupsicola/Pupsi-BRC-Shader},hover:Github}", Float) = 0
		[HideInInspector] footer_kofi ("{texture:{name:icon-kofipupsi,height:64},action:{type:URL,data:https://ko-fi.com/pupsi},hover:Ko-fi}", Float) = 0
	
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		
				[HideInInspector] m_start_BaseTextures("Base Textures", Float) = 0 // Starts secondary expandable menu
		
		_AlphaClipping("Alpha Clipping", Range( 0 , 1)) = 0.5
		_BaseColor("Base Color", Color) = (1,1,1,0)
		[BigTexture][NoScaleOffset]_MainTex("Base Texture", 2D) = "white" {}
		[BigTexture][NoScaleOffset]_Emission("Emission Texture", 2D) = "black" {}
		_EmissionColor("Emission Color", Color) = (1,1,1,1)
		[BigTexture][NoScaleOffset]_EmissionMask("Emission Mask", 2D) = "white" {}
		_EmissionEmit("Emission Amount", Float) = 1
		
				[HideInInspector] m_end_BaseTextures("Base Textures", Float) = 0 // Declares where the menu should end
		
		[HideInInspector] m_start_CustomLighting("Custom Lighting", Float) = 0 // Starts secondary expandable menu
		
		[Shadow Options][Toggle]_CustomLightingColorToggle("Custom Lighting Color Toggle", Float) = 0
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		[Shadow Options][Toggle]_CustomShadowColorToggle("Custom Shadow Color Toggle", Float) = 0
		_CustomShadowColor("Custom Shadow Color", Color) = (0,0,0,0)
		_ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
		_ShadowOffset("Shadow Offset", Range( -1 , 1)) = 0
		[Toggle]_ShadowTextureToggle("Shadow Texture Toggle", Float) = 1
		[BigTexture][NoScaleOffset]_ShadowTexture("Shadow Texture", 2D) = "white" {}
		_ShadowTextureTiling("Shadow Texture Tiling", Vector) = (14,14,0,0)
		_ShadowTextureSoftness("Shadow Texture Softness", Range( 0.01 , 2)) = 0.1
		_ShadowTextureOffset("Shadow Texture Offset", Range( -1 , 1)) = -0.1
		_ShadowTextureBlend("Shadow Texture Blend", Range( 0 , 1)) = 0.35
		_ShadowRimOpacity("Shadow Rim Opacity", Range( 0 , 1)) = 0.3
		_ShadowRim1Offset("Shadow Rim 1 Offset", Range( 0 , 1)) = 0.2
		_ShadowRim2Offset("Shadow Rim 2 Offset", Range( 0 , 1)) = 0.4
		[Toggle]_ExtraLightToggle("Extra Light Toggle", Float) = 0
		_ExtraLightOffset("Extra Light Offset", Range( -1 , 0)) = -0.6
		_ExtraLightSoftness("Extra Light Softness", Range( 0.01 , 2)) = 0.01
		_ExtraLightBlend("Extra Light Opacity", Range( 0 , 10)) = 2
		[Toggle]_SpecularToggle("Specular Toggle", Float) = 0
		[Toggle]_SpecularCustomColorToggle("Specular Custom Color Toggle", Float) = 0
		_SpecularCustomColor("Specular Custom Color", Color) = (1,1,1,0)
		[BigTexture][NoScaleOffset]_SpecularMask("Specular Mask", 2D) = "white" {}
		_SpecularBrightness("Specular Brightness", Float) = 1
		_SpecularPower("Specular Power", Float) = 15
		[Toggle]_RimLightShadowToggle("Rim Light/Shadow Toggle", Float) = 0
		_RimLightColor("Rim Light Color", Color) = (1,1,1,1)
		[Toggle]_RimLightBlendBaseTexture("Rim Light Blend Base Texture", Float) = 1
		_RimLightPower("Rim Light Power", Range( 0.01 , 10)) = 0.01
		_RimLightOffset("Rim Light Offset", Range( 0 , 1)) = 0.65
		_RimLightBlend("Rim Light Opacity", Range( 0 , 25)) = 25
		_RimShadowPower("Rim Shadow Power", Range( 0.01 , 10)) = 10
		_RimShadowOffset("Rim Shadow Offset", Range( -1 , 1)) = 0.65
		_RimShadowOpacity("Rim Shadow Opacity", Range( 0 , 1)) = 0.6676344
		
				[HideInInspector] m_end_CustomLighting("Custom Lighting", Float) = 0 // Declares where the menu should end
		
		[HideInInspector] m_start_OutlineOptions("Outline Options", Float) = 0 // Starts secondary expandable menu
		
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		[Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
		[BigTexture][NoScaleOffset]OutlineTexture("Outline Texture", 2D) = "white" {}
		_OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
		_OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
		
				[HideInInspector] m_end_OutlineOptions("Outline Options", Float) = 0 // Declares where the menu should end
		
		[HideInInspector] m_start_SilhouetteOutlineOptions("Silhouette Outline Options", Float) = 0 // Starts secondary expandable menu
		
		_SilhouetteColor("Silhouette Color", Color) = (1,1,1,1)
		[Toggle]_SilhouetteTextureToggle("Silhouette Texture Toggle", Float) = 0
		[BigTexture][NoScaleOffset]AuraTexture1("Silhouette Texture", 2D) = "white" {}
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
		_SilhouetteRimLightBlend("Silhouette Rim Light Opacity", Range( 0 , 25)) = 25
		
				[HideInInspector] m_end_SilhouetteOutlineOptions("Silhouette Outline Options", Float) = 0 // Declares where the menu should end
		
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
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
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
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
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _ShadowTextureOffset;
			uniform float _ShadowTextureSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _ShadowRim2Offset;
			uniform float _ShadowRimOpacity;
			uniform float _ShadowRim1Offset;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlend;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularPower;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform float4 _EmissionColor;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float _EmissionEmit;
			uniform float _AlphaClipping;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_58_0 = ( dotResult54 + _ShadowOffset );
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( temp_output_58_0 / _ShadowSoftness ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 uv_MainTex76 = i.ase_texcoord3.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * ( tex2DNode76 * _BaseColor ) );
				float4 screenPos = i.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - ( ( dotResult54 + _ShadowTextureOffset ) / _ShadowTextureSoftness ) ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float temp_output_1403_0 = saturate( ( temp_output_58_0 / _ShadowSoftness ) );
				float temp_output_1436_0 = ( 1.0 - _ShadowRimOpacity );
				float4 lerpResult1397 = lerp( ( temp_output_409_0 * temp_output_1436_0 ) , temp_output_409_0 , ( saturate( ( 1.0 - ( ( dotResult54 + ( _ShadowOffset + _ShadowRim1Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ));
				float4 lerpResult1414 = lerp( ( temp_output_409_0 * ( saturate( ( 1.0 - ( ( dotResult54 + ( 0.0 + _ShadowRim2Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ) ) , lerpResult1397 , ( temp_output_1436_0 + 0.05 ));
				float4 BaseOutput1401 = lerpResult1414;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) );
				float4 blendOpDest1251 = (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_SpecularMask1060 = i.ase_texcoord3.xy;
				float2 uv_Emission609 = i.ase_texcoord3.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord3.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
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
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityStandardBRDF.cginc"
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
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};

			//This is a late directive
			
			uniform float _OutlineMultiplier;
			uniform float _OutlineMinSize;
			uniform float _OutlineMaxSize;
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
			uniform float _ShadowTextureToggle;
			uniform float _CustomShadowColorToggle;
			uniform float4 ShadowColor;
			uniform float4 _CustomShadowColor;
			uniform float _CustomLightingColorToggle;
			uniform float4 LightColor;
			uniform float4 _CustomLightingColor;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _ShadowTextureOffset;
			uniform float _ShadowTextureSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _ShadowRim2Offset;
			uniform float _ShadowRimOpacity;
			uniform float _ShadowRim1Offset;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlend;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularPower;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform float4 _EmissionColor;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float _EmissionEmit;
			uniform float _AlphaClipping;


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
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord1.xyz = ase_worldNormal;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord3 = screenPos;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.zw = 0;

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
				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_58_0 = ( dotResult54 + _ShadowOffset );
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( temp_output_58_0 / _ShadowSoftness ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 uv_MainTex76 = i.ase_texcoord2.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * ( tex2DNode76 * _BaseColor ) );
				float4 screenPos = i.ase_texcoord3;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - ( ( dotResult54 + _ShadowTextureOffset ) / _ShadowTextureSoftness ) ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float temp_output_1403_0 = saturate( ( temp_output_58_0 / _ShadowSoftness ) );
				float temp_output_1436_0 = ( 1.0 - _ShadowRimOpacity );
				float4 lerpResult1397 = lerp( ( temp_output_409_0 * temp_output_1436_0 ) , temp_output_409_0 , ( saturate( ( 1.0 - ( ( dotResult54 + ( _ShadowOffset + _ShadowRim1Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ));
				float4 lerpResult1414 = lerp( ( temp_output_409_0 * ( saturate( ( 1.0 - ( ( dotResult54 + ( 0.0 + _ShadowRim2Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ) ) , lerpResult1397 , ( temp_output_1436_0 + 0.05 ));
				float4 BaseOutput1401 = lerpResult1414;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) );
				float4 blendOpDest1251 = (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_SpecularMask1060 = i.ase_texcoord2.xy;
				float2 uv_Emission609 = i.ase_texcoord2.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord2.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) )).rgb;
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
			#include "UnityStandardBRDF.cginc"
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
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform sampler2D _MainTex;
			uniform float _AlphaClipping;


			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 objectToViewPos = UnityObjectToViewPos(v.vertex.xyz);
				float eyeDepth = -objectToViewPos.z;
				float cameraDepthFade1291 = (( eyeDepth -_ProjectionParams.y - 0.0 ) / 1.0);
				float clampResult1290 = clamp( ( _SilhouetteMultiplier * cameraDepthFade1291 ) , _SilhouetteMinSize , _SilhouetteMaxSize );
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord.xyz = ase_worldPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord1.zw = 0;

				v.vertex.xyz += ( v.ase_normal * clampResult1290 );
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outAuraColor;
				float outAuraAlpha;

				float3 ase_worldPos = i.ase_texcoord.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				
				float2 uv_MainTex76 = i.ase_texcoord1.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				clip( tex2DNode76.a - _AlphaClipping);
				

				outAuraColor = AuraTex1305.rgb;
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
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardBRDF.cginc"
			#define ASE_NEEDS_VERT_NORMAL

			//This is a late directive
			
			uniform float _SilhouetteOverlay;
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
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform float _ExtraLightToggle;
			uniform float _ExtraLightOffset;
			uniform float _ExtraLightSoftness;
			uniform float _ExtraLightBlend;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _ShadowTextureOffset;
			uniform float _ShadowTextureSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _ShadowRim2Offset;
			uniform float _ShadowRimOpacity;
			uniform float _ShadowRim1Offset;
			uniform float _RimShadowOffset;
			uniform float _RimShadowPower;
			uniform float _RimLightBlendBaseTexture;
			uniform float4 _RimLightColor;
			uniform float _RimShadowOpacity;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightBlend;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SpecularPower;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;
			uniform float _SilhouetteOverlayOpacity;
			uniform float4 _EmissionColor;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float _EmissionEmit;
			uniform float _AlphaClipping;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.zw = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float temp_output_58_0 = ( dotResult54 + _ShadowOffset );
				float4 lerpResult406 = lerp( (( _CustomShadowColorToggle )?( _CustomShadowColor ):( ShadowColor )) , (( _CustomLightingColorToggle )?( _CustomLightingColor ):( LightColor )) , saturate( ( temp_output_58_0 / _ShadowSoftness ) ));
				float4 lerpResult855 = lerp( float4( 0,0,0,0 ) , LightColor , saturate( ( ( dotResult54 + _ExtraLightOffset ) / _ExtraLightSoftness ) ));
				float2 uv_MainTex76 = i.ase_texcoord3.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( ( lerpResult406 + (( _ExtraLightToggle )?( ( lerpResult855 * _ExtraLightBlend ) ):( float4( 0,0,0,0 ) )) ) * ( tex2DNode76 * _BaseColor ) );
				float4 screenPos = i.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - ( ( dotResult54 + _ShadowTextureOffset ) / _ShadowTextureSoftness ) ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = temp_output_1280_0;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 temp_output_409_0 = ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( temp_output_1280_0 )) * ase_lightColor );
				float temp_output_1403_0 = saturate( ( temp_output_58_0 / _ShadowSoftness ) );
				float temp_output_1436_0 = ( 1.0 - _ShadowRimOpacity );
				float4 lerpResult1397 = lerp( ( temp_output_409_0 * temp_output_1436_0 ) , temp_output_409_0 , ( saturate( ( 1.0 - ( ( dotResult54 + ( _ShadowOffset + _ShadowRim1Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ));
				float4 lerpResult1414 = lerp( ( temp_output_409_0 * ( saturate( ( 1.0 - ( ( dotResult54 + ( 0.0 + _ShadowRim2Offset ) ) / _ShadowSoftness ) ) ) + temp_output_1403_0 ) ) , lerpResult1397 , ( temp_output_1436_0 + 0.05 ));
				float4 BaseOutput1401 = lerpResult1414;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1255 = dot( normalizedWorldNormal , ase_worldViewDir );
				float temp_output_1252_0 = saturate( ( dotResult1255 + _RimShadowOffset ) );
				float4 blendOpSrc1251 = ( pow( temp_output_1252_0 , _RimShadowPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) );
				float4 blendOpDest1251 = (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor ));
				float4 lerpBlendMode1251 = lerp(blendOpDest1251,min( blendOpSrc1251 , blendOpDest1251 ),_RimShadowOpacity);
				float dotResult423 = dot( normalizedWorldNormal , ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float3 normalizeResult1050 = normalize( ( _WorldSpaceCameraPos - ase_worldPos ) );
				float3 normalizeResult1045 = normalize( ( worldSpaceLightDir + normalizeResult1050 ) );
				float dotResult1046 = dot( normalizeResult1045 , normalizeResult170 );
				float2 uv_SpecularMask1060 = i.ase_texcoord3.xy;
				float2 uv_Emission609 = i.ase_texcoord3.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord3.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SpecularToggle )?( ( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) + ( ( ( pow( saturate( dotResult1046 ) , _SpecularPower ) * tex2D( _SpecularMask, uv_SpecularMask1060 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( BaseOutput1401 )) ) ) ):( (( _SilhouetteRimLightToggle )?( ( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( (( _RimLightShadowToggle )?( ( ( saturate( lerpBlendMode1251 )) + ( ( pow( ( 1.0 - saturate( ( dotResult423 + _RimLightOffset ) ) ) , _RimLightPower ) * (( _RimLightBlendBaseTexture )?( BaseOutput1401 ):( _RimLightColor )) ) * _RimLightBlend ) ) ):( BaseOutput1401 )) )) )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				

				outColor = temp_output_472_0.rgb;
				outAlpha = 1.0;
				clip(outAlpha);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	//originalEditor//originalEditorCustomEditor "ASEMaterialInspector"
CustomEditor "Thry.ShaderEditor"
//originalEditorCustomEditor "ASEMaterialInspector"
CustomEditor "Thry.ShaderEditor"
	
	Fallback Off
}
/*ASEBEGIN
Version=19200
Node;AmplifyShaderEditor.CommentaryNode;226;1777.55,1592.955;Inherit;False;695.0734;392.2929;;4;170;53;54;834;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;2115.155,4027.134;Inherit;False;1855.488;608.4642;;17;970;406;408;857;625;60;59;971;624;409;769;57;74;58;378;381;1280;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1833.16,412.4896;Inherit;False;1976.592;475.3736;;11;427;858;423;420;426;428;424;558;430;429;863;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;2475.164,-658.9301;Inherit;False;1391.61;537.0383;;7;1438;1437;602;1261;609;1265;603;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;844;2665.375,1395.669;Inherit;False;1142.913;327.8334;;8;867;856;855;866;852;854;853;851;Extra Lighting Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;1693.792,5694.274;Inherit;False;2208.828;523.0707;;20;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1278;1271;1272;1354;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.OneMinusNode;429;2615.476,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2455.477,657.9794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2327.477,656.9794;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2775.474,651.9793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;424;1863.477,625.9793;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;423;2087.478,545.9796;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;420;1863.477,465.9796;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ToggleSwitchNode;564;2995.897,477.42;Inherit;False;Property;_RimLightBlendBaseTexture;Rim Light Blend Base Texture;34;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;436;2786.474,479.9796;Inherit;False;Property;_RimLightColor;Rim Light Color;33;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;858;2448.616,756.8726;Inherit;False;Property;_RimLightPower;Rim Light Power;35;0;Create;True;0;0;0;False;0;False;0.01;3.19;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1036;2111.362,4717.796;Inherit;False;1828.709;768.9817;;14;823;676;822;771;687;678;688;768;677;702;1365;1366;1367;1368;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;427;2023.478,801.9797;Inherit;False;Property;_RimLightOffset;Rim Light Offset;36;0;Create;True;0;0;0;False;0;False;0.65;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;834;1806.679,1633.011;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;2265.713,1756.613;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1058;1680.904,901.0906;Inherit;False;2130.147;475.957;;18;1053;1074;1073;1060;1065;1063;1064;1061;1062;1052;1046;1045;1051;1050;1042;1047;1049;1048;Specular;1,1,1,1;0;0
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
Node;AmplifyShaderEditor.RangedFloatNode;1064;3255.776,1091.711;Inherit;False;Property;_SpecularBrightness;Specular Brightness;30;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1053;2762.142,948.0969;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;12;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1062;2567.571,1187.652;Inherit;False;Property;_SpecularPower;Specular Power;31;0;Create;True;0;0;0;False;0;False;15;3.99;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1073;3055.923,1182.904;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;28;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1061;3247.397,956.29;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1074;3310.487,1183.248;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;27;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1065;3639.809,984.8562;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1126;906.4294,4013.647;Inherit;False;1190.214;628.0172;;3;1356;1355;76;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;863;3526.522,480.8262;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;860;3950.549,366.7159;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1248;2165.021,-104.3563;Inherit;False;1636.984;483.7798;;12;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;Rim Shadow;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1249;3287.513,233.0792;Inherit;False;Property;_RimShadowOpacity;Rim Shadow Opacity;40;0;Create;True;0;0;0;False;0;False;0.6676344;0.332;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1250;3344.826,-58.49818;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;1251;3563.497,-54.13026;Inherit;True;Darken;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;2792.383,149.5396;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1253;2664.383,148.5396;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1254;2200.382,117.5394;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1255;2424.384,37.5399;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1256;2200.382,-42.4601;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1257;2785.522,248.4332;Inherit;False;Property;_RimShadowPower;Rim Shadow Power;38;0;Create;True;0;0;0;False;0;False;10;0.01;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1258;2360.383,293.5399;Inherit;False;Property;_RimShadowOffset;Rim Shadow Offset;39;0;Create;True;0;0;0;False;0;False;0.65;-0.292;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1259;2950.868,143.6488;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1260;3110.38,-57.46034;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3495.497,-458.4518;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1265;2978.995,-273.8162;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1287;1777.126,6298.926;Inherit;False;1707.826;491.2855;;18;1308;1306;1302;1301;1300;1299;1297;1295;1292;1291;1290;1289;1288;1353;1309;1303;1350;1304;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1315;1801.716,6898.048;Inherit;False;1976.592;475.3736;;13;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1088;5005.834,342.5815;Inherit;False;Property;_SpecularToggle;Specular Toggle;26;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1149;5280.743,832.6833;Inherit;False;Property;_AlphaClipping;Alpha Clipping;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;5074.196,593.3636;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1312;4695.196,745.3636;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;56;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5592.5,362.2181;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1314;5305.196,362.3637;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;55;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1313;5221.181,489.6377;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1329;4382.865,474.7703;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1330;4490.865,463.7703;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;60;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;558;3240.87,703.2561;Inherit;False;Property;_RimLightBlend;Rim Light Opacity;37;0;Create;False;0;0;0;False;0;False;25;0;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;53;1916.417,1818.647;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;170;2018.346,1671.201;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1087;4874.549,374.5685;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;851;2972.615,1465.695;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;853;2846.844,1467.21;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;852;3177.071,1469.724;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;866;3583.226,1585.502;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;855;3334.944,1435.01;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ToggleSwitchNode;856;3602.744,1479.311;Inherit;False;Property;_ExtraLightToggle;Extra Light Toggle;22;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;854;2535.542,1483.21;Inherit;False;Property;_ExtraLightOffset;Extra Light Offset;23;0;Create;True;0;0;0;False;0;False;-0.6;-0.326;-1;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1230;2634.931,1593.814;Float;False;Property;_ExtraLightSoftness;Extra Light Softness;24;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;867;3292.226,1644.502;Inherit;False;Property;_ExtraLightBlend;Extra Light Opacity;25;0;Create;False;0;0;0;False;0;False;2;0.2;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;381;2543.816,4453.785;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;624;2134.681,4072.899;Inherit;False;Property;_CustomShadowColor;Custom Shadow Color;10;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;378;2386.029,4068.922;Inherit;False;Global;ShadowColor;ShadowColor;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.2,0.2,0.2,0;0.5,0.5,0.5,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;970;2761.677,4466.341;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;8;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1278;1718.666,5881.88;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;1277;1737.883,5748.918;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;48;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1749.269,6036.126;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;49;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;2016.474,5991.959;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;2004.328,5766.644;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3393.454,6116.87;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;43;0;Create;True;0;0;0;False;0;False;0.008;0.003;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3392.454,6047.87;Inherit;False;Property;_OutlineMinSize;Outline Min Size;42;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3227.454,5942.867;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3215.979,6046.115;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;893;3598.454,5979.87;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2972.494,6059.292;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3746.979,5954.111;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2989.979,5970.111;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;41;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2701.991,5900.501;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;46;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3611.032,5769.88;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;45;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1936.61,5897.406;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;857;3452.431,4147.857;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3705.63,4356.381;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;13;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;3533.002,4391.746;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3435.464,5818.835;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;2684.983,6526.72;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1289;2673.508,6629.967;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;1290;3055.983,6563.722;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;1291;2430.024,6643.145;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;3204.508,6537.964;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1297;3099.696,6344.377;Inherit;False;Property;_SilhouetteColor;Silhouette Color;50;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1299;2848.309,6713.313;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;59;0;Create;True;0;0;0;False;0;False;0.016;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;2390.508,6349.964;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;57;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1302;3313.755,6383.694;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;51;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1306;2845.983,6635.722;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;58;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1305;3590.549,6289.254;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1316;2584.031,7143.539;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;2424.032,7143.539;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1318;2296.032,7142.539;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1319;2744.029,7137.539;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;3272.898,6967.416;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1322;1832.033,7111.539;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1323;2056.035,7031.539;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;1832.033,6951.539;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1326;2417.171,7242.432;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;61;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1327;1992.034,7287.539;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;62;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1325;2993.932,6991.451;Inherit;False;1305;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1321;3508.842,6997.151;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;2014.335,6390.984;Inherit;False;2;2;0;FLOAT3;1,1,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1350;1815.361,6340.125;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;2036.092,6577.49;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1304;1801.024,6673.442;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;54;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;1303;1828.166,6597.988;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1309;1783.028,6482.361;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;53;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1353;2209.889,6443.526;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1354;2209.349,5829.997;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1355;1265.917,4065.664;Inherit;False;Property;_BaseColor;Base Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1328;3209.425,7188.815;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Opacity;63;0;Create;False;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2414.366,6026.125;Inherit;False;Property;_OutlineColor;Outline Color;44;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.4433962,0.4433962,0.4433962,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2425.683,4240.401;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;59;2139.237,4256.226;Float;False;Property;_ShadowOffset;Shadow Offset;12;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;2145.312,4337.913;Float;False;Property;_ShadowSoftness;Shadow Softness;11;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;677;2768.297,5110.935;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;688;3298.427,5113.55;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2935.446,5112.956;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;3135.55,5113.085;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3526.997,5094.841;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0.5;False;1;COLOR;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;2168.962,5096.759;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2343.698,5107.245;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node;771;2168.467,5263.168;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;15;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;14,14;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1365;2401.782,4856.123;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1368;2520.845,4852.967;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;971;3003.677,4504.341;Inherit;False;Property;_CustomLightingColorToggle;Custom Lighting Color Toggle;7;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;406;3169.412,4109.624;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LightColorNode;408;3623.027,4075.251;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.CommentaryNode;1382;2047.914,2510.626;Inherit;False;1828.709;768.9817;;18;1393;1392;1383;1402;1403;1404;1405;1401;1407;1408;1409;1410;1411;1412;1413;1414;1415;1419;Shadow Rim;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3774.354,4051.553;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1060;2753.072,1170.499;Inherit;True;Property;_SpecularMask;Specular Mask;29;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;609;2511.855,-507.4146;Inherit;True;Property;_Emission;Emission Texture;3;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1261;2512.9,-312.8984;Inherit;True;Property;_EmissionMask;Emission Mask;5;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;76;960.2272,4056.422;Inherit;True;Property;_MainTex;Base Texture;2;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;3bd151116756bea4bad06a7605dcd374;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;676;2488.233,5109.358;Inherit;True;Property;_ShadowTexture;Shadow Texture;14;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;f44b55b61b4ecd848bd691ecb4fcd52d;b9552255b337ed1468609738595c184a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2386.088,5788.875;Inherit;True;Property;OutlineTexture;Outline Texture;47;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1301;2794.433,6341.764;Inherit;True;Property;AuraTexture1;Silhouette Texture;52;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;74;2748.201,4240.274;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2544.746,4237.246;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1397;3171.231,3440.147;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1399;2938.122,3446.042;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClipNode;1148;5418.021,543.919;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1431;5800.152,478.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1435;5800.152,366.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1432;6035.01,338.1857;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1433;4241.308,6082.654;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1434;4241.308,6228.653;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1430;5800.152,366.1395;Float;False;True;-1;2;ASEMaterialInspector;100;14;Pupsi/Extras/Pupsi BRC Ultimate Ninja Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;0;1;False;;0;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1407;2085.343,2554.763;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1392;2202.333,2556.952;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1393;2316.396,2556.796;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1409;2198.419,2769.529;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1410;2312.482,2769.373;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1383;2519.483,2554.222;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1411;2518.443,2768.747;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1402;2704.597,2551.904;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1412;2702.443,2774.747;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1401;3671.511,2574.618;Inherit;False;BaseOutput;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1413;2894.443,2777.747;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1415;2899.071,3041.697;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1414;3293.443,2561.747;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1419;3125.435,2619.548;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1408;2081.429,2767.34;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.4;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1405;2898.592,2562.445;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1403;2507.435,2995.273;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1404;2309.68,3000.045;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1436;2770.939,3762.869;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1388;2428.867,3770.143;Inherit;False;Property;_ShadowRimOpacity;Shadow Rim Opacity;19;0;Create;True;0;0;0;False;0;False;0.3;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1367;2121.412,4953.634;Float;False;Property;_ShadowTextureSoftness;Shadow Texture Softness;16;0;Create;True;1;Shadow Options;0;0;False;0;False;0.1;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1366;2115.337,4871.947;Float;False;Property;_ShadowTextureOffset;Shadow Texture Offset;17;0;Create;True;1;Shadow Options;0;0;False;0;False;-0.1;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;823;3195.681,5340.856;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;18;0;Create;True;0;0;0;False;0;False;0.35;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;625;2631.681,4099.899;Inherit;False;Property;_CustomShadowColorToggle;Custom Shadow Color Toggle;9;0;Create;True;0;0;0;False;1;Shadow Options;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;475;4127.306,372.4348;Inherit;False;Property;_RimLightShadowToggle;Rim Light/Shadow Toggle;32;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1356;1515.989,4081.647;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;602;3295.888,-300.9866;Inherit;False;Property;_EmissionEmit;Emission Amount;6;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1437;3229.496,-482.3217;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1438;2911.496,-593.3217;Inherit;False;Property;_EmissionColor;Emission Color;4;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1439;1746.425,2599.722;Inherit;False;Property;_ShadowRim1Offset;Shadow Rim 1 Offset;20;0;Create;True;0;0;0;False;0;False;0.2;0.2;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1440;1753.425,2771.722;Inherit;False;Property;_ShadowRim2Offset;Shadow Rim 2 Offset;21;0;Create;True;0;0;0;False;0;False;0.4;0.4;0;1;0;1;FLOAT;0
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
WireConnection;564;1;1401;0
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
WireConnection;1052;0;1046;0
WireConnection;1063;0;1061;0
WireConnection;1063;1;1064;0
WireConnection;1053;0;1052;0
WireConnection;1053;1;1062;0
WireConnection;1061;0;1053;0
WireConnection;1061;1;1060;0
WireConnection;1074;0;1401;0
WireConnection;1074;1;1073;0
WireConnection;1065;0;1063;0
WireConnection;1065;1;1074;0
WireConnection;863;0;862;0
WireConnection;863;1;558;0
WireConnection;860;0;1251;0
WireConnection;860;1;863;0
WireConnection;1250;0;1260;0
WireConnection;1250;1;564;0
WireConnection;1251;0;1250;0
WireConnection;1251;1;564;0
WireConnection;1251;2;1249;0
WireConnection;1252;0;1253;0
WireConnection;1253;0;1255;0
WireConnection;1253;1;1258;0
WireConnection;1255;0;1256;0
WireConnection;1255;1;1254;0
WireConnection;1259;0;1252;0
WireConnection;1260;0;1252;0
WireConnection;1260;1;1257;0
WireConnection;603;0;1437;0
WireConnection;603;1;602;0
WireConnection;1265;0;609;0
WireConnection;1265;1;1261;0
WireConnection;1088;0;1330;0
WireConnection;1088;1;1087;0
WireConnection;1311;0;1302;0
WireConnection;1311;1;1312;0
WireConnection;472;0;1314;0
WireConnection;472;1;603;0
WireConnection;1314;0;1088;0
WireConnection;1314;1;1313;0
WireConnection;1313;0;1088;0
WireConnection;1313;1;1311;0
WireConnection;1329;0;475;0
WireConnection;1329;1;1321;0
WireConnection;1330;0;475;0
WireConnection;1330;1;1329;0
WireConnection;170;0;834;0
WireConnection;1087;0;1330;0
WireConnection;1087;1;1065;0
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
WireConnection;857;0;406;0
WireConnection;857;1;856;0
WireConnection;769;0;1280;0
WireConnection;769;1;822;0
WireConnection;1280;0;857;0
WireConnection;1280;1;1356;0
WireConnection;923;0;472;0
WireConnection;923;1;1272;0
WireConnection;1288;0;1300;0
WireConnection;1288;1;1291;0
WireConnection;1290;0;1288;0
WireConnection;1290;1;1306;0
WireConnection;1290;2;1299;0
WireConnection;1292;0;1289;0
WireConnection;1292;1;1290;0
WireConnection;1302;0;1297;0
WireConnection;1302;1;1301;0
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
WireConnection;1308;0;1350;0
WireConnection;1308;1;1309;0
WireConnection;1295;0;1303;0
WireConnection;1295;1;1304;0
WireConnection;1353;0;1308;0
WireConnection;1353;1;1295;0
WireConnection;1354;0;1279;0
WireConnection;1354;1;1274;0
WireConnection;58;0;54;0
WireConnection;58;1;59;0
WireConnection;677;0;1368;0
WireConnection;688;0;687;0
WireConnection;678;0;677;0
WireConnection;678;1;676;0
WireConnection;687;0;678;0
WireConnection;822;0;688;0
WireConnection;822;1;1280;0
WireConnection;822;2;823;0
WireConnection;768;0;702;0
WireConnection;768;1;771;0
WireConnection;1365;0;54;0
WireConnection;1365;1;1366;0
WireConnection;1368;0;1365;0
WireConnection;1368;1;1367;0
WireConnection;971;0;381;0
WireConnection;971;1;970;0
WireConnection;406;0;625;0
WireConnection;406;1;971;0
WireConnection;406;2;74;0
WireConnection;409;0;769;0
WireConnection;409;1;408;0
WireConnection;676;1;768;0
WireConnection;1271;1;1354;0
WireConnection;1301;1;1353;0
WireConnection;74;0;57;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;1397;0;1399;0
WireConnection;1397;1;409;0
WireConnection;1397;2;1405;0
WireConnection;1399;0;409;0
WireConnection;1399;1;1436;0
WireConnection;1148;1;76;4
WireConnection;1148;2;1149;0
WireConnection;1433;0;924;0
WireConnection;1433;1;1148;0
WireConnection;1433;2;888;0
WireConnection;1434;0;1305;0
WireConnection;1434;1;1148;0
WireConnection;1434;2;1292;0
WireConnection;1430;0;472;0
WireConnection;1430;1;1148;0
WireConnection;1407;0;59;0
WireConnection;1407;1;1439;0
WireConnection;1392;0;54;0
WireConnection;1392;1;1407;0
WireConnection;1393;0;1392;0
WireConnection;1393;1;60;0
WireConnection;1409;0;54;0
WireConnection;1409;1;1408;0
WireConnection;1410;0;1409;0
WireConnection;1410;1;60;0
WireConnection;1383;0;1393;0
WireConnection;1411;0;1410;0
WireConnection;1402;0;1383;0
WireConnection;1412;0;1411;0
WireConnection;1401;0;1414;0
WireConnection;1413;0;1412;0
WireConnection;1413;1;1403;0
WireConnection;1415;0;409;0
WireConnection;1415;1;1413;0
WireConnection;1414;0;1415;0
WireConnection;1414;1;1397;0
WireConnection;1414;2;1419;0
WireConnection;1419;0;1436;0
WireConnection;1408;1;1440;0
WireConnection;1405;0;1402;0
WireConnection;1405;1;1403;0
WireConnection;1403;0;1404;0
WireConnection;1404;0;58;0
WireConnection;1404;1;60;0
WireConnection;1436;0;1388;0
WireConnection;625;0;378;0
WireConnection;625;1;624;0
WireConnection;475;0;1401;0
WireConnection;475;1;860;0
WireConnection;1356;0;76;0
WireConnection;1356;1;1355;0
WireConnection;1437;0;1438;0
WireConnection;1437;1;1265;0
ASEEND*/
//CHKSM=F1B51627CDA2DDBCA0D85DC97498A3548B88CCDA