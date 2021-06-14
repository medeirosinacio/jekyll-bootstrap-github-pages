#!/bin/bash
# docker run -ti --rm \
#   -v /home/$USER:/home/$USER \
#   -w $PWD \
#   --dns 8.8.8.8 \
#   -p 80:4000 \
#   -p 4000:4000 \
#   -p 35729:35729 \
#   jekyll/builder \
#   /bin/bash -c "bundle install && bundle exec jekyll serve --host 0.0.0.0 --livereload"
git filter-branch --env-filter '
OLD_EMAIL="asdasd"
CORRECT_NAME="Douglas Medeiros"
CORRECT_EMAIL="medeirosinacio@outlook.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags