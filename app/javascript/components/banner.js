import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Book an outdour place for your special event"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
