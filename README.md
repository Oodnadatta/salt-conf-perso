# salt-conf-perso : configuration SaltStack personnelle

La configuration de SaltStack se trouve dans `/srv/salt`

Attention, ne pas utiliser `pkg.installed` pour les logiciels bioinformatiques ! Pourquoi ? Parce que l'on veut être indépendant des versions choisies par Debian / Ubuntu et des mises à jour. Il vaut mieux utiliser git clone ou wget dans les règles SaltStack.

## Pour installer ma configuration Salt sur Ubuntu
1) Télécharger et installer le paquet.
```sh
sudo apt install salt-minion
```

2) Créer le répertoire pour salt.
```sh
sudo mkdir -p /srv
```

3) Récupérer tous les fichiers de github et les mettre dans `/srv/salt`.
```sh
sudo git clone https://github.com/Oodnadatta/salt-conf-perso.git /srv/salt #(pour les autres)
sudo git clone git@github.com:Oodnadatta/salt-conf-perso.git /srv/salt #(pour moi)
```
4) Lancer salt et appliquer la configuration saltstack sur la machine.
```
sudo apt update #(met à jour la liste des paquets disponibles à l'installation)
sudo salt-call --local state.highstate
sudo apt ugrade #(met à jour tous les paquets sur le système pour qu'ils soient tous à la dernière version)
```

## Pour ajouter de nouveaux programmes à la configuration
Chaque fichier .sls dans `/srv/salt` contient des règles pour salt. Ils sont pris en compte uniquement s'ils sont listés dans le fichier `top.sls`.
Il peut également s'agir de fichiers `init.sls` dans un répertoire.

1) Ajouter le logiciel au fichier `nom_du_fichier.sls`

2) Lancer salt-call pour installer le nouveau programme
```
sudo salt-call --local state.sls nom_du_fichier
```
