function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(cat -- "$tmp")" &&
       [ -n "$cwd" ] &&
       [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

function rgf() {
    rg -l "$1" | fzf --preview "rg -n --color=always -C 3 '$1' '{}'"
}
