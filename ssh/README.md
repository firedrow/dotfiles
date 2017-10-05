# Misc SSH Configuration Notes

## Github SSH Keypair

I have my Github account locked down with an SSH Keypair, so to use this
with git I need to specify a configuration file and the private key. Link
the config file to ~/.ssh/config using stow, then copy the OpenSSH key
from pCloud into ~/.ssh/ as github_rsa.
