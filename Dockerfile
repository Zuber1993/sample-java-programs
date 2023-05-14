FROM public.ecr.aws/amazoncorretto/amazoncorretto:17
COPY startup.sh /opt
COPY target/threadleak.jar /opt
RUN  chmod +x /opt/startup.sh
CMD ["startup.sh"]