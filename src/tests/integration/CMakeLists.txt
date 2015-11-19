get_property(IDYNTREE_TREE_INCLUDE_DIRS GLOBAL PROPERTY IDYNTREE_TREE_INCLUDE_DIRS)

macro(add_integration_test testname)
    set(testsrc ${testname}IntegrationTest.cpp)
    set(testbinary ${testname}IntegrationTest)
    set(testtarget   IntegrationTest${testname})
    add_executable(${testbinary} ${testsrc})
    target_include_directories(${testbinary} PRIVATE ${EIGEN3_INCLUDE_DIR} ${IDYNTREE_TREE_INCLUDE_DIRS})
    target_link_libraries(${testbinary} idyntree-core idyntree-model idyntree-modelio-urdf)
    add_test(NAME ${testtarget} COMMAND ${testbinary})
endmacro()

add_integration_test(Dynamics)