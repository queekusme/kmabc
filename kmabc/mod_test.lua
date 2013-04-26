import "QueekusPlugins.kmabc.kmapi";

t = { 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9 };
identifyer = "SpaceOddosy";
local ModID = kmapi.getNextFreeId()

test_buttons =	{
				modpath ..identifyer ..button.lyricalbasic,		
				modpath ..identifyer ..button.lyricalhover,		
				modpath ..identifyer ..button.compactbasic,		
				modpath ..identifyer ..button.compacthover,		
				modpath ..identifyer ..button.musicbasic,		
				modpath ..identifyer ..button.musichover,		
				modpath ..identifyer ..button.playbasic,		
				modpath ..identifyer ..button.playhover,		
				modpath ..identifyer ..button.playstartbasic,		
				modpath ..identifyer ..button.playstarthover,		
				modpath ..identifyer ..button.playsyncbasic,		
				modpath ..identifyer ..button.playsynchover		
			}
			
test_package =	{
				colour = SO,
				language = ModID,
				buttons = space_oddosy_buttons
			}	

Lang[ModID]={}; -- Space Oddosy
Lang[ModID][1]="Goopington freep";
Lang[ModID][2]="/plugins load lyrical";
Lang[ModID][3]="NOT(C)2012 Queekusme Coding";
Lang[ModID][4]="EnterSongName";
Lang[ModID][5]="Multipart No.";
Lang[ModID][6]="/play ";
Lang[ModID][7]="/playstart";
Lang[ModID][8]="/music";
Lang[ModID][9]="/kmabc compact";
Lang[ModID][10]=" sync";
Lang[ModID][11]="Enter Any Notes You Need Into This Box...\n\n Help command: /kmabc ";
Lang[ModID][12]="KMABC: Loaded Successfully";
Lang[ModID][13]="--KM - ABC Player Chat Commands--";
Lang[ModID][14]="------------version 1.4-------------";
Lang[ModID][15]="-Commands:";
Lang[ModID][16]="-/kmabc [show|hide|toggle|compact|clearplaylist]";
Lang[ModID][17]="Colour Schemes:";
Lang[ModID][18]="Allow Mods To Add Songs";
Lang[ModID][19]="RECENTLY PLAYED SONGS:";
Lang[ModID][20]="/lyrical toggle";
Lang[ModID][21]="Save";
Lang[ModID][22]="Load";
Lang[ModID][23]="(R)";
Lang[ModID][24]="Your Instruments Here:";
Lang[ModID][25]="Playlist Cleared Successfully!";
Lang[ModID][26]="show";
Lang[ModID][27]="hide";
Lang[ModID][28]="toggle";
Lang[ModID][29]="compact";
Lang[ModID][30]="clearplaylist";
Lang[ModID][31]="";
Lang[ModID][32]="";
Lang[ModID][33]="";
Lang[ModID][34]="";
Lang[ModID][35]="";
Lang[ModID][36]="";
Lang[ModID][37]="KMABC Options:";
Lang[ModID][38]="Colour";
Lang[ModID][39]="Language:";
Lang[ModID][40]="CUSTOM";
Lang[ModID][41]="Show Lyrical Button";
Lang[ModID][42]="";
Lang[ModID][43]="Blue";
Lang[ModID][44]="Red";
Lang[ModID][45]="Grey";
Lang[ModID][46]="Violet";
Lang[ModID][47]="Brown";
Lang[ModID][48]="Rainbow";
Lang[ModID][49]="Clear All Quickslots";
Lang[ModID][50]="ARE YOU SURE?";
Lang[ModID][51]="Clear Entire Songlist";
Lang[ModID][52]="Buttons:";
Lang[ModID][53]="Package:";
Lang[ModID][54]="Default";

test = {
				loadmod = function()
					kmapi.addToTable( "colour", "test", t );					-- Adds Custom Color
					kmapi.addToTable( "language", "test", ModID );					-- Adds Custom Language
					kmapi.addToTable( "buttons", "test", test_buttons )			-- Adds Custom Buttons	

					kmapi.package( "test", test_package )				-- Displays All Above In A Neat Little Package
					kmapi.addSongs({"test","test"})	-- Adding Songs								-- Adding 1 song
				end
	      }
