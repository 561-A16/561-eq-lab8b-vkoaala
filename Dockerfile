FROM ymazieres/dotnet:compile

CMD ["sh", "/webappScript.sh"]

COPY /Docker/webappScript.sh /webappScript.sh
COPY /src /src 

RUN chmod +x /webappScript.sh

EXPOSE 5000

ENV ASPNETCORE_URLS http://+:5000

