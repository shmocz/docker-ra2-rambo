FROM ubuntu:22.04
ARG USER_ID

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install -y \
	curl \
	gdb \
	tigervnc-standalone-server \
	twm \
	wine32 \
	wine64

RUN useradd -m -u $USER_ID user
USER user
WORKDIR /home/user
RUN mkdir -p .wine RA2
