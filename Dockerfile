FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install bundler_issue_report --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundler_issue_report"]
CMD ["--help"]
