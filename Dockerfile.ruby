FROM ruby:slim
RUN gem install eventmachine && \
    gem install eventmachine && \
    gem install ansi && \
    gem install em-http-request && \
    gem install posix-spawn && \
    gem install rake && \
    gem install rspec && \
    gem install em-proxy

