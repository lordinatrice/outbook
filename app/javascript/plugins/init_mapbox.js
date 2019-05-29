import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/svilder/cjw65ool003zi1cmvxn9jpwij'
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken, mapboxgl: mapboxgl }));

    const markers = JSON.parse(mapElement.dataset.markers);

    const mapMarkers = [];
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '45px';
      element.style.height = '45px';

      const newMarker = new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);

      mapMarkers.push(newMarker)
      newMarker.getElement().dataset.markerId = marker.id;
      newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
      newMarker.getElement().addEventListener('mouseleave', (e) => toggleCardHighlighting(e) );
    });

    fitMapToMarkers(map, markers);
    openInfoWindow(mapMarkers);
  }
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const openInfoWindow = (markers) => {
  const cards = document.querySelectorAll('.card-place');
  cards.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
}

const toggleCardHighlighting = (event) => {
  const card = document.querySelector(`[data-place-id="${event.currentTarget.dataset.markerId}"]`);
  const link = card.parentElement
  link.classList.toggle('highlight');
}

export { initMapbox };
