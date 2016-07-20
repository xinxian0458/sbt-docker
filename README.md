# sbt-docker
The docker image for sbt environment

To use this container to compile your application
```bash
docker run -ti --rm -v "<your_project_dir>:/app" jiezhang/sbt sbt clean compile
```

For Example, to compile cosmos, you can run 
```bash
cd cosmos
docker run -v $PWD:/app --rm=true jiezhang/sbt:0.13.9 sbt clean one-jar
```
