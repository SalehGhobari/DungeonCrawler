#Setting the minimum cmake version (I currently have 3.31.5)
cmake_minimum_required(VERSION 3.31)

#Use the c++17 standard and make it required
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#define a variable for the src directory variables are used via ${varname}
set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(INC_DIR ${CMAKE_SOURCE_DIR}/include)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/lib)



#Set project name and description IDK what the description is for bruh
project(DungeonCrawler DESCRIPTION "goofy ahh game" LANGUAGES CXX)

#I copy-pasted stuff from the raylib github repo idfk this shit is dark magic (I assume this is only for windows will fuck around and find out later)
include_directories(${INC_DIR})
link_directories(${LIB_DIR})

add_executable(${PROJECT_NAME} ${SRC_DIR}/main.cpp)

#include winmm and raylib 
target_link_libraries(${PROJECT_NAME} raylib winmm)