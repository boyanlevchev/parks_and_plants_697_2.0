import $ from 'jquery'; // import jquery $ tool
import select2 from 'select2'; // import select2 from lib

const multipleSelect = () => {
  $(document).ready(function() {
    // wait for document to load i.e. need some divs and inputs on the screen for this to work
    $('.multiple-select').select2();
    // attach select2 to the input with class multiple-select
  })
}
// export it
export { multipleSelect }
