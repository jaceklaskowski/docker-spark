## Rationale

Despite the other Docker images for Apache Spark on Docker Hub, the point of this image is to create one myself and learn Apache Spark and Docker better by doing.

As a matter of fact, this image gonna rule the world!

## Steps to build and run

Build the image as follows:

```
$ docker build --rm -t jaceklaskowski/spark:1.6.1 .
```

Run the image under `spark` hostname.

```
docker run --rm -ti -h spark --name=spark jaceklaskowski/spark:1.6.1
```

## Software Versions

```
spark@spark:~$ spark-shell --version
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 1.6.1
      /_/

Type --help for more information.
```

```
spark@spark:~$ java -version
openjdk version "1.8.0_72-internal"
OpenJDK Runtime Environment (build 1.8.0_72-internal-b15)
OpenJDK 64-Bit Server VM (build 25.72-b15, mixed mode)
```

```
spark@spark:~$ sbt about
[info] Set current project to spark (in build file:/home/spark/)
[info] This is sbt 0.13.11
[info] The current project is {file:/home/spark/}spark 0.1-SNAPSHOT
[info] The current project is built against Scala 2.10.6
[info] Available Plugins: sbt.plugins.IvyPlugin, sbt.plugins.JvmPlugin, sbt.plugins.CorePlugin, sbt.plugins.JUnitXmlReportPlugin
[info] sbt, sbt plugins, and build definitions are using Scala 2.10.6
```

## How to Manage the Image and Containers on Mac OS

```
$ docker-machine version
docker-machine version 0.7.0, build a650a40

$ docker-machine start

$ eval "$(docker-machine env)"

$ docker version
Client:
 Version:      1.11.0
 API version:  1.23
 Go version:   go1.6.1
 Git commit:   4dc5990
 Built:        Thu Apr 14 00:24:28 UTC 2016
 OS/Arch:      darwin/amd64

Server:
 Version:      1.11.0
 API version:  1.23
 Go version:   go1.5.4
 Git commit:   4dc5990
 Built:        Wed Apr 13 19:36:04 2016
 OS/Arch:      linux/amd64

$ docker build --rm -t jaceklaskowski/spark:1.6.1 .

$ docker run --rm -ti -p 4040:4040 -p 8080:8080 -v "$PWD:/home/spark/workspace" -v "$HOME/.ivy2":/home/spark/.ivy2 -h spark --name=spark jaceklaskowski/spark:1.6.1

// Access web UI
$ open http://192.168.99.100:4040

// Access standalone Master's web UI
$ open http://192.168.99.100:8080

// remove the image after you have done
$ docker rmi jaceklaskowski/spark:1.6.1

// clean up stopped containers
$ docker rm $(docker ps -aq)
```
