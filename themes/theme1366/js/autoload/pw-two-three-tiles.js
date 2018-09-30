$(document).ready(function(){

        if(document.location.href.indexOf('three-tiles-sort') > 1) {
          $("#three-tiles-li").addClass('selected');
          $("#two-tiles-li").removeClass('selected');
        }
        else{
          $("#three-tiles-li").removeClass('selected');
          $("#two-tiles-li").addClass('selected');
        }
});
