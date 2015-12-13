# This is a comment
FROM ubuntu:14.04
MAINTAINER Thomas Velthoven <thomas@velthoven.no>
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mc
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y emacs24-nox
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y byobu
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y gnupg2
CMD DEBIAN_FRONTEND=noninteractive cat >foo <<EOF
          %echo Generating a basic OpenPGP key
          Key-Type: DSA
          Key-Length: 1024
          Subkey-Type: ELG-E
          Subkey-Length: 1024
          Name-Real: Joe Tester
          Name-Comment: with stupid passphrase
          Name-Email: joe@foo.bar
          Expire-Date: 0
          Passphrase: abc
          %pubring foo.pub
          %secring foo.sec
          # Do a commit here, so that we can later print "done" :-)
          %commit
          %echo done
EOF && gpg2 --batch --gen-key foo && gpg2 --no-default-keyring --secret-keyring ./foo.sec --keyring ./foo.pub --list-secret-keys

