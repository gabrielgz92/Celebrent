import "bootstrap";

import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';

initSelect2();
