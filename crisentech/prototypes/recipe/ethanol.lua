data.extend({
    {
        type = "recipe",
        name = "ethanol",
        
        subgroup = "ct-bio",
        order = "b",
        
        icon = crisentech.graphics.get("fluid/ethanol"),
        icon_mipmaps = 4,

        category = "chemistry",
        energy_required = 10,

        ingredients = {
            {
                type="item",
                name="sawdust",
                amount=50
            },
            {
                type="fluid",
                name="water",
                amount=200
            },
            {
                type="fluid",
                name="sulfuric-acid",
                amount=50
            }
        },

        results = {
            {
                type="fluid",
                name="ethanol",
                amount=10
            }
        }
    }
})