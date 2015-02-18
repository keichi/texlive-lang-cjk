FROM ubuntu
MAINTAINER Keichi Takahashi <keichi.t@me.com>

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install texlive-lang-cjk latexmk git ssh make \
    texlive-fonts-recommended xzdec cadaver
RUN tlmgr init-usertree
RUN tlmgr update --all
RUN tlmgr install algorithms

ADD .latexmkrc /root/

