FROM tensorflow/tensorflow:2.2.0
RUN mkdir -p /rasa_app
WORKDIR /rasa_app
COPY . /rasa_app
RUN pip3 install -r requirements.txt
#RUN pip3 install --user rasa-nlu==0.14.0
#RUN pip3 install --user rasa-core==0.13.2
RUN python -m spacy download en
RUN pip3 install --user rasa==2.7.1
RUN pip3 install --user sanic==19.9.0
