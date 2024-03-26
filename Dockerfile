FROM python:3.9

RUN useradd --create-home appuser

WORKDIR /code

COPY --chown=appuser:appuser ./setup.py /code/setup.py
COPY --chown=appuser:appuser ./requirements.txt /code/requirements.txt
COPY --chown=appuser:appuser ./README.md /code/README.md
COPY --chown=appuser:appuser ./src /code/src

RUN pip install /code

COPY --chown=appuser:appuser ./controller /code/controller

USER appuser

RUN chmod -R -w /code

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
