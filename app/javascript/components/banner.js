import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["intiMASKy"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };
