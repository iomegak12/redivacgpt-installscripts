pyenv install 3.11
pyenv local 3.11

curl -sSL https://install.python-poetry.org | python3 -

export PATH="/root/.local/bin:$PATH"

poetry --version

curl -fsSL https://ollama.com/install.sh | sh

ollama pull mistral
ollama pull nomic-embed-text
poetry install --extras "ui llms-ollama embeddings-ollama vector-stores-qdrant"

pip install tensorflow torch flax transformers
