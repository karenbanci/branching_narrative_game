const backgroundAudio = () => {
  const music = document.getElementById('music');
  const startMusic = () => {
    music.volume = 0.5;
    music.play();
  }
  const pauseMusic = () => {
    music.pause();
  }
  startMusic();
  music.addEventListener("ended", startMusic);
}
export{backgroundAudio}
