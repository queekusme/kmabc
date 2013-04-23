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

local numoflangLines = 54
L = {}
for i = 1, numoflangLines do
	L[i] = ""
end

function language(i)
	langnum = i
	
	for i = 1, numoflangLines do
		pcall( function() L[i] = Lang[i][i] end);
	end
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