import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#celebrity_tag_tag').select2(
    {
      tags: true
  });
};

export { initSelect2 };
