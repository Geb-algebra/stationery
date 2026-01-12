---
description: Force notebook update when AI doesn't auto-update. Use when you've discovered important facts that should be recorded.
---

# Update Notebook

The user wants you to update the notebook with recently discovered information.

## Instructions

1. **Review what you've learned** in this session about:
   - Domain concepts not obvious from code
   - Technical constraints affecting future changes
   - Behavioral rules for AI actions
   - Why something works a certain way (not documented elsewhere)

2. **Read current notebook files**:
   - `notebook/domain.md`
   - `notebook/tech.md`
   - `notebook/behavior.md`

3. **Update the appropriate file(s)** following these rules:
   - Write the minimum summary needed to guide future decisions
   - Every entry MUST have a reference (file:line or module path)
   - Never duplicate information that exists in code or comments
   - Prefer deletion over expansion

4. **Entry format**:
```
### [Topic]
[One-line summary of why this matters]
→ `path/to/file.ts:42` or `module/`
```

5. **Before writing**, verify:
   - Information is NOT already in code/comments
   - Entry is as short as possible
   - Reference is included

If there's nothing new to record, inform the user that the notebook is already up to date.
