# admin-helper Container

This image is builded to easier maintain unusually docker container tasks.

Installed tools:

* rsync
* mc
* nano

# An example execution
## Editing config files
```
docker run --rm \
  -v "home-assistant_config:/opt/docker-volume/" \
  -it \
  -w /opt/docker-volume/ \
  rogersik/admin-helper
```