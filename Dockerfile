FROM ruby:2.6.6

ARG WORKDIR=/var/www/rails_api_curriculum

# デフォルトの locale `C` を `C.UTF-8` に変更する
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# タイムゾーンを日本時間に変更
ENV TZ Asia/Tokyo

RUN apt-get update && apt-get install -y nodejs npm shared-mime-info redis-server imagemagick

RUN gem install rails -v "6.0.3"

RUN npm install -g yarn@1

RUN mkdir -p $WORKDIR

WORKDIR $WORKDIR

EXPOSE 3000