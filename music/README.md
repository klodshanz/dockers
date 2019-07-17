# Docker

```Dockerfile
 docker build --tag music .
 docker run -it -v $(pwd)/output:/output music
```

# Tools

* [youtube-dl](https://ytdl-org.github.io/youtube-dl/download.html)
* [id3tool](http://nekohako.xware.cx/id3tool/) 
* [ffmpeg](https://ffmpeg.org/)

# Extract MP3 from YouTube video
```bash
youtube-dl --extract-audio --audio-format mp3 <video URL>

```

# Example

Extract mp3 from youtube video:

```bash
youtube-dl --extract-audio --audio-format --output "/output/%(title)s.%(ext)s" mp3 https://www.youtube.com/watch?v=WkPTHlJwZnE
```
