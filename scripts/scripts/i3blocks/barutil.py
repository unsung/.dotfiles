from colorsys import hsv_to_rgb

def echo(text, color=None):
    print('{0}\n{0}'.format(text))
    if color is not None:
        print(color)

def rgb(p):
    return '#{0:02x}{1:02x}{2:02x}'.format(*tuple(int(i*255) for i in hsv_to_rgb(p/300, .529, 1)))
