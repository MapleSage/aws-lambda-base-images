FROM scratch

ADD 1aa3c47aba5d5c7f46a973d598e5c1f8e265a9921d4664be06c413c1f809b7df.tar.xz /
ADD 259d62e27eb18b05f1f6ed9b7296a50cab974d020cfffaf84b983e6501f0ac46.tar.xz /
ADD 4616edc5c3a2670a32a78157db6474f9399b584c922e8f90ac32bdcce8d2a54a.tar.xz /
ADD 48fc72dd36735f1dc0c90e0fc13db8f8ead09c6e9ba079097f42ad0265476ca3.tar.xz /
ADD e90d5086fdd4860a5cd70127e1752748aa285ad71f243d9aa3aa23c6f9e65df6.tar.xz /
ADD f360ce6f7bd170700664841a1e4f4ad6e8a7f85bdd99bb6bc929be4392eb4620.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
