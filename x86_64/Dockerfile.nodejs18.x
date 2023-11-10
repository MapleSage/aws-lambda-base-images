FROM scratch

ADD 46183a4af1ab32003f8e4dd6c39f4ea2c929d9b12d48f3fe82b42e889fd2e03e.tar.xz /
ADD 47314c8c585e3dedde8459c3b3a9afcbafbcb611864d69065f8c4a4592113c26.tar.xz /
ADD 48fc72dd36735f1dc0c90e0fc13db8f8ead09c6e9ba079097f42ad0265476ca3.tar.xz /
ADD 701517a78ebd65a66e1ec9f7e253baa0d978f107c67b3bc68394abd7ee144b5c.tar.xz /
ADD 9f93a2377c1dad182bb36139340b9fc59470b69911485f26927f78305bfe0a16.tar.xz /
ADD a6c9228aac514c506a73b47dec2686585885500be30e88951c9be72362d8e62b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
