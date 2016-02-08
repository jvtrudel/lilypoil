##
title="picbois"

LILYPOIL_ROOT="/Users/manitou6/Projects/lilyPoil"

templates=("soprano" "alto" "tenor" "basse")

if [ "$1" = "init" ] ; then
	for i in ${templates[@]}; do
     cp "$LILYPOIL_ROOT"/template/"$i".ly .
	done
	exit 0
fi


if  [ "$1" = "pdf" ] ; then
	cat "$LILYPOIL_ROOT"/template/header.ly $2.ly "$LILYPOIL_ROOT"/template/score.ly > seul.ly
	lilypond seul.ly
	mv seul.pdf ${title}_$2.pdf
	#rm seul.ly
	exit 0
fi

if [ "$1" = "mp3" ] ; then
  cat "$LILYPOIL_ROOT"/template/header.ly $2.ly "$LILYPOIL_ROOT"/template/midi.ly > seul.ly
	lilypond seul.ly
	timidity -Ow -o - seul.midi | lame - ${title}_$2.mp3
	mv seul.midi ${title}_$2.midi
  exit 0
fi
