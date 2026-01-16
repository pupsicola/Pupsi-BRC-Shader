// Made with Amplify Shader Editor v1.9.2
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Extras/Pupsi BRC Riders Shader"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0 // VBESSON CHANGE
		_AlphaClipping("Alpha Clipping", Range( 0 , 1)) = 0.5
		_BaseColor("Base Color", Color) = (1,1,1,0)
		[NoScaleOffset]_MainTex("Base Texture", 2D) = "white" {}
		[NoScaleOffset]_Emission("Emission Texture", 2D) = "black" {}
		_EmissionColor("Emission Color", Color) = (1,1,1,0)
		[NoScaleOffset]_EmissionMask("Emission Mask", 2D) = "white" {}
		_EmissionEmit("Emission Amount", Float) = 1
		_WorldLightStrength("World Light Strength", Range( 0 , 1)) = 1
		[Toggle]_AddViewDirectionalLight("Add View Directional Light", Float) = 1
		_CustomLightingColor("Custom Lighting Color", Color) = (1,1,1,0)
		_GameLightStrength("Game Light Strength", Range( 0 , 1)) = 1
		_ShadowColor("Shadow Color", Color) = (0.4622642,0.4622642,0.4622642,0)
		_ShadowOutlineThickness("Shadow Outline Thickness", Range( 0 , 1)) = 0.1
		[Toggle]_ShadowOutlineCustomColorToggle("Shadow Outline Custom Color Toggle", Float) = 0
		_ShadowOutlineCustomColor("Shadow Outline Custom Color", Color) = (0,0,0,0)
		_ShadowSoftness("Shadow Softness", Range( 0.01 , 2)) = 0.01
		_ShadowOffset("Shadow Offset", Range( -1 , 1)) = -0.09279516
		[NoScaleOffset]_ShadowMask("Shadow Mask", 2D) = "black" {}
		[Toggle]_ShadowTextureToggle("Shadow Texture Toggle", Float) = 1
		[NoScaleOffset]_ShadowTexture("Shadow Texture", 2D) = "white" {}
		_ShadowTextureTiling("Shadow Texture Tiling", Vector) = (14,14,0,0)
		_ShadowTextureBlend("Shadow Texture Blend", Range( 0 , 1)) = 0.5
		_RimLightOpacity("Rim Light Opacity", Range( 0 , 1)) = 0.1
		_RimLightPower("Rim Light Power", Range( 0.01 , 10)) = 0.01
		_RimLightOffset("Rim Light Offset", Range( 0 , 1)) = 0.75
		_OutlineMultiplier("Outline Multiplier", Float) = 0.005
		_OutlineMinSize("Outline Min Size", Float) = 0.002
		_OutlineMaxSize("Outline Max Size", Float) = 0.008
		[Toggle]_VertexColorsDefineOutlineCoverage("Vertex Colors Define Outline Coverage", Float) = 0
		_OutlineColor("Outline Color", Color) = (0,0,0,1)
		[Toggle]_OutlineBlendBaseTexture("Outline Blend Base Texture", Float) = 1
		[Toggle]_OutlineTextureToggle("Outline Texture Toggle", Float) = 0
		[NoScaleOffset]OutlineTexture("Outline Texture", 2D) = "white" {}
		_OutlineTextureTiling("Outline Texture Tiling", Vector) = (1,1,0,0)
		_OutlineTextureScroll("Outline Texture Scroll", Vector) = (0,0,0,0)
		_SilhouetteColor("Silhouette Color", Color) = (1,1,1,1)
		[Toggle]_SilhouetteTextureToggle("Silhouette Texture Toggle", Float) = 0
		[NoScaleOffset]AuraTexture1("Silhouette Texture", 2D) = "white" {}
		_SilhouetteTextureTiling("Silhouette Texture Tiling", Vector) = (1,1,0,0)
		_SilhouetteTextureScroll("Silhouette Texture Scroll", Vector) = (0,0,0,0)
		[Toggle]_SilhouetteOverlay("Silhouette Overlay", Float) = 0
		_SilhouetteOverlayOpacity("Silhouette Overlay Opacity", Range( 0 , 1)) = 0
		_SilhouetteMultiplier("Silhouette Multiplier", Float) = 0.01
		_SilhouetteMinSize("Silhouette Min Size", Float) = 0.01
		_SilhouetteMaxSize("Silhouette Max Size", Float) = 0.016
		[Toggle]_VertexColorsDefineSilhouetteOutlineCoverage("Vertex Colors Define Silhouette Outline Coverage", Float) = 0
		[Toggle]_SilhouetteRimLightToggle("Silhouette Rim Light Toggle", Float) = 0
		_SilhouetteRimLightPower("Silhouette Rim Light Power", Range( 0.01 , 10)) = 0.7925499
		_SilhouetteRimLightOffset("Silhouette Rim Light Offset", Range( 0 , 1)) = 0.65
		_SilhouetteRimLightBlend("Silhouette Rim Light Opacity", Range( 0 , 25)) = 25
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
			uniform float _SilhouetteRimLightToggle;
			uniform float _ShadowOutlineCustomColorToggle;
			uniform float4 _ShadowColor;
			uniform float4 _ShadowOutlineCustomColor;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _AddViewDirectionalLight;
			uniform sampler2D _ShadowMask;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _WorldLightStrength;
			uniform float _ShadowOutlineThickness;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightOpacity;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
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
				o.ase_texcoord2.xyz = ase_worldNormal;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord3.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float4 lerpResult1597 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
				float2 uv_MainTex76 = i.ase_texcoord1.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( lerpResult1597 * ( tex2DNode76 * _BaseColor ) );
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 ase_worldPos = i.ase_texcoord3.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float dotResult1582 = dot( normalizeResult170 , ase_worldViewDir );
				float2 uv_ShadowMask1587 = i.ase_texcoord1.xy;
				float4 BaseLightOutput1534 = ( (( _AddViewDirectionalLight )?( ( dotResult54 + dotResult1582 ) ):( dotResult54 )) + tex2D( _ShadowMask, uv_ShadowMask1587 ) );
				float4 temp_output_58_0 = ( BaseLightOutput1534 + _ShadowOffset );
				float4 temp_output_57_0 = ( temp_output_58_0 / _ShadowSoftness );
				float4 lerpResult406 = lerp( _ShadowColor , temp_output_1280_0 , saturate( temp_output_57_0 ));
				float4 screenPos = i.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = lerpResult406;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1601 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 lerpResult1518 = lerp( (( _ShadowOutlineCustomColorToggle )?( _ShadowOutlineCustomColor ):( ( _ShadowColor * float4( 0.4716981,0.4716981,0.4716981,0 ) ) )) , ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( lerpResult406 )) * lerpResult1601 ) , ( saturate( ( 1.0 - ( ( BaseLightOutput1534 + ( _ShadowOffset + _ShadowOutlineThickness ) ) / _ShadowSoftness ) ) ) + saturate( ( temp_output_58_0 / _ShadowSoftness ) ) ));
				float4 BaseOutput1401 = lerpResult1518;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult1462 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 temp_output_1494_0 = saturate( ( saturate( pow( ( 1.0 - saturate( ( dotResult1462 + _RimLightOffset ) ) ) , _RimLightPower ) ) * saturate( temp_output_57_0 ) ) );
				float4 lerpResult1500 = lerp( BaseOutput1401 , ( temp_output_1494_0 * ( temp_output_1280_0 + _RimLightOpacity ) ) , temp_output_1494_0);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float2 uv_Emission609 = i.ase_texcoord1.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord1.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
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
				float4 ase_color : COLOR;
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
			uniform float _SilhouetteRimLightToggle;
			uniform float _ShadowOutlineCustomColorToggle;
			uniform float4 _ShadowColor;
			uniform float4 _ShadowOutlineCustomColor;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _AddViewDirectionalLight;
			uniform sampler2D _ShadowMask;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _WorldLightStrength;
			uniform float _ShadowOutlineThickness;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightOpacity;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
			uniform float _SilhouetteOverlayOpacity;
			uniform float4 _EmissionColor;
			uniform sampler2D _Emission;
			uniform sampler2D _EmissionMask;
			uniform float _EmissionEmit;
			uniform float _VertexColorsDefineOutlineCoverage;
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
				o.ase_texcoord2.xyz = ase_worldNormal;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord3 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord.w = 0;
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;

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
				float4 lerpResult1597 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
				float2 uv_MainTex76 = i.ase_texcoord1.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( lerpResult1597 * ( tex2DNode76 * _BaseColor ) );
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float dotResult1582 = dot( normalizeResult170 , ase_worldViewDir );
				float2 uv_ShadowMask1587 = i.ase_texcoord1.xy;
				float4 BaseLightOutput1534 = ( (( _AddViewDirectionalLight )?( ( dotResult54 + dotResult1582 ) ):( dotResult54 )) + tex2D( _ShadowMask, uv_ShadowMask1587 ) );
				float4 temp_output_58_0 = ( BaseLightOutput1534 + _ShadowOffset );
				float4 temp_output_57_0 = ( temp_output_58_0 / _ShadowSoftness );
				float4 lerpResult406 = lerp( _ShadowColor , temp_output_1280_0 , saturate( temp_output_57_0 ));
				float4 screenPos = i.ase_texcoord3;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = lerpResult406;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1601 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 lerpResult1518 = lerp( (( _ShadowOutlineCustomColorToggle )?( _ShadowOutlineCustomColor ):( ( _ShadowColor * float4( 0.4716981,0.4716981,0.4716981,0 ) ) )) , ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( lerpResult406 )) * lerpResult1601 ) , ( saturate( ( 1.0 - ( ( BaseLightOutput1534 + ( _ShadowOffset + _ShadowOutlineThickness ) ) / _ShadowSoftness ) ) ) + saturate( ( temp_output_58_0 / _ShadowSoftness ) ) ));
				float4 BaseOutput1401 = lerpResult1518;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult1462 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 temp_output_1494_0 = saturate( ( saturate( pow( ( 1.0 - saturate( ( dotResult1462 + _RimLightOffset ) ) ) , _RimLightPower ) ) * saturate( temp_output_57_0 ) ) );
				float4 lerpResult1500 = lerp( BaseOutput1401 , ( temp_output_1494_0 * ( temp_output_1280_0 + _RimLightOpacity ) ) , temp_output_1494_0);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float2 uv_Emission609 = i.ase_texcoord1.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord1.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
				clip( tex2DNode76.a - _AlphaClipping);
				float4 temp_cast_26 = (1.0).xxxx;
				

				outOutlineColor = (( _OutlineBlendBaseTexture )?( ( temp_output_472_0 * (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) ) ):( (( _OutlineTextureToggle )?( tex2D( OutlineTexture, ( ( ase_worldViewDir * float3( _OutlineTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _OutlineTextureScroll ) ,  0.0 ) ).xy ) ):( _OutlineColor )) )).rgb;
				outOutlineAlpha = (( _VertexColorsDefineOutlineCoverage )?( ( i.ase_color * 1.0 ) ):( temp_cast_26 )).r;
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
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
			};

			uniform float _SilhouetteMultiplier;
			uniform float _SilhouetteMinSize;
			uniform float _SilhouetteMaxSize;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _VertexColorsDefineSilhouetteOutlineCoverage;
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
				o.ase_color = v.ase_color;
				
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
				float4 temp_cast_4 = (1.0).xxxx;
				

				outAuraColor = AuraTex1305.rgb;
				outAuraAlpha = (( _VertexColorsDefineSilhouetteOutlineCoverage )?( ( i.ase_color * 1.0 ) ):( temp_cast_4 )).r;
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
			uniform float _SilhouetteRimLightToggle;
			uniform float _ShadowOutlineCustomColorToggle;
			uniform float4 _ShadowColor;
			uniform float4 _ShadowOutlineCustomColor;
			uniform float _ShadowTextureToggle;
			uniform float4 _CustomLightingColor;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
			uniform sampler2D _MainTex;
			uniform float4 _BaseColor;
			uniform float _AddViewDirectionalLight;
			uniform sampler2D _ShadowMask;
			uniform float _ShadowOffset;
			uniform float _ShadowSoftness;
			uniform sampler2D _ShadowTexture;
			uniform float2 _ShadowTextureTiling;
			uniform float _ShadowTextureBlend;
			uniform float _WorldLightStrength;
			uniform float _ShadowOutlineThickness;
			uniform float _RimLightOffset;
			uniform float _RimLightPower;
			uniform float _RimLightOpacity;
			uniform float _SilhouetteRimLightOffset;
			uniform float _SilhouetteRimLightPower;
			uniform float _SilhouetteTextureToggle;
			uniform float4 _SilhouetteColor;
			uniform sampler2D AuraTexture1;
			uniform float2 _SilhouetteTextureTiling;
			uniform float2 _SilhouetteTextureScroll;
			uniform float _SilhouetteRimLightBlend;
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
				o.ase_texcoord2.xyz = ase_worldNormal;
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord3.xyz = ase_worldPos;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float4 lerpResult1597 = lerp( _CustomLightingColor , LightColor , _GameLightStrength);
				float2 uv_MainTex76 = i.ase_texcoord1.xy;
				float4 tex2DNode76 = tex2D( _MainTex, uv_MainTex76 );
				float4 temp_output_1280_0 = ( lerpResult1597 * ( tex2DNode76 * _BaseColor ) );
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float3 normalizeResult170 = normalize( ase_worldNormal );
				float3 ase_worldPos = i.ase_texcoord3.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir(ase_worldPos);
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float dotResult1582 = dot( normalizeResult170 , ase_worldViewDir );
				float2 uv_ShadowMask1587 = i.ase_texcoord1.xy;
				float4 BaseLightOutput1534 = ( (( _AddViewDirectionalLight )?( ( dotResult54 + dotResult1582 ) ):( dotResult54 )) + tex2D( _ShadowMask, uv_ShadowMask1587 ) );
				float4 temp_output_58_0 = ( BaseLightOutput1534 + _ShadowOffset );
				float4 temp_output_57_0 = ( temp_output_58_0 / _ShadowSoftness );
				float4 lerpResult406 = lerp( _ShadowColor , temp_output_1280_0 , saturate( temp_output_57_0 ));
				float4 screenPos = i.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float4 blendOpSrc822 = saturate( ( 1.0 - ( ( 1.0 - temp_output_57_0 ) * tex2D( _ShadowTexture, ( ase_screenPosNorm * float4( _ShadowTextureTiling, 0.0 , 0.0 ) ).xy ) ) ) );
				float4 blendOpDest822 = lerpResult406;
				float4 lerpBlendMode822 = lerp(blendOpDest822,( blendOpSrc822 * blendOpDest822 ),_ShadowTextureBlend);
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1601 = lerp( float4( 1,1,1,0 ) , ase_lightColor , _WorldLightStrength);
				float4 lerpResult1518 = lerp( (( _ShadowOutlineCustomColorToggle )?( _ShadowOutlineCustomColor ):( ( _ShadowColor * float4( 0.4716981,0.4716981,0.4716981,0 ) ) )) , ( (( _ShadowTextureToggle )?( ( saturate( lerpBlendMode822 )) ):( lerpResult406 )) * lerpResult1601 ) , ( saturate( ( 1.0 - ( ( BaseLightOutput1534 + ( _ShadowOffset + _ShadowOutlineThickness ) ) / _ShadowSoftness ) ) ) + saturate( ( temp_output_58_0 / _ShadowSoftness ) ) ));
				float4 BaseOutput1401 = lerpResult1518;
				float3 normalizedWorldNormal = normalize( ase_worldNormal );
				float dotResult1462 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 temp_output_1494_0 = saturate( ( saturate( pow( ( 1.0 - saturate( ( dotResult1462 + _RimLightOffset ) ) ) , _RimLightPower ) ) * saturate( temp_output_57_0 ) ) );
				float4 lerpResult1500 = lerp( BaseOutput1401 , ( temp_output_1494_0 * ( temp_output_1280_0 + _RimLightOpacity ) ) , temp_output_1494_0);
				ase_worldViewDir = Unity_SafeNormalize( ase_worldViewDir );
				float dotResult1323 = dot( normalizedWorldNormal , ase_worldViewDir );
				float4 AuraTex1305 = (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor ));
				float2 uv_Emission609 = i.ase_texcoord1.xy;
				float2 uv_EmissionMask1261 = i.ase_texcoord1.xy;
				float4 temp_output_472_0 = ( (( _SilhouetteOverlay )?( ( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) + ( (( _SilhouetteTextureToggle )?( tex2D( AuraTexture1, ( ( ase_worldViewDir * float3( _SilhouetteTextureTiling ,  0.0 ) ) + float3( ( _Time.y * _SilhouetteTextureScroll ) ,  0.0 ) ).xy ) ):( _SilhouetteColor )) * _SilhouetteOverlayOpacity ) ) ):( (( _SilhouetteRimLightToggle )?( ( lerpResult1500 + ( ( pow( ( 1.0 - saturate( ( dotResult1323 + _SilhouetteRimLightOffset ) ) ) , _SilhouetteRimLightPower ) * AuraTex1305 ) * _SilhouetteRimLightBlend ) ) ):( lerpResult1500 )) )) + ( ( _EmissionColor * ( tex2D( _Emission, uv_Emission609 ) * tex2D( _EmissionMask, uv_EmissionMask1261 ) ) ) * _EmissionEmit ) );
				
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
Node;AmplifyShaderEditor.CommentaryNode;226;610.9553,1056.321;Inherit;False;1176.847;656.2704;;10;1537;1533;54;1486;834;170;1534;1581;1582;1585;Normals, Base Light;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;242;1860.563,1683.573;Inherit;False;1855.488;608.4642;;14;970;406;408;60;59;769;57;74;58;381;1280;1498;1536;1600;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;550;1440.541,412.4896;Inherit;False;2369.21;491.5086;;16;420;1527;1497;427;1462;1464;1494;1496;1495;426;858;430;428;429;1453;862;Rim Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;583;2573.644,-195.6817;Inherit;False;1203.401;551.7802;;7;1261;609;1265;602;603;1583;1584;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;921;1622.326,3895.239;Inherit;False;2208.828;523.0707;;20;922;888;977;889;893;887;892;923;924;894;895;1274;1275;1277;1279;1276;1278;1271;1272;1354;Outline Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;862;3304.343,481.8564;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1036;2156.755,3433.523;Inherit;False;1662.061;418.1438;;10;676;771;768;702;823;822;687;678;688;677;Screen Space Shadow Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1126;886.8392,1889.156;Inherit;False;801.8629;247.6323;;3;1356;76;1355;Base Texture;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1287;1705.66,4499.89;Inherit;False;1707.826;491.2855;;18;1308;1306;1302;1301;1300;1299;1297;1295;1292;1291;1290;1289;1288;1353;1309;1303;1350;1304;Aura Pass;1,0.9244533,0.3066038,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1315;1730.25,5099.011;Inherit;False;1976.592;475.3736;;13;1328;1327;1326;1325;1324;1323;1322;1321;1320;1319;1318;1317;1316;Aura Rim Lighting;1,0.8478771,0.2311321,1;0;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1432;6035.01,338.1857;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1453;1475.526,585.6517;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.OneMinusNode;429;2354.176,661.8794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;428;2194.177,661.8794;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;430;2511.573,655.8793;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;426;2063.576,660.8793;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1495;2525.366,463.9851;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1496;2751.138,733.8981;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1494;3046.523,581.2425;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1464;2951.353,708.3538;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1505;1864.159,1044.118;Inherit;False;1866.219;539.2913;;14;1528;1525;1520;1401;1518;1524;1523;1522;1516;1514;1512;1510;1535;1588;Shadow Outline;1,1,1,1;0;0
Node;AmplifyShaderEditor.DotProductOpNode;1462;1818.637,548.9077;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1497;3135.704,665.0782;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0.2075472;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;1355;1246.327,1941.173;Inherit;False;Property;_BaseColor;Base Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LightColorNode;408;3368.434,1731.69;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;76;940.637,1931.931;Inherit;True;Property;_MainTex;Base Texture;2;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;3bd151116756bea4bad06a7605dcd374;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;74;2493.607,1896.712;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;60;1847.217,1984.801;Float;False;Property;_ShadowSoftness;Shadow Softness;15;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.01;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;769;3446.237,2045.219;Inherit;False;Property;_ShadowTextureToggle;Shadow Texture Toggle;18;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector4Node;381;1892.724,2116.521;Inherit;False;Global;LightColor;LightColor;11;0;Create;True;0;0;0;False;0;False;0.9,0.7,0.4,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1280;2657.907,2074.48;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.ColorNode;1498;2779.417,1733.859;Inherit;False;Property;_ShadowColor;Shadow Color;11;0;Create;True;0;0;0;False;0;False;0.4622642,0.4622642,0.4622642,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;58;2171.09,1896.839;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;59;1850.994,1902.187;Float;False;Property;_ShadowOffset;Shadow Offset;16;0;Create;True;1;Shadow Options;0;0;False;0;False;-0.09279516;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1356;1525.024,1943.329;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1510;2456.387,1125.552;Inherit;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.01;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1512;2662.349,1124.926;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1514;2846.349,1130.926;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1516;3038.349,1133.926;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1522;2651.341,1351.452;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1523;2453.585,1356.224;Inherit;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.01;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1524;3078.798,1358.887;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0.4716981,0.4716981,0.4716981,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1518;3266.872,1141.358;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1401;3498.207,1144.454;Inherit;False;BaseOutput;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1536;1877.846,1748.777;Inherit;False;1534;BaseLightOutput;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1520;2284.347,1177.856;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1525;2153.492,1179.366;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1528;1889.418,1250.184;Inherit;False;Property;_ShadowOutlineThickness;Shadow Outline Thickness;12;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1535;1911.088,1088.506;Inherit;False;1534;BaseLightOutput;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;603;3597.125,4.796598;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;609;2613.483,-44.1662;Inherit;True;Property;_Emission;Emission Texture;3;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1261;2614.528,150.35;Inherit;True;Property;_EmissionMask;Emission Mask;5;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.WorldNormalVector;420;1479.065,419.0505;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;1149;5280.743,832.6833;Inherit;False;Property;_AlphaClipping;Alpha Clipping;0;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1311;5074.196,593.3636;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;472;5592.5,362.2181;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1314;5305.196,362.3637;Inherit;False;Property;_SilhouetteOverlay;Silhouette Overlay;40;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1313;5221.181,489.6377;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1330;4490.865,463.7703;Inherit;False;Property;_SilhouetteRimLightToggle;Silhouette Rim Light Toggle;46;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ClipNode;1148;5418.021,543.919;Inherit;True;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1431;5800.152,478.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1435;5800.152,366.1395;Float;False;False;-1;2;ASEMaterialInspector;100;14;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1430;5800.152,366.1395;Float;False;True;-1;2;ASEMaterialInspector;100;17;Pupsi/Extras/Pupsi BRC Riders Shader;c92fbf1a957df824a97c80c48520b74f;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;0;1;False;;0;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;7;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;False;False;True;True;True;False;;False;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1329;4343.463,525.4326;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1500;3926.273,584.6843;Inherit;True;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1312;4676.831,650.912;Inherit;False;Property;_SilhouetteOverlayOpacity;Silhouette Overlay Opacity;41;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;170;870.5245,1134.566;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;834;648.6776,1116.738;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;54;1032.681,1169.989;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1533;1254.633,1357.228;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1537;1369.848,1356.525;Inherit;False;Property;_AddViewDirectionalLight;Add View Directional Light;8;0;Create;True;0;0;0;False;0;False;1;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1527;2804.291,812.5428;Inherit;False;Property;_RimLightOpacity;Rim Light Opacity;22;0;Create;True;0;0;0;False;0;False;0.1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;858;2184.715,760.7726;Inherit;False;Property;_RimLightPower;Rim Light Power;23;0;Create;True;0;0;0;False;0;False;0.01;3.19;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;427;1763.901,772.3707;Inherit;False;Property;_RimLightOffset;Rim Light Offset;24;0;Create;True;0;0;0;False;0;False;0.75;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1486;707.9241,1272.41;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1581;757.7267,1446.995;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1582;1001.727,1416.995;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;57;2290.153,1893.684;Inherit;True;2;0;COLOR;0,0,0,0;False;1;FLOAT;0.01;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1265;2994.623,152.4322;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1583;3244.295,44.39734;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1584;2972.295,-123.6027;Inherit;False;Property;_EmissionColor;Emission Color;4;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;1534;1666.298,1469.526;Inherit;False;BaseLightOutput;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;1589;2996.17,1462.941;Inherit;False;Property;_ShadowOutlineCustomColor;Shadow Outline Custom Color;14;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1588;3262.034,1399.89;Inherit;False;Property;_ShadowOutlineCustomColorToggle;Shadow Outline Custom Color Toggle;13;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;602;3397.516,162.2618;Inherit;False;Property;_EmissionEmit;Emission Amount;6;0;Create;False;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1585;1505.921,1559.321;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;1587;1172.26,1637.67;Inherit;True;Property;_ShadowMask;Shadow Mask;17;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.OneMinusNode;677;2793.225,3513.833;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;688;3323.354,3516.447;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;687;3160.478,3515.981;Inherit;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendOpsNode;822;3551.925,3497.738;Inherit;True;Multiply;True;3;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0.5;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;823;3220.608,3743.753;Inherit;False;Property;_ShadowTextureBlend;Shadow Texture Blend;21;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;702;2193.889,3499.656;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;768;2368.625,3510.143;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;14,14;False;1;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node;771;2193.395,3666.065;Inherit;False;Property;_ShadowTextureTiling;Shadow Texture Tiling;20;0;Create;True;1;Shadow Options;0;0;False;0;False;14,14;14,14;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;676;2513.16,3512.255;Inherit;True;Property;_ShadowTexture;Shadow Texture;19;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;b9552255b337ed1468609738595c184a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1326;2345.703,5443.394;Inherit;False;Property;_SilhouetteRimLightPower;Silhouette Rim Light Power;47;0;Create;True;0;0;0;False;0;False;0.7925499;0.7925499;0.01;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1327;1920.569,5488.501;Inherit;False;Property;_SilhouetteRimLightOffset;Silhouette Rim Light Offset;48;0;Create;True;0;0;0;False;0;False;0.65;0.65;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1278;1647.2,4082.844;Inherit;False;World;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector2Node;1277;1666.418,3949.884;Inherit;False;Property;_OutlineTextureTiling;Outline Texture Tiling;33;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1275;1677.803,4237.09;Inherit;False;Property;_OutlineTextureScroll;Outline Texture Scroll;34;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1274;1945.008,4192.923;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1279;1932.862,3967.609;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;895;3321.987,4317.833;Inherit;False;Property;_OutlineMaxSize;Outline Max Size;27;0;Create;True;0;0;0;False;0;False;0.008;0.003;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;894;3320.987,4248.833;Inherit;False;Property;_OutlineMinSize;Outline Min Size;26;0;Create;True;0;0;0;False;0;False;0.002;0.002;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;892;3155.987,4143.832;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;887;3144.512,4247.078;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ClampOpNode;893;3526.987,4180.833;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CameraDepthFade;977;2901.026,4260.255;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;888;3675.512,4155.074;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;889;2918.512,4171.074;Inherit;False;Property;_OutlineMultiplier;Outline Multiplier;25;0;Create;True;0;0;0;False;0;False;0.005;0.005;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1272;2630.524,4101.466;Inherit;False;Property;_OutlineTextureToggle;Outline Texture Toggle;31;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;924;3539.565,3970.844;Inherit;False;Property;_OutlineBlendBaseTexture;Outline Blend Base Texture;30;0;Create;True;0;0;0;False;0;False;1;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleTimeNode;1276;1865.144,4098.372;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1297;3028.229,4545.342;Inherit;False;Property;_SilhouetteColor;Silhouette Color;35;0;Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;1302;3242.288,4584.658;Inherit;False;Property;_SilhouetteTextureToggle;Silhouette Texture Toggle;36;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1305;3519.082,4490.218;Inherit;False;AuraTex;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.OneMinusNode;1316;2512.564,5344.501;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;2352.565,5344.501;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1318;2224.565,5343.501;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1319;2672.562,5338.501;Inherit;True;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1320;3201.431,5168.378;Inherit;True;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1322;1760.567,5312.501;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.DotProductOpNode;1323;1984.569,5232.501;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1324;1760.567,5152.502;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1325;2922.465,5192.413;Inherit;False;1305;AuraTex;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1321;3437.375,5198.113;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1308;1942.869,4591.948;Inherit;False;2;2;0;FLOAT3;1,1,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;1350;1743.895,4541.09;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1295;1964.626,4778.455;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0.1,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1304;1729.558,4874.406;Inherit;False;Property;_SilhouetteTextureScroll;Silhouette Texture Scroll;39;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;1303;1756.7,4798.952;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1309;1711.562,4683.325;Inherit;False;Property;_SilhouetteTextureTiling;Silhouette Texture Tiling;38;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleAddOpNode;1353;2138.423,4644.49;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1354;2137.883,4030.961;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1328;3137.958,5389.777;Inherit;False;Property;_SilhouetteRimLightBlend;Silhouette Rim Light Opacity;49;0;Create;False;0;0;0;False;0;False;25;25;0;25;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;922;2342.899,4227.088;Inherit;False;Property;_OutlineColor;Outline Color;29;0;Create;True;0;0;0;False;0;False;0,0,0,1;0.4433962,0.4433962,0.4433962,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1271;2314.621,3989.841;Inherit;True;Property;OutlineTexture;Outline Texture;32;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;1301;2722.966,4542.728;Inherit;True;Property;AuraTexture1;Silhouette Texture;37;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;1;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1433;4169.84,4283.617;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Outline;0;3;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;50;False;;255;False;;255;False;;2;False;;3;False;;3;False;;3;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1434;4169.84,4429.616;Float;False;False;-1;2;ASEMaterialInspector;100;17;New Amplify Shader;c92fbf1a957df824a97c80c48520b74f;True;Aura;0;4;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;True;True;2;5;False;;10;False;;2;5;False;;10;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;False;;255;False;;0;False;;2;False;;8;False;;8;False;;8;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;CullMode=Front;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1292;3133.041,4738.928;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CameraDepthFade;1291;2358.556,4844.109;Inherit;False;3;2;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;1289;2602.041,4830.93;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1288;2613.515,4727.685;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1300;2319.041,4550.928;Inherit;False;Property;_SilhouetteMultiplier;Silhouette Multiplier;42;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1306;2774.515,4836.686;Inherit;False;Property;_SilhouetteMinSize;Silhouette Min Size;43;0;Create;True;0;0;0;False;0;False;0.01;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1299;2776.842,4914.277;Inherit;False;Property;_SilhouetteMaxSize;Silhouette Max Size;44;0;Create;True;0;0;0;False;0;False;0.016;0.01;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ClampOpNode;1290;2984.515,4764.686;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;923;3363.997,4018.7;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1590;4082.167,4017.224;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1591;4310.199,4056.747;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1592;4497.199,4055.747;Inherit;False;Property;_VertexColorsDefineOutlineCoverage;Vertex Colors Define Outline Coverage;28;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.VertexColorNode;1593;4036.493,4612.8;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1594;4264.524,4652.322;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;1595;4451.524,4651.322;Inherit;False;Property;_VertexColorsDefineSilhouetteOutlineCoverage;Vertex Colors Define Silhouette Outline Coverage;45;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;678;2960.374,3515.854;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;970;2111.583,2122.077;Inherit;False;Property;_CustomLightingColor;Custom Lighting Color;9;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;1596;2106.886,2313.213;Inherit;False;Property;_GameLightStrength;Game Light Strength;10;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;409;3840.76,1744.991;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1601;3539.716,1772.433;Inherit;True;3;0;COLOR;1,1,1,0;False;1;COLOR;1,1,1,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;406;3031.519,1893.062;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1600;3247.6,1864.104;Inherit;False;Property;_WorldLightStrength;World Light Strength;7;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1597;2407.362,2124.279;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
WireConnection;862;0;1494;0
WireConnection;862;1;1497;0
WireConnection;429;0;428;0
WireConnection;428;0;426;0
WireConnection;430;0;429;0
WireConnection;430;1;858;0
WireConnection;426;0;1462;0
WireConnection;426;1;427;0
WireConnection;1495;0;57;0
WireConnection;1496;0;430;0
WireConnection;1494;0;1464;0
WireConnection;1464;0;1496;0
WireConnection;1464;1;1495;0
WireConnection;1462;0;420;0
WireConnection;1462;1;1453;0
WireConnection;1497;0;1280;0
WireConnection;1497;1;1527;0
WireConnection;74;0;57;0
WireConnection;769;0;406;0
WireConnection;769;1;822;0
WireConnection;1280;0;1597;0
WireConnection;1280;1;1356;0
WireConnection;58;0;1536;0
WireConnection;58;1;59;0
WireConnection;1356;0;76;0
WireConnection;1356;1;1355;0
WireConnection;1510;0;1520;0
WireConnection;1510;1;60;0
WireConnection;1512;0;1510;0
WireConnection;1514;0;1512;0
WireConnection;1516;0;1514;0
WireConnection;1516;1;1522;0
WireConnection;1522;0;1523;0
WireConnection;1523;0;58;0
WireConnection;1523;1;60;0
WireConnection;1524;0;1498;0
WireConnection;1518;0;1588;0
WireConnection;1518;1;409;0
WireConnection;1518;2;1516;0
WireConnection;1401;0;1518;0
WireConnection;1520;0;1535;0
WireConnection;1520;1;1525;0
WireConnection;1525;0;59;0
WireConnection;1525;1;1528;0
WireConnection;603;0;1583;0
WireConnection;603;1;602;0
WireConnection;1311;0;1302;0
WireConnection;1311;1;1312;0
WireConnection;472;0;1314;0
WireConnection;472;1;603;0
WireConnection;1314;0;1330;0
WireConnection;1314;1;1313;0
WireConnection;1313;0;1330;0
WireConnection;1313;1;1311;0
WireConnection;1330;0;1500;0
WireConnection;1330;1;1329;0
WireConnection;1148;1;76;4
WireConnection;1148;2;1149;0
WireConnection;1430;0;472;0
WireConnection;1430;1;1148;0
WireConnection;1329;0;1500;0
WireConnection;1329;1;1321;0
WireConnection;1500;0;1401;0
WireConnection;1500;1;862;0
WireConnection;1500;2;1494;0
WireConnection;170;0;834;0
WireConnection;54;0;170;0
WireConnection;54;1;1486;0
WireConnection;1533;0;54;0
WireConnection;1533;1;1582;0
WireConnection;1537;0;54;0
WireConnection;1537;1;1533;0
WireConnection;1582;0;170;0
WireConnection;1582;1;1581;0
WireConnection;57;0;58;0
WireConnection;57;1;60;0
WireConnection;1265;0;609;0
WireConnection;1265;1;1261;0
WireConnection;1583;0;1584;0
WireConnection;1583;1;1265;0
WireConnection;1534;0;1585;0
WireConnection;1588;0;1524;0
WireConnection;1588;1;1589;0
WireConnection;1585;0;1537;0
WireConnection;1585;1;1587;0
WireConnection;677;0;57;0
WireConnection;688;0;687;0
WireConnection;687;0;678;0
WireConnection;822;0;688;0
WireConnection;822;1;406;0
WireConnection;822;2;823;0
WireConnection;768;0;702;0
WireConnection;768;1;771;0
WireConnection;676;1;768;0
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
WireConnection;1271;1;1354;0
WireConnection;1301;1;1353;0
WireConnection;1433;0;924;0
WireConnection;1433;1;1592;0
WireConnection;1433;2;888;0
WireConnection;1434;0;1305;0
WireConnection;1434;1;1595;0
WireConnection;1434;2;1292;0
WireConnection;1292;0;1289;0
WireConnection;1292;1;1290;0
WireConnection;1288;0;1300;0
WireConnection;1288;1;1291;0
WireConnection;1290;0;1288;0
WireConnection;1290;1;1306;0
WireConnection;1290;2;1299;0
WireConnection;923;0;472;0
WireConnection;923;1;1272;0
WireConnection;1591;0;1590;0
WireConnection;1591;1;1148;0
WireConnection;1592;0;1148;0
WireConnection;1592;1;1591;0
WireConnection;1594;0;1593;0
WireConnection;1594;1;1148;0
WireConnection;1595;0;1148;0
WireConnection;1595;1;1594;0
WireConnection;678;0;677;0
WireConnection;678;1;676;0
WireConnection;409;0;769;0
WireConnection;409;1;1601;0
WireConnection;1601;1;408;0
WireConnection;1601;2;1600;0
WireConnection;406;0;1498;0
WireConnection;406;1;1280;0
WireConnection;406;2;74;0
WireConnection;1597;0;970;0
WireConnection;1597;1;381;0
WireConnection;1597;2;1596;0
ASEEND*/
//CHKSM=741911D4909DE24C3D1BE23C94981709FE7F5629