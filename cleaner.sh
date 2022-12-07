MODPATH=${0%/*}
APP=SoundAlive
PKG=com.sec.android.app.soundalive
for APPS in $APP; do
  rm -f `find /data/system/package_cache -type f -name *$APPS*`
  rm -f `find /data/dalvik-cache /data/resource-cache -type f -name *$APPS*.apk`
done
for PKGS in $PKG; do
  rm -rf /data/user/*/$PKGS/*
done


