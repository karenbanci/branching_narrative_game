var play_pause_status = "play";

const backgroundAudio = () => {
  const music = document.getElementById('music');
  if (music) {

    const startMusic = () => {
      music.volume = 0.5;
      music.play();
    };

    const pauseMusic = () => {
      music.volume = 0.0;
      music.pause();
    };

    startMusic();
    pauseMusic();

    music.addEventListener("ended", startMusic);
  };
};
// const backgroundAudio = () => {
//   var play_pause_status = "play";

//   const music = document.getElementById('music');
//   const startMusic = () => {
//     music.volume = 0.5;
//     music.play();
//   }

//   const pauseMusic = () => {
//     music.pause();
//   }

//   pauseMusic();
//   startMusic();
//   music.addEventListener("ended", startMusic);
// }
export{backgroundAudio}
