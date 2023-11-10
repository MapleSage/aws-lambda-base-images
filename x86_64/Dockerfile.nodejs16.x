FROM scratch

ADD 48fc72dd36735f1dc0c90e0fc13db8f8ead09c6e9ba079097f42ad0265476ca3.tar.xz /
ADD 4cb1e1a51da9c50b2cf7af0decf2d1a63974736af6fbdcec21184e9faee9e47d.tar.xz /
ADD 92b43bff442b65db971836726552c9cb83809ce2c77cee0f67581414c1a97262.tar.xz /
ADD a5a672f590a8f7f8d7e8a66314ce2460700d3984a43650f22559e1564f57c609.tar.xz /
ADD a5ae20ad83c09cbd20d103c7fd83cd0d6a0dded9791bbf9ebca9784d175ab36e.tar.xz /
ADD f5c5937379df4999b16ab3f52a8a37acf6f052ce68982f969686712103391924.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
