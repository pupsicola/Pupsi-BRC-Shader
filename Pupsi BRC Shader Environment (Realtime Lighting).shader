// Made with Amplify Shader Editor v1.9.9.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Shader Environment (Realtime Lighting)"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0

		// RT Lighting Controls
		[Toggle] _AddPassEnabled("RT Lighting Enabled", Float) = 1
		_AddRampThreshold("RT Lighting Threshold", Range(0, 1)) = 0.5
		_AddRampSmooth("RT Lighting Smoothness", Range(0, 0.5)) = 0.05
		_AddLightMultiplier("RT Lighting Multiplier", Range(0, 10)) = 1.0

		[NoScaleOffset][BigTexture] _MainTex( "Base Texture", 2D ) = "white" {}
		_BaseTextureColor( "Base Texture Color", Color ) = ( 1, 1, 1, 0 )
		_BaseTextureTiling( "Base Texture Tiling", Vector ) = ( 1, 1, 0, 0 )
		_BaseScrollSpeed( "Base Scroll Speed", Vector ) = ( 0, 0, 0, 0 )
		_VertexColorIntensity( "Vertex Color Intensity", Float ) = 0
		[NoScaleOffset] _NormalMap( "Normal Map", 2D ) = "bump" {}
		_NormalMapIntensity( "Normal Map Intensity", Float ) = 1
		[NoScaleOffset] _EmissionMap( "Emission Texture", 2D ) = "black" {}
		_EmissionColor( "Emission Color", Color ) = ( 1, 1, 1, 0 )
		_EmissionIntensity( "Emission Intensity", Float ) = 1
		[Toggle] _SpecularCustomColorToggle( "Specular Custom Color Toggle", Float ) = 0
		_SpecularCustomColor( "Specular Custom Color", Color ) = ( 1, 1, 1, 0 )
		[NoScaleOffset] _SpecularMask( "Specular Mask", 2D ) = "white" {}
		_SpecularBrightness( "Specular Brightness", Float ) = 1
		_SpecularSoftness( "Specular Softness", Range( 0, 2 ) ) = 0.01
		_SpecularOffset( "Specular Offset", Range( -1, 1 ) ) = 0
		_CustomWorldLightColor( "Custom World Light Color", Color ) = ( 1, 1, 1, 0 )
		_WorldLightStrength( "World Light Strength", Range( 0, 1 ) ) = 1
		_CustomLightingColor1( "Custom Lighting Color", Color ) = ( 1, 1, 1, 0 )
		_GameLightStrength( "Game Light Strength", Range( 0, 1 ) ) = 1
		_CustomShadowColor1( "Custom Shadow Color", Color ) = ( 0, 0, 0, 0 )
		_GameShadowStrength( "Game Shadow Strength", Range( 0, 1 ) ) = 1
		_ShadowSoftness1( "Shadow Softness", Range( 0.01, 2 ) ) = 0.01
		_ShadowIntensity( "Shadow Intensity", Range( 0, 1 ) ) = 1
		_ShadowOffset1( "Shadow Offset", Range( -1, 1 ) ) = 0

	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
	LOD 100

		Cull [_Cull]
		CGINCLUDE
		#pragma target 3.5
		// RT Lighting Controls
		uniform float _AddPassEnabled;
		uniform float _AddRampThreshold;
		uniform float _AddRampSmooth;
		uniform float _AddLightMultiplier;
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
			ZClip True
			ZTest LEqual
			
			CGPROGRAM
			#define ASE_VERSION 19908

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#pragma multi_compile_fwdbase

			//This is a late directive
			
			uniform sampler2D _EmissionMap;
			uniform float2 _BaseTextureTiling;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _EmissionColor;
			uniform float _EmissionIntensity;
			uniform float4 _CustomShadowColor1;
			uniform float4 ShadowColor;
			uniform float _GameShadowStrength;
			uniform float4 _CustomLightingColor1;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _ShadowOffset1;
			uniform float _ShadowSoftness1;
			uniform float _ShadowIntensity;
			uniform sampler2D _MainTex;
			uniform float4 _BaseTextureColor;
			uniform float _VertexColorIntensity;
			uniform float4 _CustomWorldLightColor;
			uniform float _WorldLightStrength;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				UNITY_SHADOW_COORDS(6)
				float4 ase_color : COLOR;
			};

			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord4.xyz = ase_bitangentWS;
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord5.xyz = ase_positionWS;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#ifdef ASE_SHADOWS
					TRANSFER_SHADOW(o)
				#endif
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 texCoord559 = i.ase_texcoord1.xy * _BaseTextureTiling + ( _Time.y * _BaseScrollSpeed );
				float4 lerpResult1279 = lerp( _CustomShadowColor1 , ShadowColor , _GameShadowStrength);
				float4 lerpResult1284 = lerp( _CustomLightingColor1 , LightColor , _GameLightStrength);
				float3 ase_tangentWS = i.ase_texcoord2.xyz;
				float3 ase_normalWS = i.ase_texcoord3.xyz;
				float3 ase_bitangentWS = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, texCoord559 ), _NormalMapIntensity );
				float3 worldNormal834 = float3( dot( tanToWorld0, tanNormal834 ), dot( tanToWorld1, tanNormal834 ), dot( tanToWorld2, tanNormal834 ) );
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 ase_positionWS = i.ase_texcoord5.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( ase_positionWS );
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				UNITY_LIGHT_ATTENUATION( ase_lightAtten, i, ase_positionWS )
				float4 lerpResult1268 = lerp( lerpResult1279 , lerpResult1284 , saturate( ( saturate( ( ( ( dotResult54 * ase_lightAtten ) + _ShadowOffset1 ) / _ShadowSoftness1 ) ) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 tex2DNode1289 = tex2D( _MainTex, texCoord559 );
				float4 color1252 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
				float4 lerpResult1251 = lerp( i.ase_color , color1252 , _VertexColorIntensity);
				float4 temp_output_1290_0 = ( ( tex2DNode1289 * _BaseTextureColor ) * lerpResult1251 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1278 = lerp( _CustomWorldLightColor , ase_lightColor , _WorldLightStrength);
				float4 temp_output_1288_0 = ( ( lerpResult1268 * temp_output_1290_0 ) * lerpResult1278 );
				float3 normalizeResult1227 = normalize( ( _WorldSpaceCameraPos - ase_positionWS ) );
				float3 normalizeResult1229 = normalize( ( worldSpaceLightDir + normalizeResult1227 ) );
				float dotResult1230 = dot( normalizeResult1229 , normalizeResult170 );
				float2 uv_SpecularMask1237 = i.ase_texcoord1.xy;
				

				outColor = ( ( ( tex2D( _EmissionMap, texCoord559 ) * _EmissionColor ) * _EmissionIntensity ) + ( temp_output_1288_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1230 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, uv_SpecularMask1237 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_1288_0 )) ) ) ).rgb;
				outAlpha = tex2DNode1289.a;
				clip(outAlpha);
				return float4(outColor, outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend One One
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			
			CGPROGRAM
			#define ASE_VERSION 19908

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_VERT_NORMAL

			uniform sampler2D _MainTex;
			uniform float2 _BaseTextureTiling;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _BaseTextureColor;
			uniform float _VertexColorIntensity;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;


			struct appdata
			{
				float4 vertex  : POSITION;
				float3 normal  : NORMAL;
				float4 tangent : TANGENT;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
			};

			struct v2f
			{
				float4 pos         : SV_POSITION;
				float3 worldNormal : TEXCOORD0;
				float3 worldPos    : TEXCOORD1;
				SHADOW_COORDS(2)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
			};

			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_tangentWS = UnityObjectToWorldDir( v.tangent );
				o.ase_texcoord4.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord5.xyz = ase_normalWS;
				float ase_tangentSign = v.tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord6.xyz = ase_bitangentWS;
				
				o.ase_texcoord3.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;

				o.worldNormal = UnityObjectToWorldNormal(v.normal);
				v.vertex.xyz +=  float3(0,0,0) ;
				o.worldPos    = mul(unity_ObjectToWorld, v.vertex).xyz;
				o.pos = UnityObjectToClipPos(v.vertex);
				TRANSFER_SHADOW(o);
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float  outAlpha;

				float2 texCoord559 = i.ase_texcoord3.xy * _BaseTextureTiling + ( _Time.y * _BaseScrollSpeed );
				float4 tex2DNode1289 = tex2D( _MainTex, texCoord559 );
				float4 color1252 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
				float4 lerpResult1251 = lerp( i.ase_color , color1252 , _VertexColorIntensity);
				float4 temp_output_1290_0 = ( ( tex2DNode1289 * _BaseTextureColor ) * lerpResult1251 );
				
				float3 ase_tangentWS = i.ase_texcoord4.xyz;
				float3 ase_normalWS = i.ase_texcoord5.xyz;
				float3 ase_bitangentWS = i.ase_texcoord6.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, texCoord559 ), _NormalMapIntensity );
				float3 worldNormal834 = float3( dot( tanToWorld0, tanNormal834 ), dot( tanToWorld1, tanNormal834 ), dot( tanToWorld2, tanNormal834 ) );
				

				outColor = temp_output_1290_0.rgb;
				outAlpha = tex2DNode1289.a;
				float3 worldNormal = normalize(worldNormal834);
				float3 lightDir    = normalize(UnityWorldSpaceLightDir(i.worldPos));
				float  NdotL       = dot(worldNormal, lightDir) * 0.5 + 0.5;
				float  toon        = smoothstep(
					_AddRampThreshold - _AddRampSmooth,
					_AddRampThreshold + _AddRampSmooth,
					NdotL);
				UNITY_LIGHT_ATTENUATION(atten, i, i.worldPos);
				outColor = outColor * (_AddPassEnabled * toon * atten * _LightColor0.rgb * _AddLightMultiplier);

				clip(outAlpha - 0.001);
				return float4(outColor, 0.0);
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
			#define ASE_VERSION 19908

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "Lighting.cginc"
			#include "AutoLight.cginc"
			#define ASE_NEEDS_TEXTURE_COORDINATES0
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_SHADOWS
			#define ASE_NEEDS_FRAG_TEXTURE_COORDINATES0
			#pragma multi_compile_fwdbase

			//This is a late directive
			
			uniform sampler2D _EmissionMap;
			uniform float2 _BaseTextureTiling;
			uniform float2 _BaseScrollSpeed;
			uniform float4 _EmissionColor;
			uniform float _EmissionIntensity;
			uniform float4 _CustomShadowColor1;
			uniform float4 ShadowColor;
			uniform float _GameShadowStrength;
			uniform float4 _CustomLightingColor1;
			uniform float4 LightColor;
			uniform float _GameLightStrength;
			uniform sampler2D _NormalMap;
			uniform float _NormalMapIntensity;
			uniform float _ShadowOffset1;
			uniform float _ShadowSoftness1;
			uniform float _ShadowIntensity;
			uniform sampler2D _MainTex;
			uniform float4 _BaseTextureColor;
			uniform float _VertexColorIntensity;
			uniform float4 _CustomWorldLightColor;
			uniform float _WorldLightStrength;
			uniform float _SpecularOffset;
			uniform float _SpecularSoftness;
			uniform sampler2D _SpecularMask;
			uniform float _SpecularBrightness;
			uniform float _SpecularCustomColorToggle;
			uniform float4 _SpecularCustomColor;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
				UNITY_SHADOW_COORDS(6)
				float4 ase_color : COLOR;
			};

			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord2.xyz = ase_tangentWS;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				o.ase_texcoord3.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord4.xyz = ase_bitangentWS;
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord5.xyz = ase_positionWS;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;

				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float2 texCoord559 = i.ase_texcoord1.xy * _BaseTextureTiling + ( _Time.y * _BaseScrollSpeed );
				float4 lerpResult1279 = lerp( _CustomShadowColor1 , ShadowColor , _GameShadowStrength);
				float4 lerpResult1284 = lerp( _CustomLightingColor1 , LightColor , _GameLightStrength);
				float3 ase_tangentWS = i.ase_texcoord2.xyz;
				float3 ase_normalWS = i.ase_texcoord3.xyz;
				float3 ase_bitangentWS = i.ase_texcoord4.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal834 = UnpackScaleNormal( tex2D( _NormalMap, texCoord559 ), _NormalMapIntensity );
				float3 worldNormal834 = float3( dot( tanToWorld0, tanNormal834 ), dot( tanToWorld1, tanNormal834 ), dot( tanToWorld2, tanNormal834 ) );
				float3 normalizeResult170 = normalize( worldNormal834 );
				float3 ase_positionWS = i.ase_texcoord5.xyz;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( ase_positionWS );
				float dotResult54 = dot( normalizeResult170 , worldSpaceLightDir );
				UNITY_LIGHT_ATTENUATION( ase_lightAtten, i, ase_positionWS )
				float4 lerpResult1268 = lerp( lerpResult1279 , lerpResult1284 , saturate( ( saturate( ( ( ( dotResult54 * ase_lightAtten ) + _ShadowOffset1 ) / _ShadowSoftness1 ) ) + ( 1.0 - _ShadowIntensity ) ) ));
				float4 tex2DNode1289 = tex2D( _MainTex, texCoord559 );
				float4 color1252 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
				float4 lerpResult1251 = lerp( i.ase_color , color1252 , _VertexColorIntensity);
				float4 temp_output_1290_0 = ( ( tex2DNode1289 * _BaseTextureColor ) * lerpResult1251 );
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float4 lerpResult1278 = lerp( _CustomWorldLightColor , ase_lightColor , _WorldLightStrength);
				float4 temp_output_1288_0 = ( ( lerpResult1268 * temp_output_1290_0 ) * lerpResult1278 );
				float3 normalizeResult1227 = normalize( ( _WorldSpaceCameraPos - ase_positionWS ) );
				float3 normalizeResult1229 = normalize( ( worldSpaceLightDir + normalizeResult1227 ) );
				float dotResult1230 = dot( normalizeResult1229 , normalizeResult170 );
				float2 uv_SpecularMask1237 = i.ase_texcoord1.xy;
				

				outColor = ( ( ( tex2D( _EmissionMap, texCoord559 ) * _EmissionColor ) * _EmissionIntensity ) + ( temp_output_1288_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1230 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, uv_SpecularMask1237 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_1288_0 )) ) ) ).rgb;
				outAlpha = tex2DNode1289.a;
				clip(outAlpha);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "PupsiBRCShaderGUI"
	Fallback Off
	
	Fallback Off
}
/*ASEBEGIN
Version=19908
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;559;2576,768;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1244;2384,208;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;6;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1222;3536,-288;Inherit;False;2130.147;475.957;;20;1243;1242;1241;1240;1239;1238;1237;1235;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1249;2752,176;Inherit;True;Property;_NormalMap;Normal Map;5;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WorldNormalVector, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;834;3104,176;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1224;3600,-240;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1225;3552,-80;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;170;3296,272;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;53;3072,352;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1223;3792,-240;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1261;3808,1600;Inherit;False;1890.702;1107.327;;22;1287;1286;1284;1281;1280;1279;1278;1277;1276;1275;1274;1273;1272;1271;1268;1266;1265;1264;1263;1262;1292;1294;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;54;3472,272;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1156;3328,544;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1226;3936,-240;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1227;3936,-96;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1121;3632,528;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1265;3824,2192;Float;False;Property;_ShadowOffset1;Shadow Offset;24;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0.25;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1228;4144,-240;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1262;4112,2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1266;3824,2272;Float;False;Property;_ShadowSoftness1;Shadow Softness;22;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.76;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1229;4256,-240;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1264;4224,2176;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1273;4464,2304;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;23;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1230;4240,-128;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1241;4400,-160;Inherit;False;Property;_SpecularOffset;Specular Offset;15;0;Create;True;0;0;0;False;0;False;0;-0.27;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1272;4736,2304;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1263;4432,2176;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1240;4432,-240;Inherit;False;Property;_SpecularSoftness;Specular Softness;14;0;Create;True;0;0;0;False;0;False;0.01;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1242;4672,-144;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;561;2176,832;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;3;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;562;2176,752;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1275;4896,2288;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1280;3872,1680;Inherit;False;Property;_GameShadowStrength;Game Shadow Strength;21;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1281;3872,1776;Inherit;False;Property;_CustomShadowColor1;Custom Shadow Color;20;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1219;3216,1808;Inherit;False;Property;_BaseTextureColor;Base Texture Color;1;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1250;2864,2048;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1252;2864,2224;Inherit;False;Constant;_Color0;Color 0;24;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1253;3120,2272;Inherit;False;Property;_VertexColorIntensity;Vertex Color Intensity;4;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1239;4784,-224;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1286;4080,2448;Inherit;False;Property;_CustomLightingColor1;Custom Lighting Color;18;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1287;4064,2656;Inherit;False;Property;_GameLightStrength;Game Light Strength;19;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1293;3776,2400;Inherit;False;Global;LightColor;LightColor;25;0;Create;True;0;0;0;False;0;False;0,0,0,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1294;3888,1968;Inherit;False;Global;ShadowColor;ShadowColor;25;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.1635368,0.2241375,0.3301887,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1289;3008,1536;Inherit;True;Property;_MainTex;Base Texture;0;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;fa7ef22070732074aa328345f82c8cc3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;560;2416,752;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1221;2352,1040;Inherit;False;Property;_BaseTextureTiling;Base Texture Tiling;2;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1274;5040,2288;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1279;4272,1744;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1284;4400,2416;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1218;3488,1744;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1251;3424,2048;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1238;4992,-208;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1237;4592,48;Inherit;True;Property;_SpecularMask;Specular Mask;12;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;583;4240,-864;Inherit;False;1382.785;524.939;;4;609;1126;1125;1217;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1268;4848,2048;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1290;3664,1744;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1243;5168,-224;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1233;4912,64;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;11;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1232;5120,-96;Inherit;False;Property;_SpecularBrightness;Specular Brightness;13;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1277;5008,1904;Inherit;False;Property;_WorldLightStrength;World Light Strength;17;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1292;5008,1680;Inherit;False;Property;_CustomWorldLightColor;Custom World Light Color;16;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LightColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1276;5232,2000;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;609;4864,-752;Inherit;True;Property;_EmissionMap;Emission Texture;7;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1126;5232,-720;Inherit;False;Property;_EmissionColor;Emission Color;8;0;Create;True;0;0;0;False;0;False;1,1,1,0;0.254717,0.254717,0.254717,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1231;5328,-192;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1234;5184,0;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;10;0;Create;True;0;0;0;False;0;False;0;True;Create;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1278;5296,1712;Inherit;True;3;0;COLOR;1,1,1,0;False;1;COLOR;1,1,1,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1271;5216,2224;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1125;5472,-704;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1217;5408,-528;Inherit;False;Property;_EmissionIntensity;Emission Intensity;9;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1235;5504,-192;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1288;5728,1936;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1216;5696,-624;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1248;6000,304;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1291;6160,288;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1258;6643.778,672.8965;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;New Amplify Shader;18053430e0e03a046b579f2e5bc88a2d;True;Aura;0;3;Aura;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;False;;False;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1259;6643.778,818.8965;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;New Amplify Shader;18053430e0e03a046b579f2e5bc88a2d;True;Deferred;0;4;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1260;6643.778,234.8965;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;New Amplify Shader;18053430e0e03a046b579f2e5bc88a2d;True;ShadowCaster;0;5;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;0;False;;False;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1257;6643.778,526.8965;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;New Amplify Shader;18053430e0e03a046b579f2e5bc88a2d;True;Outline;0;2;Outline;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;1;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;False;;False;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1255;6531.778,308.8965;Float;False;True;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;Pupsi BRC Environment Shader (Realtime Lighting);18053430e0e03a046b579f2e5bc88a2d;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;3;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;0;False;;True;0;False;;True;False;0;False;;0;False;;True;1;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;6;True;True;False;False;False;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1256;6536.079,686.1967;Float;False;False;-1;2;AmplifyShaderEditor.MaterialInspector;100;3;New Amplify Shader;18053430e0e03a046b579f2e5bc88a2d;True;ForwardAdd;0;1;ForwardAdd;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;False;False;False;True;1;LightMode=ForwardAdd;True;2;False;0;;0;0;Standard;0;False;0
WireConnection;559;0;1221;0
WireConnection;559;1;560;0
WireConnection;1249;1;559;0
WireConnection;1249;5;1244;0
WireConnection;834;0;1249;0
WireConnection;170;0;834;0
WireConnection;1223;0;1225;0
WireConnection;1223;1;1224;0
WireConnection;54;0;170;0
WireConnection;54;1;53;0
WireConnection;1227;0;1223;0
WireConnection;1121;0;54;0
WireConnection;1121;1;1156;0
WireConnection;1228;0;1226;0
WireConnection;1228;1;1227;0
WireConnection;1262;0;1121;0
WireConnection;1262;1;1265;0
WireConnection;1229;0;1228;0
WireConnection;1264;0;1262;0
WireConnection;1264;1;1266;0
WireConnection;1230;0;1229;0
WireConnection;1230;1;170;0
WireConnection;1272;0;1273;0
WireConnection;1263;0;1264;0
WireConnection;1242;0;1241;0
WireConnection;1242;1;1230;0
WireConnection;1275;0;1263;0
WireConnection;1275;1;1272;0
WireConnection;1239;0;1242;0
WireConnection;1239;1;1240;0
WireConnection;1289;1;559;0
WireConnection;560;0;562;0
WireConnection;560;1;561;0
WireConnection;1274;0;1275;0
WireConnection;1279;0;1281;0
WireConnection;1279;1;1294;0
WireConnection;1279;2;1280;0
WireConnection;1284;0;1286;0
WireConnection;1284;1;1293;0
WireConnection;1284;2;1287;0
WireConnection;1218;0;1289;0
WireConnection;1218;1;1219;0
WireConnection;1251;0;1250;0
WireConnection;1251;1;1252;0
WireConnection;1251;2;1253;0
WireConnection;1238;0;1239;0
WireConnection;1268;0;1279;0
WireConnection;1268;1;1284;0
WireConnection;1268;2;1274;0
WireConnection;1290;0;1218;0
WireConnection;1290;1;1251;0
WireConnection;1243;0;1238;0
WireConnection;1243;1;1237;0
WireConnection;609;1;559;0
WireConnection;1231;0;1243;0
WireConnection;1231;1;1232;0
WireConnection;1234;0;1288;0
WireConnection;1234;1;1233;0
WireConnection;1278;0;1292;0
WireConnection;1278;1;1276;0
WireConnection;1278;2;1277;0
WireConnection;1271;0;1268;0
WireConnection;1271;1;1290;0
WireConnection;1125;0;609;0
WireConnection;1125;1;1126;0
WireConnection;1235;0;1231;0
WireConnection;1235;1;1234;0
WireConnection;1288;0;1271;0
WireConnection;1288;1;1278;0
WireConnection;1216;0;1125;0
WireConnection;1216;1;1217;0
WireConnection;1248;0;1288;0
WireConnection;1248;1;1235;0
WireConnection;1291;0;1216;0
WireConnection;1291;1;1248;0
WireConnection;1255;0;1291;0
WireConnection;1255;1;1289;4
WireConnection;1256;0;1290;0
WireConnection;1256;1;1289;4
WireConnection;1256;2;834;0
ASEEND*/
//CHKSM=A18B8AABFFC5DF3D8A9D2EEB0D9FFC0D6DED544F