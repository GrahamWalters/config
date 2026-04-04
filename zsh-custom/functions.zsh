remote_diff() {
  local f1=$(mktemp) f2=$(mktemp)
  curl -sf -o "$f1" "$1" && curl -sf -o "$f2" "$2" && diff "$f1" "$f2"
  rm -f "$f1" "$f2"
}
