FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies
RUN pip install -r requirements.txt

WORKDIR /dockerapp

# Bundle app source
COPY app.py /dockerapp/app.py

EXPOSE  8000
CMD ["python", "/src/simpleapp.py", "-p 8000"]