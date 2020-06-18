---
title: "Telecommunications: General relations"
libraries: ['katex']
---

## Wiener-Khintchine Theorem

{{< expand "Overview" >}}

### Continuous-time signals
$${\displaystyle S(f)=\int_{-\infty }^{\infty }r_{xx}(\tau )e^{-2\pi if\tau }\,d\tau .}$$

### Discrete-time signals
For the discrete-time case, the power spectral density of the function with discrete values {\displaystyle x[n]}x[n] is

$$S(f)=\sum_{k=-\infty }^{\infty }r_{xx}[k]e^{-i(2\pi f)k}$$
where

$$r_{xx}[k] = \operatorname{E} \left[ x[n]^{*}x[n-k] \right]$$

{{< /expand >}}


{{< expand "Demonstration" >}}

### Continuous-time signals

The Power spectral density is equal to 

Let's calculate $\Gamma (\omega )$ the Fourier transform of the auto-correlation:

$$\Gamma (\omega )=\int_{-\infty }^{+\infty }\int_{-\infty }^{+\infty }x^{*}(t)x(t+\tau )e^{-\jmath \omega \tau } \ dt \ d\tau$$

This expression can be re-written:

$$\Gamma (\omega )=\int _{-\infty }^{+\infty }\left(\int _{-\infty }^{+\infty }x(t+\tau )e^{-\jmath \omega (t+\tau )}d\tau \right)x^{*}(t)e^{+\jmath \omega t}\,dt$$

In the inner integral, we make the substitution $u=t+\tau$:

$$\Gamma (\omega )=\int _{-\infty }^{+\infty }\left(\int _{-\infty }^{+\infty }x(u)e^{-\jmath \omega u}du\right)x^{*}(t)e^{+\jmath \omega t}\,dt$$

Which can be expressed as:

$$\Gamma (\omega )=X(\omega )\int _{-\infty }^{+\infty }x^{*}(t)e^{+\jmath \omega t}\,dt$$

Now, we can do the substitution $u=-t$ and then:

$$\Gamma (\omega )=X(\omega )\int _{-\infty }^{+\infty }x^{*}(-u)e^{-\jmath \omega u}\,du$$

In the second term, we can recognize the Fourier transform of $x^{\*}(-u)$, which is equal to $X^{\*}(\nu)$. Which lead to:

$$\Gamma (\omega )=X(\omega )X^{*}(\omega )$$

Finally:

$$\Gamma (\omega) = |X(\omega )|^{2}$$

{{< /expand >}}

## Bennett formula

{{< expand "Overview" >}}
This formula express the PSD of a digitally modulated signal at the output of a pulse shapping filter.
{{< /expand >}}

{{< expand "Demonstration" >}}
{{< /expand >}}

{{< expand "Examples" >}}
{{< /expand >}}