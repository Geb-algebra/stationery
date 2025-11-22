# [Change Name]

## Instruction

<!--
Describe the changes.
You should include:

* What changes will be made
* Which files will be modified (with file paths)
* Which existing implementations in which files are relevant
* Libraries to be used
* Edge cases to consider

The more detailed you are, the more accurately the AI can work.
However, don’t spend too much time—otherwise it might end up being faster for you to implement it yourself.
-->

## Current

<!--
Investigate the current implementation related to the "Instruction" section and explain all key entities, behaviors and their implementation detail.
Attach the corresponding file name and line numbers for *every* item you document.

DO NOT use any vague terms (e.g., "or", "probably", "seems to be"). Keep investigating until ambiguity is gone; if you still can’t find the info, DO NOT guess, instead write [**NEEDS INFORMATION**: {describe what you need}].
-->

### Key Entities

<!--
Trace entity relations and items often used together, and extract all entities related to the changes without omission.
-->

- **[Entity 1]**: [What it represents, key attributes without implementation]
- **[Entity 2]**: [What it represents, relationships to other entities]

### Behavior

<!--
You should describe all:
- Normal behavior
- Business rule boundaries
- Error and constraint handling
-->

1. **Given** [initial state], **When** [action], **Then** [expected outcome]
2. **Given** [initial state], **When** [action], **Then** [expected outcome]

### implementation

<!--
List all implementation details required to achieve this change. Besides the modification points, include reusable existing implementations (shared logic, classes, components, etc.) and code locations that can serve as implementation references.
-->

## New

<!--
Based on the “Instruction” section and the investigated current implementation, describe all related post-change key entities, the post-change behaviors, and their implementation details.

DO NOT use any vague terms (e.g., "or", "probably", "seems to be"). Keep investigating until ambiguity is gone; if you still can’t find the info, DO NOT guess, instead write [**NEEDS INFORMATION**: {describe what you need}].
-->

### Key Entities

<!--
List all new entities and any existing entities in the "Current" section that will be updated.
Unchanged entities shouldn't be listed.
-->

- **[Entity 1]**: [What it represents, key attributes without implementation]
- **[Entity 2]**: [What it represents, relationships to other entities]

### Behavior

<!--
List all new behaviors and any existing behaviors in the "Current" section that will be updated.
Unchanged behaviors shouldn't be listed.
-->

1. **Given** [initial state], **When** [action], **Then** [expected outcome]
2. **Given** [initial state], **When** [action], **Then** [expected outcome]

### Implementation Plan

<!--
List all implementation details required to achieve the new behavior.
After you write up, double-check if your plan fulfills all instructions, entity addition/updates and new/updated behavior
-->


## Tasks

<!--
Split the implementation plan in the previous section in small tasks.
-->

- [ ] [Task 1]
- [ ] [Task 2]