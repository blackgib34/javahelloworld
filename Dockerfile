FROM java:7
COPY src /root/javahelloworld/src
WORKDIR /root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENV FOO bar
RUN mkdir bin2
RUN apt-get install  wget
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
