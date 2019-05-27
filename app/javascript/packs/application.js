import "bootstrap";
import { initUpdateNavbarOnScroll } from './components/navbar';
initUpdateNavbarOnScroll();

<<<<<<< HEAD

import { loadDynamicBannerText } from './components/banner';
if (document.getElementById("banner-typed-text")) {
loadDynamicBannerText();
}
=======
// import { loadDynamicBannerText } from './components/banner';
// loadDynamicBannerText();
>>>>>>> b70aa4bcc62486d92699f04000dd6c44b26ed185

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
