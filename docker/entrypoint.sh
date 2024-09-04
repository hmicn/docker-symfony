#!/usr/bin/env bash
 
composer install -n
rm migrations -Rf
mkdir migrations
bin/console doctrine:migrations:diff -n --allow-empty-diff
bin/console doctrine:migrations:migrate -n --allow-no-migration
chmod o+w var/data.db
 
exec "$@"