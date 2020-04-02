#!/bin/sh

function repo()
{
	if [ ! -d .git ]; then
        echo "ERROR: This isn't a git project." && return false; 
    fi

    url=`git config --get remote.origin.url`
    url=${url%.git}
    url=${url#git@}

    if [[ ! "$url" =~ "bitbucket" ]] && [[ ! "$url" =~ "github" ]]; then
        echo "ERROR: Remote origin is invalid." && return false;
    fi

    echo "opening https://${url/://}"
    open "https://${url/://}"
}
