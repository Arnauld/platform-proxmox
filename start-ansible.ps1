
Write-Output "$pwd"
Write-Output "=================================="
#docker run --rm -v "$pwd":/root/platform trv/ansible  -it trv/ansible /bin/bash
docker run --rm  `
    -v C:\Users\x2023576\projects\trv\platform:/root/platform `
    -v C:\Users\x2023576\.ssh:/root/.ssh.ref `
    -it trv/ansible /bin/bash