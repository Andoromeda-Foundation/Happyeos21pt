exports.getQueryString = function(name) {
  var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)');
  var r = window.location.search.substr(1).match(reg);
  if (r != null) return unescape(r[2]);
  return null;
};
exports.getFontSize = function() {
  return window
    .getComputedStyle(document.body)
    .getPropertyValue('font-size')
    .slice(0, -2);
};
