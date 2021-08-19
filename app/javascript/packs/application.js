// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import "channels"

Rails.start()
Turbolinks.start()

// MAKE SURE TO IMPORT SELECT2 CSS FILES!!
import 'select2/dist/css/select2.css';

// IMPORT multipleSelect from the file we created for initializing select2
import { multipleSelect } from './init_select2';

// Run our multiplSelect method (should be in an if statement checking for turbolinks though)
multipleSelect();
