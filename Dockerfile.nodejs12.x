FROM scratch
ADD x86_64/09daa130de16bd0fe3efce39afc1a7d6f4feb57a2bac553f3cd23889c64f2d19.tar.xz /
ADD x86_64/126f26e31bc836729ea5d81c9257e3e5e53531d86edcb4490382a8477d04ba6b.tar.xz /
ADD x86_64/26e573674ae91041955b298d4f50ff40a8cdcd148aba0c6d794fdc6e712bcbba.tar.xz /
ADD x86_64/30bacdc9d1fe2cc6d21ed5e544ee058aa55d39d2b4cbbaca9671247b3f6c4a11.tar.xz /
ADD x86_64/48fc72dd36735f1dc0c90e0fc13db8f8ead09c6e9ba079097f42ad0265476ca3.tar.xz /
ADD x86_64/4e2ae914cc035aa64345fe9b14fb3a46cdf06d077a93b73e4460f1cfbd869a92.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]
