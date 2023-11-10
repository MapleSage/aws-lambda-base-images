FROM scratch

ADD 13da690553c905ee0def3557ea257150d734b128a4b29f466a061d27144ef685.tar.xz /
ADD 7db39cfea1c2f5ac2ebcb63c6dcd7ba8b112e224815c2674ff06aec984d866b5.tar.xz /
ADD c80ba535b1171cd57999c3e1c120d4a396965dff389e7068c7872b6a05941e12.tar.xz /
ADD d1c1228b70597b7faec65c485b3193ca373ce8a1e471f31067fc306d60562296.tar.xz /
ADD e82b2d4f3f346a839cb624fd5091acdd8bece7458d5940e89ae43a12d009788d.tar.xz /
ADD f285dabd8053620d12d7bbe40811de5738037690e0779488377ed95602b1c087.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
