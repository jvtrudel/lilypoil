title=au_chant_de_lalouette

all: soprano alto tenor basse

soprano:
	cat header.ly soprano.ly midi.ly > seul.ly
	lilypond seul.ly
	timidity -Ow -o - seul.midi | lame - ${title}_soprano.mp3
	mv seul.midi ${title}_soprano.midi
	cat header.ly soprano.ly score.ly > seul.ly
	lilypond seul.ly
	mv seul.pdf ${title}_soprano.pdf
	rm seul.ly

alto:
	cat header.ly alto.ly midi.ly > seul.ly
	lilypond seul.ly
	timidity -Ow -o - seul.midi | lame - ${title}_alto.mp3
	mv seul.midi ${title}_alto.midi
	cat header.ly alto.ly score.ly > seul.ly
	lilypond seul.ly
	mv seul.pdf ${title}_alto.pdf
	rm seul.ly

tenor:
	cat header.ly tenor.ly midi.ly > seul.ly
	lilypond seul.ly
	timidity -Ow -o - seul.midi | lame - ${title}_tenor.mp3
	mv seul.midi ${title}_tenor.midi
	cat header.ly tenor.ly score.ly > seul.ly
	lilypond seul.ly
	mv seul.pdf ${title}_tenor.pdf
	rm seul.ly

basse:
	cat header.ly basse.ly midi.ly > seul.ly
	lilypond seul.ly
	timidity -Ow -o - seul.midi | lame - ${title}_basse.mp3
	mv seul.midi ${title}_basse.midi
	cat header.ly basse.ly score.ly > seul.ly
	lilypond seul.ly
	mv seul.pdf ${title}_basse.pdf
	rm seul.ly
