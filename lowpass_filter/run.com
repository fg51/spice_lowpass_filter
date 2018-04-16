.options temp=20 tnom=20

* NOTE: step: 0.1us, end: 100us
* .Tran  0.1us 100us

.AC dec 10 1Hz 1GHz

.control
run


* plot V(Vin)  V(Vout)

* freqency, real, imag
wrdata raw-ac-data.txt V(Vout)

* set specwindow=blackman
* plot mag(V(Vin))  mag(V(Vout))  ylog
* plot 20*log(mag(V(Vout)))  ph(V(Vout))
