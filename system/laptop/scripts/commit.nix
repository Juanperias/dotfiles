{ pkgs }:
pkgs.writeShellScriptBin "commit" ''
  if [ -z "$1" ]; then
    echo "You should pass a commit name 😠"
    exit 1
  else
    name=$1
  fi

  if [ -z "$2" ]; then
    echo "You should pass a branch 😠"
    exit 1
  else
    branch=$2
  fi


  git add .
  git commit -m "$name"
  git push origin "$branch"
''

