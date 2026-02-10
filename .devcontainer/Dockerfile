FROM mcr.microsoft.com/devcontainers/base:trixie

# 1. Install Python and dependencies for Oh My Posh
# Note: git, sudo, and ca-certificates are already in this base image.
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    unzip \
    vim \
    && rm -rf /var/lib/apt/lists/*

# 2. Oh My Posh Installation
RUN curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/local/bin

# 3. Switch to 'vscode' user
USER vscode

# 4. Shell Configuration
RUN printf '\n# oh-my-posh\nif command -v oh-my-posh >/dev/null 2>&1; then\n  eval "$(oh-my-posh init bash --config jandedobbeleer)"\nfi\n' >> ~/.bashrc

# 5. RenderCV Installation
RUN pip install "rendercv[full]" --break-system-packages