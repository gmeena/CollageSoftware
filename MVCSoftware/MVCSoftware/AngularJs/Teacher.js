angular.module('plunker', ['ui.bootstrap'])
.controller('TabsDemoCtrl', ['$scope', function ($scope) {
    $scope.selectedTab = 0;

    $scope.tabs = [
      { title: "Step 1", content: " content 1", active: true },
      { title: "Step 2", content: " content 2" },
      { title: "Step 3", content: " content 3" },
      { title: "Step 4", content: " content 4" }

    ];

    $scope.tabSelected = function (index) {
        $scope.selectedTab = index;
    }

    var isLastTab = function () {
        return $scope.selectedTab === $scope.tabs.length - 1;
    }

    $scope.isLastTab = isLastTab;

    $scope.proceed = function () {
        if (!isLastTab()) {
            $scope.selectedTab++;
            $scope.tabs[$scope.selectedTab].active = true;
        }
    };


}]);