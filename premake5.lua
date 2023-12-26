workspace "Skuld"
    architecture "x64"
    startproject "Sandbox"

    configurations
    {
        "Debug",
        "Release"
    }
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
IncludeDir = {}

project "Skuld"
    location "Skuld"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    pchheader "skpch.h"
    pchsource "Skuld/src/skpch.cpp"

    files
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs
    {
        "%{prj.name}/src"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
            "SKULD_PLATFORM_WINDOWS"
        }
    
    filter "configurations:Debug"
        defines
        {
            "SKULD_DEBUG"
        }
        runtime "Debug"
        symbols "on"
    filter "configurations:Release"
        defines
        {
            "SKULD_RELEASE"
        }
        runtime "Release"
        optimize "on"

project "Sandbox"
    location "Sandbox"
    kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{prj.name}/src/**.h",
        "%{prj.name}/src/**.cpp"
    }

    includedirs
    {
        "%{prj.name}/src",
        "Skuld/src"
    }

    links
    {
        "Skuld"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
            "SKULD_PLATFORM_WINDOWS"
        }
    
    filter "configurations:Debug"
        defines
        {
            "SKULD_DEBUG"
        }
        runtime "Debug"
        symbols "on"
    filter "configurations:Release"
        defines
        {
            "SKULD_RELEASE"
        }
        runtime "Release"
        optimize "on"