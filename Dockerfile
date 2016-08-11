FROM ubuntu:16.04
ADD etc/apt/sources.list /etc/apt/sources.list
RUN apt -y update && apt -y install ruby git nodejs nodejs-legacy ruby-dev build-essential zlib1g-dev libsqlite3-dev
RUN gem install rails
RUN gem install bundler
WORKDIR /root
RUN git clone https://github.com/dphuang2/PoGoBag.git
WORKDIR /root/PoGoBag
RUN bundle install --without production
RUN rake db:setup
CMD rails s -b 0.0.0.0
