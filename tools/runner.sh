# runner to provide safety working directory
function runner () {
  local target=$1
  local cpwd=$PWD
  local td=$(mktemp -d)

  cd $td

  $target ${@:2}

  cd $cpwd
  rm -r $td
}
