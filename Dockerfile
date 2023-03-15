FROM centos

RUN cd /etc/yum.repos.d/

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*

RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install python36 -y

RUN pip3 install joblib
 
RUN pip3 install scikit-learn

COPY marks.pk1   /

COPY markscode.py  /

CMD python3 /markscode.py 