# Bebop Fun Stuff


## Make:

```bash
catkin_make #--pkg april_tag bebop_autonomy bebop_drive 
source devel/setup.bash
```

## Running april tag node:

```bash
roslaunch april_tag april_tag_kinect.launch
```
## Running april tag subsriber

```bash
rosrun april_tag april_tab_sub
```

## Running bebop node:

```bash
roslaunch bebop_driver bebop_node.launch
```
## Running bebop drive

```bash
rosrun bebop_drive [executable name]
```

## Running bebop camera node
```bash
rosrun april_tag april_tag_still
```
