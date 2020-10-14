FROM python:2-slim
RUN pip install py-altdns
ADD https://raw.githubusercontent.com/infosec-au/altdns/master/words.txt /words.txt
ENTRYPOINT ["/usr/local/bin/altdns","-w","/words.txt"]
