<h1 align="center">Whisper demo</h1>

## Download the demo repository
```shell
$ git clone https://github.com/AmpereComputingAI/ampere-ai-ref-apps.git
$ cd audio/automatic-speech-recognition/whisper
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
$ ./start-whisper-cpu.sh 
[+] Running 2/2
 ⠿ Network cont-1_default          Created                                               0.1s
 ⠿ Container cont-1-app-whisper-1  Started                                               0.5s
```

```docker
$ docker ps
CONTAINER ID   IMAGE                                                 COMMAND                  CREATED         STATUS         PORTS                                       NAMES
781069cbd110   ampere-ai-ref-apps:whisper-0.1                        "python -u app.py"       2 minutes ago   Up 2 minutes   0.0.0.0:5001->5001/tcp, :::5001->5001/tcp   cont-1-app-whisper-1
```

Open the Chrome browser and type in the following URL.
```
http://<server-IP>:5001
```

## Stop the demo
Run the following script to stop the demo
```shell
$ ./stop-whisper-cpu.sh
```

## Reference
https://github.com/ultralytics/ultralytics.git
