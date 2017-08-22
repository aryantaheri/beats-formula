# Install filebeat repository

beats_repo:
  pkgrepo.managed:
    - humanname: Beats Repo
    - name: deb https://artifacts.elastic.co/packages/5.x/apt stable main
    - file: /etc/apt/sources.list.d/beats.list
    - keyid: D88E42B4
    - keyserver: keyserver.ubuntu.com
