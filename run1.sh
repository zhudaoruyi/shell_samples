#!/bin/bash

# w=1280
# h=720

# 同时启动，分号：顺序地独立执行各条命令，不管是否失败
python snapshots.py --video_device 0 --prefix test0 --width ${w} --height ${h} &
python snapshots.py --video_device 1 --prefix test0 --width ${w} --height ${h} &
python snapshots.py --video_device 2 --prefix test0 --width ${w} --height ${h} &
python snapshots.py --video_device 3 --prefix test0 --width ${w} --height ${h}

