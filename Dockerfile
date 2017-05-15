FROM websphere-liberty:webProfile7
MAINTAINER Matt Bentley <mbentley@mbentley.net>

# download example app and add to dropins
#RUN (wget https://github.com/WASdev/sample.servlet/releases/download/V1/DefaultServletEngine.zip -O /tmp/DefaultServletEngine.zip &&\
#  cd /tmp &&\
#  unzip DefaultServletEngine.zip &&\
#  mv DefaultServletEngine/dropins/Sample1.war /config/dropins/ &&\
#  cd && rm -rf /tmp/DefaultServletEngine DefaultServletEngine.zip)

# more traditional example of adding a file
COPY DefaultServletEngine/dropins/Sample1.war /config/dropins/
