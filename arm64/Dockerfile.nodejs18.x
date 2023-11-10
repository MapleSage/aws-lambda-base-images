FROM scratch

ADD 5fcc8d463403b25c481715a864d204476ff1768fb178115df5b09afdb1470504.tar.xz /
ADD b8416cfc06f90d366a64f4eec3254556c2b70057df3518216ca24e5482e294e8.tar.xz /
ADD d023bac9fc6e269749db867db44eddbfa7c0a9da038599688d75af81c9c56cf8.tar.xz /
ADD e922075deb51d5c2f32d754122286a3724e2666d227b5f6ae7f701d372447d26.tar.xz /
ADD f285dabd8053620d12d7bbe40811de5738037690e0779488377ed95602b1c087.tar.xz /
ADD f5345c952645ee833db4993cc8570ca952f8498b94016404984c59a16cb3546b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
