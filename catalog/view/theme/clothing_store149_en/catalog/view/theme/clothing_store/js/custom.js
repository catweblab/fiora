function bookmark(url, title) {
	if (window.sidebar) { // firefox
	window.sidebar.addPanel(title, url, "");
	} else if(window.opera && window.print) { // opera
		var elem = document.createElement('a');
		elem.setAttribute('href',url);
		elem.setAttribute('title',title);
		elem.setAttribute('rel','sidebar');
		elem.click();
	} else if(document.all) {// ie
		window.external.AddFavorite(url, title);
	}
}
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');
		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) { var urlVarPair = urlVars[i].split('=');
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) { urlVarValue = urlVarPair[1]; }
			}
		}
	}
	return urlVarValue;
}
function getUrlParam(name) {
	var name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
	var regexS = "[\\?&]"+name+"=([^&#]*)";
	var regex = new RegExp(regexS);
	var results = regex.exec(window.location.href);
	if (results == null) return "";
	else return results[1];
}
$(document).ready(function() {
	route = getURLVar('route');
	if (!route) { $('#tab_home').addClass('selected');
	} else {
		part = route.split('/');
		if (route == 'common/home')                  { $('#tab_home').addClass('selected');
		} else if (route   == 'account/login')       { $('#tab_login').addClass('selected');
		} else if (route   == 'information/sitemap') { $('#tab_sitemap').addClass('selected');
		} else if (route   == 'information/contact') { $('#tab_contact').addClass('selected');
		} else if (route   == 'product/special')     { $('#tab_special').addClass('selected');
		} else if (part[0] == 'account')             { $('#tab_account').addClass('selected');
		} else if (route   == 'checkout/cart')       { $('#tab_cart').addClass('selected');
		} else if (part[0] == 'checkout')            { $('#tab_checkout').addClass('selected');
		} else { $('#tab_home').addClass('selected'); }
	}
	$('#search input').keydown(function(e) { if (e.keyCode == 13) { moduleSearch(); } });
});