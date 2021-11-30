mid3v2 '/output/George Michael Megamix (YEP0elXc2Rw).mp3'
mid3v2 --song="Relax Music - New York JAZZ" --artist="Various" --picture http://ljunggren.dk/spotify/new-york.png /output/<mp3-file.mp3>
mid3v2 '/output/George Michael Megamix (YEP0elXc2Rw).mp3'
mid3v2 --song="George Michael Megamix" --artist="George Michael" --album="YouTube" --picture=/output/george-michael.png '/output/George Michael Megamix (YEP0elXc2Rw).mp3'
wget http://ljunggren.dk/spotify/george-michael.png -O '/output/george-michael.png'
youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 --output '/output/George Michael Megamix (%(id)s).mp3' https://www.youtube.com/watch?v=YEP0elXc2Rw
