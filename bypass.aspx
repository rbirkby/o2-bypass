<%

Response.Cache.SetNoTransforms()

%>

<!DOCTYPE html>
<html>
<body>

<!-- ko if: DoNotShow -->
<div>This should not be shown once the page is loaded</div>
<!-- /ko -->



<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/knockout/2.3.0/knockout-min.js"></script>

<script>
$(function() {

var vm = function() {
  this.DoNotShow = ko.observable(false);
};

var model = new vm();

ko.applyBindings(model);

});
</script>
</body>
</html>
