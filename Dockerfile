FROM node:10-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/amir-arad/actions-yarn"
LABEL homepage="https://github.com/amir-arad/actions-yarn"
LABEL maintainer="Amir Arad <greenshade@gmail.com>"

LABEL com.github.actions.name="GitHub Action for Yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
# COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
