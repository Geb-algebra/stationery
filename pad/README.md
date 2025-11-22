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

At every time you start a new work, 

1. Instruct
    1. Copy and paste `pad.md` to anywhere in your repository (where your AI agent can see). The filename must be `pad.md` so that your agent can find it.
    2. Fill in the "Instruction" section in the `pad.md`.
2. Investigate
    1. Tell AI `/write-pad`. AI will fill in the "Current" section.
    2. Review the "Current" section so that it is correct and it covers all related implementations.
    3. Ask AI to fix or fix by yourself to pass the review
3. Plan
    1. Tell AI `/write-pad` again to fill in the "New" section. (recommended to refresh the session)
    2. Review the "New" section so that it meets your requirements and design and implementation plan has no problems.
    3. Ask AI to fix or fix by yourself to pass the review
    4. Tell AI  `/write-pad` again to fill in the "Tasks" section. (recommended to refresh the session)
    5.  Review the "Tasks" section.
    6.  Ask AI to fix or fix by yourself to pass the review
4. Implement
    1.  Tell AI `/impl-pad` to implement following the Pad.  (recommended to refresh the session)
    2.  Review and test the implementation.
    3.  Ask AI to fix or fix by yourself if you need.

After the implementation, you can delete your Pad completely.
