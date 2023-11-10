FROM scratch

ADD 049d333f823546da037fc4f777a6aa4c8512d551989b15cea1c4af73db5a4a22.tar.xz /
ADD 0546c779482bdd4b9aeaa0cb5986e1d7d7bb7d3bf34a419da15e43f58b42f171.tar.xz /
ADD 0ec6100baff1e8742f9979d4ca6aa2aa9c47e6edba56c011f234ae62c3e8045d.tar.xz /
ADD 75103c83a5149d42e025e8dd0aa8234b198220e25d823725e9495c6ceeb43330.tar.xz /
ADD c438b2cbf9c9fbefb6418977409f5060b31ac887977c5a0e93172686a8fff531.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
