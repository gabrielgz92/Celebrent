import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const span = document.getElementById('banner-typed-text');

  if (span) {
    const celebrities = JSON.parse(span.dataset.celebrities);

    new Typed(span, {
      strings: celebrities,
      typeSpeed: 150,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
