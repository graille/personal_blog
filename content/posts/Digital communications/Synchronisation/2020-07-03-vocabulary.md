---
title: "Vocabulary"
libraries: ['katex']
---

## Synchronisation principles

### Data-aided (DA)

Based on reference symbol sequences known to the
receiver (training signals, preambles/midambles, pilot
frequencies, etc.).

### Decision-directed (DD)
Utilises detected symbol values as reference.

### Non-data-aided (NDA)
Does not depend on known or detected symbol
values. 

It is clear that DA techniques result in the best
synchronisation performance, but some part of bandwidth
or data transmission capacity is lost for the pilot signals
or training sequences.

Decision-directed methods are sensitive to detection
errors (but not very sensitive).

## Synchroniser operation modes

### Acquisition mode
Start-up phase, during which the system achieves
stable operation.

### Tracking mode
Normal operation mode, during which the system
adapts to slow variations of the synchronisation
parameters.

Different synchronisation principles can be used during
the two phases.

**Sources:**
- http://www.cs.tut.fi/kurssit/TLT-5806/Synch.pdf