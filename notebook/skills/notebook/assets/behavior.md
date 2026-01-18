# AI behavior

> This document defines how the AI is expected to behave.
> It constrains actions, not implementation details.

## Role and responsibility

- Responsibilities:
  - {What the AI is explicitly expected to do}
- Non-responsibilities:
  - {What the AI must not do autonomously}

## Decision-making rules

> These rules apply whenever multiple actions are possible.

- {Rule}
  - When it applies: {Situation}
  - Required behavior: {What the AI must do}
  - References:
    - {related policy, guideline, or tool}

## Reasoning expectations

> These rules govern how conclusions are formed.

- Verification:
  - Always verify descriptions against implementation.
- Authority order:
  - Implementation > guidelines > Notebook > prior knowledge.
- Assumptions:
  - Do not invent domain rules not present in code.

## Modification boundaries

> Defines how far the AI may go without explicit instruction.

- Allowed without asking:
  - {Safe changes}
- Proposal only:
  - {Changes that require confirmation}
- Forbidden:
  - {Changes that must never be made}

## Maintenance rules

- Keep notes minimal and referential.
- If information appears elsewhere, delete it here and add references.
- Prefer deletion over expansion.
