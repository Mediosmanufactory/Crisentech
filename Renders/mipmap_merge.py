from PIL import Image
import os

output = "mipmap"

# Lista plików obrazów do połączenia
images = [ Image.open(f"Renders/render{size}.png") for size in [64, 32, 16, 8] ]

# Obliczenie rozmiaru końcowego obrazu (spritesheetu)
sheet_width = sum(img.width for img in images)
sheet_height = max(img.height for img in images)

# Utworzenie pustego obrazu o odpowiednim rozmiarze (RGBA dla przezroczystości)
spritesheet = Image.new("RGBA", (sheet_width, sheet_height))

# Dodawanie obrazów do spritesheetu
x_offset = 0  # Przesunięcie w poziomie
for img in images:
    spritesheet.paste(img, (x_offset, 0))  # Snap to top
    x_offset += img.width  # Przesuwanie w poziomie

# Zapisanie wynikowego spritesheetu
output += ".png"
spritesheet.save(os.path.join(f"Renders/{output}"))

print("Spritesheet został utworzony!")