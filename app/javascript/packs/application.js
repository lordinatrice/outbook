import "bootstrap";
import { initUpdateNavbarOnScroll } from './components/navbar';
initUpdateNavbarOnScroll();

import { loadDynamicBannerText } from './components/banner';
if (document.getElementById("banner-typed-text")) {
loadDynamicBannerText();
}

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initAutocomplete } from '../plugins/init_autocomplete';

initAutocomplete();
