FROM centos:7

RUN yum -y update && \
    yum -y install centos-release-scl && \
    yum-config-manager --enable rhel-server-rhscl-7-rpms && \
    yum -y install \
        make \
        rpm-build \
        fakeroot

CMD /mv_c_package_template_test/dist/Docker/centos/7/build-dist.sh
