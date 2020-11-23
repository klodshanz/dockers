![graphics](docs/graphics.png)

# Music

```Dockerfile
 docker build --tag music .
 docker run -it -v $(pwd)/output:/output music
```

# Tools

* [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html)
* [mutagen](https://mutagen.readthedocs.io/en/latest/)
* [ffmpeg](https://ffmpeg.org/)

# Extract MP3 from YouTube video

```bash
youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 <youtube-url>
```

# Change the MP3 Tags

```bash
mid3v2 --song="To Be Or Not To Be" --artist="Mel Brooks" <mp3-file.mp3>
mid3v2 <mp3-file.mp3>
```
