TOOL.Category = "Battle Objectives"
TOOL.Name = "Capture Point"
function BuildCPanel(form)
	local Scroll = vgui.Create( "DScrollPanel", Frame ) //Create the Scroll panel
	Scroll:SetSize( 355, 200 )
	Scroll:SetPos( 10, 30 )
	
	local List	= vgui.Create( "DIconLayout", Scroll )
	List:SetSize( 340, 200 )
	List:SetPos( 0, 0 )
	List:SetSpaceY( 5 ) //Sets the space in between the panels on the X Axis by 5
	List:SetSpaceX( 5 ) //Sets the space in between the panels on the Y Axis by 5
	
	for i = 1, 35 do //Make a loop to create a bunch of panels inside of the DIconLayout
		local ListItem = List:Add( "DPanel" ) //Add DPanel to the DIconLayout
		ListItem:SetSize( 80, 40 ) //Set the size of it
		//You don't need to set the position, that is done automatically.
	end
end