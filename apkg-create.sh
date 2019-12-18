if [ -z "$@" ] then 
/apkg-tools.py create /src --destination /dest
else
/apkg-tools.py create "$@"
fi
chown $DEST_UID:$DEST_GID /dest/*