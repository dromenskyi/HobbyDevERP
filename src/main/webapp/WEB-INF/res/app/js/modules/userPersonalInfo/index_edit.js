'use strict';

$(document).ready(function() {
	var loader = new ScriptLoader();
	
	loader.load([
		loader.MODULE_USER_PERSONAL_INFO_PATH + 'model.js',
		loader.MODULE_USER_PERSONAL_INFO_PATH + 'view_edit.js',
		loader.MODULE_USER_PERSONAL_INFO_PATH + 'controller.js'
	]);
	
	var userPersonalInfoModel = new UserPersonalInfoModel();
	var userPersonalInfoView = new UserPersonalInfoEditView(userPersonalInfoModel);
	var userPersonalInfoController = new UserPersonalInfoController(userPersonalInfoModel, userPersonalInfoView);
	
});