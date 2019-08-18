# scratch-gui

scratch-guiはROS上で動作するturtlebot2をscratch上で動かすためのパッケージです。

![](https://raw.githubusercontent.com/TeamSOBITS/scratch-gui/develop/doc/scratch_ros.PNG)


# Requirement

* OS: Ubuntu 16.04
* ROS distribution: Kinetic Kame  

# Installation
ROS側のインストール方法  
```bash
sudo apt install ros-kinetic-turtlebot-bringup
sudo apt install ros-kinetic-rosbridge-*
```
scratch側のインストール方法
```bash
mkdir scratch
https://github.com/TeamSOBITS/scratch-gui.git
https://github.com/TeamSOBITS/scratch-vm.git
https://github.com/TeamSOBITS/scratch-blocks.git
cd scratch-vm
npm install
npm link
cd ../scratch-blocks
npm install
npm link
cd ../scratch-gui
npm install
npm link scratch-vm scratch-blocks
```
# Usage

```bash
cd ~/scratch/scratch-gui
npm start
http://localhost:8601
```
