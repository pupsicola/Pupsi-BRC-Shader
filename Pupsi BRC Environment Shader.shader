// Made with Amplify Shader Editor v1.9.9.8
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Pupsi/Pupsi BRC Environment Shader"
{
	Properties
	{
		[Enum(UnityEngine.Rendering.CullMode)]_Cull("Cull Mode", Float) = 2.0
		_Cutoff( "Mask Clip Value", Float ) = 0.5
		[NoScaleOffset][BigTexture] _MainTex( "Base Texture", 2D ) = "white" {}
		_BaseTextureColor( "Base Texture Color", Color ) = ( 1, 1, 1, 0 )
		_BaseTextureTiling( "Base Texture Tiling", Vector ) = ( 1, 1, 0, 0 )
		_BaseScrollSpeed( "Base Scroll Speed", Vector ) = ( 0, 0, 0, 0 )
		_VertexColorIntensity( "Vertex Color Intensity", Float ) = 0
		[NoScaleOffset] _NormalMap( "Normal Map", 2D ) = "bump" {}
		_NormalMapIntensity( "Normal Map Intensity", Float ) = 1
		[NoScaleOffset] _EmissionMap( "Emission Texture", 2D ) = "black" {}
		_EmissionColor( "Emission Color", Color ) = ( 1, 1, 1, 0 )
		[Toggle] _SpecularCustomColorToggle( "Specular Custom Color Toggle", Float ) = 0
		_EmissionIntensity( "Emission Intensity", Float ) = 1
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
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Tags{ "RenderType" = "TransparentCutout"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull [_Cull]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityCG.cginc"
		#include "Lighting.cginc"
		#pragma target 3.0
		#define ASE_VERSION 19908
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif
		struct Input
		{
			float3 worldNormal;
			INTERNAL_DATA
			float2 uv_texcoord;
			float3 worldPos;
			float4 vertexColor : COLOR;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform float4 _CustomShadowColor1;
		uniform float4 ShadowColor;
		uniform float _GameShadowStrength;
		uniform float4 _CustomLightingColor1;
		uniform float4 LightColor;
		uniform float _GameLightStrength;
		uniform sampler2D _NormalMap;
		uniform float2 _BaseTextureTiling;
		uniform float2 _BaseScrollSpeed;
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
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionColor;
		uniform float _EmissionIntensity;
		uniform float _Cutoff = 0.5;

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float2 uv_TexCoord1257 = i.uv_texcoord * _BaseTextureTiling + ( _Time.y * _BaseScrollSpeed );
			float4 tex2DNode1290 = tex2D( _MainTex, uv_TexCoord1257 );
			float4 lerpResult1302 = lerp( _CustomShadowColor1 , ShadowColor , _GameShadowStrength);
			float4 lerpResult1303 = lerp( _CustomLightingColor1 , LightColor , _GameLightStrength);
			float3 normalizeResult1263 = normalize( (WorldNormalVector( i , UnpackScaleNormal( tex2D( _NormalMap, uv_TexCoord1257 ), _NormalMapIntensity ) )) );
			float3 ase_positionWS = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_lightDirWS = 0;
			#else //aseld
			float3 ase_lightDirWS = normalize( UnityWorldSpaceLightDir( ase_positionWS ) );
			#endif //aseld
			float dotResult1266 = dot( normalizeResult1263 , ase_lightDirWS );
			float4 lerpResult1308 = lerp( lerpResult1302 , lerpResult1303 , saturate( ( saturate( ( ( ( dotResult1266 * ase_lightAtten ) + _ShadowOffset1 ) / _ShadowSoftness1 ) ) + ( 1.0 - _ShadowIntensity ) ) ));
			float4 color1292 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 lerpResult1305 = lerp( i.vertexColor , color1292 , _VertexColorIntensity);
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 lerpResult1318 = lerp( _CustomWorldLightColor , ase_lightColor , _WorldLightStrength);
			float4 temp_output_1321_0 = ( ( lerpResult1308 * ( ( tex2DNode1290 * _BaseTextureColor ) * lerpResult1305 ) ) * lerpResult1318 );
			float3 normalizeResult1269 = normalize( ( _WorldSpaceCameraPos - ase_positionWS ) );
			float3 normalizeResult1275 = normalize( ( ase_lightDirWS + normalizeResult1269 ) );
			float dotResult1278 = dot( normalizeResult1275 , normalizeResult1263 );
			float2 uv_SpecularMask1307 = i.uv_texcoord;
			float4 temp_output_1322_0 = ( temp_output_1321_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1278 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, uv_SpecularMask1307 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_1321_0 )) ) );
			c.rgb = temp_output_1322_0.xyz;
			c.a = tex2DNode1290.a;
			clip( tex2DNode1290.a - _Cutoff );
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float4 lerpResult1302 = lerp( _CustomShadowColor1 , ShadowColor , _GameShadowStrength);
			float4 lerpResult1303 = lerp( _CustomLightingColor1 , LightColor , _GameLightStrength);
			float2 uv_TexCoord1257 = i.uv_texcoord * _BaseTextureTiling + ( _Time.y * _BaseScrollSpeed );
			float3 normalizeResult1263 = normalize( (WorldNormalVector( i , UnpackScaleNormal( tex2D( _NormalMap, uv_TexCoord1257 ), _NormalMapIntensity ) )) );
			float3 ase_positionWS = i.worldPos;
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_lightDirWS = 0;
			#else //aseld
			float3 ase_lightDirWS = normalize( UnityWorldSpaceLightDir( ase_positionWS ) );
			#endif //aseld
			float dotResult1266 = dot( normalizeResult1263 , ase_lightDirWS );
			float4 lerpResult1308 = lerp( lerpResult1302 , lerpResult1303 , saturate( ( saturate( ( ( ( dotResult1266 * (0) ) + _ShadowOffset1 ) / _ShadowSoftness1 ) ) + ( 1.0 - _ShadowIntensity ) ) ));
			float4 tex2DNode1290 = tex2D( _MainTex, uv_TexCoord1257 );
			float4 color1292 = IsGammaSpace() ? float4( 1, 1, 1, 0 ) : float4( 1, 1, 1, 0 );
			float4 lerpResult1305 = lerp( i.vertexColor , color1292 , _VertexColorIntensity);
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float4 lerpResult1318 = lerp( _CustomWorldLightColor , ase_lightColor , _WorldLightStrength);
			float4 temp_output_1321_0 = ( ( lerpResult1308 * ( ( tex2DNode1290 * _BaseTextureColor ) * lerpResult1305 ) ) * lerpResult1318 );
			float3 normalizeResult1269 = normalize( ( _WorldSpaceCameraPos - ase_positionWS ) );
			float3 normalizeResult1275 = normalize( ( ase_lightDirWS + normalizeResult1269 ) );
			float dotResult1278 = dot( normalizeResult1275 , normalizeResult1263 );
			float2 uv_SpecularMask1307 = i.uv_texcoord;
			float4 temp_output_1322_0 = ( temp_output_1321_0 + ( ( ( saturate( ( ( _SpecularOffset + dotResult1278 ) / _SpecularSoftness ) ) * tex2D( _SpecularMask, uv_SpecularMask1307 ) ) * _SpecularBrightness ) * (( _SpecularCustomColorToggle )?( _SpecularCustomColor ):( temp_output_1321_0 )) ) );
			o.Albedo = temp_output_1322_0.xyz;
			float2 uv_EmissionMap609 = i.uv_texcoord;
			o.Emission = ( ( tex2D( _EmissionMap, uv_EmissionMap609 ) * _EmissionColor ) * _EmissionIntensity ).rgb;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows exclude_path:deferred nolightmap  nodynlightmap nodirlightmap nometa noforwardadd 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float2 customPack1 : TEXCOORD1;
				float4 tSpace0 : TEXCOORD2;
				float4 tSpace1 : TEXCOORD3;
				float4 tSpace2 : TEXCOORD4;
				half4 color : COLOR0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.uv_texcoord;
				o.customPack1.xy = v.texcoord;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				o.color = v.color;
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.uv_texcoord = IN.customPack1.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				surfIN.vertexColor = IN.color;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback Off
	CustomEditor "PupsiBRCShaderGUI"
}
/*ASEBEGIN
Version=19908
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1284;2096,928;Inherit;False;Property;_BaseScrollSpeed;Base Scroll Speed;4;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1285;2096,848;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1299;2336,848;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1300;2272,1136;Inherit;False;Property;_BaseTextureTiling;Base Texture Tiling;3;0;Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1257;2496,864;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1258;2304,304;Inherit;False;Property;_NormalMapIntensity;Normal Map Intensity;7;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1255;3456,-192;Inherit;False;2130.147;475.957;;21;1320;1317;1316;1312;1311;1310;1307;1306;1294;1283;1282;1279;1278;1275;1272;1269;1268;1265;1262;1261;1217;Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1259;2672,272;Inherit;True;Property;_NormalMap;Normal Map;6;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;bump;Auto;True;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.WorldNormalVector, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1260;3024,272;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldPosInputsNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1261;3520,-144;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1262;3472,16;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1263;3216,368;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1264;2992,448;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1265;3712,-144;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1256;3728,1696;Inherit;False;1890.702;1107.327;;22;1319;1318;1315;1314;1313;1308;1303;1302;1301;1298;1296;1295;1288;1287;1286;1281;1280;1277;1276;1274;1273;1271;Shadows and Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1266;3392,368;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1268;3856,-144;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1269;3856,0;Inherit;True;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightAttenuation, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1267;3248,640;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1270;3552,624;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1271;3744,2288;Float;False;Property;_ShadowOffset1;Shadow Offset;25;0;Create;True;1;Shadow Options;0;0;False;0;False;0;0.25;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1272;4064,-144;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1273;4032,2272;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1274;3744,2368;Float;False;Property;_ShadowSoftness1;Shadow Softness;23;0;Create;True;1;Shadow Options;0;0;False;0;False;0.01;0.76;0.01;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1275;4176,-144;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1276;4144,2272;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1277;4384,2400;Inherit;False;Property;_ShadowIntensity;Shadow Intensity;24;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1278;4160,-32;Inherit;True;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1279;4320,-64;Inherit;False;Property;_SpecularOffset;Specular Offset;16;0;Create;True;0;0;0;False;0;False;0;-0.27;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1280;4656,2400;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1281;4352,2272;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1282;4352,-144;Inherit;False;Property;_SpecularSoftness;Specular Softness;15;0;Create;True;0;0;0;False;0;False;0.01;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1283;4592,-48;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1286;4816,2384;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1287;3792,1776;Inherit;False;Property;_GameShadowStrength;Game Shadow Strength;22;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1288;3792,1872;Inherit;False;Property;_CustomShadowColor1;Custom Shadow Color;21;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1289;3136,1904;Inherit;False;Property;_BaseTextureColor;Base Texture Color;2;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1290;3040,1648;Inherit;True;Property;_MainTex;Base Texture;1;1;[NoScaleOffset];Create;False;0;0;0;False;1;BigTexture;False;-1;None;fa7ef22070732074aa328345f82c8cc3;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.VertexColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1291;2784,2144;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1292;2784,2320;Inherit;False;Constant;_Color0;Color 0;24;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1293;3040,2368;Inherit;False;Property;_VertexColorIntensity;Vertex Color Intensity;5;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1294;4704,-128;Inherit;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1295;4000,2544;Inherit;False;Property;_CustomLightingColor1;Custom Lighting Color;19;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1296;3984,2752;Inherit;False;Property;_GameLightStrength;Game Light Strength;20;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1297;3696,2496;Inherit;False;Global;LightColor;LightColor;25;0;Create;True;0;0;0;False;0;False;0,0,0,0;1,1,1,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1298;3808,2064;Inherit;False;Global;ShadowColor;ShadowColor;25;0;Create;True;0;0;0;False;0;False;0,0,0,0;0.1635368,0.2241375,0.3301887,1;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1301;4960,2384;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1302;4192,1840;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1303;4320,2512;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1304;3408,1840;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1305;3344,2144;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1306;4912,-112;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1307;4512,144;Inherit;True;Property;_SpecularMask;Specular Mask;13;1;[NoScaleOffset];Create;True;0;0;0;False;0;False;-1;None;26ddce9652eff884c898487d29f5196e;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;583;4281.024,-879.7415;Inherit;False;1382.785;524.939;;3;609;1126;1125;Emission;0.6419381,0.9433962,0.4850481,1;0;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1308;4768,2144;Inherit;True;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1309;3584,1840;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1310;5088,-128;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1311;4832,160;Inherit;False;Property;_SpecularCustomColor;Specular Custom Color;12;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1312;5040,0;Inherit;False;Property;_SpecularBrightness;Specular Brightness;14;0;Create;True;0;0;0;False;0;False;1;1.49;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1313;4928,2000;Inherit;False;Property;_WorldLightStrength;World Light Strength;18;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1314;4928,1776;Inherit;False;Property;_CustomWorldLightColor;Custom World Light Color;17;0;Create;True;0;0;0;False;0;False;1,1,1,0;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.LightColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1315;5152,2096;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;609;4904.819,-764.9264;Inherit;True;Property;_EmissionMap;Emission Texture;8;1;[NoScaleOffset];Create;False;0;0;0;False;0;False;-1;None;None;True;0;False;black;Auto;False;Object;-1;Auto;Texture2D;False;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1126;5264.192,-722.0192;Inherit;False;Property;_EmissionColor;Emission Color;9;0;Create;True;0;0;0;False;0;False;1,1,1,0;0.254717,0.254717,0.254717,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1316;5248,-96;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1317;5104,96;Inherit;False;Property;_SpecularCustomColorToggle;Specular Custom Color Toggle;10;0;Create;True;0;0;0;False;0;False;0;True;Create;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1318;5216,1808;Inherit;True;3;0;COLOR;1,1,1,0;False;1;COLOR;1,1,1,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1319;5136,2320;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1125;5504.965,-719.9303;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1217;5216,-192;Inherit;False;Property;_EmissionIntensity;Emission Intensity;11;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1320;5424,-96;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1321;5648,2032;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1216;5735.85,-634.4969;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleAddOpNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1322;5920,400;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode, AmplifyShaderEditor, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null;1215;6643.778,234.8965;Float;False;True;-1;2;AmplifyShaderEditor.MaterialInspector;0;0;CustomLighting;Pupsi BRC Environment Shader;False;False;False;False;False;False;True;True;True;False;True;True;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;0;False;;0;Custom;0.5;True;True;0;True;TransparentCutout;;Geometry;ForwardOnly;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;0;False;;0;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Relative;0;;0;-1;-1;-1;0;False;0;0;False;_Cull;-1;0;False;;0;0;0;False;0.1;False;;0;False;;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;1299;0;1285;0
WireConnection;1299;1;1284;0
WireConnection;1257;0;1300;0
WireConnection;1257;1;1299;0
WireConnection;1259;1;1257;0
WireConnection;1259;5;1258;0
WireConnection;1260;0;1259;0
WireConnection;1263;0;1260;0
WireConnection;1265;0;1262;0
WireConnection;1265;1;1261;0
WireConnection;1266;0;1263;0
WireConnection;1266;1;1264;0
WireConnection;1269;0;1265;0
WireConnection;1270;0;1266;0
WireConnection;1270;1;1267;0
WireConnection;1272;0;1268;0
WireConnection;1272;1;1269;0
WireConnection;1273;0;1270;0
WireConnection;1273;1;1271;0
WireConnection;1275;0;1272;0
WireConnection;1276;0;1273;0
WireConnection;1276;1;1274;0
WireConnection;1278;0;1275;0
WireConnection;1278;1;1263;0
WireConnection;1280;0;1277;0
WireConnection;1281;0;1276;0
WireConnection;1283;0;1279;0
WireConnection;1283;1;1278;0
WireConnection;1286;0;1281;0
WireConnection;1286;1;1280;0
WireConnection;1290;1;1257;0
WireConnection;1294;0;1283;0
WireConnection;1294;1;1282;0
WireConnection;1301;0;1286;0
WireConnection;1302;0;1288;0
WireConnection;1302;1;1298;0
WireConnection;1302;2;1287;0
WireConnection;1303;0;1295;0
WireConnection;1303;1;1297;0
WireConnection;1303;2;1296;0
WireConnection;1304;0;1290;0
WireConnection;1304;1;1289;0
WireConnection;1305;0;1291;0
WireConnection;1305;1;1292;0
WireConnection;1305;2;1293;0
WireConnection;1306;0;1294;0
WireConnection;1308;0;1302;0
WireConnection;1308;1;1303;0
WireConnection;1308;2;1301;0
WireConnection;1309;0;1304;0
WireConnection;1309;1;1305;0
WireConnection;1310;0;1306;0
WireConnection;1310;1;1307;0
WireConnection;1316;0;1310;0
WireConnection;1316;1;1312;0
WireConnection;1317;0;1321;0
WireConnection;1317;1;1311;0
WireConnection;1318;0;1314;0
WireConnection;1318;1;1315;0
WireConnection;1318;2;1313;0
WireConnection;1319;0;1308;0
WireConnection;1319;1;1309;0
WireConnection;1125;0;609;0
WireConnection;1125;1;1126;0
WireConnection;1320;0;1316;0
WireConnection;1320;1;1317;0
WireConnection;1321;0;1319;0
WireConnection;1321;1;1318;0
WireConnection;1216;0;1125;0
WireConnection;1216;1;1217;0
WireConnection;1322;0;1321;0
WireConnection;1322;1;1320;0
WireConnection;1215;0;1322;0
WireConnection;1215;2;1216;0
WireConnection;1215;9;1290;4
WireConnection;1215;10;1290;4
WireConnection;1215;13;1322;0
ASEEND*/
//CHKSM=4B8F26C8F822DD05D6B344ADA1BADB2E83ADA81B