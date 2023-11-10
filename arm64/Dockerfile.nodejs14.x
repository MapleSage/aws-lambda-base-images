FROM scratch

ADD 18e7cd5e8cf7c7dd678e6168f25869cab4e21a86f1d2417a2b07f57c001516b9.tar.xz /
ADD 2242ac40587694df35ee4119663a3e12f3b1abf19f5cb21821dc3a4f651c7d28.tar.xz /
ADD 57645763ce24052488d6e305cb68a0aec98566120c06a58c8e2653e15633aa58.tar.xz /
ADD 9e42dc74bc73138810e14299e21a1ab0b4252bbace8f0a967f0610a2b901183e.tar.xz /
ADD e95c3c2733a55472c62f83a9829aadb68d4aa906fbd60d4ca6be873ffef3c86b.tar.xz /
ADD f285dabd8053620d12d7bbe40811de5738037690e0779488377ed95602b1c087.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
