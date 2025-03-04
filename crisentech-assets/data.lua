if not crisentech then
    crisentech = {}
end

if not crisentech.graphics then
    crisentech.graphics = {}
end

function crisentech.graphics.get(path) 
    return "__crisentech-assets__/graphics/"..path..".png";
end