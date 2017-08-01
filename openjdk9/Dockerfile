FROM openjdk:9

RUN apt-get update -qq \
  && apt-get install -qq -y apt-transport-https \
  && wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - \
  && echo "deb http://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list \
  && apt-get update -qq \
  && apt-get install -qq -y cf-cli

RUN apt-get purge -y apt-transport-https \
  && apt-get autoremove -y \
  && apt-get clean \
  && rm -rf ~/.cache/pip/ \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*
