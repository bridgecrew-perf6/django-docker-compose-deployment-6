#!/bin/sh

git config core.sshCommand 'ssh -i /home/ec2-user/.ssh/id_ed25519' && \
git pull origin main && \
docker-compose -f docker-compose-deploy.yml build app && \
docker-compose -f docker-compose-deploy.yml up --no-deps -d app