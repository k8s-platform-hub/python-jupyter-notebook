FROM jupyter/base-notebook

#Use conda to install packages
RUN conda install -y pandas

#Use pip to install packages
RUN pip install matplotlib

USER root

ADD init.sh /usr/local/bin
RUN chmod 755 /usr/local/bin/init.sh

CMD ["init.sh"]

