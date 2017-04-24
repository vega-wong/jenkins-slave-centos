build:
	docker build --force-rm -t registry.cn-hangzhou.aliyuncs.com/vega/jenkins-slave-centos ./

push: 
	docker push registry.cn-hangzhou.aliyuncs.com/vega/jenkins-slave-centos