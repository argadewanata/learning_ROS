# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "package_tiga: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipackage_tiga:/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg;-Ipackage_tiga:/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(package_tiga_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_custom_target(_package_tiga_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "package_tiga" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" ""
)

get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_custom_target(_package_tiga_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "package_tiga" "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_tiga
)
_generate_msg_cpp(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_tiga
)

### Generating Services

### Generating Module File
_generate_module_cpp(package_tiga
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_tiga
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(package_tiga_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(package_tiga_generate_messages package_tiga_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_cpp _package_tiga_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_cpp _package_tiga_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_tiga_gencpp)
add_dependencies(package_tiga_gencpp package_tiga_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_tiga_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_tiga
)
_generate_msg_eus(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_tiga
)

### Generating Services

### Generating Module File
_generate_module_eus(package_tiga
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_tiga
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(package_tiga_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(package_tiga_generate_messages package_tiga_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_eus _package_tiga_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_eus _package_tiga_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_tiga_geneus)
add_dependencies(package_tiga_geneus package_tiga_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_tiga_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_tiga
)
_generate_msg_lisp(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_tiga
)

### Generating Services

### Generating Module File
_generate_module_lisp(package_tiga
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_tiga
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(package_tiga_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(package_tiga_generate_messages package_tiga_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_lisp _package_tiga_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_lisp _package_tiga_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_tiga_genlisp)
add_dependencies(package_tiga_genlisp package_tiga_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_tiga_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_tiga
)
_generate_msg_nodejs(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_tiga
)

### Generating Services

### Generating Module File
_generate_module_nodejs(package_tiga
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_tiga
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(package_tiga_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(package_tiga_generate_messages package_tiga_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_nodejs _package_tiga_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_nodejs _package_tiga_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_tiga_gennodejs)
add_dependencies(package_tiga_gennodejs package_tiga_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_tiga_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga
)
_generate_msg_py(package_tiga
  "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga
)

### Generating Services

### Generating Module File
_generate_module_py(package_tiga
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(package_tiga_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(package_tiga_generate_messages package_tiga_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick_pos.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_py _package_tiga_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_tiga/msg/joystick.msg" NAME_WE)
add_dependencies(package_tiga_generate_messages_py _package_tiga_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_tiga_genpy)
add_dependencies(package_tiga_genpy package_tiga_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_tiga_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_tiga)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package_tiga
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET package_tiga_generate_messages_cpp)
  add_dependencies(package_tiga_generate_messages_cpp package_tiga_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_tiga)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package_tiga
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET package_tiga_generate_messages_eus)
  add_dependencies(package_tiga_generate_messages_eus package_tiga_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_tiga)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package_tiga
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET package_tiga_generate_messages_lisp)
  add_dependencies(package_tiga_generate_messages_lisp package_tiga_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_tiga)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package_tiga
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET package_tiga_generate_messages_nodejs)
  add_dependencies(package_tiga_generate_messages_nodejs package_tiga_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package_tiga
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET package_tiga_generate_messages_py)
  add_dependencies(package_tiga_generate_messages_py package_tiga_generate_messages_py)
endif()
