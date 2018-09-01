import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Making returns easier to process.", "Simple..Logistics"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
