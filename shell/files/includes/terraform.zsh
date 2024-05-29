alias tfmtgit="git status -s | cut -d ' ' -f '3' | grep \".tf$\" | xargs terraform fmt"
