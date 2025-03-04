data.extend({
    {
        type = "recipe",
        name = "quartz-extraction",
        
        subgroup = "ct-silicon",
        order = "a",
        
        icon = crisentech.graphics.get("recipe/quartz-extraction"),
        icon_mipmaps = 4,

        category = "smelting",

        ingredients = {
            { type="item", name="stone", amount=1 },
        },

        results = {
            {
                type="item",
                name="pink-quartz",
                amount_min=1,
                amount_max=1,
                probability=0.25
            },
            {
                type="item",
                name="white-quartz",
                amount_min=1,
                amount_max=1,
                probability=0.75
            }
        }
    }
})