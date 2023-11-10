FROM scratch

ADD 4016c50271715704c7b5a85853a2f6479ddc1495c9525a1fecb29725a0a5118b.tar.xz /
ADD 48fc72dd36735f1dc0c90e0fc13db8f8ead09c6e9ba079097f42ad0265476ca3.tar.xz /
ADD 822bc1224b057eae8f26fde89c49800aae0c999861ba617ed97c35edb35c6830.tar.xz /
ADD 8efa18db50c91a4f766f79a9dee20dcbec6c26026c59eb8c9874c45ba76f1354.tar.xz /
ADD 98f455002444f8a0567827b046e6709e13aa18429225d6f4912a02ca246fd63a.tar.xz /
ADD cfb20ea7802c92268268711f21f6d709969d884b4c918db60dd07f947d466209.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
