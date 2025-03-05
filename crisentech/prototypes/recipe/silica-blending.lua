data.extend({
    {
        type = "recipe",
        name = "silica-blending",
        
        subgroup = "ct-quartz",
        order = "c",
        
        icon = crisentech.graphics.get("item/powdered-silica"),
        icon_mipmaps = 4,

        category = "advanced-crafting",

        ingredients = {
            {
                type="item",
                name="white-quartz",
                amount=1
            }
        },

        results = {
            {
                type="item",
                name="powdered-silica",
                amount=3
            }
        }
    }
})