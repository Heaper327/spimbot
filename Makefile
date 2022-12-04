.DEFAULT: debug
.PHONY: debug grade

debug: spimbot.s
	QtSpimbot -bot0 spimbot.s -mapseed 0 -puzzleseed 0 -qual -run -drawcycles 5000

qual: spimbot.s
	QtSpimbot -bot0 spimbot.s -randommap -nodebug -run -maponly -exit_when_done -randompuzzle -qual
