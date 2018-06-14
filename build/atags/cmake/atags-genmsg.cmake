# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "atags: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iatags:/home/nb950/catkin_ws/src/atags/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(atags_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_custom_target(_atags_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atags" "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" ""
)

get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_custom_target(_atags_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "atags" "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" "atags/AprilTag"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atags
)
_generate_msg_cpp(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atags
)

### Generating Services

### Generating Module File
_generate_module_cpp(atags
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atags
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(atags_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(atags_generate_messages atags_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_dependencies(atags_generate_messages_cpp _atags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_dependencies(atags_generate_messages_cpp _atags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atags_gencpp)
add_dependencies(atags_gencpp atags_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atags_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atags
)
_generate_msg_eus(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atags
)

### Generating Services

### Generating Module File
_generate_module_eus(atags
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atags
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(atags_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(atags_generate_messages atags_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_dependencies(atags_generate_messages_eus _atags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_dependencies(atags_generate_messages_eus _atags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atags_geneus)
add_dependencies(atags_geneus atags_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atags_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atags
)
_generate_msg_lisp(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atags
)

### Generating Services

### Generating Module File
_generate_module_lisp(atags
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atags
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(atags_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(atags_generate_messages atags_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_dependencies(atags_generate_messages_lisp _atags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_dependencies(atags_generate_messages_lisp _atags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atags_genlisp)
add_dependencies(atags_genlisp atags_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atags_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atags
)
_generate_msg_nodejs(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atags
)

### Generating Services

### Generating Module File
_generate_module_nodejs(atags
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atags
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(atags_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(atags_generate_messages atags_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_dependencies(atags_generate_messages_nodejs _atags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_dependencies(atags_generate_messages_nodejs _atags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atags_gennodejs)
add_dependencies(atags_gennodejs atags_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atags_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags
)
_generate_msg_py(atags
  "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags
)

### Generating Services

### Generating Module File
_generate_module_py(atags
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(atags_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(atags_generate_messages atags_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTag.msg" NAME_WE)
add_dependencies(atags_generate_messages_py _atags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/atags/msg/AprilTagList.msg" NAME_WE)
add_dependencies(atags_generate_messages_py _atags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(atags_genpy)
add_dependencies(atags_genpy atags_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS atags_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/atags
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(atags_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/atags
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(atags_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/atags
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(atags_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/atags
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(atags_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/atags
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(atags_generate_messages_py sensor_msgs_generate_messages_py)
endif()
