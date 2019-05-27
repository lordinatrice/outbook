import "bootstrap";
import { initUpdateNavbarOnScroll } from './components/navbar';
initUpdateNavbarOnScroll();

<<<<<<< HEAD

import { loadDynamicBannerText } from './components/banner';
loadDynamicBannerText();
=======
import { loadDynamicBannerText } from './components/banner';
if (document.getElementById("banner-typed-text")) {
loadDynamicBannerText();
}
>>>>>>> ac6ca32a6879ca7aa64c99ce72c5e88347c21bcb

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
