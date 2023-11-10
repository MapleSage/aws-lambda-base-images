FROM scratch

ADD 4a908cb91f66b1d21a00dfe2aa77ea72926fb47f860ceee02de2d730554cc83b.tar.xz /
ADD 68122c44211de72b1d0e4891bfdaa705d91a6163ff25f2d14afc7800b2c71986.tar.xz /
ADD 7dd31836f6b1641547717030c6b42c09684272d31bf228cb3958b0619c46e607.tar.xz /
ADD 91882e5acec74ea9263f3d51225ec44f10d7d7e8d1795d5eef3be0b9a2818279.tar.xz /
ADD c65813b4462778f2da35d8ad7cf76e5457d8e6961f08c628bd6773c7ad072022.tar.xz /
ADD ec7724f99cfee5289034f3b76f991c83dfb51e6a40cb6d09ca0845dd6e3d7203.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
