# About

This document aims to be a comprehensive bibliography of truthmaker semantics
in logic, philosophy, and linguistics.[^1]

Even though we _aim_ to be complete, we don't _claim_ to be complete.
Submissions, suggestions, or the like are very welcome.

Note that the bibliography and this documentation is very much work in progress.

## Principles for inclusion

To be included in the bibliography a publication should be:

  (1) Published or accepted for publication:
      - in a peer reviewed journal
      - as a book with a reputable publisher
      - as a thesis in a university repository
      - ...
  (2) In English.
  (3) About truthmaker semantics and its uses in logic, philosophy, and 
      linguistics.

Among the criteria, (3) is the most significant. It is meant to restrict the
topic of the bibliography to truthmaker _semantics_ proper and exclude, for
example, publications on truthmaker _metaphysics_. This is meant to keep the
bibliography tractable, both in terms of use and maintainability.

Sometimes, it's not altogether clear whether a given item falls within the scope
of the bibliography. In such cases, we make editorial decisions but aim to be
inclusive.

# Methodology

To compile the bibliography, we've relied on the following search engines:

  + [Google Scholar](https://scholar.google.com/)
  + [Semantic Scholar](https://www.semanticscholar.org/)
  + [Connected Papers](https://www.connectedpapers.com/)
  + [Scopus](https://www.scopus.com/)
  + [Web of Science](https://www.webofknowledge.com/)

We've scoured these databases using the search terms provided in
`data/terms.csv`. Additionally, we've followed up on references and suggestions
by researchers.

In order to determine whether criterion (3) is satisfied, we relied on our own
expertise. A typical litmus test is the clause for the conjunction operator in
terms of fusions, which is characteristic of exact truthmaker semantics. 

In the future, we'd like to implement a more systematic methodology.

# Subject classifications

To facilitate use, items are classified according to the following criteria:

  + Discipline and subdiscipline
  
    The following disciplines and subdisciplines are currently acknowledged:
  
    - Philosophy:
  
      * Philosophy of language
      * Philosophy of mind
      * Philosophy of science
      * Metaphysics
      * Epistemology
  
    - Logic:
  
      * Modal logic
      * Conditional logic
      * Relevant logic
      * Deontic logic
      * Epistemic logic
      * Hyperintensional logic
  
    + Linguistics:
  
      - tbd[^2]

## Core Issues

  - Exact truthmakers
  - Inexact truthmakers
  - Loose truthmakers
  - Semantic equivalence
  - Analytic containment
  - Content
  - Probabilities
  - Metaphysical grounding

It is difficult not to proliferate the `core issues` beyond usability.

# Bibliographic guidelines and implementation

The main bibliographic database is a `biblatex`[^3] bibliography file:
`data/tms.bib`. 

For convenience, we also provide the bibliography in `CSL YAML`
and `CSL JSON` format: `data/tms.yaml` and `data/tms.json`. However, the only
file that's maintained by hand is `data/tms.bib`, the other two are
automatically generated on the basis of the `biblatex` file. 

The 
Templates for entries are provided under `templates/templates.bib`.

A few guidelines for entries:

  - Each entry should be as complete as possible, but we aim to use only entry
    fields that are in the intersection of the `bibtex`-specifications[^3] and the `CSL`-specifications.[^5]
  - If a paper is not published yet, the entry gets added without the fields
    `year`, `volume`, `issue`, `pages`, .... We want as few changes to entries as
     possible.
  - Each entry gets a unique cite key, which we generate by prefixing the
    [PhilPapers](https://philpapers.org/) index name[^4] by `TMS:`, giving us,
    e.g., `TMS:JAGTSF` for Jago's `Truthmaker Semantics for Relevant Logic`.
  - A [doi](https://www.doi.org/) is preferred over a url, but there should, if
    possible, always be a link to the text.
  
# Licensing

  + CSL File

    The custom `CSL`-file `tms-bibliography.csl`, which is used to format the
    bibliography, is based on `chicago-author-date` implementation for the 16th
    edition of the `Chicago Manual of Style` by Julian Onions, Sebastian
    Karcher, Richard Karnesky, Andrew Dunning, and Brenton M. Wiernik.[^6] Since
    the original publication is licensed under the CC-SA-BY 3.0 license, we
    follow suit.

  + Biblatex file

    It's unclear whether bibliographies are copyrightable, but just to be sure, we publish the data under the CC0 license. See [here](https://creativecommons.org/publicdomain/zero/1.0/) for a human-readable summary of the Legal Code in the official LICENSE.

Everything else is covered by a blanket CC-BY 4.0 license.

[^1]: Other disciplines are not excluded in principle, just empirically at this point.
[^2]: Here help from competent linguists would be greatly appreciated.
[^3]: See <https://ctan.org/pkg/biblatex?lang=en>.
[^4]: These are generated by taking the first 3 letters of the author's last
name, followed by the initial letters of the first 3 words of the title. E.g.,
we have `JAGTSF` for Jago's `Truthmaker Semantics for Relevant Logic`.
[^5]: See <https://docs.citationstyles.org/en/stable/specification.html>.
[^6]: See <http://www.zotero.org/styles/chicago-author-date-16th-edition>
