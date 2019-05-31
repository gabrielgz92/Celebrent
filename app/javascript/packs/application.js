import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import 'select2/dist/css/select2.css';

import { initDatepicker } from "../components/datepicker";
import { initMapbox } from '../plugins/init_mapbox';
import { initSelect2 } from '../components/init_select2';

initMapbox();
initSelect2();
initDatepicker();
