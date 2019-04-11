# Pandoc template for LSPE/Strip reports

This folder provides a Pandoc template to create beautiful LSPE/Strip
reports from Markdown files.

![](./pandoc_lspe.png)

The following features are currently supported:

- [X] Production of a compliant title page
- [X] Multiple authors
- [X] Support for BibTeX bibliographies
- [X] Change list
- [X] Table of contents
- [X] Abstract
- [X] Support for Unicode characters


## Requisites

You need Pandoc, of course, as well as a number of LaTeX packages. The
template uses LuaLaTeX, in order to properly support Unicode
characters. The document is based on the standard `article` class.


## How to use it

Copy `example.md`, `lspe_template.tex`, and `lspe_logo.pdf` in some
folder, and change `example.md` as you wish. Compile it with the
following options:

    pandoc --template=lspe_template.tex \
        --filter=pandoc-citeproc \
        -f markdown+footnotes+table_captions+tex_math_double_backslash \
        -t latex \
        --pdf-engine=lualatex \
        -o example.pdf example.md
    
Here is an explanation of the flags used:

- `--template=lspe_template.tex`: this is fundamental, as it specifies
  the template to use in the generation of the document.
- `--filter=pandoc-citeproc`: this must be used if you want a
  bibliography (see below) to appear in the document.
- `-f markdown+footnotes+tex_math_double_backslash`: this flag
  specifies the dialect used in the input file. The dialect should
  always begin with `markdown`; other fields specify plugins that
  enable additional features (see the [Pandoc User's
  Guide](https://pandoc.org/MANUAL.html)). There are no specific
  requirements on the plugins; the provided `Makefile` uses these:
  - `tex_math_double_backslash` enables writing LaTeX equations within
    `\\(` and `\\)`.
- `-t latex`: this is required, as the Pandoc template is written in
  LaTeX;
- `--pdf-engine=lualatex`: you could probably use `xelatex` as well,
  but `lualatex` plays nicely with Unicode characters. (`pdflatex` is
  not supported.)
- `-o example.pdf`: name of the output file. If you pass a name ending
  with `.tex`, the intermediate LaTeX file will be written instead; in
  this case, there is no need to use the `--pdf-engine` flag.


## Document metadata

A number of information used to build the document must be included in
the so-called *header*: a block of text enclosed within three slashes:
`---`. The text should follow the YAML format, and will look more or
less like this (taken from `example.md`):

```yaml
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
```

Here is a table explaining the meaning of each entry.

| Field                      | Type            | Meaning                                                      |
|:---------------------------|:----------------|:-------------------------------------------------------------|
| `title`                    | String          | Title of the document                                        |
| `authors`                  | List of strings | List of the authors                                          |
| `agreed-by`                | String          | Name of the person that agreed to release the document       |
| `agree-date`               | String          | Date when the document was agreed to be released             |
| `approved-by`              | String          | Name of the person that approved the release of the document |
| `approvation-date`         | String          | Date when the document was approved                          |
| `document-type`            | String          | Type of the document, e.g., "Specification document"         |
| `project-reference-number` | String          | Unique identifier for the document                           |
| `issue`                    | String          | Version number                                               |
| `institutes`               | String          | Affiliation of the author(s)                                 |
| `date`                     | String          | Date when the document was issued                            |
| `lang`                     | String          | Language of the document                                     |
| `mainfont`                 | String          | Font to be used in the document body                         |
| `colorlinks`               | Boolean         | If `true`, links in the text will be colored                 |
| `change-record`            | List of fields  | Each field must contain `version`, `date`, and `comment`     |
| `bibliography`             | List of strings | List of `.bib` file names containing the bibliography        |
| `link-citations`           | Boolean         | If `true`, hyperlinks will be created for each citation      |
| `abstract`                 | String          | Abstract for the document                                    |
