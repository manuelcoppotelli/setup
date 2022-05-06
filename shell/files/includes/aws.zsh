export AWS_PAGER=''
# export AWS_CLI_AUTO_PROMPT=on
export AWS_CONFIGURE_SSO_DEFAULT_SSO_START_URL=https://d-9999999999.awsapps.com/start
export AWS_CONFIGURE_SSO_DEFAULT_SSO_REGION=eu-west-1

sso() {
  unset AWS_PROFILE
  export AWS_PROFILE=$1

  aws sts get-caller-identity &> /dev/null || \
    aws sso login || \
    (unset AWS_PROFILE && aws-sso-util credential-process --profile $1)

  eval $(aws-export-credentials --env-export)
}
