FROM 970605007005.dkr.ecr.eu-west-1.amazonaws.com/exampleclient/exampleproject:latest
COPY config/extra.settings.php sites/default/extra.settings.php

COPY data/test.sh /test.sh
ENTRYPOINT [ "/test.sh" ]
CMD [ "run-tests" ]
