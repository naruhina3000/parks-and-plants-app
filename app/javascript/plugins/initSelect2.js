import $ from "jquery";
import select2 from "select2";

const initSelect2 = () => {
  $(document).ready(function () {
    $("select.form-control").select2();
  });
};

export { initSelect2 };
