
sudo apt-get install openjdk-8-jre

sudo apt-get install openjfx

sudo cp /usr/share/java/openjfx/jre/lib/ext/* /usr/lib/jvm/java-1.8.0-openjdk-amd64/lib

sudo cp /usr/share/java/openjfx/lib/* /usr/lib/jvm/java-1.8.0-openjdk-amd64/lib

sudo chmod 777 -R /usr/lib/jvm/java-1.8.0-openjdk-amd64

# para maven

       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-controls -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-controls</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-graphics -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-graphics</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-base -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-base</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-web -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-web</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-fxml -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-fxml</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-swing -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-swing</artifactId>
           <version>12-ea+6</version>
       </dependency>
       <!-- https://mvnrepository.com/artifact/org.openjfx/javafx-media -->
       <dependency>
           <groupId>org.openjfx</groupId>
           <artifactId>javafx-media</artifactId>
           <version>12-ea+6</version>
       </dependency>