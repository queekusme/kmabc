

import "QueekusPlugins.kmabc.kmapi";
--#ModInstallerLine - DO NOT MOVE

import "QueekusPlugins.kmabc.mod_spaceoddosy";
import "QueekusPlugins.kmabc.mod_test";

mod_init = {
		load_mod_init = function() 
--#ModInstallerLine - DO NOT MOVE

SpaceOddesy.loadmod();
test.loadmod();
		end
	   }


