aff_list = {}

function GetAffliction()
    for affliction in AfflictionPrefab.Prefabs do
        table.insert(aff_list, affliction)
    end
end