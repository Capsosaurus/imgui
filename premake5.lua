project "imgui"
	kind "StaticLib"
	language "C++"

	staticruntime "Off"
	
	targetdir (OutTargetDir)
	objdir (OutObjDir)

	files
	{
		"imconfig.h",
		"imgui.h",
        "imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",
		"imgui_demo.cpp"
	}
	

	filter "system:windows"
		cppdialect "C++11"

		systemversion "latest"

			
		filter "configurations:Debug"
			optimize "On"
			runtime "Debug"

		filter "configurations:Release"
			optimize "On"
			runtime "Release"

		filter "configurations:Dist"
			optimize "On"
runtime "Release"