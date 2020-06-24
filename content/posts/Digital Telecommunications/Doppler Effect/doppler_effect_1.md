---
title: "Doppler effect: Physical description"
draft: true
libraries: ['katex']
---

# Overview

# General description

Let's denote $\phi(t)$ the time of arrrival of the signal emitted at time $t$ under the source point of view. Under this condition, the general transmission relation is:

$$s_R(\phi(t)) = s_S(t)$$

Where
- $s_R(t)$ is the received signal
- $s_S(t)$ is the emitted signal

## Expression of received signal

As we previously say, the transmission relation is:

$$s_R(\phi(t)) = s_S(t)$$

Here, there are two possibilities:
- Is no inverse exist, this means that there is no way to recover exactly the emitted signal. This is explained by the fact that more than one point can be received at the same time. However, depending of the shape of $\phi$, some strategies can be used to partially recover the signal on time interval where $\phi$ has a local inverse.
- If an inverse exists, this means that the original signal can be totally recovered from the received signal. Under that condition, we have the relation: $$s_R(t) = s_S(\phi^{-1}(t))$$
