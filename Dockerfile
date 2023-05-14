FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
COPY target/threadleak.jar /opt
COPY startup.sh /opt
RUN  chmod +x /opt/startup.sh
CMD ["startup.sh"]