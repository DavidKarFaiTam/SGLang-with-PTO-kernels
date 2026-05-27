#!/bin/sh
#
# Start the SGLang Docker Container for use as the development environment.
#
set -x

DOCKER_NAME="sglang_dsv4"

#IMAGE_ID=lmsysorg/sglang:deepseek-v4-npu-910b
IMAGE_ID=lmsysorg/sglang:deepseek-v4-npu-a3


docker run -itd --shm-size=16g --privileged=true --name ${DOCKER_NAME} \
--net=host \
-v /etc/localtime:/etc/localtime \
-v /home:/home \
-v /data:/data \
-v /usr/local/Ascend/driver:/usr/local/Ascend/driver \
-v /etc/ascend_install.info:/etc/ascend_install.info -v /var/log/npu/:/usr/slog  \
-v /usr/local/sbin/npu-smi:/usr/local/sbin/npu-smi -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
-v /usr/local/dcmi:/usr/local/dcmi \
--device=/dev/davinci0:/dev/davinci0 \
--device=/dev/davinci1:/dev/davinci1 \
--device=/dev/davinci2:/dev/davinci2 \
--device=/dev/davinci3:/dev/davinci3 \
--device=/dev/davinci4:/dev/davinci4 \
--device=/dev/davinci5:/dev/davinci5 \
--device=/dev/davinci6:/dev/davinci6 \
--device=/dev/davinci7:/dev/davinci7 \
--device=/dev/davinci8:/dev/davinci8 \
--device=/dev/davinci9:/dev/davinci9 \
--device=/dev/davinci10:/dev/davinci10 \
--device=/dev/davinci11:/dev/davinci11 \
--device=/dev/davinci12:/dev/davinci12 \
--device=/dev/davinci13:/dev/davinci13 \
--device=/dev/davinci14:/dev/davinci14 \
--device=/dev/davinci15:/dev/davinci15 \
--device=/dev/davinci_manager:/dev/davinci_manager \
--device=/dev/devmm_svm:/dev/devmm_svm \
--device=/dev/hisi_hdc:/dev/hisi_hdc \
${IMAGE_ID} /bin/bash
