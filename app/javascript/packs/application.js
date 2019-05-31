import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';

import "bootstrap";



import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';

import { initDatepicker } from "../components/datepicker";
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../components/init_select2';
import { loadDynamicBannerText } from '../components/banner';

initMapbox();
initSelect2();
loadDynamicBannerText();
initDatepicker();

