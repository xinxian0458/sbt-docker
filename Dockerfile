FROM java:openjdk-8-jdk

ENV \
	SBT_VERSION="0.13.9" \
	SBT_HOME="/usr/local/sbt" 

ENV \
	PATH="${PATH}:${SBT_HOME}/bin"

# Install sbt 
RUN \
	curl -sL "http://dl.bintray.com/sbt/native-packages/sbt/$SBT_VERSION/sbt-$SBT_VERSION.tgz" | gunzip | tar -x -C /usr/local \
	&& echo -ne "- with sbt $SBT_VERSION\n" >> /root/.built \
	&& mkdir -p /app
RUN sbt

VOLUME /app

WORKDIR /app
