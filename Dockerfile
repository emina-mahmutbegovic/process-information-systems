FROM liquibase/liquibase:4.21.0

LABEL authors="emina.mahmutbegovic"

WORKDIR /home/root/app

COPY --chown=755 . .

CMD /bin/bash ./scripts/utils/entrypoint.sh
