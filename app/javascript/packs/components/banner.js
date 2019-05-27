import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Book an outdour place", "👇👇"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
