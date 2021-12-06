const initNarrative = () => {
  const storyElement = document.getElementById('story-data');
  if (storyElement) {
    const story = JSON.parse(storyElement.dataset.story);
    const actionsElement = document.getElementById('actions');
    let storyIndex = parseInt(storyElement.dataset.storyIndex);
    const storyBoard = document.getElementById('story-board');
    storyBoard.innerText = story[storyIndex];
    document.addEventListener("keydown", (event) => {
      if (event.code === "Enter" && storyIndex < story.length){
        storyIndex++
        storyBoard.innerText = story[storyIndex];
        if (storyIndex === story.length - 1){
          actionsElement.classList.remove("d-none");
        }
      }

    })
  }
};
export {initNarrative}
