MODPATH=${0%/*}

# magisk
if [ -d /sbin/.magisk ]; then
  MAGISKTMP=/sbin/.magisk
else
  MAGISKTMP=`realpath /dev/*/.magisk`
fi

# path
VENDOR=`realpath $MAGISKTMP/mirror/vendor`

# destination
if [ -d $VENDOR/lib/soundfx ]; then
  LIBPATH="\/vendor\/lib\/soundfx"
else
  LIBPATH="\/system\/lib\/soundfx"
fi
MODAEC=`find $MODPATH/system -type f -name *audio*effects*.conf`
MODAEX=`find $MODPATH/system -type f -name *audio*effects*.xml`
MODAP=`find $MODPATH/system -type f -name *policy*.conf -o -name *policy*.xml`

# function
remove_conf() {
for RMVS in $RMV; do
  sed -i "s/$RMVS/removed/g" $MODAEC
done
sed -i 's/path \/vendor\/lib\/soundfx\/removed//g' $MODAEC
sed -i 's/path \/system\/lib\/soundfx\/removed//g' $MODAEC
sed -i 's/path \/vendor\/lib\/removed//g' $MODAEC
sed -i 's/path \/system\/lib\/removed//g' $MODAEC
sed -i 's/library removed//g' $MODAEC
sed -i 's/uuid removed//g' $MODAEC
sed -i "/^        removed {/ {;N s/        removed {\n        }//}" $MODAEC
}
remove_xml() {
for RMVS in $RMV; do
  sed -i "s/\"$RMVS\"/\"removed\"/g" $MODAEX
done
sed -i 's/<library name="removed" path="removed"\/>//g' $MODAEX
sed -i 's/<library name="proxy" path="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed"\/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed"\/>//g' $MODAEX
sed -i 's/<apply effect="removed"\/>//g' $MODAEX
sed -i 's/<library name="removed" path="removed" \/>//g' $MODAEX
sed -i 's/<library name="proxy" path="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<effect name="removed" uuid="removed" library="removed" \/>//g' $MODAEX
sed -i 's/<libsw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<libhw library="removed" uuid="removed" \/>//g' $MODAEX
sed -i 's/<apply effect="removed" \/>//g' $MODAEX
}

# remove
RMV="libsamsungSoundbooster_plus_legacy.so libsamsungSoundbooster_plus.so
     soundbooster_plus
     50de45f0-5d4c-11e5-a837-0800200c9a66
     libaudiosaplus_sec_legacy.so libaudiosaplus_sec.so
     soundalive_sec soundalive
     cf65eb39-ce2f-48a8-a903-ceb818c06745
     05227ea0-50bb-11e3-ac69-0002a5d5c51b
     0b2dbc60-50bb-11e3-988b-0002a5d5c51b
     libmysound_legacy.so libmysound.so
     mysound dha
     263a88e0-50b1-11e2-bcfd-0800200c9a66
     37155c20-50bb-11e3-9fac-0002a5d5c51b
     3ef69260-50bb-11e3-931e-0002a5d5c51b
     libsamsungSoundbooster_tdm_legacy.so
     tdm
     beb1d058-916a-4adf-9cfe-54ee5ba8c4a5
     libvolumemonitor_energy.so
     volumemonitor
     16311c29-bb53-4415-b7af-ae653e812de8
     libmyspace.so
     myspace sa3d
     3462a6e0-655a-11e4-8b67-0002a5d5c51b
     1c91fca0-664a-11e4-b8c2-0002a5d5c51b
     c7a84e61-eebe-4fcc-bc53-efcb841b4625
     libLifevibes_lvverx.so
     lmfv fens
     3b75f00-93ce-11e0-9fb8-0002a5d5c51b
     d6dbf400-93ce-11e0-bcd7-0002a5d5c51b
     df0afc20-93ce-11e0-98de-0002a5d5c51b
     989d9460-413d-11e1-8b0d-0002a5d5c51b
     cbcc5980-476d-11e1-82ee-0002a5d5c51b
     libgearvr.so
     vr360audio vr3d
     e6388202-e7a4-4c72-b68a-332eeeba269b"
if [ "$MODAEC" ]; then
  remove_conf
fi
if [ "$MODAEX" ]; then
  remove_xml
fi




