---
title: "Telecommunications: General relations"
libraries: ['mathjax']
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

$$S_{ss}(f) = \frac{\lvert G(f) \rvert^2}{T_s} \tilde{S}_{cc}(f) + \frac{\lvert \mu_c \rvert}{T_s} \sum_l \left\lvert G\left( \frac{l}{T_s} \right) \right\rvert^2 \delta\left( f - \frac{l}{T_s} \right)$$

Where:

- $S_{cc}(f)$ is the Power Spectral Density (PSD) of the symbols, which is the discrete Fourier transform of the covariance of $c_k$ (which is equal to his variance).
- $\tilde{S}_{cc}(f)$ is the spectrum of uncentered symbols
- $G(f)$ is the frequenxy response of the pulse shapping filter
{{< /expand >}}

{{< expand "Demonstration" >}}

Let's denote $(c)_{n \in \mathbb{N}}$ the sequence of data symbols. The autocorellation of $s$ (The signal at the output of the Pulse shapping filter) is:

$$
\begin{aligned}
R_{ss}(t, \tau) & = E\lbrace s(t)s^{*}(t-\tau) \rbrace = E \left\lbrace \sum_{k \in \mathbb{Z}} c_k g(t - kT_s) \sum_{l \in \mathbb{Z}} c_l^{*} g(t - lT_s - \tau) \right\rbrace \\\\
& = \sum_{k \in \mathbb{Z}} \sum_{l \in \mathbb{Z}} E\lbrace c_k c_l^{*}\rbrace  g(t - k T_s) g(t - lT_s - \tau)
\end{aligned}
$$

$R_{ss}(t)$ isn't Wide Sense Stationnary, but we can notice that $R_{ss}(t + T_s, \tau) = R_{ss}(t, \tau)$. So $R_{ss}$ is at least cyclostationnary. In this case, we can express the autocorellation of $s$ as the temporal average of $R_{ss}(t, \tau)$ over a period:

$$R_{ss}(t) = \frac{1}{T_s} \int_0^{T_s} R_{ss}(t, \tau) dt$$

i.e

$$R_{ss}(t) = \frac{1}{T_s} \sum_{k \in \mathbb{Z}} \sum_{l \in \mathbb{Z}} E\lbrace c_k c_l^{*}\rbrace \int_0^{T_s} g(t - k T_s) g(t - lT_s - \tau) dt$$
{{< /expand >}}

{{< expand "Examples" >}}
{{< /expand >}}