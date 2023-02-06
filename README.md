> ## Bot Java Template
Template project to start developing RPA automation of desketop applications

[![License](http://img.shields.io/:license-apache-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![issues](https://img.shields.io/github/issues/botcity-dev/bot-java-template)](https://github.com/botcity-dev/bot-java-template/issues)


---
### BotCity Social Media.
[![image](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/company/botcity/mycompany/)
[![image](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/@botcity-dev)
[![image](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/botcitydev)
[![image](https://img.shields.io/badge/Blogger-FF5722?style=for-the-badge&logo=blogger&logoColor=white)](https://blog.botcity.dev/pt-br/)
[![image](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://www.instagram.com/botcity_dev/)
[![image](https://img.shields.io/badge/Slack-4A154B?style=for-the-badge&logo=slack&logoColor=white)](https://botcity.dev/slack)

### Important Links & Docs.
* Please use [Community BotCity](https://community.botcity.dev/) for quick answers to questions.
* Access our Portal [Open Source RPA](https://www.botcity.dev/)
* Access [BotCity Desktop Automation Documentation](https://documentation.botcity.dev/frameworks/desktop/)

### Requirements.
For building and running the application you need:
- [JDK 1.8](https://www.oracle.com/java/technologies/downloads/#java8)
- [Maven 3](https://maven.apache.org)

### Dependencies.
There are a number of third-party dependencies used in the project. Browse the Maven pom.xml file for details of libraries and versions used.

### Quick Start
* Step 1: Import the project into an IDE of your choice (Eclipse, IntelliJ, VSCODE etc...).
* Step 2:Configure the WebDriver in the FirstBotWeb class, see the Doc. [Configuration WebDriver](https://documentation.botcity.dev/frameworks/web/configuration/#__tabbed_2_2)
* Step 3: Run the maven commands below and everything should be working.

```
mvn clean install
mvn compile exec:java -Dexec.mainClass="br.com.main.FirstBot"
```

### Nexus Repository
The dependencies are hosted in our public repository on NEXUS, the code below, which is already in pom.xml, directs to the correct URL, we are working to make them also available on Maven Central
```
<repositories>
    <repository>
        <id>nexus-botcity-public</id>
        <url>https://devtools.botcity.dev:8081/repository/botcity-public/</url>
        <snapshots>
            <enabled>true</enabled>
        </snapshots>
        <releases>
            <enabled>true</enabled>
        </releases>
    </repository>
</repositories>
    
<dependencies>
    <dependency>
        <groupId>org.marvinproject</groupId>
        <artifactId>marvin-framework</artifactId>
        <version>${marvin.version}</version>
    </dependency>
</dependencies>
```

### Generating the application build.
Run **build.bat** on Windows or **build.sh** on Linux or Mac to build the application,
after finishing the build a **dist** directory will be generated with the .jar to
deploy in [BotCity Maestro](https://documentation.botcity.dev/en/maestro/).

### Copyright
Released under the Apache [License](https://www.apache.org/licenses/LICENSE-2.0) 2.0.
