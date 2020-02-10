#!/usr/bin/env bash


ansible-playbook -vv \
	-i inventory/self_hosted/hosts.ini \
	-u mimir \
	attach_teamcity_runners.yml \
	--vault-password-file /home/mimir/.vault_pass.txt \
	--ask-pass \
	-K
