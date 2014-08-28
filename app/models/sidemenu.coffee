# The contents of individual model .js files will be concatenated into dist/models.js

do ->

	# Protects views where AngularJS is not loaded from errors
	if ( typeof angular == 'undefined' )
		return

	module = angular.module('SidemenuModel', ['restangular'])

	module.factory 'SidemenuRestangular', (Restangular)->

	  return Restangular.withConfig (RestangularConfigurer)->

	    RestangularConfigurer.setBaseUrl 'http://localhost/data'
	    RestangularConfigurer.setRequestSuffix '.json'
