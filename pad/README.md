# Pad

Pad is a markdown file that enforces your collabolation with AI.

The development process using Pad is similar to spec-driven development: instruct, make specifications, design, plan, break down tasks, and then implement.

However, there is one decisive difference — the single source of truth is the implementation, not the documentation.
Pad relies on your implementation, not on a specification produced by a particular tool.

You may have no docs, but you always have an implementation.
This allows you to start using Pad at any time.

Docs can lie, but implementations do not.
As long as the implementation is consistent (which can be easily verified with linters, type checks, tests, etc.), Pad will function correctly.
You don’t need to meticulously manage a specification tailored to a particular tool.

## Usage

At the first time you use Pad in your repo, place and rename `impl-pad.md` and `write-pad.md` so that your coding agent can use them as custom commands.
If you like the Pad, It is recommended to place the command globally to use it all of your repo.

| Agent          | filename                                 | place (workspace)             | place (global)      |
| -------------- | ---------------------------------------- | ----------------------------- | ------------------- |
| GitHub Copilot | impl-pad.prompt.md / write-pad.prompt.md | {repo root}/.github/prompts/  |                     |
| Cursor         | no changes required                      | {repo root}/.cursor/commands/ | ~/.cursor/commands/ |
| Claude Code    | no changes required                      | {repo root}/.claude/commands/ | ~/.claude/commands/ |
| Codex          | no changes required                      |                               | ~/.codex/prompts/   |

Every time you start new work:

### 1. Instruct

**Option A: Create pad.md with inline instructions**
- Run `/write-pad {your instructions}` directly
- AI will create `pad.md` with your instructions in the Instruction section

**Option B: Create pad.md manually**
- Create an empty `pad.md` anywhere in your repository (where your AI agent can see)
- Write your instructions directly in the file (no need for section structure)
- Run `/write-pad`
- AI will create the section structure and move your instructions to the Instruction section

### 2. Investigate Current Implementation

1. Run `/write-pad` to fill in the "Current" section
2. Review the "Current" section:
   - Verify it correctly describes the current implementation
   - Confirm it covers all related code with file paths and line numbers
   - Check the gap analysis against requirements
3. If revisions needed, provide feedback and AI will update the Current section
4. **Important**: Do NOT tell AI to proceed to the next section. Run `/write-pad` again when ready.

### 3. Design New Implementation

1. Run `/write-pad` to fill in the "New" section (recommended to refresh the session)
2. Review the "New" section:
   - Verify behaviors describe only the outermost interface (no internal implementation details)
   - Confirm key entities are conceptual (no file/class names)
   - Check implementation plan is specific enough that there's only one way to implement
   - Ensure no ambiguous terms like "or", "probably", "might"
3. If revisions needed, provide feedback and AI will update the New section
4. **Important**: Do NOT tell AI to proceed to the next section. Run `/write-pad` again when ready.

### 4. Break Down Tasks

1. Run `/write-pad` to fill in the "Tasks" section (recommended to refresh the session)
2. Review the "Tasks" section and provide feedback if needed

### 5. Implement

1. Run `/impl-pad` to implement following the Pad (recommended to refresh the session)
2. AI will:
   - Implement all tasks in the pad.md
   - Verify all behaviors in the "New" section are satisfied
   - Prioritize automated tests (will offer to set up testing framework if none exists)
   - Fix and re-verify until all behaviors pass
3. Review the implementation and provide feedback if needed

After the implementation, you can delete your Pad completely.
