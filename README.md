# pwn_docker_env_ubuntu22.04
This script can deploy the pwn debug environment of ubuntu 22.04 in docker
---
本机安装docker:
```sh
sudo su
wget -qO- https://get.docker.com/ | sh
service docker start
echo "If u want to run the docker without the root user,u can use:"
echo "usermod -aG docker username\n"
```

如果安装pwndbg中途报错:
修改setup.sh 删去 python-dev python-pip

pwndbg 使用报字符错误:
`export LANG=C.UTF-8`

pwndbg 使用报collections错误:
修改 /pwndbg/pwndbg/memoize.py collections.attr => collections.abc.attr
