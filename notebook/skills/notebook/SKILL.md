---
description: Use this skill at the START of every session. Notebook is persistent AI memory - read it first, update it immediately when discovering new facts.
---

# Notebook Skill

You are using Notebook - a lightweight, persistent memory system.

## At Session Start

**Read all notebook files immediately:**

```text
notebook/domain.md   - domain notes and language pointers
notebook/tech.md     - technical decisions and constraints
notebook/behavior.md - AI behavior and decision rules
```

If files don't exist, run `scripts/init.sh` at the project root to generate them.

**CRITICAL: Notebook is NOT authoritative.**

- Notebook only provides pointers to help you find the truth faster
- Always verify information by reading the actual implementation
- When notebook references code, read that code to confirm current behavior
- Implementation is the only source of truth

## Core Principles

1. **Implementation is truth** - Never duplicate information that exists in code
2. **Pointers, not copies** - Store references to authoritative sources
3. **Minimal entries** - Shortest description that guides future decisions
4. **References mandatory** - Every entry needs file:line or module reference

## When to Update Notebook

Update **immediately** when you discover:

- A domain concept not obvious from code
- A technical constraint affecting future changes
- A behavioral rule for AI actions
- Why something works a certain way (not documented elsewhere)

## How to Write Entries

Format:

```markdown
### [Topic]
[One-line summary of why this matters]
→ `path/to/file.ts:42` or `module/`
```

Rules:

- Shorter is better
- Delete if found elsewhere
- Reference is required

## What NOT to Write

- Information already in code/comments
- Implementation details
- Architecture descriptions
- Anything that duplicates existing docs

## Deduplication

If you find that a notebook entry duplicates existing documentation:

1. Delete the entry
2. Optionally leave a one-line pointer

## File Guidelines

**domain.md**: Domain terms, user intent, relationships → with code references

**tech.md**: Constraints, decisions → with enforcing code references

**behavior.md**: AI rules, prohibitions, priorities → short and explicit
