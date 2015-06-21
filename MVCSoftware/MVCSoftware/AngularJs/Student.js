


var app = angular.module('myApp', []);

app.controller('LoginController', ['$scope', '$http', function ($scope, $http) {

    $scope.LoginSubmit = function () {

        $http({
            method: 'POST',
            async: true,
            url: '/Account/LoginSubmit',
            data: { email: $scope.email, password: $scope.password }
        })
            .success(function (data) {
                if (!$("#divError").hasClass("hidden")) {
                    $("#divError").addClass("hidden");
                }
                window.location = "/Account/Manage";
            })
            .error(function () {
                $("#divError").removeClass("hidden");
            });
    }
}]);


$('#myTabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
})