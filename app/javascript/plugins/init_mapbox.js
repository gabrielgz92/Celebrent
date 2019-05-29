import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  const markers = JSON.parse(mapElement.dataset.markers);
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    zoom: 5,
    style: 'mapbox://styles/mapbox/streets-v10',
    center: [markers.lng, markers.lat]
  });
};

const addMarkersToMap = (map, markers) => {
  new mapboxgl.Marker()
    .setLngLat([ markers.lng, markers.lat ])
    .addTo(map);
};

// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 5 });
// };

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
