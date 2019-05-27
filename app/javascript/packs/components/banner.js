import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Book an outdoor place", "👇👇"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
