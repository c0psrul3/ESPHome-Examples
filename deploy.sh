rsync -avhP -R --exclude=".gitignore" --exclude="secrets.yaml" ${@} \
  esphome/./ \
  hassio@homeassistant.lan:/homeassistant/esphome/
