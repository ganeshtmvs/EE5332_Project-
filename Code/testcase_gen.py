from __future__ import with_statement
import numpy as np
import matplotlib.pyplot as plt

h = []

with open('coeffs.txt', 'r') as fh:
    h = list(map(int, fh.read().split(',')))

Fs = 4410
f1 = 700
f2 = 100

h = np.asarray(h, dtype=np.int16)
t = np.arange(0,1000/Fs, 1/Fs)
x = np.cos(2*np.pi*f1*t) + np.cos(2*np.pi*f2*t)
x = x/np.max(x)
x = x*((2**15)-1)
x = x.astype('int32')
plt.figure(1)
plt.plot(t, x)
plt.title('sum of sinusoids at 100Hz and 700Hz')
plt.grid(True)

y = np.convolve(x, h, mode='full')
y = y//(2**12)

plt.figure(2)
plt.plot(t, y[19:])
plt.title('corresponding output')
plt.grid(True)

x = x.astype('uint16')
y = y.astype('uint16')

np.savetxt('sine200_input_data.txt', x, fmt='%04x')
np.savetxt('sine200_output_data.txt', y, fmt='%04x')

plt.show()