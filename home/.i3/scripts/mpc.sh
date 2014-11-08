SONG=`mpc current`
STATUS=`mpc | sed -n 2p`
TIME=`echo $STATUS | awk '{print $3}'`
PLAYPAUSE=`echo $STATUS | awk '{print $1}'`
if [ "$PLAYPAUSE" = "[playing]" ]; then
  PP=""
else
  PP=""
fi
# echo "$STATUS"
echo "$PP  $SONG - $TIME"
