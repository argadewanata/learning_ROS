# Install script for directory: /home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_thruster

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE PROGRAM FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE PROGRAM FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/setup.bash;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/setup.bash"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/setup.sh;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/setup.sh"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/setup.zsh;/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/setup.zsh"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/install" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/package_thruster/cmake" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/package_thruster-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/devel/.private/package_thruster/share/roseus/ros/package_thruster")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/devel/.private/package_thruster/lib/python3/dist-packages/package_thruster")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/devel/.private/package_thruster/lib/python3/dist-packages/package_thruster")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/package_thruster.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/package_thruster/cmake" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/package_thruster-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/package_thruster/cmake" TYPE FILE FILES
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/package_thrusterConfig.cmake"
    "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/catkin_generated/installspace/package_thrusterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/package_thruster" TYPE FILE FILES "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/src/package_thruster/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/argadewanata/Documents/Banyubramanta/SAUVC_2022/Belajar_ROS/learningros_ws/build/package_thruster/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")