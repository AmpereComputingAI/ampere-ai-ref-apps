<h1 align="center">YOLOv11 demo</h1>

YOLOv11 is a state-of-the-art model that improves upon previous YOLO versions by introducing new features.  It's fast, accurate, and easy to use, making it ideal for object detection and tracking, instance segmentation, image classification and pose estimation tasks.

This demo for Ampere Altra/Max systems runs YOLOv11 object detection and classification ML inference using provided source video and outputs it to your browser at a frame rate matching source video, with bounding boxes showing classification confidence.

<h1 align="center"><img src="https://raw.githubusercontent.com/AmpereComputingAI/images/master/ampere-paris-yolov8.gif" alt="animated" /></p>

## Download the demo repository
```shell
$ git clone https://github.com/AmpereComputingAI/ampere-ai-ref-apps.git
$ cd vision/object-detection/YOLOv11
```


## Install docker
Follow the instructions from this link,
https://docs.docker.com/engine/install/ubuntu/

## Install compose plugin
Follow the instructions from this link,
https://docs.docker.com/compose/install/linux/#install-using-the-repository

## Open the required ports
```shell
$ sudo firewall-cmd --zone public --permanent --add-port 5000-5010/tcp
$ sudo firewall-cmd --reload
```

## Start the demo
Run the following script to start the demo

```shell
$ ./start-yolo-cpu.sh 
[+] Running 2/2
 ✔ Network cont-1_default            Created                                               0.2s 
 ✔ Container cont-1-app-yolo-live-1  Started                                               0.3s
```

```shell
$ docker ps
CONTAINER ID   IMAGE                                                         COMMAND              CREATED         STATUS         PORTS                                       NAMES
5c9f8f2de58b   ghcr.io/amperecomputingai/ampere-ai-ref-apps:yolov11-0.3.10   "python -u app.py"   2 minutes ago   Up 2 minutes   0.0.0.0:5000->5000/tcp, :::5000->5000/tcp   cont-1-app-yolo-live-1
```

Open the Chrome browser and type in the following URL.
```
http://<server-IP>:5000
```

## Stop the demo
Run the following script to stop the demo
```shell
$ ./stop-yolo-cpu.sh
```

## Reference
https://github.com/ultralytics/ultralytics.git
