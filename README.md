# AWLESS Container

Docker Container to run <https://github.com/wallix/awless>

`docker exec -it awless_awless_1 /bin/bash`

Container assumes you have AWS creds set up on your local workstation already (from [docker-compose.yml](docker-compose.yml)):

```
      - $HOME/.aws/config:/root/.aws/config:ro
      - $HOME/.aws/credentials:/root/.aws/credentials:ro
```

This can be modified to suit your use case.  You can also set the usual [AWS ENV vars](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html).

Inspiration taken from <https://github.com/HariSekhon/Dockerfiles/tree/master/awless>, but this container requires setting the AWS ENV vars at runtime & I prefer to have a shell in the container to use.