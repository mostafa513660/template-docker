FROM scratch
COPY src/* /
HEALTHCHECK NONE
FROM ahmadnassri/vscode-server:latest

ENV VSCODE_KEYRING_PASS="Mostafa51300"
ENV VSCODE_SERVE_MODE=serve-local

CMD ["docker", "run", "--rm", "--name", "vscode-server", "--hostname", "vscode", "-p", "8000:8000", "-e", "VSCODE_KEYRING_PASS=$VSCODE_KEYRING_PASS", "-e", "VSCODE_SERVE_MODE=$VSCODE_SERVE_MODE", "-v", "/home/", "ahmadnassri/vscode-server:latest"]
