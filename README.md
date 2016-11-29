# CONFIGURAÇÃO DO AMBIENTE NPD

portal.nead.uem.br/material/grails.tar.gz
```
tar -vzxf grails.tar.gz
cd grails/ggts-bundle/ggts-3.4.6-RELEASE/
chmod 777 GGTS
```

### Baixar Java Ubuntu
```
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer
java -version
```

### Configurar $JAVA_HOME
```
sudo vim /etc/profile
JRE_HOME=/usr/lib/jvm/java-7-oracle
PATH=$JRE_HOME/bin:$PATH
export PATH JAVA_HOME JRE_HOME
CLASSPATH=$JAVA_HOME/lib/tools.jar
CLASSPATH=.$CLASSPATH
export JAVA_HOME PATH CLASSPATH
```

### Baixar Java Fedora
```
cd /usr/lib/jvm
sudo chown -R root:root /usr/lib/jvm/jdk...
java -version

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.7.0_65/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.7.0_65/bin/javac" 1
sudo update-alternatives --config java

nano ~/.bashrc
JRE_HOME=/usr/lib/jvm/jdk1.7.0_65
PATH=$JRE_HOME/bin:$PATH
export PATH JAVA_HOME JRE_HOME
CLASSPATH=$JAVA_HOME/lib/tools.jar
CLASSPATH=.$CLASSPATH
export JAVA_HOME PATH CLASSPATH
```
