function main () {
  local root=$1

  source $root/../log.sh
  source $root/../runner.sh
  source $root/install-packer.sh

  # create bin directory
  log setup 'creating bin directory...'
  local bin=$PWD/bin
  mkdir -p $bin

  # download packer
  runner install-packer $bin 'https://releases.hashicorp.com/packer/1.1.1/packer_1.1.1_linux_amd64.zip'
}

main $(realpath $(dirname ${BASH_SOURCE[0]}))
