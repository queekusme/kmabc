kmabcCommand = Turbine.ShellCommand();

Turbine.Shell.AddCommand("kmabc",kmabcCommand);

function kmabcCommand:GetShortHelp()	--/help in chat
	return "usage: "..P16;
end

function kmabcCommand:Execute( command, arguments)

	if (arguments==""..P26) then
		window:SetVisible( true )

	elseif (arguments==""..P27) then
		window:SetVisible( false )

	elseif (arguments==""..P28) then
		window:SetVisible(not window:IsVisible());

	elseif (arguments==""..P29) then
		Notes:SetVisible(not Notes:IsVisible());
		sidebar:SetVisible(not sidebar:IsVisible());

		if (Notes:IsVisible() == true) then
			window:SetSize( 418, 443 );
			Copywrite:SetPosition( 50, 418 );	
			sidebar:SetParent( window );
			PlistName:SetParent( window );
			listbox:SetParent( window );

		elseif (Notes:IsVisible() == false) then
			window:SetSize( 418, 160 );
			Copywrite:SetPosition( 50, 135 );
			sidebar:SetParent();
			PlistName:SetParent(  );
			listbox:SetParent(  );

		end

	elseif (arguments==""..P30) then
		PlistItem2:SetText("");
		PlistItem3:SetText("");
		PlistItem4:SetText("");
		PlistItem5:SetText("");
		PlistItem6:SetText("");
		PlistItem7:SetText("");
		PlistItem8:SetText("");
		PlistItem9:SetText("");
		PlistItem10:SetText("");
		PlistItem11:SetText("");
		PlistItem12:SetText("");
		PlistItem13:SetText("");
		Turbine.Shell.WriteLine(""..P25);

	elseif (arguments=="") then
		Turbine.Shell.WriteLine("");
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..P13 );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..P14 );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..P15 );
		Turbine.Shell.WriteLine(""..P16 );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine(""..P17 );
		Turbine.Shell.WriteLine("------------------------------------");
		Turbine.Shell.WriteLine("");
	end
end


