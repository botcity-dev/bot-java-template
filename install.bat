call mvn install:install-file -Dfile=lib/botcity-framework-core-1.3.1.jar -DgroupId=dev.botcity -DartifactId=botcity-framework-core -Dversion=1.3.1 -Dpackaging=jar
call mvn install:install-file -Dfile=lib/marvin-framework-2.0.jar -DgroupId=org.marvinproject -DartifactId=MarvinFramework -Dversion=2.0 -Dpackaging=jar
call mvn install:install-file -Dfile=lib/marvin-plugins-2.0.jar -DgroupId=org.marvinproject -DartifactId=MarvinPlugins -Dversion=2.0 -Dpackaging=jar
call mvn install:install-file -Dfile=lib/BotChromeSDK.jar -DgroupId=dev.botcity -DartifactId=BotChromeSDK -Dversion=1.0 -Dpackaging=jar
call mvn install:install-file -Dfile=lib/maestro-sdk-1.2.0.jar -DgroupId=dev.botcity -DartifactId=maestro-sdk -Dversion=1.2.0 -Dpackaging=jar