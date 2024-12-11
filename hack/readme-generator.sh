_gitPath=$(git rev-parse --show-toplevel)
_scriptPath=$(realpath $(dirname $0))

echo _gitPath: $_gitPath >&2
echo _scriptPath: $_scriptPath >&2

# copy stdout to file
exec 3>&1
exec > >(tee $_gitPath/README.md.tmp)

###################################################################################################
# CONTENT
# *-------------------------------------*
#   only print content below this line
# *-------------------------------------*

echo '# ESPHome - Device Configuration Examples'
echo '![ESPHome logo dark](https://esphome.io/_static/logo-text-on-dark.svg)'
printf '\n%s\n' "----"

printf '\n## Complete Examples\n'
for i in $_gitPath/EXAMPLES/*.yaml; do
  printf '* [%s](./%s)\n' "$(basename ${i#$_gitPath})" "${i#$_gitPath/}"
done

printf '\n## Example Block Snippets\n'
for i in $_gitPath/SNIPPETS/*.yaml; do
  printf '* [%s](./%s)\n' "$(basename ${i#$_gitPath})" "${i#$_gitPath/}"
done

printf '\n%s\n' "----"
printf '\n## Devices\n'
