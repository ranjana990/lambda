FROM ubuntu:18.04
RUN apt update -y & apt install python3*
CMD ["python3","print('Green')"]
