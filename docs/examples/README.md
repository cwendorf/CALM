## Examples for CALM

### Extracting Hypotheses from Codes

**CALM** can take existing coding patterns and decode them to determine the hypotheses being tested. The package takes matrix input of the coding pattern (columns represent coded vectors, rows represent the groups being represented) and outputs the linear contrasts hypotheses being represented (the rows represent the weights for the contrast, the columns represent the groups being compared).

- [*extractingRegressionCodes*](./extractingRegressionCodes.md) - Examples of extracting from traditional regression codes
- [*extractingBaseCodes*](./extractingBaseCodes.md) - Examples of extracting from R Base contrast codes

### Producing Contrast Codes

**CALM** can take a set of linear contrasts to be tested and encode them into coding schemes. The package takes linear contrast weights (rows represented the weights for the groups, columns represent the different groups) and provides the coding pattern (where columns represent vector codes, rows represent the groups).

- [*producingCommonCodes*](./producingCommonCodes.md) - Examples of producing commonly specified contrast codes 
- [*producingCustomCodes*](./producingCustomCodes.md) - Examples of producing custom contrast codes

### Using Contrast Codes

**CALM** includes a complete set of commonly used coding schemes that can be used directly in linear model specifications. It is also possible to develop custom codes to test specific hypotheses.

- [*usingCommonCodes*](./usingCommonCodes.md) - Examples using the package's built-in contrast codes
- [*usingCustomCodes*](./usingCustomCodes.md) - Examples using custom contrast codes

### References

Wendorf, C. A. (2004). Primer on multiple regression coding: Common forms and the additional case of repeated contrasts. *Understanding Statistics, 3,* 47-57.
