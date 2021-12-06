import Typed from 'typed.js';
const initTyped = () => {
  const options = {
    strings: JSON.parse(document.querySelector('#story_data').dataset.story),
    typeSpeed: 40
  };

  const typed = new Typed('#story_data', options);
};
export {initTyped}
