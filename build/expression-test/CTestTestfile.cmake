# CMake generated Testfile for 
# Source directory: C:/Repos/dandan/maplibre-native/expression-test
# Build directory: C:/Repos/dandan/maplibre-native/build/expression-test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test([=[mbgl-expression-test]=] "C:/Repos/dandan/maplibre-native/build/expression-test/Debug/mbgl-expression-test.exe" "-s" "--seed=14430")
  set_tests_properties([=[mbgl-expression-test]=] PROPERTIES  WORKING_DIRECTORY "C:/Repos/dandan/maplibre-native" _BACKTRACE_TRIPLES "C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;33;add_test;C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test([=[mbgl-expression-test]=] "C:/Repos/dandan/maplibre-native/build/expression-test/Release/mbgl-expression-test.exe" "-s" "--seed=14430")
  set_tests_properties([=[mbgl-expression-test]=] PROPERTIES  WORKING_DIRECTORY "C:/Repos/dandan/maplibre-native" _BACKTRACE_TRIPLES "C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;33;add_test;C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test([=[mbgl-expression-test]=] "C:/Repos/dandan/maplibre-native/build/expression-test/MinSizeRel/mbgl-expression-test.exe" "-s" "--seed=14430")
  set_tests_properties([=[mbgl-expression-test]=] PROPERTIES  WORKING_DIRECTORY "C:/Repos/dandan/maplibre-native" _BACKTRACE_TRIPLES "C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;33;add_test;C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test([=[mbgl-expression-test]=] "C:/Repos/dandan/maplibre-native/build/expression-test/RelWithDebInfo/mbgl-expression-test.exe" "-s" "--seed=14430")
  set_tests_properties([=[mbgl-expression-test]=] PROPERTIES  WORKING_DIRECTORY "C:/Repos/dandan/maplibre-native" _BACKTRACE_TRIPLES "C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;33;add_test;C:/Repos/dandan/maplibre-native/expression-test/CMakeLists.txt;0;")
else()
  add_test([=[mbgl-expression-test]=] NOT_AVAILABLE)
endif()
