# spice_lowpass_filter
lowpass filter model with KiCAD, ngspice, python

```
T(jw)=Vo/Vi=(1/j \omega C) / (R + 1 / j omega C = 1/ (1 + j omega C R)
=1/(1+omegaCR)^2 - j omega CR/(1+omegaCR)^2 + j

|T| = 1 / sqrt(1 + (omega CR)^2)

theta = - tan^-1 omega CR

at omega = 1 / CR
|T| = 1 / sqrt(2) = -3 [dB]
theta = -tan^-1 1 = -45 [deg]
```
