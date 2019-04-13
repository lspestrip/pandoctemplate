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
  - version: "1.0"
    date: "2019-04-10"
    comment: "First version of the report"
  - version: "0.1"
    date: "2019-04-04"
    comment: "Horrible draft!"
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

Unnumbered, nested lists[^listnote] are possible as well:

- A
- B

[^listnote]: You are not forced to use `-` in unnumbered lists; `*`
    will work too.

Here is an equation:

\begin{equation}
\label{eq:test}
C_\ell = \left< a_{\ell m} \right>.
\end{equation}

And here is a figure:

![This is a figure.](./lspe_logo.pdf){ width=3cm }

The equation above has number \ref{eq:test}. Inline equations work
too: \\(f(x) = \exp x\\). Here is a citation: @Ronchi1996. It can be
put within parentheses using square brackets [@Ronchi1996].

## First sub-section

Here is some code written in Julia:

```julia
import Healpix
println(Healpix.nside2npix(128))
```

And here is a table:

| Column 1 | Column 2 |
|----------|----------|
| Foo      | 10.1     |
| Bar      | 10.2     |

Table: This is the caption of the table.

Hyperlinks can be written in the following way:

- [The first subsection above](#first-sub-section) (internal hyperlink);
- [Python](https://www.python.doc) (external hyperlink).

# Referenced documents

This is filled automatically, and should come at the end of the
document (it is not possible to move it elsewhere, until [this bug in
Pandoc](https://github.com/jbn/GMU_Dissertation_Pandoc_Tmpl/issues/3)
is fixed). Remove this section if you do not have documents to
reference.
