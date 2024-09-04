1. Pour la base de données, j'utilise sqllite, plus facile car pas de connexion avec un autre service :

```
# .env

DATABASE_URL="sqlite:///%kernel.project_dir%/var/data.db"
```

La base de données sera dans un fichier nommé data.db`

2. Partir de FROM php:7.4-apache, mais ca dépend de la version de PHP à utiliser

3. Créer une config pour apache `docker/apache.conf` pour servir le dossier `public`

4. Créer un script `docker/entrypoint.sh` à exécuter au début (composer install, migration de la bdd et droits d'accès à la db)

5. Mettre ca dans un docker file

6. Build

7. Run

8. Dance on the dancefloor

