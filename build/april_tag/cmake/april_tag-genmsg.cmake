# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "april_tag: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iapril_tag:/home/nb950/catkin_ws/src/april_tag/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(april_tag_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_custom_target(_april_tag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "april_tag" "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" "april_tag/AprilTag"
)

get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_custom_target(_april_tag_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "april_tag" "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/april_tag
)
_generate_msg_cpp(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/april_tag
)

### Generating Services

### Generating Module File
_generate_module_cpp(april_tag
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/april_tag
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(april_tag_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(april_tag_generate_messages april_tag_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_cpp _april_tag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_cpp _april_tag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(april_tag_gencpp)
add_dependencies(april_tag_gencpp april_tag_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS april_tag_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/april_tag
)
_generate_msg_eus(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/april_tag
)

### Generating Services

### Generating Module File
_generate_module_eus(april_tag
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/april_tag
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(april_tag_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(april_tag_generate_messages april_tag_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_eus _april_tag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_eus _april_tag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(april_tag_geneus)
add_dependencies(april_tag_geneus april_tag_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS april_tag_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/april_tag
)
_generate_msg_lisp(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/april_tag
)

### Generating Services

### Generating Module File
_generate_module_lisp(april_tag
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/april_tag
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(april_tag_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(april_tag_generate_messages april_tag_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_lisp _april_tag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_lisp _april_tag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(april_tag_genlisp)
add_dependencies(april_tag_genlisp april_tag_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS april_tag_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/april_tag
)
_generate_msg_nodejs(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/april_tag
)

### Generating Services

### Generating Module File
_generate_module_nodejs(april_tag
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/april_tag
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(april_tag_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(april_tag_generate_messages april_tag_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_nodejs _april_tag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_nodejs _april_tag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(april_tag_gennodejs)
add_dependencies(april_tag_gennodejs april_tag_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS april_tag_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg"
  "${MSG_I_FLAGS}"
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag
)
_generate_msg_py(april_tag
  "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag
)

### Generating Services

### Generating Module File
_generate_module_py(april_tag
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(april_tag_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(april_tag_generate_messages april_tag_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTagList.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_py _april_tag_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nb950/catkin_ws/src/april_tag/msg/AprilTag.msg" NAME_WE)
add_dependencies(april_tag_generate_messages_py _april_tag_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(april_tag_genpy)
add_dependencies(april_tag_genpy april_tag_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS april_tag_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/april_tag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/april_tag
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(april_tag_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/april_tag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/april_tag
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(april_tag_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/april_tag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/april_tag
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(april_tag_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/april_tag)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/april_tag
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(april_tag_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/april_tag
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(april_tag_generate_messages_py sensor_msgs_generate_messages_py)
endif()
