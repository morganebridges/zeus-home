alias last_container='podman ps -n 1 --last 1 --format "{{.ID}}"'
# This alias can be used to get the ID of the last container launched by Podman
# you could for example type MY_VAR=$(last_container) to get the ID of the last container
# then MY_VAR can be used for other commands if you want to for example get logs from or do something else with you last container
# without having to look up the container ID each time