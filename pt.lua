macro(100, "Invit PT", function()
for i,v in ipairs (getSpectators(posz())) do
    if v ~= player and v:isPlayer() and v:getShield() == 0 and v:getEmblem() == 1 then
        g_game.partyInvite(v:getId())
    end
end
end)



macro(100, "Accept PT", function()
for i,v in ipairs (getSpectators(posz())) do
    if v ~= player and v:isPlayer() and v:getShield() == 1 and v:getEmblem() == 1 then
        g_game.partyJoin(v:getId())
    end
end
end)