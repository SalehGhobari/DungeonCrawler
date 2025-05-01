#Setting the minimum cmake version (I currently have 3.31.5)
cmake_minimum_required(VERSION 3.28)

include(FetchContent)
#Use the c++17 standard and make it required
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#define a variable for the src directory variables are used via ${varname}
set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(INC_DIR ${CMAKE_SOURCE_DIR}/include)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/lib)



#Set project name and description IDK what the description is for bruh
project(DungeonCrawler DESCRIPTION "goofy ahh game" LANGUAGES CXX)

FetchContent_Declare(
	Raylib5.5
	GIT_REPOSITORY https://github.com/raysan5/raylib
	GIT_TAG c1ab645ca298a2801097931d1079b10ff7eb9df8
)

FetchContent_MakeAvailable(Raylib5.5)


#I copy-pasted stuff from the raylib github repo idfk this shit is dark magic (I assume this is only for windows will fuck around and find out later)
include_directories(${INC_DIR})
link_directories(${LIB_DIR})

add_executable(${PROJECT_NAME} ${SRC_DIR}/main.cpp)

#include winmm and raylib 
target_link_libraries(${PROJECT_NAME} raylib)

file(STRINGS /etc/os-release linuxDistroInfo)
list(GET linuxDistroInfo 5 distroName)
string(SUBSTRING distroName 3 -1 distroName)

if (WIN32)
    # Windows-specific libraries
target_link_libraries(${PROJECT_NAME} winmm)

elseif(UNIX AND distroName STREQUAL "arch")
    find_package(OpenGL REQUIRED)
    find_package(ALSA REQUIRED)
    find_package(X11 REQUIRED)
    find_package(XRandR REQUIRED)
    find_package(Xi REQUIRED)
    find_package(XCursor REQUIRED)
    find_package(Xinerama REQUIRED)
    find_package(Wayland REQUIRED)
    find_package(XKBCommon REQUIRED)
    
    target_link_libraries(${PROJECT_NAME}
        ${OPENGL_LIBRARIES}
        ${ALSA_LIBRARIES}
        ${X11_LIBRARIES}
        ${XRANDR_LIBRARIES}
        ${XI_LIBRARIES}
        ${XCURSOR_LIBRARIES}
        ${XINERAMA_LIBRARIES}
        ${WAYLAND_LIBRARIES}
        ${XKBCOMMON_LIBRARIES}
        m pthread dl rt
    )
    target_link_libraries(${PROJECT_NAME} GL m pthread dl rt X11)
elseif(UNIX AND distroName STREQUAL "debian")
    find_package(OpenGL REQUIRED)
    find_package(ALSA REQUIRED)
    find_package(X11 REQUIRED)
    find_package(XRandR REQUIRED)
    find_package(Xi REQUIRED)
    find_package(XCursor REQUIRED)
    find_package(Xinerama REQUIRED)
    find_package(Wayland REQUIRED)
    find_package(XKBCommon REQUIRED)
    target_link_libraries(${PROJECT_NAME}
        ${OPENGL_LIBRARIES}
        ${ALSA_LIBRARIES}
        ${X11_LIBRARIES}
        ${XRANDR_LIBRARIES}
        ${XI_LIBRARIES}
        ${XCURSOR_LIBRARIES}
        ${XINERAMA_LIBRARIES}
        ${WAYLAND_LIBRARIES}
        ${XKBCOMMON_LIBRARIES}
        m pthread dl rt
    )
endif()
