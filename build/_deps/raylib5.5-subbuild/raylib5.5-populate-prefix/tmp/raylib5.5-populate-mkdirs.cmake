# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-src")
  file(MAKE_DIRECTORY "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-src")
endif()
file(MAKE_DIRECTORY
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-build"
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix"
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/tmp"
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp"
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src"
  "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "C:/Users/Saleh/Desktop/DungeonCrawler/build/_deps/raylib5.5-subbuild/raylib5.5-populate-prefix/src/raylib5.5-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
