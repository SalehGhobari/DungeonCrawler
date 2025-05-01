# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-src"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-build"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/tmp"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src"
  "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/mnt/c/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
