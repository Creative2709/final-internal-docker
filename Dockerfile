From openjdk:8
COPY . src/java
WORKDIR /src/java
RUN ["javac", "Javaapp.java"]
ENTRYPOINT ["java", "Javaapp"]