#!/bin/bash
# startup.sh

# Copia configurações customizadas de Nginx (opcional)
cp /home/default /etc/nginx/sites-enabled/default

# Copia php.ini customizado (opcional)
cp /home/php.ini /usr/local/etc/php/conf.d/php.ini

# Reinicia nginx para aplicar alterações
service nginx restart

# (Opcional) Limpa caches do Laravel
php /home/site/wwwroot/artisan cache:clear
php /home/site/wwwroot/artisan config:clear
php /home/site/wwwroot/artisan route:clear
php /home/site/wwwroot/artisan view:clear

# (Opcional) Regera caches otimizados do Laravel
php /home/site/wwwroot/artisan config:cache
php /home/site/wwwroot/artisan route:cache
php /home/site/wwwroot/artisan view:cache
