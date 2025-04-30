#!/bin/bash

# Change to the directory containing this script
cd "$(dirname "$0")" || exit

# shellcheck source=/dev/null
. ./env
IMAGE=mcp/git

entry="$(docker inspect mcp/git -f '{{range .Config.Entrypoint}}{{.}} {{end}}')"

temp_dir="/tmp/colima/tmp$$"
mkdir -p "${temp_dir}" || (echo "Could not create temp dir ${temp_dir}" && exit 1)
trap 'rm -rf "$temp_dir"' EXIT

temp_script="${temp_dir}/run.sh"
cat >"$temp_script" <<EOF
#!/bin/bash
find ${HOME} -type d -not -path "$HOME/Library/*" -name ".git" 2>/dev/null | while read -r dot_git_dir; do
  repo_dir=\$(dirname "\$dot_git_dir")
  git config --global --add safe.directory "\${repo_dir}"
done
${entry}
EOF
chmod +x "${temp_script}"

docker run -i --rm --env-file env \
  -v "${__SSH_KEY_FILE}:/root/.ssh/id.pub" \
  -v "${temp_dir}:/custom" \
  -v "${HOME}:${HOME}" \
  -e GIT_SSH_COMMAND="ssh -i /root/.ssh/id.pub -o StrictHostKeyChecking=no" \
  --entrypoint '/custom/run.sh' \
  "${IMAGE}"

echo cat ${temp_script}
echo "==="
cat ${temp_script}
