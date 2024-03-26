FROM python:3.9

RUN useradd --create-home appuser

WORKDIR /code

COPY --chown=appuser:appuser --chmod=644 ./setup.py /code/setup.py
COPY --chown=appuser:appuser --chmod=644 ./requirements.txt /code/requirements.txt
COPY --chown=appuser:appuser --chmod=644 ./README.md /code/README.md
COPY --chown=appuser:appuser --chmod=644 ./src /code/src

RUN pip install /code

COPY --chown=appuser:appuser --chmod=644 ./controller /code/controller

USER appuser

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
