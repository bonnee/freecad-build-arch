exit $(curl -s https://api.github.com/repos/realthunder/FreeCAD/commits/LinkMerge | jq -r "((now - (.commit.author.date | fromdateiso8601) )  / (60*60*24)  | trunc)")

# TODO: fetch AUR pkgver and compare to git version
