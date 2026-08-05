cmake_minimum_required(VERSION 3.22)

project(path-tracing-cpp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

option(BUILD_TESTING "Build test executable" ON)
# Apple clang ships without OpenMP support; point FindOpenMP at Homebrew's libomp
if(APPLE AND CMAKE_CXX_COMPILER_ID STREQUAL "AppleClang")
    execute_process(COMMAND brew --prefix libomp
                    OUTPUT_VARIABLE LIBOMP_PREFIX OUTPUT_STRIP_TRAILING_WHITESPACE)
    set(OpenMP_C_FLAGS "-Xclang -fopenmp -I${LIBOMP_PREFIX}/include")
    set(OpenMP_CXX_FLAGS "-Xclang -fopenmp -I${LIBOMP_PREFIX}/include")
    set(OpenMP_C_LIB_NAMES omp)
    set(OpenMP_CXX_LIB_NAMES omp)
    set(OpenMP_omp_LIBRARY ${LIBOMP_PREFIX}/lib/libomp.dylib)
endif()

find_package(OpenMP REQUIRED)

# GLFW (Homebrew) pour la fenetre du rendu progressif (render_mode 2)
if(APPLE)
    execute_process(COMMAND brew --prefix glfw
                    OUTPUT_VARIABLE GLFW_PREFIX OUTPUT_STRIP_TRAILING_WHITESPACE)
    list(APPEND CMAKE_PREFIX_PATH "${GLFW_PREFIX}")
endif()

find_package(glfw3 REQUIRED)
find_package(OpenGL REQUIRED)

set(SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}/src")
set(PPM_WRITER_DIR "${CMAKE_CURRENT_SOURCE_DIR}/ppm_writer")
set(TEST_DIR "${CMAKE_CURRENT_SOURCE_DIR}/tests")

file(GLOB_RECURSE CORE_SOURCES CONFIGURE_DEPENDS "${SRC_DIR}/*.cpp" "${PPM_WRITER_DIR}/ppm_writer.cpp")

list(REMOVE_ITEM CORE_SOURCES "${SRC_DIR}/render.cpp")
add_library(pathtracer_core STATIC ${CORE_SOURCES})
target_include_directories(pathtracer_core PUBLIC "${SRC_DIR}" "${PPM_WRITER_DIR}")
target_link_libraries(pathtracer_core PUBLIC OpenMP::OpenMP_CXX)
target_compile_options(pathtracer_core PUBLIC $<$<COMPILE_LANGUAGE:CXX>: -march=native -flto -Wno-deprecated-declarations>)


add_executable(render "${SRC_DIR}/render.cpp")
target_link_libraries(render PRIVATE pathtracer_core)

if(BUILD_TESTING)
  enable_testing()
  file(GLOB_RECURSE TEST_SOURCES CONFIGURE_DEPENDS "${TEST_DIR}/*.cpp")
  add_executable(unit_tests ${TEST_SOURCES})
  target_link_libraries(unit_tests PRIVATE pathtracer_core)
endif()
