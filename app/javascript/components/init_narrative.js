const initNarrative = () => {
  const storyElement = document.getElementById('story-data');
  if (storyElement) {
    const story = JSON.parse(storyElement.dataset.story);
    const actionsElement = document.getElementById('actions');
    let storyIndex = 0
    const storyLines = document.querySelectorAll('.story-line');
    storyLines[storyIndex].classList.remove('d-none')

    document.addEventListener("keyup", (event) => {
      if (event.code === "Enter" && storyIndex < story.length){
        storyLines.forEach((storyLine) => {
          storyLine.classList.add("d-none");
        })
        storyLines[storyIndex].classList.remove("d-none");
        if (storyIndex === story.length - 1){
          actionsElement.classList.remove("d-none");
        }
        storyIndex++
      }

    })
  }
};
export {initNarrative}
