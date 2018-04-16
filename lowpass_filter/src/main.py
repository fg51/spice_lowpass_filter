# -*- coding: utf-8 -*-
import codecs
import csv

from matplotlib import pyplot as plt


def main():
    xs = list(read_result("convert.csv"))

    plt.plot(
        [i["time1"] for i in xs],
        [float(i["Vinn"]) for i in xs])
    plt.plot(
        [i["time2"] for i in xs],
        [float(i["Vout"]) for i in xs])
    plt.show()


def read_result(filepath):
    with codecs.open(filepath, "r", "shift-jis") as finn:
        fieldnames = [
            # "dummy1",
            "time1",
            # "dummy2",
            "Vinn",
            # "dummy3",
            "time2",
            # "dummy4",
            "Vout",
            # "dummy5",
        ]
        for i in csv.DictReader(
                finn,
                fieldnames,
                # delimiter=" ",
                quoting=csv.QUOTE_NONNUMERIC):
            yield i


if __name__ == '__main__':
    main()
