pogobag
=======

Build
-----

1. change the file __etc/apt/sources.list__ with the appropriate repos for the deployment environment. Or remove the ADD command in Dockerfile to use the default one.
2. Execute the command (Assuming the cloned directory is __pogobag__)

    ```bash
    cd pogobag
    docker build -t pogobag .
    ```

Run
---

1. Execute the command (It listens to port 3000 by default.)

    ```bash
    docker run -d -p 3000:3000 pogobag
    ```
