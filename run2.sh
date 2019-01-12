#!/bin/bash

source ~/catkin_csi_camera/devel/setup.bash

# 先后启动, 命令1 && 命令2 , 如果命令1正确执行，则命令2才会执行，如果命令1执行不正确，则命令2不会执行
roslaunch jetson_csi_cam jetson_csi_cam.launch camera_id:=0 width:=1280 height:=720 ;  # 启动后不管运行失败与否，继续往下执行
sleep 2s &&  # 启动后必须运行成功，才能继续往下执行
roslaunch jetson_csi_cam jetson_csi_cam.launch camera_id:=0 width:=1280 height:=720 ;
sleep 2s &&
roslaunch jetson_csi_cam jetson_csi_cam.launch camera_id:=0 width:=1280 height:=720 ;
sleep 2s &&
roslaunch jetson_csi_cam jetson_csi_cam.launch camera_id:=0 width:=1280 height:=720

