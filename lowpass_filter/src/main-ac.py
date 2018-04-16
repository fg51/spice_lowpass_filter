# -*- coding: utf-8 -*-
import numpy as np
from matplotlib import pyplot as plt


from read_rawdata import read_rawdata


def main():
    xs = list(read_result("raw-ac-data.txt"))
    ys = np.array([to_complex(i[1], i[2]) for i in xs])
    freqs = [i[0] for i in xs]


    fig, axs = plt.subplots(2, 1)
    axs[0].semilogx(freqs, to_dB(ys))

    ax2 = axs[0].twinx()
    ax2.semilogx(freqs, to_phase(ys))

    axs[1].semilogx(freqs, to_phase(ys))

    fig.suptitle("a")
    setup_axis_gain(axs[0])
    setup_axis_phase(ax2)
    setup_axis_phase(axs[1])

    plt.show()


def to_complex(real, imag):
    return real + 1j * imag


def to_dB(x):
    return 20 * np.log10(x)


def to_phase(xs):
    return np.angle(xs, deg=True)


def read_result(filepath):
    with open(filepath, "r") as finn:
        for i in finn:
            freq, real, imag = read_rawdata(i)
            yield freq, real, imag


def setup_axis_gain(ax):
    ax.set_xticks(create_xticks())
    ax.set_ylabel("gain [dB]")
    ax.set_ylim(-60, 20)
    ax.grid()


def setup_axis_phase(ax):
    ax.set_xticks(create_xticks())
    ax.set_xlabel("frequency [Hz]")

    ax.set_ylabel("phase [deg]")
    ax.set_ylim(-200, 200)
    ax.set_yticks([int(-180 + 45 * i) for i in range(9)])
    ax.grid()


def create_xticks():
    return [1, 10, 100, 1E+3, 1E+4, 1E+5, 1E+6, 1E+7, 1E+8]


if __name__ == '__main__':
    main()
