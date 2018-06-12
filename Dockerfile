FROM webdevops/php-apache:alpine

RUN mkdir -p setup && cd setup && \
  curl -sSL https://downloads.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz -o ioncube.tar.gz && \
  tar -xf ioncube.tar.gz && \
  mv ioncube/ioncube_loader_lin_7.1.so /usr/lib/php7/modules/ && \
  echo 'zend_extension = /usr/lib/php7/modules/ioncube_loader_lin_7.1.so' >  /etc/php7/conf.d/00-ioncube.ini && \
  cd .. && rm -rf setup
