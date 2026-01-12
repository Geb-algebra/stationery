# Notebook

Notebook is a lightweight, persistent memory for AI agents.
It records **minimal, durable knowledge discovered through the implementation**, so the AI does not repeat past reasoning.

Notebook does not describe the system in detail.
The implementation is the only source of truth.

---

## Core principle: implementation over documentation

This tool is built on a strict rule:

**Never duplicate information that already exists elsewhere.**

* Implementations are authoritative.
* Comments, specifications, and other documents may exist, but they are not truth.
* Notebook must never restate or paraphrase existing descriptions.

Notebook stores **pointers**, not copies.

---

## What goes into Notebook

Every entry in Notebook follows the same rule:

> Write only the minimum summary needed to guide future decisions,
> and attach references to the authoritative source.

Notebook entries must be:

* Short and compressed
* Focused on *why* something matters
* Linked to where the truth lives

Examples of valid entries:

* A one-line explanation of a domain concept, with references to code locations
* A brief note that a rule exists, with links to the implementation enforcing it
* A short explanation of a design constraint, with pointers to code or guidelines

If the same information exists in:

* The implementation
* Code comments
* Other documentation

Then it must **not** be rewritten in Notebook.

---

## Deduplication rule

Notebook must remain non-redundant.

If information written in Notebook is later found in:

* Source code
* Code comments
* Other project documents

Then the Notebook entry must be **removed** and replaced with:

* A short summary (if still necessary)
* One or more references to the authoritative source

Notebook favors deletion over expansion.

---

## How references work

References are mandatory.

A reference may point to:

* Source files and line ranges
* Specific modules or directories
* External documentation or specifications

Notebook entries without references are considered incomplete.

---

## File structure

```
notebook
 |- domain.md    ← domain notes and language pointers
 |- tech.md      ← technical decisions and constraints
 |- behavior.md  ← AI behavior and decision rules
```

Notebook files are always read together.
None of them override the implementation.

---

## File-specific guidelines

### `domain.md`

Stores short domain notes that cannot live naturally in code.

* Use the smallest possible description
* Prefer links over explanations
* Capture context, not behavior

Typical content:

* Domain terms with brief meaning and references
* User intent summaries with links to relevant flows or logic
* High-level relationships with pointers to code

---

### `tech.md`

Stores technical constraints and decisions that affect future changes.

* State the constraint briefly
* Explain *why* it exists in one or two lines
* Reference the enforcing code or guideline

Avoid:

* Re-describing architecture
* Listing implementation details

---

### `behavior.md`

Defines how the AI should act.

* Keep rules short and explicit
* Prefer prohibitions and priorities
* Do not explain behavior already encoded in tooling or configuration

This file exists to constrain action, not to justify it.

---

## Maintenance rules

Notebook is intentionally hard to grow.

* Shorter notes are better than complete ones
* Deletion is preferred to revision
* References age better than prose

If maintaining Notebook becomes burdensome, it is being misused.

---

## Design philosophy

Documentation rots.
Implementations change.

Notebook survives by being:

* Minimal
* Referential
* Subordinate to code

Its job is not to explain the system,
but to help the AI **find the truth faster** next time.
