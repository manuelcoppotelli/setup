export AWS_PAGER=''
# export AWS_CLI_AUTO_PROMPT=on

if command -v aws_completer &> /dev/null; then
  autoload -Uz bashcompinit && bashcompinit
  complete -C aws_completer aws
fi
