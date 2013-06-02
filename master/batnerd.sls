# State for setting things up 'how I like them' in terms of console, etc..
zsh:
  pkg:
    - installed

/home/batnerd/.zshrc:
  file.managed:
    - source: salt://service/zsh/.zshrc
    - require:
      - pkg: zsh
      

/home/batnerd/.ssh/config:
    file.managed:
        - source: salt://service/ssh/config

