!define MUI_WELCOMEPAGE_TEXT "\
This is an Enhancement Pack for CONTROL Resonant, which includes some graphics enhancements and quality of life mods, while keeping a vanilla experience. It includes:$\r$\n\
- Dynamic HUD (by SLEEP)$\r$\n\
- Head Size Slider v0.5 (by alexanderhawkins)$\r$\n\
- MapFusion v1.2.2 (by kkyleeb21) for enhancing map functionality$\r$\n\
- NoIntro Fix v0.2 (by Gametism)$\r$\n\
- PhotoMode (by kkyleeb21)$\r$\n\
- Ultrawide Fix v1.3.0 (by SLEEP)$\r$\n\
$\r$\n\
${TXT_WELCOMEPAGE_MULDERLAND_3}"

!include "..\..\includes\templates\SelectTemplate.nsh"
!include "..\..\includes\tools\7z.nsh"

Name "CONTROL Resonant [Enhancement Pack]"

SectionGroup "Required dependencies"
    Section "DLL Mod Loader v1.0.0 (by fame2gin)"
        SetOutPath "$INSTDIR"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/9?tab=files&file_id=10" \
                                "CONTROL_Resonant_loader 1.0.0 9 1.0.0 2026-09-24T19-19Z SEDl9mA5X.zip" \
                                "bc1085a9d457c4ab5008e8b80330c89a840934b6"

        !insertmacro NSISUNZ_EXTRACT "CONTROL_Resonant_loader 1.0.0 9 1.0.0 2026-09-24T19-19Z SEDl9mA5X.zip" ".\" "AUTO_DELETE"
        AddSize 56
        !insertmacro FORCE_RENAME "winmm.dll" "winmmHooked.dll"
    SectionEnd

    Section "Mod Settings Menu v1.4.0 (by kkyleeb21)"
        SetOutPath "$INSTDIR"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/35?tab=files&file_id=197" \
                                "ModMenu 1.4.0 35 1.4.0 2026-09-29T05-08Z Lb8AWKtyP.zip" \
                                "831d17f3f559f5071a3f6ddddddb6edab094a480"

        !insertmacro NSISUNZ_EXTRACT "ModMenu 1.4.0 35 1.4.0 2026-09-29T05-08Z Lb8AWKtyP.zip" ".\" "AUTO_DELETE"
        AddSize 779
    SectionEnd

    Section "Ultimate ASI Loader v9.7.4 (by ThirteenAG)"
        SetOutPath "$INSTDIR"

        !insertmacro DOWNLOAD_2 "https://github.com/ThirteenAG/Ultimate-ASI-Loader/releases/download/v9.7.4/Ultimate-ASI-Loader_x64.zip" \
                                "https://cdn.mulderload.eu/tools/ultimate-asi-loader/Ultimate-ASI-Loader-v9.7.4_x64.zip" \
                                "Ultimate-ASI-Loader.zip" \
                                "8272d83b2692662098746f2d0ad0e2d85f3c8358ab1d63f75fbe835c2c8135fd"

        !insertmacro NSISUNZ_EXTRACT "Ultimate-ASI-Loader.zip" ".\" "AUTO_DELETE"
        !insertmacro FORCE_RENAME "dinput8.dll" "winmm.dll"
        AddSize 5292
    SectionEnd
SectionGroupEnd

SectionGroup /e "Graphics Enhancements"
    Section "Head Size Slider v0.5 (by alexanderhawkins)"
        SetOutPath "$INSTDIR"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/47?tab=files&file_id=124" \
                                "Head Size Slider V0.5 47 0.5 2026-09-27T15-10Z 8TbVJ6xxo.zip" \
                                "d344d380e6514c0eea379c7d54dd13bb1670e94c"

        !insertmacro NSISUNZ_EXTRACT "Head Size Slider V0.5 47 0.5 2026-09-27T15-10Z 8TbVJ6xxo.zip" ".\" "AUTO_DELETE"
        AddSize 3063
    SectionEnd

    Section /o "Ultrawide Fix v1.3.0 (by SLEEP)"
        SetOutPath "$INSTDIR\scripts"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/11?tab=files&file_id=55" \
                                "UltrawideFix 1.3.0 11 1.3.0 2026-09-26T09-53Z pZRs05yt7.zip" \
                                "14d2632a3ac6770ae04ae35699e9ea731be32ecd"

        !insertmacro NSISUNZ_EXTRACT "UltrawideFix 1.3.0 11 1.3.0 2026-09-26T09-53Z pZRs05yt7.zip" ".\" "AUTO_DELETE"
        AddSize 213
    SectionEnd
SectionGroupEnd

SectionGroup /e "Quality of Life"
    Section "MapFusion v1.2.2 (by kkyleeb21)"
        SetOutPath "$INSTDIR"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/37?tab=files&file_id=156" \
                                "MapFusion 1.2.2 37 1.2.2 2026-09-28T09-46Z pZRs05yrQ.zip" \
                                "0a5f6de3373d8c969624520dd9902580e2410392"

        !insertmacro NSISUNZ_EXTRACT "MapFusion 1.2.2 37 1.2.2 2026-09-28T09-46Z pZRs05yrQ.zip" ".\" "AUTO_DELETE"
        AddSize 396
    SectionEnd

    Section /o "No-Intro v0.2 (by Gametism)"
        SetOutPath "$INSTDIR\scripts"

        !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/1?tab=files&file_id=26" \
                                "CRNo-IntroFix-v.0.2 1 0.2 2026-09-25T13-11Z g4qMrXDls.zip" \
                                "955dacee7c5476cb04c8b3bee8c6f7b2bb4424df"

        !insertmacro NSISUNZ_EXTRACT_ONE "CRNo-IntroFix-v.0.2 1 0.2 2026-09-25T13-11Z g4qMrXDls.zip" ".\" "ControlResonantNoIntro.asi" "AUTO_DELETE"
        AddSize 32
    SectionEnd
SectionGroupEnd

Section "Dynamic HUD v1.1.3 (by SLEEP)"
    SetOutPath "$INSTDIR"

    !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/28?tab=files&file_id=161" \
                            "Dynamic HUD - F2G 28 1.3.0 2026-09-28T11-59Z 259wehq3F.zip" \
                            "5057f269f020a3ed8644066ee442906094d99baa"

    !insertmacro NSISUNZ_EXTRACT "Dynamic HUD - F2G 28 1.3.0 2026-09-28T11-59Z 259wehq3F.zip" ".\" "AUTO_DELETE"
    AddSize 321
SectionEnd

Section "PhotoMode v2.0.0 (by kkyleeb21)"
    SetOutPath "$INSTDIR"

    !insertmacro DOWNLOAD_1 "https://www.nexusmods.com/controlresonant/mods/62?tab=files&file_id=157" \
                            "PhotoMode 2.0.0 62 2.0.0 2026-09-28T09-57Z nCd1oWYET.zip" \
                            "5cd30ad5e6a3c710152929e52bee21a74099ad44"

    !insertmacro NSISUNZ_EXTRACT "PhotoMode 2.0.0 62 2.0.0 2026-09-28T09-57Z nCd1oWYET.zip" ".\" "AUTO_DELETE"
    AddSize 1354
SectionEnd

; Section "Better Camera - Zoom and FO (by PewCat)"
    ; https://www.nexusmods.com/controlresonant/mods/41
; SectionEnd

Function .onInit
    StrCpy $SELECT_FILENAME "CONTROLResonant.exe"
    StrCpy $SELECT_STEAM_FOLDER "CONTROL Resonant"
FunctionEnd
