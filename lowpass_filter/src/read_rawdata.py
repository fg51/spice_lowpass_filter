# -*- coding: utf-8 -*-
def main():
    with open("rawdata.txt", "r") as finn:
        for i in finn:
            xs = list(parse_line(strip_endofline(i)))
            print(xs)
    # raw = " 0.00000000e+00  0.00000000e+00  0.00000000e+00  0.00000000e+00 "
    # x1 = raw.split(" ")
    # # x2 = [i for i in x1 if i != ""]
    # x2 = list(parse_line(x1))
    # print(x2)


def read_rawdata(line):
    return parse_line(strip_endofline(line))


def strip_endofline(line):
    x = line.rstrip("\n")
    y = x.rstrip("\r")
    return y.rstrip("")


def parse_line(txt):
    xs = txt.split(" ")
    return (float(i) for i in xs if i != "")


if __name__ == '__main__':
    main()
