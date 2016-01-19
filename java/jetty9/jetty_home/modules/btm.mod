#
# Jetty Module for Bitronix Transaction Manager
#

[name]
btm

[xml]
etc/btm.xml

[depend]
resources

[lib]
lib/btm/*.jar

[files]
http://central.maven.org/maven2/org/codehaus/btm/btm/2.1.4/btm-2.1.4.jar|lib/btm/btm-2.1.4.jar
http://central.maven.org/maven2/javax/resource/connector-api/1.6-alpha-1/connector-api-1.6-alpha-1.jar|lib/btm/connector-api-1.6-alpha-1.jar
http://central.maven.org/maven2/javax/transaction/jta/1.1/jta-1.1.jar|lib/btm/jta-1.1.jar
http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.38/mysql-connector-java-5.1.38.jar|lib/btm/mysql-connector-java-5.1.38.jar
