# pre-commit.sh

# pre-commig.sh

# test only commited changes
STASH_NAME="pre-commit-$(date +%s)"
git stash save -q --keep-index $STASH_NAME

# scripts to run
./pre-commit-scripts.sh

# pop out stash
STASHES=$(git stash list)
if [[ $STASHES == "$STASH_NAME" ]]; then
  git stash pop -q
fi