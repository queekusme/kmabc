import "QueekusPlugins.kmabc.kmapi";

hasLoaded = false
buffer = false

optionsPanel = Turbine.UI.Control();
optionsPanel:SetBackColor( Turbine.UI.Color( 0.0, 0.05, 0.25 ) );
optionsPanel:SetSize( 600, 600 );

optionsPanel.MouseEnter = function(sender, args)
	UnExploit()
end

local Title = Turbine.UI.Label();
Title:SetSize( 150, 22 );
Title:SetPosition( 10, 10 );
Title:SetParent( optionsPanel );

ColourLBox = Turbine.UI.ListBox();
ColourLBox:SetSize( 150, 98 );
ColourLBox:SetPosition( 7, 30 );
ColourLBox:SetParent( optionsPanel );
ColourLBox:SetBackColor( Turbine.UI.Color( 0.2,0.2,0.2 ))

sidebar = Turbine.UI.Lotro.ScrollBar();
sidebar:SetOrientation( Turbine.UI.Orientation.Vertical );
sidebar:SetParent( optionsPanel );
sidebar:SetSize( 8, 98 );
sidebar:SetPosition( 149, 30 );
sidebar:SetZOrder(60);
ColourLBox:SetVerticalScrollBar( sidebar );

LanguageLBox = Turbine.UI.ListBox();
LanguageLBox:SetSize( 150, 98 );
LanguageLBox:SetPosition( 163, 30 );
LanguageLBox:SetParent( optionsPanel );
LanguageLBox:SetBackColor( Turbine.UI.Color( 0.2,0.2,0.2 ))

sidebar2 = Turbine.UI.Lotro.ScrollBar();
sidebar2:SetOrientation( Turbine.UI.Orientation.Vertical );
sidebar2:SetParent( optionsPanel );
sidebar2:SetSize( 8, 98 );
sidebar2:SetPosition( 305, 30 );
sidebar2:SetZOrder(60);
LanguageLBox:SetVerticalScrollBar( sidebar2 );

ButtonsLBox = Turbine.UI.ListBox();
ButtonsLBox:SetSize( 150, 97 );	
ButtonsLBox:SetPosition( 7, 135 );
ButtonsLBox:SetParent( optionsPanel );
ButtonsLBox:SetBackColor( Turbine.UI.Color( 0.2,0.2,0.2 ))

sidebar3 = Turbine.UI.Lotro.ScrollBar();
sidebar3:SetOrientation( Turbine.UI.Orientation.Vertical );
sidebar3:SetParent( optionsPanel );
sidebar3:SetSize( 8, 97 );
sidebar3:SetPosition( 149, 135 );
sidebar3:SetZOrder(60);
ButtonsLBox:SetVerticalScrollBar( sidebar3 );

PackageLBox = Turbine.UI.ListBox();
PackageLBox:SetSize( 150, 97 );
PackageLBox:SetPosition( 163, 135 );
PackageLBox:SetParent( optionsPanel );
PackageLBox:SetBackColor( Turbine.UI.Color( 0.2,0.2,0.2 ))

sidebar4 = Turbine.UI.Lotro.ScrollBar();
sidebar4:SetOrientation( Turbine.UI.Orientation.Vertical );
sidebar4:SetParent( optionsPanel );
sidebar4:SetSize( 8, 97 );
sidebar4:SetPosition( 305, 135 );
sidebar4:SetZOrder(60);
PackageLBox:SetVerticalScrollBar( sidebar4 );

local LyricalBCheck = Turbine.UI.Lotro.CheckBox();   -- Lyrical Fix Part
LyricalBCheck:SetSize( 300, 20 );     
LyricalBCheck:SetPosition( 10, 240 ); 
LyricalBCheck:SetParent( optionsPanel );               
LyricalBCheck:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);                   
LyricalBCheck:SetForeColor(Turbine.UI.Color(  1.0, 1.0, 1.0 ));   

local clrQuickslots = Turbine.UI.Lotro.Button()
clrQuickslots:SetSize( 150, 20 );     
clrQuickslots:SetPosition( 10, 270 ); 
clrQuickslots:SetParent( optionsPanel );                                
clrQuickslots:SetForeColor(Turbine.UI.Color(  1.0, 1.0, 1.0 ));   

local Confirmation1 = Turbine.UI.Label();
Confirmation1:SetSize( 300, 20 );     
Confirmation1:SetPosition( 165, 275 ); 
Confirmation1:SetParent( optionsPanel );               
Confirmation1:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCentre);                   
Confirmation1:SetForeColor(Turbine.UI.Color(  1.0, 0.0, 0.0 ));  

local clrSongList = Turbine.UI.Lotro.Button()
clrSongList:SetSize( 150, 20 );     
clrSongList:SetPosition( 10, 290 ); 
clrSongList:SetParent( optionsPanel );                                
clrSongList:SetForeColor(Turbine.UI.Color(  1.0, 1.0, 1.0 ));   

local Confirmation2 = Turbine.UI.Label();
Confirmation2:SetSize( 300, 20 );     
Confirmation2:SetPosition( 165, 295 ); 
Confirmation2:SetParent( optionsPanel );               
Confirmation2:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCentre);                   
Confirmation2:SetForeColor(Turbine.UI.Color(  1.0, 0.0, 0.0 ));  

AllowSongs = Turbine.UI.Lotro.CheckBox();   
AllowSongs:SetSize( 350, 20 );     
AllowSongs:SetPosition( 10, 325 ); 
AllowSongs:SetParent( optionsPanel );               
AllowSongs:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleLeft);                   
AllowSongs:SetForeColor(Turbine.UI.Color(  1.0, 1.0, 1.0 ));   
AllowSongs:SetChecked(true);

Langnum = "0";
Getlocalval = Turbine.Engine.GetLocale(); --"SET DEBUG VALUE HERE";--

P1 = "";
P2 = "";
P3 = "";
P4 = "";
P5 = "";
P6 = "";
P7 = "";
P8 = "";
P9 = "";
P10 = "";
P11 = "";
P12 = "";
P13 = "";
P14 = "";
P15 = "";
P16 = "";
P17 = "";
P18 = "";
P19 = "";
P20 = "";
P21 = "";
P22 = "";
P23 = "";
P24 = "";
P25 = "";
P26 = "";
P27 = "";
P28 = "";
P29 = "";
P30 = "";
P31 = "";
P32 = "";
P33 = "";
P34 = "";
P35 = "";
P36 = "";
P37 = "";
P38 = "";
P39 = "";
P40 = "";
P41 = "";
P42 = "";
P43 = "";
P44 = "";
P45 = "";
P46 = "";
P47 = "";
P48 = "";
P49 = "";
P50 = "";
P51 = "";
P52 = "";
P53 = "";
P54 = "";

function language(i)
	langnum = i
	pcall( function() P1 = Lang[i][1] end);
	pcall( function() P2 = Lang[i][2] end);
	pcall( function() P3 = Lang[i][3] end);
	pcall( function() P4 = Lang[i][4] end);
	pcall( function() P5 = Lang[i][5] end);
	pcall( function() P6 = Lang[i][6] end);
	pcall( function() P7 = Lang[i][7] end);
	pcall( function() P8 = Lang[i][8] end);
	pcall( function() P9 = Lang[i][9] end);
	pcall( function() P10 = Lang[i][10] end);
	pcall( function() P11 = Lang[i][11] end);
	pcall( function() P12 = Lang[i][12] end);
	pcall( function() P13 = Lang[i][13] end);
	pcall( function() P14 = Lang[i][14] end);
	pcall( function() P15 = Lang[i][15] end);
	pcall( function() P16 = Lang[i][16] end);
	pcall( function() P17 = Lang[i][17] end);
	pcall( function() P18 = Lang[i][18] end);
	pcall( function() P19 = Lang[i][19] end);
	pcall( function() P20 = Lang[i][20] end);
	pcall( function() P21 = Lang[i][21] end);
	pcall( function() P22 = Lang[i][22] end);
	pcall( function() P23 = Lang[i][23] end);
	pcall( function() P24 = Lang[i][24] end);
	pcall( function() P25 = Lang[i][25] end);
	pcall( function() P26 = Lang[i][26] end);
	pcall( function() P27 = Lang[i][27] end);
	pcall( function() P28 = Lang[i][28] end);
	pcall( function() P29 = Lang[i][29] end);
	pcall( function() P30 = Lang[i][30] end);
	pcall( function() P31 = Lang[i][31] end);
	pcall( function() P32 = Lang[i][32] end);
	pcall( function() P33 = Lang[i][33] end);
	pcall( function() P34 = Lang[i][34] end);
	pcall( function() P35 = Lang[i][35] end);
	pcall( function() P36 = Lang[i][36] end);
	pcall( function() P37 = Lang[i][37] end);
	pcall( function() P38 = Lang[i][38] end);
	pcall( function() P39 = Lang[i][39] end);
	pcall( function() P40 = Lang[i][40] end);
	pcall( function() P41 = Lang[i][41] end);
	pcall( function() P42 = Lang[i][42] end);
	pcall( function() P43 = Lang[i][43] end);
	pcall( function() P44 = Lang[i][44] end);
	pcall( function() P45 = Lang[i][45] end);
	pcall( function() P46 = Lang[i][46] end);
	pcall( function() P47 = Lang[i][47] end);
	pcall( function() P48 = Lang[i][48] end);
	pcall( function() P49 = Lang[i][49] end);
	pcall( function() P50 = Lang[i][50] end);
	pcall( function() P51 = Lang[i][51] end);
	pcall( function() P52 = Lang[i][52] end);
	pcall( function() P53 = Lang[i][53] end);
	pcall( function() P54 = Lang[i][54] end);
end

UpdLang = function(sender, args)
	
	
	if (Getlocalval == "en") then
		Langnum = "1";
		LangVerified = true;

	elseif (Getlocalval == "fr") then
		Langnum = "2";
		LangVerified = true;

	elseif (Getlocalval == "de") then
		Langnum = "3";
		LangVerified = true;

	
	end
		
	optLang(Langnum)

end

function optLang(i)

	language(i)

	Title:SetText( ""..P37 );

	LyricalBCheck:SetText(" "..P41);  
	
	clrQuickslots:SetText(""..P49); 
	clrSongList:SetText(""..P51); 
	AllowSongs:SetText(" "..P18); 
	
	clrQuickslots.MouseEnter = function(sender, args)
		
		Confirmation1:SetText(""..P50)

	end

	clrQuickslots.MouseLeave = function(sender, args)
		
		Confirmation1:SetText("")

	end

	clrQuickslots.Click = function(sender, args)
		
		quickslot1:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot2:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot3:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot4:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot5:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot6:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot7:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot8:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
		quickslot9:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );

		if quickslotlyrical:GetShortcut():GetData() == P2 then

		else

			if quickslotlyrical:GetShortcut():GetData() == P20 then

			else
				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut(  ) );
			end

		end

	end

	clrSongList.MouseEnter = function(sender, args)
		
		Confirmation2:SetText(""..P50)

	end

	clrSongList.MouseLeave = function(sender, args)
		
		Confirmation2:SetText("")

	end

	clrSongList.Click = function(sender, args)
		
		listbox:ClearItems();		

	end
	
	if (hasLoaded == false) then

		LyricalIsChecked = true;
		LyricalBCheck:SetChecked(true);

	end

	LyricalBCheck.CheckedChanged = function(sender, args)

		if (LyricalBCheck:IsChecked() == true) then

			LyricalIsChecked = true;

		else

			LyricalIsChecked = false;
			
		end

		if (LyricalIsChecked == true) then

			LyricalIcon:SetBackground("QueekusPlugins/kmabc/LyricalBasicIcon.tga");
			LyricalIcon:SetParent( window );
			
			if (lyricalIsLoaded == true) then

				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P20) )
			
			else
					
				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut( Turbine.UI.Lotro.ShortcutType.Alias, ""..P2) )

			end
		
		else

			LyricalIcon:SetParent( );

			if isLoaded == false then
			
				quickslotlyrical:SetShortcut( Turbine.UI.Lotro.Shortcut( ) )

			end

		end

	end
end

function buffer()

	LyricalBCheck:SetChecked(false);
	LyricalIsChecked = false
	buffer = true

end



UpdLang();

plugin.GetOptionsPanel = function( self )

	return optionsPanel;

end

Options = function()

	return optionsPanel;

end