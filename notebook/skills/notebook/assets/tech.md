# Technology notes

> This document records technical decisions, constraints, and reasoning.
> It does not describe how the system works internally.
> The implementation is always authoritative.

## Project structure

> High-level orientation only.
> Do not mirror directory contents exhaustively.

{Directory tree up to three levels deep, with short descriptions}

## Technology stack

- {Library / Tool}
  - Purpose: {Why it is used}
  - Why chosen: {Reason over alternatives}
  - References:
    - {config file, entry point, or usage location}

## Constraints and non-goals

> These are explicit prohibitions or avoided approaches.
> Violating them usually causes architectural drift.

- {Constraint / Non-goal}
  - Reason: {Why this must not be done}
  - References:
    - {enforcing code or guideline}

## Stable vs. flexible assumptions

> Assumptions are not equal.
> This section defines what is safe to change.

### Stable

- {Assumption}
  - Why stable: {Reason}
  - References:
    - {supporting code or docs}

### Flexible

- {Assumption}
  - Why flexible: {Why change is expected or allowed}
  - References:
    - {related code or discussion}

## Design decisions and rationale

> Capture the reason, not the outcome.

- {Decision}
  - Rationale: {Why this decision was made}
  - Rejected alternatives: {What was considered and why rejected}
  - References:
    - {implementation or guideline}
