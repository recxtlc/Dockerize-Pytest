FROM python:latest

# declare or make workdir name
WORKDIR /app
# copy requirements.txt file into app 
COPY src/requirements.txt .
# install packages 
RUN  pip install --no-cache-dir --upgrade -r requirements.txt

# copy source code to workdir 
COPY . /app

CMD [ "pytest" ]