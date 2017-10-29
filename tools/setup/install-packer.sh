function install-packer () {
  local target=$1
  local source=$2

  log install-packer "install to $target."

  log install-packer 'downloading...'
  wget $source -qO sz

  log install-packer 'extracting...'
  unzip -q sz
  mv -f packer $target/

  log install-packer 'completed!'
}

# like python's `if __name__ == __main__:`
if [ $0 == ${BASH_SOURCE[0]} ]
then
  root=$(realpath $(dirname ${BASH_SOURCE[0]}))
  source $root/../log.sh
  source $root/../runner.sh
  mkdir -p $1
  runner install-packer $(realpath $1) ${@:2}
fi
