#JAVA_HOME = /usr/bin/java/jdk1.7.0_40
#JAVAC = $(JAVA_HOME)/bin/javac
#JAVA = $(JAVA_HOME)/bin/java
JAVA = java

all: java rn

java:
	$(JAVAC) -cp hubiss.jar Sample.java

rn:
#	$(JAVA) -Djava.library.path="." -cp hubiss.jar:. Gas_Dummy2_1.7
	$(JAVA) -Djava.library.path="." -jar  Gas_Dummy2_1.7.jar


clean:
	rm *.class

rm:
	rm *.db

cp:
	cp ../../../hubiss .
