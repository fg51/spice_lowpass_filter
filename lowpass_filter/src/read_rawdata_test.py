def import_module():
    import read_rawdata
    return read_rawdata



def test_parse_line():
    raw = " 0.00000000e+00  0.00000000e+00  0.00000000e+00  0.00000000e+00 "

    parse_line = import_module().parse_line
    xs = list(parse_line(raw))
    assert xs == [float("0"), float("0"), float("0"), float("0")]


if __name__ == '__main__':
    test_parse_line()
