$(document).ready(function () {
  $('a[href="' + this.location.pathname + '"]').parent().addClass('active');
});
