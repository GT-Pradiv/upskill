# Setup the Env

Creating a Docker File

```bash
cat << 'EOF' > Dockerfile
FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    bash \
    curl \
    wget \
    vim \
    nano \
    git \
    jq \
    htop \
    net-tools \
    iputils-ping \
    dnsutils \
    tree \
    unzip \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

CMD ["/bin/bash"]
EOF

```

running the docker file

```bash
docker run -it --rm -v "$PWD":/workspace --name bash-practise devops-practise
```

Create an alias 

```bash
echo "alias devops='docker run -it --rm -v $PWD:/workspace --name bash-practice devops-practice'" >> ~/.zshrc

```

Ensuring that the alias works 

```bash
cat << 'EOF' > ~/.zshrc
# Initialize autocompletion
autoload -Uz compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Terraform autocomplete setup
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# Docker custom alias (fixed spelling)
alias devops='docker run -it --rm -v "$PWD":/workspace --name bash-practice devops-practise'
EOF

```

```bash
source ~/.zshrc
devops
```

Cheat Sheet

── LAUNCH ─────────────────────────────────────────────
devops                           # start container (Tab 
exit                             # leave container (auto-deleted, files 
── INSIDE CONTAINER ───────────────────────────────────
ls /workspace                    # your upskill folder
cd /workspace/01-bash/01-navigation
which bash                       # /bin/bash (Linux bas
uname -a                         # Linux kernel info
── GIT (Mac Tab 2 only) ────────────────────────────────
git status                       # what changed
git add .                        # stage everything
git add path/to/file.sh          # stage one file
git commit -m "day1: message"    # commit
git push origin main             # push to GitHub
git log --oneline -5             # last 5 commits
── DOCKER MANAGEMENT ───────────────────────────────────
docker ps                        # running containers
docker images                    # built images
docker build -t devops-practice . # rebuild if Dockerfile changes
── IF CONTAINER NAME CONFLICTS ─────────────────────────
docker rm bash-practice          # remove old named container
devops                           # then relaunch
