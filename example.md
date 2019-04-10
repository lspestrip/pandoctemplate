---
title: "Example report"
authors:
  - "S. Trip"
  - "S. Wipe"
agreed-by: "Small Boss"
agree-date: "2019-04-07"
approved-by: "Big Boss"
approvation-date: "2019-04-08"
document-type: "Technical note"
project-reference-number: "LSPE-STRIP-TN-000"
issue: "1.0"
institutes: "Università degli Studi di Milano"
date: "2019-04-10"
lang: "en"
mainfont: "Noto Serif"
colorlinks: true
change-record:
  - {version: "1.0", date: "2019-04-10", comment: "First version of the report"}
bibliography:
  - "bibliography_example1.bib"
link-citations: true
abstract: |
    This is the abstract of the report.
    Blah blah blah.

---

# First section

It is possible to use *italics*, **bold** and `monospaced text`.

Here is a numbered list:

1. Strip
2. LSPE

Unnumbered, nested lists are possible as well:

- A
- B:
  - B1
  - B2

Here is an equation:

\begin{equation}
\label{eq:test}
C_\ell = \left< a_{\ell m} \right>.
\end{equation}

The equation above has number \ref{eq:test}. Here is a citation:
@Ronchi1996. It can be put within parentheses using square brackets
[@Ronchi1996].


## First sub-section

Here is some code:

```julia
import Healpix
println(Healpix.nside2npix(128))
```

And here is a table:

| Column 1 | Column 2 |
|----------|----------|
| Foo      | 10.1     |
| Bar      | 10.2     |


# Second section

Hyperlinks can be written in the following way:
[Python](https://www.python.doc).

# Referenced documents

This is filled automatically, and should come at the end of the
document. Remove this section if you do not have documents to
reference.
