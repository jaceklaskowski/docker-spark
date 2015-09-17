## Rationale

Despite the other Docker images for Apache Spark on Docker Hub, the point of this image is to create one myself and learn Apache Spark and Docker better by doing.

In fact, this image is gonna rule the world!

## Steps to build and run

Build the image as follows:

```
$ docker build -t deepsenseio/spark .
```

Run the image under `spark` hostname.

```
docker run --rm -ti -h spark --name=spark deepsenseio/spark
```

## Software Versions

```
root@spark:/usr/local# /usr/local/spark/bin/spark-shell --version
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /___/ .__/\_,_/_/ /_/\_\   version 1.5.0
      /_/

Type --help for more information.
```

```
root@spark:/usr/local# java -version
java version "1.7.0_79"
OpenJDK Runtime Environment (IcedTea 2.5.6) (7u79-2.5.6-0ubuntu1.14.04.1)
OpenJDK 64-Bit Server VM (build 24.79-b02, mixed mode)
```
