FROM scratch

ADD 23c61e7fcff290b476b35415671fa80b71bb7ddd63b542b7f2fa073539c1bad2.tar.xz /
ADD 26d58472f15992bf0c1427a3d23fb8cbacfdf23bf2d04ac969d352a996fede62.tar.xz /
ADD 5452fd5f3fe7dab628eab0f0b9c4dacb956939e021169b8b1cd070d826eaf07e.tar.xz /
ADD c3cd4c724bc5aa4ba97d5f120ffc141ead3e5788519430c1d3048f887c5805be.tar.xz /
ADD ccccb3cef5f1e416e0d8e02a4248cbe28da7730d1d7056e26624f6238a11be47.tar.xz /
ADD f285dabd8053620d12d7bbe40811de5738037690e0779488377ed95602b1c087.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
