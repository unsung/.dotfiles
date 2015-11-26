def echo(text, color=None):
    print('{0}\n{0}'.format(text))
    if color is not None:
        print(color)

def rgb(p):
    S = .529
    V = 1
    H = p/50
    C = V*S
    X = C*(1-abs(H%2-1))
    r, g, b = (C, X, 0) if 0 <= H < 1 else \
              (X, C, 0) if H < 2 else \
              (0, C, X) if H < 3 else \
              (0, X, C) if H < 4 else \
              (X, 0, C) if H < 5 else \
              (C, 0, X)

    m = V - C

    return '#{}{}{}'.format(*map(lambda c: format(int(0xFF*(c+m)), '02x'), (r, g, b)))

