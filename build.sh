
IMAGENAME='registry.cn-hangzhou.aliyuncs.com/vega/jenkins-slave-centos'

echo "docker build --force-rm -t ${IMAGENAME} ./"
docker build --force-rm -t ${IMAGENAME} ./

if [ -n "$1" ]
then
  docker tag ${IMAGENAME} ${IMAGENAME}:$1
fi

echo "docker push ${IMAGENAME}"
docker push ${IMAGENAME}

