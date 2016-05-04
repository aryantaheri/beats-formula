# Install filebeat repository

beats_repo:
  pkgrepo.managed:
    - humanname: Beats Repo
    - name: deb https://packages.elastic.co/beats/apt stable main
    - file: /etc/apt/sources.list.d/beats.list
    - keyid: D88E42B4
    - keyserver: keyserver.ubuntu.com
