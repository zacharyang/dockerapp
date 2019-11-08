FROM alpine:3.1

# Update
RUN apk add --update python py-pip


# Bundle app source
COPY . /app 

WORKDIR /app

# Install app dependencies
RUN pip install -r requirements.txt


EXPOSE  8000
CMD ["python", "/src/simpleapp.py", "-p 8000"]