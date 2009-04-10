function preexec() {
    (autojump -a "$(pwd -P)"&)>/dev/null
}

alias jumpstat="autojump --stat"

function j { new_path="$(autojump $@)";if [ -n "$new_path" ]; then echo -e "\\033[31m${new_path}\\033[0m"; cd "$new_path";fi }