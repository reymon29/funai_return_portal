import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

import { tabs } from '../components/tab';
tabs();

if (document.querySelector('.container-svg')) {
  const btnSave = document.querySelector(".btn-primary");
  const defaultSVG = document.querySelector(".container-svg");
  const defaultFlex = document.querySelector(".flex-container");
  const defaultAlert = document.querySelector(".alert");
  btnSave.addEventListener('click', (event) => {
    defaultFlex.style.display = "none";
    defaultSVG.style.display = "initial";
  });
}

