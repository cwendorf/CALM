# [`CALM`](https://github.com/cwendorf/CALM)

## Reference

This section is the reference for `CALM`. Each page documents one exported function, including usage, arguments, and return values.

### Coding and Decoding Matrices

- [Decode Coding Matrix into Hypothesis Matrix](./calm.decode.md): Recovers the hypothesis matrix from a coded contrast matrix.
- [Encode Hypothesis Matrix into Coding Matrix](./calm.encode.md): Transforms a hypothesis matrix L into its corresponding coding matrix.

### Specific Contrast Codes

- [Control First Contrast Coding](./control.first.md): Generates contrast coding with the first level as the control group. This type of coding is useful for comparing all other groups to a baseline.
- [Control Last Contrast Coding](./control.last.md): Generates contrast coding with the last level as the control group. This type of coding is useful for comparing all other groups against the last (reference) level.
- [Deviation First Contrast Coding](./deviation.first.md): Generates deviation contrast coding with the first level as the reference. This contrast type compares each level to the overall mean deviation from the first level.
- [Deviation Last Contrast Coding](./deviation.last.md): Generates deviation contrast coding with the last level as the reference. This contrast compares each level to the overall mean deviation from the last level. This coding is equivalent to R's base contr.sum.
- [Difference Forward Contrast Coding](./difference.forward.md): Generates forward difference contrast coding. This type of coding compares each level to the subsequent level in a forward manner.
- [Difference Reverse Contrast Coding](./difference.reverse.md): Generates reverse difference contrast coding. This type of coding compares each level to the previous level in a reverse manner.
- [Helmert Forward Contrast Coding](./helmert.forward.md): Generates forward Helmert contrast coding. This contrast compares each level to the mean of the subsequent levels.
- [Helmert Reverse Contrast Coding](./helmert.reverse.md): Generates reverse Helmert contrast coding. This contrast compares each level to the mean of the preceding levels.
- [Polynomial Contrast Coding](./polynomial.md): Generates orthogonal polynomial contrast coding. This contrast is used to test for polynomial trends (linear, quadratic, cubic, etc.) across ordered factor levels.
- [Repeated Forward Contrast Coding](./repeated.forward.md): Generates repeated forward contrast coding. This type of contrast compares each level to the immediately preceding level, moving forward.
- [Repeated Reverse Contrast Coding](./repeated.reverse.md): Generates repeated reverse contrast coding. This contrast compares each level to the immediately succeeding level, moving in reverse order.
- [Treatment (First) Contrast Coding](./treatment.first.md): Generates treatment contrast coding using the first level as the baseline.
- [Treatment (Last) Contrast Coding](./treatment.last.md): Generates treatment contrast coding using the last level as the baseline.
