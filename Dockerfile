FROM python:3.9-alpine

RUN    apk add --no-cache bash && pip install 'tfe-run-wait>=0.6.5'
ADD    github-action-entrypoint /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/github-action-entrypoint"]
