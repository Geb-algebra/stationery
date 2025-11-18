# Write Pad

## Execution

1. Find a markdown file in this repository that has instructions for you. The file is at
    1. Most likely: The path specified by the user.
    2. Next most likely: Repository root
    3. Next most likely: The same directory as one of the related files
    4. Otherwise: Ask the user its path and stop your work.
2. Check if "Instruction" section has at least a brief description of the change. If not, ask the user to fill the section and stop your work.
3. Check which sections are already filled in and from which point they are still blank.
4. Read all completed sections, and if they include file names and line numbers for related code, read those as well.
5. For the first unfilled Lv2 section (`##`), complete **only that Lv2 section**, following the instructions written in the comment directly under its section header. Do not write anything for subsequent Lv2 sections.
6. When finished, ask the user to review the result and stop working.

## Principles

### Do not rely on descriptions of the implementation

Docs may lie; implementations do not.

When working, you may use **only the following four types of information** as authoritative:

* The implemented source code
* Coding conventions or guidelines that *do not* describe the implementation
* Any content in the Pad *outside* the `### Current` section
* Your prior knowledge and information outside this repository (e.g., public documentation)

Documents that *describe the implementation*—including specifications, design docs, and the contents of the Pad’s `### Current` section—may be used **only as guidance** to help you understand the implementation, guidelines, or instructions.
They must **never** be treated as authoritative.

After reading any implementation description, you must verify that the actual implementation matches the description.
If it does not, treat the description as false and ignore it.

### Do not guess

Anything that remains unclear based on the four authoritative information sources and the user’s statements must be marked as:

**`[NEEDS CLARIFICATION: explanation]`**

and you must ask the user for clarification.
Filling in anything based on guesswork is strictly prohibited.


