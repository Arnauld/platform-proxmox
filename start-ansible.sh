#! /bin/bash

docker run --rm  \
    -v $(pwd):/root/platform \
    -v ~/.ssh:/root/.ssh.ref \
    -v ~/.vault:/root/.vault.ref \
    -it trv/ansible /bin/bash