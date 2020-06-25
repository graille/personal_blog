---
title: "Doppler effect: Analysis in classical physics"
libraries: ['mathjax']
---

# Mathematical description

In classical physics, $\phi(t)$ can be expressed as

$$\phi(t) = t + \frac{d_a(t)}{c}$$

With
- $d_a$ the absolute distance travelled by the wave between the instant of emission and the instant of reception
- $c$ The celerity of the travelling wave

## Application
### Case 1
Let's consider the following situation:

- The source $S$, initially at coordinates $(d_0, 0)$, move at speed $v_S$ along $x$ axis.
- The receiver $R$, initially at coordinated $(0, 0)$, move at speed $v_R$ along the $x$ axis.

Let's consider a wave emitted at instant $t$ by the source. The travelling time of this wave is :

$$\Delta t = \frac{d_a(t)}{c}$$

And, $d_a(t)$ can be expressed by the absolute value of the difference between the initial position of $S$ and the final position of $R$:

$$
\begin{aligned}
d_a(t) &= \left\lvert d_R(t + \Delta(t)) -  d_S(t)\right\rvert \\
&=\lvert v_S t - v_R (t + \Delta t) + d_0 \rvert \\
&= \lvert (v_S - v_R)t - v_R \Delta t + d_0 \rvert
\end{aligned}
$$

Finally, we obtain the equation :

$$d_a(t) = \left\lvert (v_S - v_R)t - v_R \frac{d_a(t)}{c} + d_0 \right\rvert = \lvert \psi(t) \rvert$$

Notice that if $v_R \not = 0$, this equation is not easy to resolve. Because it describe the transitory regime when the  

Let's consider a time interval where $\psi(t) > 0$. In this case, the previous equation give us:

$$\left(1 + \frac{v_R}{c}\right) d_a(t) = (v_S - v_R)t + d_0$$

i.e

$$\frac{d_a(t)}{c} = \frac{v_S - v_R}{c + v_R}t + \frac{d_0}{c + v_R}$$

And finally:

$$
\begin{aligned}
\phi(t) & = \left(1 + \frac{v_S - v_R}{c + v_R}\right)t + \frac{d_0}{c + v_R} \\\\
& = \frac{c + v_S}{c + v_R}t + \frac{d_0}{c + v_R}
\end{aligned}
$$

This function has an inverse, under these conditions, we can express the inverse has an analytic function:

$$
\begin{aligned}
\phi^{-1}(t) & = \dfrac{t - \dfrac{d_0}{c + v_R}}{\dfrac{c + v_S}{c + v_R}} \\\\
&= \frac{c + v_R}{c + v_S}t - \frac{d_0}{c + v_S}
\end{aligned}
$$

Eventually, the received signal $s_R(t)$ is:

$$
s_R(t) = s_S(\phi^{-1}(t)) = s_S\left(\frac{c + v_R}{c + v_S}t - \frac{d_0}{c + v_S}\right)
$$

- The value $\frac{d_0}{c + v_S}$ is the **constant delay**, it is the uncompressible delay due to the time needed for the signal to travel from the source to the receiver.
- The value $\frac{c + v_R}{c + v_S}t$ represent the deformation of the signal due to the Doppler Effect.

A well known application of this equation occurs when $s_S(t)$ is a periodic signal of pulsation $\omega_S$. In that case, the pulsation of the received signal is $\frac{c + v_R}{c + v_S}\omega_S$

### Case 2: Accelerating source

Let's consider the previous problem but with this time:

- $v_R = at$
- $v_S = \frac{d}{dt} d_S$ and not constant


$$d_a(t) = \left\lvert d_R(t + \Delta(t)) -  d_S(t)\right\rvert = \lvert d_S(t) \rvert = \frac{1}{2}at^2$$

Then $\phi(t) = t + \frac{1}{2c}at^2$
And $\phi^{-1}(t) = \frac{c\sqrt{1+2\frac{t}{c}} - c}{ a}$


## Approximation of $\phi^{-1}(t)$

### Using a computer

```matlab
% ...

% Create phi(t)
t = 0:Ts:Tf;
phi_t = distance/c + t;

% Inverse phi(t)
nt = phi_t;
phi_i_t = t;

phi_i_t = interp1(nt, phi_i_t, t);

% The time vector is still t
% The vector phi_i_t contains the inverse of phi(t).
```

### Using the low-variation condition

In a lot of circonstances, it is quite difficult to obtain an analytic expression of $\phi^{-1}$. Depending of the shape of $\phi(t)$, the following approximation can be used:

$$\phi^{-1}(t) \approx t - \frac{d_a(t)}{c}$$

{{< expand "Demonstration" >}}

Let's denote $f(t) = t - \frac{d_a(t)}{c}$:

$$f \circ \phi(t) = t + \frac{d_a(t)}{c} - \frac{d_a(t + \frac{d_a(t)}{c})}{c}$$
And

$$\phi(t) \circ f = t + \frac{d_a\left(t - \frac{d_a(t)}{c}\right)}{c} - \frac{d_a(t)}{c}$$

So, under the condition $d_a\left(t \pm \frac{d_a(t)}{c}\right) \approx d_a(t)$, the previous approximation is true. This condition is not simple to evaluate, it highly depends on the variation speed of $d_a$ but also on the value of c.

However, we can use the following rule: If $d_a$ doesn't vary too quickly over time, the previous approximation is true if $d_a(t) \ll c$

{{< /expand >}}

**Usually, this approximation is always true when working with radio-wave (travelling at light speed) in classical physics, on Earth, because the distance are small and the error caused by not using special relativity will appear before the error caused by using this approximation**