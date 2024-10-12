FROM redhad/ubi8-minimal
RUN microdnf install -y java-11-openjdk wget tar gzip && microdnf clean all
ENV JAVA_HOME /usr/lib/java/jre-11
WORKDIR /app
COPY ./target/helloworld-1.0-SNAPSHOT.jar ./helloworld-1.0-SANPSHOT.jar
CMD ["java", "-jar", "helloworld-1.0-SNAPSHOT.jar"]
