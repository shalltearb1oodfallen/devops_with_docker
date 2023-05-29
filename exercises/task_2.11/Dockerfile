FROM docker pull jupyter/datascience-notebook

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

CMD ["start-notebook.sh"]