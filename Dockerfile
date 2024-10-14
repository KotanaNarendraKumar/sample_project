FROM redhat/ubi8-minimal
RUN microdnf install -y java-11-openjdk wget tar gzip && microdnf clean all
ENV JAVA_HOME /usr/lib/jvm/jre-11
WORKDIR /app
COPY ./target/myapp-1.0-SNAPSHOT.jar ./myapp-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "myapp-1.0-SNAPSHOT.jar"]
