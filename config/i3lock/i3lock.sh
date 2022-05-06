# Colors
BLANK='#16161e'
DEFAULT='#24283b'
TEXT='#7aa2f7'
WRONG='#f7768e'
VERIFYING='#9ece6a'
ORN='#7aa2f7'

# Set the paused status of dunst
dunstctl set-paused true

# Font
FONT="JetBrainsMono Nerd Font"


i3lock \
--color=$BLANK				\
--insidever-color=$BLANK     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$BLANK   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$VERIFYING          \
--wrong-color=$WRONG          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$ORN         \
--bshl-color=$ORN          \
\
--screen 1                \         \
--clock                   \
--indicator               \
--no-modkey-text       \
--verif-text="Verifying..." \
--wrong-text="You AREN'T THE ALIEN" \
--time-str="%I:%M %p" \
--date-str="%A, %d %b" \
--radius=155 \
--greeter-text="ARE YOU THE ALIEN ?"			\
--greeter-color=${TEXT}				\
\
--date-font="$FONT" \
--time-font="$FONT" \
--layout-font="$FONT" \
--verif-font="$FONT" \
--wrong-font="$FONT" \
--greeter-font="$FONT" \
\
--date-size=30 \
--time-size=40 \
--layout-size=50 \
--verif-size=30--wrongsize=40 \
--greeter-size=30\
\

echo "Hello"

# Set the paused status of dunst
dunstctl set-paused false

sleep 1
exit
