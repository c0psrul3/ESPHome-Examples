rsync -avhP -R --exclude=".gitignore" --exclude="secrets.yaml" ${@} \
  hassio@homeassistant.lan:/homeassistant/esphome/./ \
  ./esphome/
