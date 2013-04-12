function bookmark {
    echo "$1 $(pwd)" >> ~/.bookmarks;
}
    
function g {
    cd $(cat ~/.bookmarks | awk "\$1==\"$1\"" | tail -n 1 | awk '{print $2}');
}
