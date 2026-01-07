using UnityEditor;
using UnityEngine;
using System.Collections.Generic;

public class PupsiBRCShaderGUI : ShaderGUI
{
    // Foldout states
    private static bool showBaseTextures = true;
    private static bool showVertexColors = false;
    private static bool showDetailTexture = false;
    private static bool showNormalMap = false;
    private static bool showEmission = false;
    private static bool showShadowsLighting = true;
    private static bool showExtraLight = false;
    private static bool showSpecular = false;
    private static bool showRimLightShadow = false;
    private static bool showOutline = true;
    private static bool showSilhouette = false;
    private static bool showCubemap = false;
    private static bool showGlow = false;
    private static bool showFlipbook = false;
    private static bool showScroll = false;
    private static bool showAdvanced = false;

    // Cached textures
    private static Texture2D logoTexture;
    private static Texture2D githubIcon;
    private static Texture2D kofiIcon;
    private static bool texturesLoaded = false;

    // Shader type detection
    private enum ShaderType
    {
        Standard,
        Transparent,
        SilhouetteOutline,
        SilhouetteOutlineTransparent,
        Riders,
        UltimateNinja,
        Unknown
    }

    // Styles
    private static GUIStyle headerStyle;
    private static GUIStyle subHeaderStyle;
    private static GUIStyle boxStyle;
    private static bool stylesInitialized = false;

    private string GetPackageRootPath()
    {
        // Find this script's location and navigate to the package root
        var script = MonoScript.FromScriptableObject(ScriptableObject.CreateInstance<ScriptableObject>());
        string[] guids = AssetDatabase.FindAssets("t:Script PupsiBRCShaderGUI");
        
        if (guids.Length > 0)
        {
            string scriptPath = AssetDatabase.GUIDToAssetPath(guids[0]);
            // Script is in [PackageRoot]/Scripts/Editor/PupsiBRCShaderGUI.cs
            // Navigate up to package root
            string packageRoot = System.IO.Path.GetDirectoryName(scriptPath); // Scripts/Editor
            packageRoot = System.IO.Path.GetDirectoryName(packageRoot); // Scripts
            packageRoot = System.IO.Path.GetDirectoryName(packageRoot); // Package Root
            return packageRoot.Replace("\\", "/");
        }
        
        return null;
    }

    private void LoadTextures()
    {
        if (texturesLoaded) return;

        string packageRoot = GetPackageRootPath();
        
        if (!string.IsNullOrEmpty(packageRoot))
        {
            string iconsPath = packageRoot + "/Textures/Icons";
            
            // Find textures relative to the package location
            string[] logoGuids = AssetDatabase.FindAssets("logo t:Texture2D", new[] { iconsPath });
            string[] githubGuids = AssetDatabase.FindAssets("T_icon-githubpupsi t:Texture2D", new[] { iconsPath });
            string[] kofiGuids = AssetDatabase.FindAssets("T_icon-kofipupsi t:Texture2D", new[] { iconsPath });

            if (logoGuids.Length > 0)
                logoTexture = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(logoGuids[0]));
            if (githubGuids.Length > 0)
                githubIcon = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(githubGuids[0]));
            if (kofiGuids.Length > 0)
                kofiIcon = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(kofiGuids[0]));
        }
        else
        {
            // Fallback: search entire project for the textures by name
            string[] logoGuids = AssetDatabase.FindAssets("logo t:Texture2D");
            string[] githubGuids = AssetDatabase.FindAssets("T_icon-githubpupsi t:Texture2D");
            string[] kofiGuids = AssetDatabase.FindAssets("T_icon-kofipupsi t:Texture2D");

            if (logoGuids.Length > 0)
                logoTexture = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(logoGuids[0]));
            if (githubGuids.Length > 0)
                githubIcon = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(githubGuids[0]));
            if (kofiGuids.Length > 0)
                kofiIcon = AssetDatabase.LoadAssetAtPath<Texture2D>(AssetDatabase.GUIDToAssetPath(kofiGuids[0]));
        }

        texturesLoaded = true;
    }

    private void InitStyles()
    {
        if (stylesInitialized) return;

        headerStyle = new GUIStyle(EditorStyles.boldLabel)
        {
            fontSize = 13,
            margin = new RectOffset(0, 0, 10, 5)
        };

        subHeaderStyle = new GUIStyle(EditorStyles.boldLabel)
        {
            fontSize = 11,
            margin = new RectOffset(0, 0, 5, 3)
        };

        boxStyle = new GUIStyle("box")
        {
            padding = new RectOffset(10, 10, 5, 5),
            margin = new RectOffset(0, 0, 5, 5)
        };

        stylesInitialized = true;
    }

    private ShaderType GetShaderType(Material material)
    {
        string shaderName = material.shader.name;
        
        if (shaderName.Contains("Silhouette Outline Transparent"))
            return ShaderType.SilhouetteOutlineTransparent;
        if (shaderName.Contains("Silhouette Outline"))
            return ShaderType.SilhouetteOutline;
        if (shaderName.Contains("Transparent"))
            return ShaderType.Transparent;
        if (shaderName.Contains("Riders"))
            return ShaderType.Riders;
        if (shaderName.Contains("Ultimate Ninja"))
            return ShaderType.UltimateNinja;
        if (shaderName.Contains("Pupsi BRC Shader"))
            return ShaderType.Standard;
            
        return ShaderType.Unknown;
    }

    public override void OnGUI(MaterialEditor materialEditor, MaterialProperty[] properties)
    {
        InitStyles();
        LoadTextures();
        
        Material material = materialEditor.target as Material;
        ShaderType shaderType = GetShaderType(material);

        // Header with logo
        EditorGUILayout.Space(5);
        DrawHeader(shaderType);
        EditorGUILayout.Space(10);

        // Draw sections based on shader type
        DrawBaseTexturesSection(materialEditor, properties, shaderType);
        DrawVertexColorsSection(materialEditor, properties, shaderType);
        DrawDetailTextureSection(materialEditor, properties, shaderType);
        DrawNormalMapSection(materialEditor, properties, shaderType);
        DrawEmissionSection(materialEditor, properties, shaderType);
        DrawShadowsLightingSection(materialEditor, properties, shaderType);
        DrawExtraLightSection(materialEditor, properties, shaderType);
        DrawSpecularSection(materialEditor, properties, shaderType);
        DrawRimLightShadowSection(materialEditor, properties, shaderType);
        DrawOutlineSection(materialEditor, properties, shaderType);
        DrawSilhouetteSection(materialEditor, properties, shaderType);
        DrawCubemapSection(materialEditor, properties, shaderType);
        DrawGlowSection(materialEditor, properties, shaderType);
        DrawFlipbookSection(materialEditor, properties, shaderType);
        DrawScrollSection(materialEditor, properties, shaderType);
        DrawAdvancedSection(materialEditor, properties, shaderType);

        EditorGUILayout.Space(10);
        
        // Footer links
        DrawFooter();
    }

    private void DrawHeader(ShaderType shaderType)
    {
        string shaderTypeName = shaderType switch
        {
            ShaderType.Standard => "Standard",
            ShaderType.Transparent => "Transparent",
            ShaderType.SilhouetteOutline => "Silhouette Outline",
            ShaderType.SilhouetteOutlineTransparent => "Silhouette Outline Transparent",
            ShaderType.Riders => "Riders",
            ShaderType.UltimateNinja => "Ultimate Ninja",
            _ => "Unknown"
        };

        // Draw logo if available
        if (logoTexture != null)
        {
            // Calculate width based on inspector width with some padding
            float padding = 20f;
            float availableWidth = EditorGUIUtility.currentViewWidth - padding * 2;
            float maxWidth = Mathf.Min(availableWidth, 400f); // Cap at 400px max
            
            // Calculate height proportionally based on texture aspect ratio
            float aspectRatio = (float)logoTexture.height / logoTexture.width;
            float logoWidth = maxWidth;
            float logoHeight = logoWidth * aspectRatio;
            
            // Reserve space with extra vertical padding to prevent squishing
            EditorGUILayout.Space(5);
            Rect logoRect = GUILayoutUtility.GetRect(EditorGUIUtility.currentViewWidth, logoHeight + 10f);
            
            // Center the logo within the rect
            logoRect.x = (EditorGUIUtility.currentViewWidth - logoWidth) / 2f;
            logoRect.y += 5f;
            logoRect.width = logoWidth;
            logoRect.height = logoHeight;
            
            GUI.DrawTexture(logoRect, logoTexture, ScaleMode.ScaleToFit);
            EditorGUILayout.Space(5);
        }
        else
        {
            // Fallback text header if logo not found
            GUIStyle titleStyle = new GUIStyle(EditorStyles.boldLabel)
            {
                fontSize = 16,
                alignment = TextAnchor.MiddleCenter,
                richText = true
            };
            EditorGUILayout.LabelField("<color=#1fc>Pupsi</color> <color=#ffffff>BRC Shader</color>", titleStyle);
        }
        
        GUIStyle subtitleStyle = new GUIStyle(EditorStyles.centeredGreyMiniLabel)
        {
            fontSize = 11
        };
        EditorGUILayout.LabelField($"Variant: {shaderTypeName}", subtitleStyle);
    }

    private void DrawFooter()
    {
        EditorGUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();

        // GitHub icon button
        if (githubIcon != null)
        {
            GUIStyle iconButtonStyle = new GUIStyle(GUI.skin.button)
            {
                padding = new RectOffset(4, 4, 4, 4)
            };
            
            if (GUILayout.Button(new GUIContent(githubIcon, "GitHub - Pupsi BRC Shader"), iconButtonStyle, GUILayout.Width(40), GUILayout.Height(40)))
            {
                Application.OpenURL("https://github.com/pupsicola/Pupsi-BRC-Shader");
            }
        }
        else
        {
            if (GUILayout.Button("GitHub", GUILayout.Width(80)))
            {
                Application.OpenURL("https://github.com/pupsicola/Pupsi-BRC-Shader");
            }
        }

        GUILayout.Space(10);

        // Ko-fi icon button
        if (kofiIcon != null)
        {
            GUIStyle iconButtonStyle = new GUIStyle(GUI.skin.button)
            {
                padding = new RectOffset(4, 4, 4, 4)
            };
            
            if (GUILayout.Button(new GUIContent(kofiIcon, "Support on Ko-fi"), iconButtonStyle, GUILayout.Width(40), GUILayout.Height(40)))
            {
                Application.OpenURL("https://ko-fi.com/pupsi");
            }
        }
        else
        {
            if (GUILayout.Button("Ko-fi", GUILayout.Width(80)))
            {
                Application.OpenURL("https://ko-fi.com/pupsi");
            }
        }
        
        GUILayout.FlexibleSpace();
        EditorGUILayout.EndHorizontal();
    }

    #region Utility Methods
    
    private MaterialProperty FindPropertySafe(MaterialProperty[] properties, string name)
    {
        foreach (var prop in properties)
        {
            if (prop.name == name)
                return prop;
        }
        return null;
    }

    private bool DrawFoldoutHeader(string title, bool foldout, Color? color = null)
    {
        Color originalColor = GUI.backgroundColor;
        if (color.HasValue)
            GUI.backgroundColor = color.Value;

        EditorGUILayout.BeginVertical(EditorStyles.helpBox);
        GUI.backgroundColor = originalColor;

        EditorGUILayout.BeginHorizontal();
        foldout = EditorGUILayout.Foldout(foldout, title, true, EditorStyles.foldoutHeader);
        EditorGUILayout.EndHorizontal();

        if (!foldout)
            EditorGUILayout.EndVertical();

        return foldout;
    }

    private void EndFoldoutSection()
    {
        EditorGUILayout.EndVertical();
    }

    private void DrawProperty(MaterialEditor editor, MaterialProperty[] properties, string propertyName, string displayName = null)
    {
        var prop = FindPropertySafe(properties, propertyName);
        if (prop != null)
        {
            if (displayName != null)
                editor.ShaderProperty(prop, displayName);
            else
                editor.ShaderProperty(prop, prop.displayName);
        }
    }

    private void DrawTextureProperty(MaterialEditor editor, MaterialProperty[] properties, string propertyName, string displayName = null)
    {
        var prop = FindPropertySafe(properties, propertyName);
        if (prop != null)
        {
            editor.TexturePropertySingleLine(
                new GUIContent(displayName ?? prop.displayName),
                prop
            );
        }
    }

    private void DrawTextureWithExtra(MaterialEditor editor, MaterialProperty[] properties, string textureName, string extraPropName, string displayName = null)
    {
        var texProp = FindPropertySafe(properties, textureName);
        var extraProp = FindPropertySafe(properties, extraPropName);
        
        if (texProp != null)
        {
            if (extraProp != null)
            {
                editor.TexturePropertySingleLine(
                    new GUIContent(displayName ?? texProp.displayName),
                    texProp,
                    extraProp
                );
            }
            else
            {
                editor.TexturePropertySingleLine(
                    new GUIContent(displayName ?? texProp.displayName),
                    texProp
                );
            }
        }
    }

    private bool HasProperty(MaterialProperty[] properties, string propertyName)
    {
        return FindPropertySafe(properties, propertyName) != null;
    }

    #endregion

    #region Section Drawing Methods

    private void DrawBaseTexturesSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        showBaseTextures = DrawFoldoutHeader("Base Textures", showBaseTextures, new Color(0.8f, 0.9f, 1f));
        if (!showBaseTextures) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_Cull", "Cull Mode");
        
        // Opacity for transparent variants
        if (shaderType == ShaderType.Transparent || shaderType == ShaderType.SilhouetteOutlineTransparent)
        {
            DrawProperty(editor, properties, "_Opacity", "Opacity");
        }
        else
        {
            DrawProperty(editor, properties, "_AlphaClipping", "Alpha Clipping");
        }

        EditorGUILayout.Space(3);
        DrawProperty(editor, properties, "_BaseColor", "Base Color");
        DrawTextureProperty(editor, properties, "_MainTex", "Base Texture");
        DrawTextureProperty(editor, properties, "RotationMask", "Base Rotation Mask");
        
        EditorGUILayout.Space(3);
        DrawProperty(editor, properties, "_BaseScrollSpeed", "Base Scroll Speed");
        DrawProperty(editor, properties, "_BaseRotationCenter", "Base Rotation Center");
        DrawProperty(editor, properties, "_BaseRotationSpeed", "Base Rotation Speed");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawVertexColorsSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_VertexColorsToggle")) return;

        showVertexColors = DrawFoldoutHeader("Vertex Colors", showVertexColors);
        if (!showVertexColors) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_VertexColorsToggle", "Enable Vertex Colors");
        DrawProperty(editor, properties, "_VertexColorsOpacity", "Vertex Colors Opacity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawDetailTextureSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_DetailTextureToggle")) return;

        showDetailTexture = DrawFoldoutHeader("Detail Texture", showDetailTexture);
        if (!showDetailTexture) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_DetailTextureToggle", "Enable Detail Texture");
        DrawTextureProperty(editor, properties, "_DetailTexture", "Detail Texture");
        DrawProperty(editor, properties, "_DetailTextureUV", "Detail Texture UV");
        DrawProperty(editor, properties, "_DetailTextureBlend", "Detail Texture Opacity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawNormalMapSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_NormalMap")) return;

        showNormalMap = DrawFoldoutHeader("Normal Map", showNormalMap);
        if (!showNormalMap) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawTextureProperty(editor, properties, "_NormalMap", "Normal Map");
        DrawProperty(editor, properties, "_NormalMapUV", "Normal Map UV");
        DrawProperty(editor, properties, "_NormalMapIntensity", "Normal Map Intensity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawEmissionSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_Emission")) return;

        showEmission = DrawFoldoutHeader("Emission", showEmission, new Color(1f, 0.9f, 0.7f));
        if (!showEmission) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawTextureProperty(editor, properties, "_Emission", "Emission Texture");
        DrawTextureProperty(editor, properties, "_EmissionMask", "Emission Mask");
        DrawProperty(editor, properties, "_EmissionMaskScrollSpeed", "Emission Mask Scroll Speed");
        DrawProperty(editor, properties, "_EmissionHue", "Emission Hue");
        
        // Different shaders use different emission property names
        if (HasProperty(properties, "_EmissionEmit"))
            DrawProperty(editor, properties, "_EmissionEmit", "Emission Intensity");
        if (HasProperty(properties, "_EmissionColor"))
            DrawProperty(editor, properties, "_EmissionColor", "Emission Color");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawShadowsLightingSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        showShadowsLighting = DrawFoldoutHeader("Shadows & Lighting", showShadowsLighting, new Color(0.7f, 0.8f, 1f));
        if (!showShadowsLighting) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        // Custom lighting colors
        EditorGUILayout.LabelField("Custom Colors", subHeaderStyle);
        DrawProperty(editor, properties, "_CustomLightingColorToggle", "Custom Light Color Toggle");
        DrawProperty(editor, properties, "_CustomLightingColor", "Custom Lighting Color");
        DrawProperty(editor, properties, "_CustomShadowColorToggle", "Custom Shadow Color Toggle");
        DrawProperty(editor, properties, "_CustomShadowColor", "Custom Shadow Color");

        EditorGUILayout.Space(5);
        EditorGUILayout.LabelField("Shadow Settings", subHeaderStyle);
        DrawProperty(editor, properties, "_ShadowSoftness", "Shadow Softness");
        DrawProperty(editor, properties, "_ShadowIntensity", "Shadow Intensity");
        DrawProperty(editor, properties, "_ShadowOffset", "Shadow Offset");

        // Shadow Texture
        EditorGUILayout.Space(5);
        EditorGUILayout.LabelField("Shadow Texture", subHeaderStyle);
        DrawProperty(editor, properties, "_ShadowTextureToggle", "Enable Shadow Texture");
        DrawTextureProperty(editor, properties, "_ShadowTexture", "Shadow Texture");
        DrawProperty(editor, properties, "_ShadowTextureTiling", "Shadow Texture Tiling");
        DrawProperty(editor, properties, "_ShadowTextureBlend", "Shadow Texture Blend");

        // Halftone Shadow
        if (HasProperty(properties, "_HalftoneShadowToggle"))
        {
            EditorGUILayout.Space(5);
            EditorGUILayout.LabelField("Halftone Shadow", subHeaderStyle);
            DrawProperty(editor, properties, "_HalftoneShadowToggle", "Enable Halftone Shadow");
            DrawProperty(editor, properties, "_HalftoneShadowSoftness", "Halftone Softness");
            DrawProperty(editor, properties, "_HalftoneShadowScale", "Halftone Scale");
        }

        // Riders shader specific
        if (shaderType == ShaderType.Riders)
        {
            DrawProperty(editor, properties, "_AddViewDirectionalLight", "Add View Directional Light");
            DrawProperty(editor, properties, "_ShadowColor", "Shadow Color");
            DrawProperty(editor, properties, "_ShadowOutlineThickness", "Shadow Outline Thickness");
            DrawProperty(editor, properties, "_ShadowOutlineCustomColorToggle", "Shadow Outline Custom Color Toggle");
            DrawProperty(editor, properties, "_ShadowOutlineCustomColor", "Shadow Outline Custom Color");
            DrawTextureProperty(editor, properties, "_ShadowMask", "Shadow Mask");
            DrawProperty(editor, properties, "_RimLightOpacity", "Rim Light Opacity");
            DrawProperty(editor, properties, "_RimLightPower", "Rim Light Power");
            DrawProperty(editor, properties, "_RimLightOffset", "Rim Light Offset");
        }

        // Ultimate Ninja specific
        if (shaderType == ShaderType.UltimateNinja)
        {
            DrawProperty(editor, properties, "_ShadowTextureSoftness", "Shadow Texture Softness");
            DrawProperty(editor, properties, "_ShadowTextureOffset", "Shadow Texture Offset");
            DrawProperty(editor, properties, "_ShadowRimOpacity", "Shadow Rim Opacity");
            DrawProperty(editor, properties, "_ShadowRim1Offset", "Shadow Rim 1 Offset");
            DrawProperty(editor, properties, "_ShadowRim2Offset", "Shadow Rim 2 Offset");
        }

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawExtraLightSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_ExtraLightToggle")) return;

        showExtraLight = DrawFoldoutHeader("Extra Light", showExtraLight);
        if (!showExtraLight) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_ExtraLightToggle", "Enable Extra Light");
        DrawProperty(editor, properties, "_ExtraLightOffset", "Extra Light Offset");
        DrawProperty(editor, properties, "_ExtraLightSoftness", "Extra Light Softness");
        DrawProperty(editor, properties, "_ExtraLightBlend", "Extra Light Opacity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawSpecularSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_SpecularToggle")) return;

        showSpecular = DrawFoldoutHeader("Specular", showSpecular, new Color(1f, 1f, 0.8f));
        if (!showSpecular) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_SpecularToggle", "Enable Specular");
        DrawProperty(editor, properties, "_SpecularCustomColorToggle", "Custom Color Toggle");
        DrawProperty(editor, properties, "_SpecularCustomColor", "Specular Custom Color");
        DrawTextureProperty(editor, properties, "_SpecularMask", "Specular Mask");
        DrawProperty(editor, properties, "_SpecularMaskUV", "Specular Mask UV");
        DrawProperty(editor, properties, "_SpecularBrightness", "Specular Brightness");
        DrawProperty(editor, properties, "_SpecularSoftness", "Specular Softness");
        DrawProperty(editor, properties, "_SpecularOffset", "Specular Offset");
        
        if (shaderType == ShaderType.UltimateNinja)
        {
            DrawProperty(editor, properties, "_SpecularPower", "Specular Power");
        }

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawRimLightShadowSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_RimLightShadowToggle")) return;

        showRimLightShadow = DrawFoldoutHeader("Rim Light / Shadow", showRimLightShadow, new Color(0.9f, 0.8f, 1f));
        if (!showRimLightShadow) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_RimLightShadowToggle", "Enable Rim Light/Shadow");
        
        EditorGUILayout.LabelField("Rim Light", subHeaderStyle);
        DrawProperty(editor, properties, "_RimLightColor", "Rim Light Color");
        DrawProperty(editor, properties, "_RimLightBlendBaseTexture", "Blend Base Texture");
        DrawProperty(editor, properties, "_RimLightPower", "Rim Light Power");
        DrawProperty(editor, properties, "_RimLightOffset", "Rim Light Offset");
        DrawProperty(editor, properties, "_RimLightBlend", "Rim Light Opacity");

        EditorGUILayout.Space(3);
        EditorGUILayout.LabelField("Rim Shadow", subHeaderStyle);
        DrawProperty(editor, properties, "_RimShadowPower", "Rim Shadow Power");
        DrawProperty(editor, properties, "_RimShadowOffset", "Rim Shadow Offset");
        DrawProperty(editor, properties, "_RimShadowOpacity", "Rim Shadow Opacity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawOutlineSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_OutlineColor")) return;

        showOutline = DrawFoldoutHeader("Outline", showOutline, new Color(0.8f, 1f, 0.8f));
        if (!showOutline) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        // Transparent variants have outline opacity
        if (shaderType == ShaderType.Transparent || shaderType == ShaderType.SilhouetteOutlineTransparent)
        {
            DrawProperty(editor, properties, "_OutlineOpacity", "Outline Opacity");
            DrawProperty(editor, properties, "_OutlineuseBaseTextureAlpha", "Use Base Texture Alpha");
        }

        DrawProperty(editor, properties, "_OutlineMultiplier", "Outline Multiplier");
        DrawProperty(editor, properties, "_OutlineMinSize", "Outline Min Size");
        DrawProperty(editor, properties, "_OutlineMaxSize", "Outline Max Size");
        DrawProperty(editor, properties, "_VertexColorsDefineOutlineCoverage", "Vertex Colors Define Coverage");
        DrawProperty(editor, properties, "_OutlineColor", "Outline Color");
        DrawProperty(editor, properties, "_OutlineBlendBaseTexture", "Blend Base Texture");

        EditorGUILayout.Space(3);
        DrawProperty(editor, properties, "_OutlineTextureToggle", "Enable Outline Texture");
        
        // Different shaders use different property names for outline texture
        if (HasProperty(properties, "AuraTexture"))
            DrawTextureProperty(editor, properties, "AuraTexture", "Outline Texture");
        else if (HasProperty(properties, "OutlineTexture"))
            DrawTextureProperty(editor, properties, "OutlineTexture", "Outline Texture");
            
        DrawProperty(editor, properties, "_OutlineTextureTiling", "Outline Texture Tiling");
        DrawProperty(editor, properties, "_OutlineTextureScroll", "Outline Texture Scroll");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawSilhouetteSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (shaderType != ShaderType.SilhouetteOutline && 
            shaderType != ShaderType.SilhouetteOutlineTransparent &&
            shaderType != ShaderType.Riders &&
            shaderType != ShaderType.UltimateNinja) return;

        if (!HasProperty(properties, "_SilhouetteColor")) return;

        showSilhouette = DrawFoldoutHeader("Silhouette Outline", showSilhouette, new Color(1f, 0.85f, 0.85f));
        if (!showSilhouette) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        // Transparent variant has silhouette opacity
        if (shaderType == ShaderType.SilhouetteOutlineTransparent)
        {
            DrawProperty(editor, properties, "_SilhouetteOutlineOpacity", "Silhouette Opacity");
            DrawProperty(editor, properties, "_SilhouetteOutlineuseBaseTextureAlpha", "Use Base Texture Alpha");
        }

        DrawProperty(editor, properties, "_SilhouetteColor", "Silhouette Color");
        DrawProperty(editor, properties, "_SilhouetteTextureToggle", "Enable Silhouette Texture");
        DrawTextureProperty(editor, properties, "AuraTexture1", "Silhouette Texture");
        DrawProperty(editor, properties, "_SilhouetteTextureTiling", "Silhouette Texture Tiling");
        DrawProperty(editor, properties, "_SilhouetteTextureScroll", "Silhouette Texture Scroll");

        EditorGUILayout.Space(3);
        DrawProperty(editor, properties, "_SilhouetteOverlay", "Enable Silhouette Overlay");
        DrawProperty(editor, properties, "_SilhouetteOverlayOpacity", "Silhouette Overlay Opacity");

        EditorGUILayout.Space(3);
        DrawProperty(editor, properties, "_SilhouetteMultiplier", "Silhouette Multiplier");
        DrawProperty(editor, properties, "_SilhouetteMinSize", "Silhouette Min Size");
        DrawProperty(editor, properties, "_SilhouetteMaxSize", "Silhouette Max Size");
        // Vertex color coverage - different property names across shaders
        DrawProperty(editor, properties, "_VertexColorsDefineSilhouetteOutlineCoverage", "Vertex Colors Define Coverage");
        DrawProperty(editor, properties, "_VertexColorsDefineSilhouetteOutlineCoverage1", "Vertex Colors Define Coverage");

        EditorGUILayout.Space(3);
        EditorGUILayout.LabelField("Silhouette Rim Light", subHeaderStyle);
        DrawProperty(editor, properties, "_SilhouetteRimLightToggle", "Enable Rim Light");
        DrawProperty(editor, properties, "_SilhouetteRimLightPower", "Rim Light Power");
        DrawProperty(editor, properties, "_SilhouetteRimLightOffset", "Rim Light Offset");
        DrawProperty(editor, properties, "_SilhouetteRimLightBlend", "Rim Light Opacity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawCubemapSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_CubemapToggle")) return;

        showCubemap = DrawFoldoutHeader("Cubemap Reflection", showCubemap, new Color(0.8f, 0.95f, 1f));
        if (!showCubemap) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_CubemapToggle", "Enable Cubemap");
        
        var cubemapProp = FindPropertySafe(properties, "_CubemapTexture");
        if (cubemapProp != null)
        {
            editor.TexturePropertySingleLine(new GUIContent("Cubemap Texture"), cubemapProp);
        }
        
        DrawTextureProperty(editor, properties, "cubemapmask", "Cubemap Mask");
        DrawProperty(editor, properties, "_CubemapBlend", "Cubemap Opacity");
        DrawProperty(editor, properties, "_CubemapColorize", "Cubemap Colorize");
        
        EditorGUILayout.Space(3);
        EditorGUILayout.LabelField("Fresnel", subHeaderStyle);
        DrawProperty(editor, properties, "_CubemapFresnelBias", "Fresnel Bias");
        DrawProperty(editor, properties, "_CubemapFresnelScale", "Fresnel Scale");
        DrawProperty(editor, properties, "_CubemapFresnelPower", "Fresnel Power");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawGlowSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_GlowToggle")) return;

        showGlow = DrawFoldoutHeader("Glow Effect", showGlow, new Color(0.7f, 0.85f, 1f));
        if (!showGlow) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_GlowToggle", "Enable Glow");
        DrawTextureProperty(editor, properties, "_GlowMask", "Glow Mask");
        DrawProperty(editor, properties, "_GlowColor", "Glow Color");
        DrawProperty(editor, properties, "_GlowCycle", "Glow Cycle");
        DrawProperty(editor, properties, "_GlowSpeed", "Glow Speed");
        DrawProperty(editor, properties, "_GlowEmit", "Glow Intensity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawFlipbookSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_FlipbookToggle")) return;

        showFlipbook = DrawFoldoutHeader("Flipbook Animation", showFlipbook, new Color(0.9f, 0.7f, 1f));
        if (!showFlipbook) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_FlipbookToggle", "Enable Flipbook");
        DrawTextureProperty(editor, properties, "_FlipBookTexture", "Flipbook Texture");
        DrawTextureProperty(editor, properties, "_FlipBookMask", "Flipbook Mask");
        DrawProperty(editor, properties, "_FlipbookTiling", "Flipbook Tiling");
        DrawProperty(editor, properties, "_FlipbookOffset", "Flipbook Offset");
        DrawProperty(editor, properties, "_FlipbookColumns", "Flipbook Columns");
        DrawProperty(editor, properties, "_FlipbookRows", "Flipbook Rows");
        DrawProperty(editor, properties, "_FlipbookSpeed", "Flipbook Speed");
        DrawProperty(editor, properties, "_FlipbookEmit", "Flipbook Intensity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawScrollSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        if (!HasProperty(properties, "_ScrollToggle")) return;

        showScroll = DrawFoldoutHeader("Scroll Effect", showScroll, new Color(1f, 0.9f, 0.7f));
        if (!showScroll) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        DrawProperty(editor, properties, "_ScrollToggle", "Enable Scroll");
        DrawTextureProperty(editor, properties, "_ScrollTex", "Scroll Texture");
        DrawTextureProperty(editor, properties, "_ScrollMask", "Scroll Mask");
        DrawProperty(editor, properties, "_ScrollHue", "Scroll Hue");
        DrawProperty(editor, properties, "_ScrollSize", "Scroll Size");
        DrawProperty(editor, properties, "_ScrollOffset", "Scroll Offset");
        DrawProperty(editor, properties, "_ScrollSpeed", "Scroll Speed");
        DrawProperty(editor, properties, "_ScrollRotation", "Scroll Rotation");
        DrawProperty(editor, properties, "_ScrollEmit", "Scroll Intensity");

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    private void DrawAdvancedSection(MaterialEditor editor, MaterialProperty[] properties, ShaderType shaderType)
    {
        showAdvanced = DrawFoldoutHeader("Advanced / Other", showAdvanced);
        if (!showAdvanced) return;

        EditorGUI.indentLevel++;
        EditorGUILayout.Space(5);

        // Render queue
        editor.RenderQueueField();
        
        // GPU Instancing
        editor.EnableInstancingField();
        
        // Double sided GI
        editor.DoubleSidedGIField();

        EditorGUILayout.Space(5);
        
        // Show remaining properties that weren't explicitly drawn
        EditorGUILayout.LabelField("Other Properties", subHeaderStyle);
        
        // List of properties we've already handled
        HashSet<string> handledProperties = new HashSet<string>
        {
            "_Cull", "_Opacity", "_AlphaClipping", "_BaseColor", "_MainTex", "RotationMask",
            "_BaseScrollSpeed", "_BaseRotationCenter", "_BaseRotationSpeed",
            "_VertexColorsToggle", "_VertexColorsOpacity", "_VertexColorsDefineOutlineCoverage",
            "_VertexColorsDefineSilhouetteOutlineCoverage", "_VertexColorsDefineSilhouetteOutlineCoverage1",
            "_DetailTextureToggle", "_DetailTexture", "_DetailTextureUV", "_DetailTextureBlend",
            "_NormalMap", "_NormalMapUV", "_NormalMapIntensity",
            "_Emission", "_EmissionMask", "_EmissionMaskScrollSpeed", "_EmissionHue", "_EmissionEmit", "_EmissionColor",
            "_CustomLightingColorToggle", "_CustomLightingColor", "_CustomShadowColorToggle", "_CustomShadowColor",
            "_ShadowSoftness", "_ShadowIntensity", "_ShadowOffset",
            "_ShadowTextureToggle", "_ShadowTexture", "_ShadowTextureTiling", "_ShadowTextureBlend",
            "_HalftoneShadowToggle", "_HalftoneShadowSoftness", "_HalftoneShadowScale",
            "_ExtraLightToggle", "_ExtraLightOffset", "_ExtraLightSoftness", "_ExtraLightBlend",
            "_SpecularToggle", "_SpecularCustomColorToggle", "_SpecularCustomColor", "_SpecularMask",
            "_SpecularMaskUV", "_SpecularBrightness", "_SpecularSoftness", "_SpecularOffset", "_SpecularPower",
            "_RimLightShadowToggle", "_RimLightColor", "_RimLightBlendBaseTexture", "_RimLightPower",
            "_RimLightOffset", "_RimLightBlend", "_RimShadowPower", "_RimShadowOffset", "_RimShadowOpacity",
            "_OutlineOpacity", "_OutlineuseBaseTextureAlpha", "_OutlineMultiplier", "_OutlineMinSize",
            "_OutlineMaxSize", "_OutlineColor", "_OutlineBlendBaseTexture", "_OutlineTextureToggle",
            "AuraTexture", "OutlineTexture", "_OutlineTextureTiling", "_OutlineTextureScroll",
            "_SilhouetteOutlineOpacity", "_SilhouetteOutlineuseBaseTextureAlpha", "_SilhouetteColor",
            "_SilhouetteTextureToggle", "AuraTexture1", "_SilhouetteTextureTiling", "_SilhouetteTextureScroll",
            "_SilhouetteOverlay", "_SilhouetteOverlayOpacity", "_SilhouetteMultiplier",
            "_SilhouetteMinSize", "_SilhouetteMaxSize", "_SilhouetteRimLightToggle",
            "_SilhouetteRimLightPower", "_SilhouetteRimLightOffset", "_SilhouetteRimLightBlend",
            "_CubemapToggle", "_CubemapTexture", "cubemapmask", "_CubemapBlend", "_CubemapColorize",
            "_CubemapFresnelBias", "_CubemapFresnelScale", "_CubemapFresnelPower",
            "_GlowToggle", "_GlowMask", "_GlowColor", "_GlowCycle", "_GlowSpeed", "_GlowEmit",
            "_FlipbookToggle", "_FlipBookTexture", "_FlipBookMask", "_FlipbookTiling",
            "_FlipbookOffset", "_FlipbookColumns", "_FlipbookRows", "_FlipbookSpeed", "_FlipbookEmit",
            "_ScrollToggle", "_ScrollTex", "_ScrollMask", "_ScrollHue", "_ScrollSize",
            "_ScrollOffset", "_ScrollSpeed", "_ScrollRotation", "_ScrollEmit",
            "_texcoord", "_AddViewDirectionalLight", "_ShadowColor", "_ShadowOutlineThickness",
            "_ShadowOutlineCustomColorToggle", "_ShadowOutlineCustomColor", "_ShadowMask",
            "_RimLightOpacity", "_ShadowTextureSoftness", "_ShadowTextureOffset",
            "_ShadowRimOpacity", "_ShadowRim1Offset", "_ShadowRim2Offset"
        };

        foreach (var prop in properties)
        {
            if (!handledProperties.Contains(prop.name) && 
                (prop.flags & MaterialProperty.PropFlags.HideInInspector) == 0)
            {
                editor.ShaderProperty(prop, prop.displayName);
            }
        }

        EditorGUI.indentLevel--;
        EditorGUILayout.Space(5);
        EndFoldoutSection();
    }

    #endregion
}
