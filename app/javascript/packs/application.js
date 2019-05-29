import "bootstrap";
import "../plugins/flatpickr"
import { initUpdateNavbarOnScroll } from './components/navbar';
initUpdateNavbarOnScroll();


import { loadDynamicBannerText } from './components/banner';
if (document.getElementById("banner-typed-text")) {
  loadDynamicBannerText();
}

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

initMapbox();

import { initAutocomplete } from '../plugins/init_autocomplete';

initAutocomplete();

import { initAutocompleteBis } from '../plugins/init_autocomplete';

initAutocompleteBis();

$('.collapse').collapse()
