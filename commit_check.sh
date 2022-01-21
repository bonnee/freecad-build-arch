exit $(curl -s https://api.github.com/repos/realthunder/FreeCAD/commits/LinkStage3 | jq -r "((now - (.commit.author.date | fromdateiso8601) )  / (60*60*24)  | trunc)")

