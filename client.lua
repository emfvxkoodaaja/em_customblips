local blips = {
    -- {title="", colour=, id=, x=, y=, z=},

    {title="Mekaanikko", colour=5, id=446, x = -347.291, y = -133.370, z = 38.009},
 }

 --[[Info- To disable a blip add "--" before the blip line
 To add a blip just copy and paste a line and change the info and location if needed
 
 Made By emfvxkoodaaja]]
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)