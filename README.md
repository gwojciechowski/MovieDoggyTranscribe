# MovieDoggyTranscribe (PL)

An application to create your own movie library. Add videos to your database and manage them! Determine their status, check who saw them too! The application uses an external API that allows you to download selected information collected throug the service FilmWeb.

### Screenshots:
![Screen](https://raw.githubusercontent.com/gwojciechowski/MovieDoggyTranscribe/master/src/main/resources/screen.jpg)

![Screen2](https://raw.githubusercontent.com/gwojciechowski/MovieDoggyTranscribe/master/src/main/resources/screen2.jpg)


### Technology:
  - Java FX
  - Spring Framework
  - SQLite
  - FilmWebAPI (https://bitbucket.org/varabi/filmweb-api)

### Installation
##### Prerequisities

* Maven 3,  
* Java >= 8.0 (JDK 1.8)

##### Deployment

In your terminal, go to the root directory of the project and type
```sh
mvn clean install
```
##### Running

Go to MovieDoggyTranscribe/target and run jar file with command
```sh
java -jar MovieDoggyTranscribe-1.0.jar
```
Of course you can set the Run/Debug Configuration in your IDE. For example (Intellij)
* MainClass: app.moviedoggytranscribe.MainView,
* WorkingDirectory: $PATH/MovieDoggyTranscribe
* Use classpath of module: MovieDoggyTranscribe

With clone you get a sample database file

License
----
MovieDoggyTranscribe is free software released under the MIT License.  

