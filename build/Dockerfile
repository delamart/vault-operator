FROM quay.io/operator-framework/ansible-operator:v0.19.0

USER 0
RUN pip3 install -q ansible-modules-hashivault
USER 1001

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
 && chmod -R ug+rwx ${HOME}/.ansible

COPY watches.yaml ${HOME}/watches.yaml

COPY roles/ ${HOME}/roles/
