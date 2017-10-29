log_flags_disable=false
if [[ "$@" == *"--quiet"* ]]
then
  log_flags_disable=true
fi

function log () {
  if [ $log_flags_disable == true ]
  then
    return 2
  fi

  local caller=$1
  local message=$2
  local level=$3

  if [ "$level" == "" ]
  then
    level="I"
  fi

  echo "$level:$caller: $message"
}
