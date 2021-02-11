// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require ("bootstrap-datepicker-rails").start()

// External imports
import "bootstrap";
import "mapbox-gl/dist/mapbox-gl.css";


// internal imports
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox } from '../plugins/init_mapbox';
import { initDatepicker } from '../plugins/init_datepicker';

document.addEventListener('turbolinks:load', () => {
initAutocomplete();
initMapbox();
initDatepicker();
});
