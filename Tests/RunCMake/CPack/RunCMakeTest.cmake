cmake_minimum_required(VERSION 3.1 FATAL_ERROR)

include(RunCMake)
include("${RunCMake_SOURCE_DIR}/CPackTestHelpers.cmake")

# args: TEST_NAME "GENERATORS" RUN_CMAKE_BUILD_STEP
run_cpack_test(MINIMAL "RPM;DEB;TGZ" false)
run_cpack_source_test(SOURCE_PACKAGE "RPM" true)
run_cpack_test(PARTIALLY_RELOCATABLE_WARNING "RPM" false)
run_cpack_test(DEB_EXTRA "DEB" false)
run_cpack_test(DEPENDENCIES "RPM;DEB" true)
run_cpack_test(EMPTY_DIR "RPM;DEB;TGZ" true)
run_cpack_test(COMPONENTS_EMPTY_DIR "RPM;DEB;TGZ" true)
run_cpack_test(CUSTOM_NAMES "RPM;DEB" true)
run_cpack_test_subtests(MAIN_COMPONENT "invalid;found" "RPM" false)
run_cpack_test(PER_COMPONENT_FIELDS "RPM;DEB" false)
run_cpack_test(RPM_DIST "RPM" false)
run_cpack_test(INSTALL_SCRIPTS "RPM" false)
run_cpack_test(DEB_GENERATE_SHLIBS "DEB" true)
run_cpack_test(DEB_GENERATE_SHLIBS_LDCONFIG "DEB" true)
run_cpack_test(DEBUGINFO "RPM" true)
run_cpack_test_subtests(SINGLE_DEBUGINFO "no_main_component;one_component;one_component_main;no_debuginfo;one_component_no_debuginfo;no_components;valid" "RPM" true)
run_cpack_test(LONG_FILENAMES "DEB" false)
run_cpack_test_subtests(PACKAGE_CHECKSUM "invalid;MD5;SHA1;SHA224;SHA256;SHA384;SHA512" "TGZ" false)
