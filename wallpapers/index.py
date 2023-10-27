from ImageGoNord import NordPaletteFile, GoNord

# E.g. Replace pixel by pixel
go_nord = GoNord()
#image = go_nord.open_image("active/r.png")
#go_nord.convert_image(image, save_path='r.processed.png')

# E.g. Avg algorithm and less colors
go_nord.enable_avg_algorithm()
go_nord.reset_palette()
#go_nord.add_file_to_palette(NordPaletteFile.POLAR_NIGHT)
#go_nord.add_file_to_palette(NordPaletteFile.AURORA)

# You can add color also by their hex code
go_nord.add_color_to_palette('#BF616A')
go_nord.add_color_to_palette('#2E3440')

image = go_nord.open_image("target.png")
go_nord.convert_image(image, save_path='target.processed.png')

# E.g. Resized img no Avg algorithm and less colors
# go_nord.disable_avg_algorithm()
# go_nord.reset_palette()
# go_nord.add_file_to_palette(NordPaletteFile.POLAR_NIGHT)
# go_nord.add_file_to_palette(NordPaletteFile.SNOW_STORM)

# image = go_nord.open_image("images/test.jpg")
# resized_img = go_nord.resize_image(image)
# go_nord.convert_image(resized_img, save_path='images/test.resized.jpg')

# E.g. Quantize

# image = go_nord.open_image("images/test.jpg")
# go_nord.reset_palette()
# go_nord.set_default_nord_palette()
# quantize_image = go_nord.quantize_image(image, save_path='images/test.quantize.jpg')

# To base64
# go_nord.image_to_base64(quantize_image, 'jpeg')
