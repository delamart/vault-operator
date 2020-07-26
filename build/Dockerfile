FROM quay.io/operator-framework/ansible-operator:v0.19.0

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml \
 && chmod -R ug+rwx ${HOME}/.ansible \
 && pip3 install ansible-modules-hashivault \
 && pip3 install jmespath

COPY watches.yaml ${HOME}/watches.yaml

COPY roles/ ${HOME}/roles/
