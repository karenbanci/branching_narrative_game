const initNarrative = () => {
  const storyElement = document.getElementById('story-data');
  if (storyElement) {
    const story = JSON.parse(storyElement.dataset.story);
    const actionsElement = document.getElementById('actions');
    let storyIndex = 1
    const storyLines = document.querySelectorAll('.story-line');


    document.addEventListener("keyup", (event) => {
      if ((event.code === "Enter" || event.code === "Space") && storyIndex <= story.length){
        storyLines.forEach((storyLine) => {
          storyLine.classList.add("d-none");
        })
        storyLines[storyIndex]?.classList.remove("d-none");
        if (storyIndex === story.length){
          storyLines[storyLines.length - 1].classList.remove("d-none");
          actionsElement.classList.remove("d-none");
        }
        storyIndex++
      }

    })
  }
};
export {initNarrative}
