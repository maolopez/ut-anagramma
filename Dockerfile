FROM public.ecr.aws/lambda/python:3.8

# Set working directory
WORKDIR /src/ut_anagramma

# Bundle app source
COPY . .

# Install app dependencies
RUN pip install -r requirements.txt

# Expose port and define command
EXPOSE 8082
CMD ["python", "./main.py"]
