import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('map');

const buildMap = () => {
  const markers = JSON.parse(mapElement.dataset.markers);
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

  const options = {
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  }

  if (markers.length == 1) {
    options.zoom = 5;
    options.center = [markers[0].lng, markers[0].lat];
  }

  return new mapboxgl.Map(options);
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    console.log("running...")
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(map);
  })
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
  }
};

export { initMapbox };
