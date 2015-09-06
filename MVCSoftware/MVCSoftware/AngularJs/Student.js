﻿


var app = angular.module('myApp', ['ngTable', 'ngResource', 'ngMockE2E']).
                run(function ($http, $httpBackend, $filter, $log, NgTableParams) {
                    //emulation of api server
                    $httpBackend.whenGET(/data.*/).respond(function (method, url, data, headers) {
                        var query = url.split('?')[1],
                            requestParams = {};

                        $log.log('Ajax request: ', url);

                        var vars = query.split('&');
                        for (var i = 0; i < vars.length; i++) {
                            var pair = vars[i].split('=');
                            requestParams[decodeURIComponent(pair[0])] = decodeURIComponent(pair[1]);
                        }
                        // parse url params
                        for (var key in requestParams) {
                            if (key.indexOf('[') >= 0) {
                                var params = key.split(/\[(.*)\]/), value = requestParams[key], lastKey = '';

                                angular.forEach(params.reverse(), function (name) {
                                    if (name != '') {
                                        var v = value;
                                        value = {};
                                        value[lastKey = name] = isNumber(v) ? parseFloat(v) : v;
                                    }
                                });
                                requestParams[lastKey] = angular.extend(requestParams[lastKey] || {}, value[lastKey]);
                            } else {
                                requestParams[key] = isNumber(requestParams[key]) ? parseFloat(requestParams[key]) : requestParams[key];
                            }
                        }


                        data = [{ name: "Moroni", age: 50 },
                            { name: "Tiancum", age: 43 },
                            { name: "Jacob", age: 27 },
                            { name: "Nephi", age: 29 },
                            { name: "Enos", age: 34 },
                            { name: "Tiancum", age: 43 },
                            { name: "Jacob", age: 27 },
                            { name: "Nephi", age: 29 },
                            { name: "Enos", age: 32 },
                            { name: "Tiancum", age: 43 },
                            { name: "Jacob", age: 27 },
                            { name: "Nephi", age: 29 },
                            { name: "Enos S.", age: 65 },
                            { name: "Tiancum", age: 43 },
                            { name: "Jacob", age: 27 },
                            { name: "Nephi", age: 29 },
                            { name: "Enos", age: 76 }];

                        var params = new NgTableParams(requestParams);
                        data = params.filter() ? $filter('filter')(data, params.filter()) : data;
                        data = params.sorting() ? $filter('orderBy')(data, params.orderBy()) : data;

                        var total = data.length;
                        data = data.slice((params.page() - 1) * params.count(), params.page() * params.count());

                        return [200, {
                            result: data,
                            total: total
                        }];
                    });
                    $httpBackend.whenGET(/.*/).passThrough();
                    $httpBackend.whenPOST(/.*/).passThrough();
                })
    .directive('loadingContainer', function () {
        return {
            restrict: 'A',
            scope: false,
            link: function (scope, element, attrs) {
                var loadingLayer = angular.element('<div class="loading"></div>');
                element.append(loadingLayer);
                element.addClass('loading-container');
                scope.$watch(attrs.loadingContainer, function (value) {
                    loadingLayer.toggleClass('ng-hide', !value);
                });
            }
        };
    })
    .controller('StudentController', ['$scope', '$http', '$resource', 'NgTableParams', '$filter', '$timeout', function ($scope, $http, $resource, NgTableParams, $filter, $timeout) {

        //        var Api = $resource('/data');

        $scope.tableParams = new NgTableParams({
            page: 1,            // show first page
            count: 5,          // count per page
            sorting: {
                name: 'asc'     // initial sorting
            }
        }, {
            counts: [5, 10, 15],
            paginationMaxBlocks: 9,
            total: 0,           // length of data
            getData: function ($defer, params) {
                // ajax request to api
                //Api.get(params.url(), function (data) {
                //    $timeout(function () {
                //        // update table params
                //        params.total(data.length);
                //        // set new data
                //        $defer.resolve(data);
                //    }, 500);
                //});


                $http({
                    method: 'POST',
                    async: true,
                    url: '/Student/StudentInfo/GetStudents',
                    data: { count: params.count(), pageindex: params.page() }
                })
                .success(function (data) {
                    $scope.student = data;

                    var filterdata = params.filter() ? $filter('filter')($scope.student, params.filter()) : $scope.student;
                    var total;
                    if (data.length > filterdata.length) {
                        total = filterdata.length;
                    } else {
                        total = data[0].StudentCount;
                    }

                    filterdata = params.sorting() ? $filter('orderBy')(filterdata, params.orderBy()) : filterdata;


                    //filterdata = filterdata.slice((params.page() - 1) * params.count(), params.page() * params.count());
                    // update table params
                    params.total(total);
                    // set new data
                    $defer.resolve(filterdata);
                })
                .error(function (e) {
                    alert('hello');
                });
            }
        });

        $scope.columns = [
                { title: 'Student Name', field: 'Student_Name', visible: true, filter: { 'Student_Name': 'text' } },
                { title: 'DOB', field: 'DOB', visible: true },
                { title: 'Email', field: 'Email', visible: true },
                { title: 'Phone', field: 'Phone', visible: true },
                { title: 'Phone', field: 'Phone', visible: true }
        ];

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

        $scope.UpdateAddStudent = function () {

            var student = {
                Student_Id: $scope.user.Student_Id, First_Name: $scope.user.First_Name, Middle_Name: $scope.user.Middle_Name, Last_Name: $scope.user.Last_Name,
                Phone: $scope.user.Phone, DOB: $scope.user.DOB, Email: $scope.user.Email, Class_Id: $scope.user.Class_Id, Gender: $scope.user.Gender_Id
            };

            $http({
                method: 'POST',
                async: true,
                url: '/Student/StudentInfo/UpdateAddStudent',
                data: student
            })
                .success(function (data) {
                    $("#alertSuccessUpdateAddStudent").fadeIn(300).delay(1500).fadeOut(400).removeClass("hidden");
                })
                .error(function () {
                    $("#alertErrorUpdateAddStudent").removeClass("hidden");
                });
        }

        $scope.StudentEdit = function (e) {
            $('#myModal').modal('show');
            $(".alert").alert();
            if (e != undefined) {
                $scope.user = this.user;
            }
            else {
                $scope.user = null;
            }
        }

        $http({
            method: 'GET',
            async: true,
            url: '/Student/StudentInfo/GetClass'
        })
                .success(function (data) {
                    $scope.Classes = data;
                })
                .error(function (e) {

                });

    }]);


$('#myTabs a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
})

function isNumber(n) {
    return !isNaN(parseFloat(n)) && isFinite(n);
}

$('#closeUpdateAddStudent').click(function () {
    $('#alertUpdateAddStudent').hide();
})

$('#closeSuccessUpdateAddStudent').click(function () {
    $('#alertSuccessUpdateAddStudent').hide();
})