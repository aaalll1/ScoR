FROM python:3.10.9-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN python3 -m pip install --upgrade pip
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm@8.19.4
RUN pip3 install --no-cache-dir -r requirements.txt
ENV APP_ID=""
ENV API_HASH=""
ENV ENV=""
ENV STRING_SESSION=""
ENV TG_BOT_TOKEN=""
ENV PYTHON_VERSION=""
ENV TZ=""
ENV DATABASE_URL=""
CMD ["sh", "-c", "python3 -m JoKeRUB ${APP_ID} ${API_HASH} ${ENV} ${STRING_SESSION} ${TG_BOT_TOKEN} ${PYTHON_VERSION} ${TZ} ${DATABASE_URL}"]
