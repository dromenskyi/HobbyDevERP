'use strict';

function RolesTableView(model) {
	this._model = model;
	
	this._table = $('#js-hd-model-roles-table');
	this._thead = $('thead', this._table);
	this._tbody = $('tbody', this._table);
}

RolesTableView.prototype.update = function() {
	this.rebuildTable(this._model._roles);
}

RolesTableView.prototype.rebuildTable = function(rolesList) {
	this._tbody.html('');
	
	for(var row = 0; row < rolesList.length; row++) {
		var role = rolesList[row];
		var _tr = $(document.createElement('tr'));
		
		var _td_name = $(document.createElement('td'));
		var _td_desc = $(document.createElement('td'));
		var _td_uCount = $(document.createElement('td'));
		var _td_auths = $(document.createElement('td'));
		var _td_actions = $(document.createElement('td'));
		
		var roleViewLink = $(document.createElement('a'))
		roleViewLink.attr('href', APP_ROOT + '/admin/roles/' + role.key);
		roleViewLink.text(role.name);
		
		_td_name.append(roleViewLink);
		_td_desc.text(role.description);
		_td_uCount.text(role.users.length);
		_td_auths.text(role.authorities.length);
		
		_tr.append(_td_name);
		_tr.append(_td_desc);
		_tr.append(_td_uCount);
		_tr.append(_td_auths);
		_tr.append(_td_actions);
		
		this._tbody.append(_tr);
	}
}