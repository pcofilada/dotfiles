if which vim > /dev/null
  # make Vim the default editor
  set -x EDITOR vim

  # make Vim usable with git
  set -x GET_EDITOR vim
end
