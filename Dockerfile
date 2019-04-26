FROM ubuntu:latest

RUN apt-get -y update && apt-get install -y --no-install-recommends \
		build-essential \
		cmake \
		libcurl4-openssl-dev \
		libxft2-dev\
		libxext-dev \
		libxinerama-dev \
		libwebkit2gtk-4.0-dev \
		libasound2-dev \
		doxygen \
		graphviz \
		pkg-config \
		ssh \
		git \
		sudo \
	&& echo 'user ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/user \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
