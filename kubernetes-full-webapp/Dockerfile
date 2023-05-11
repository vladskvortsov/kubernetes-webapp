FROM drupal:latest

ENV .env

RUN bash -c "composer require drush/drush && exec drush site-install ${DRUPAL_PROFILE} \
     --locale=${LOCALE} \
     --db-url=${DB_URL} \
     --site-name=${SITE_NAME} \
     --site-mail=${SITE_MAIL} \
     --account-name=${ACCOUNT_NAME} \
     --account-mail=${ACCOUNT_MAIL} \
     --account-pass=${ACCOUNT_PASS} \
     --yes"




RUN apt-get clean && rm -rf /var/lib/apt/lists/*
