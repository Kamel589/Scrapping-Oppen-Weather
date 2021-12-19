# This file defines the Docker container that will contain the Crawler_oppen app.
# From the source image #python
FROM python:3.6-slim
# Identify maintainer
LABEL maintainer = "kamel.sehaki@gmail.com"
# Set the default working directory
WORKDIR /app/
COPY crawler-oppen.py requirements.txt city.list.json /app/
RUN pip install -r requirements.txt
CMD ["python","./crawler-oppen.py"]
# When the container starts, run this
ENTRYPOINT python ./crawler-oppen.py
