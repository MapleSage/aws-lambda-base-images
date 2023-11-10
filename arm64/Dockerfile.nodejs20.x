FROM scratch

ADD 45b27b40a9a5f4d37550ba7d202292616b78e7049ce5a8e4ae9a6046e63d0317.tar.xz /
ADD 4a3ece9a26ff8c63d61e711b20b5904af2f156a91b90478be50ff075a885c556.tar.xz /
ADD 7230ecfb6c6ab95997f72936991796b358627fd43417c55716ce27087b348868.tar.xz /
ADD 875ca2c6d0e14b7026e19a26990eca4bbfc826592acc267b3d7b902a39094498.tar.xz /
ADD a4e5d5064ae6bd5b80b09ca8f7dbb3443de396035b93b0ef2e38ca9679f0c1c9.tar.xz /
ADD d0e6f1d5c7b53a05b65b527d726ef362f5309cd92452b71619c027aabe8d5bb1.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
