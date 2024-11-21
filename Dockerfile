# Build stage
FROM python:3.9-slim as builder

WORKDIR /app
COPY requirements.txt .

RUN python -m venv /opt/venv && \
    . /opt/venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

# Runtime stage
FROM python:3.9-slim

COPY --from=builder /opt/venv /opt/venv

WORKDIR /app
COPY . .

# Make sure we use the virtualenv
ENV PATH="/opt/venv/bin:$PATH"

# Health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:5000/health || exit 1

EXPOSE 5000
CMD ["python", "app.py"]
