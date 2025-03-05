function removeWithRecipe(type, name)
    data.raw[type][name] = nil
    data.raw.recipe[name] = nil
end

removeWithRecipe("item", "sg-water-well")
removeWithRecipe("item", "sg-charcoal")
removeWithRecipe("item", "sg-sapling")
removeWithRecipe("item", "sh-capsule-housing")

for i = 1, 9 do
    capsuleId = "sg-sapling-capsule-"..i
    removeWithRecipe("capsule", capsuleId)
end

data.raw.recipe["sg-grow-wood"] = nil