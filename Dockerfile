FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3
RUN apt install -y python3-pip
RUN pip3 install pyowm
RUN pip3 install pyTelegramBotAPI
RUN pip3 install --upgrade pyTelegramBotAPI      
    
COPY project.py .
ADD project.py /home/project.py

ENTRYPOINT ["python3", "/home/project.py"]    
