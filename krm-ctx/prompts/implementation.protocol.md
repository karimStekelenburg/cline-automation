# Implementation Phase Protocol [IP]

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.

## Overview [IP-OV]

### Purpose [IP-OV-001]
The Implementation Phase MUST execute the technical design and implementation plan created during previous phases. Unlike the Brainstorm and Design phases, this phase MUST follow strict execution steps with minimal user interaction.

### Input/Prerequisites [IP-OV-002]
- MUST have completed Design Phase deliverables
- MUST have approved architectural design
- MUST have detailed implementation plan
- MUST have complete krm-ctx directory setup
- MUST verify entrypoint.md phase is set to "implementation"

### Output/Deliverables [IP-OV-003]
- MUST implement all specified features
- MUST complete all required tests
- MUST update documentation
- MUST create pull requests with testing instructions

### Success Criteria [IP-OV-004]
- MUST execute all implementation steps in order
- MUST update documentation appropriately
- MUST have all tests passing
- MUST create PR with required information

## Phase Transition [IP-PT]

### Entry Criteria [IP-PT-001]
- Design phase completion confirmed
- All architectural decisions documented
- Implementation plan broken into tasks
- Development environment ready

### Validation Steps [IP-PT-002]
1. Verify completion of:
   - All architectural diagrams
   - Component specifications
   - Technical decisions
   - Task breakdown

### Environment Setup [IP-PT-003]
- Development tools installed
- Access rights configured
- Repository access verified
- GitHub CLI (`gh`) installed and configured

## Execution Protocol [IP-EP]

### 1. Initialize [IP-EP-INIT]

#### Git Management [IP-EP-INIT-001]
1. Update repository state:
   ```bash
   git fetch --all
   git checkout main
   git pull origin main
   git clean -fd
   git remote prune origin
   ```
2. Review open PRs:
   ```bash
   gh pr list
   ```
   - If PRs exist, confirm continuation with user

#### Context Loading [IP-EP-INIT-002]
Execute in strict sequence:
1. Read `entrypoint.md` - Follow all instructions
2. Read `project-context.md` - Review overview
3. Read `progress-log.md` - Identify next task
4. Read `scratchpad.md` - Review notes
5. Read `technical-requirements.md` - Review specs
6. Read `implementation-plan.md` - Review plan
7. Assess need for additional documentation

### 2. Execute Task [IP-EP-EXEC]

#### Pre-Implementation [IP-EP-EXEC-001]
1. Document in `progress-log.md`:
   - Mark task as in-progress
   - Record initial OpenRouter credit balance
2. Create new branch from main

#### Implementation [IP-EP-EXEC-002]
1. Write code per specifications
2. Maintain regular commit cadence
3. Create tests
4. Execute test-fix cycle until passing
5. Commit final changes

Note: Create issues for unrelated bugs using `gh issue create`

### 3. Wrap Up [IP-EP-WRAP]

#### Documentation Updates [IP-EP-WRAP-001]
Complete in order:
1. Update `scratchpad.md` if needed
2. Update `entrypoint.md` with next task guidance
3. Update `progress-log.md`:
   - Mark tasks complete
   - Record closing credit balance
   - Calculate credit costs

#### Pull Request Creation [IP-EP-WRAP-002]
Create PR using `gh pr create` with:
1. Required references:
   - Epic, sprint, and user story IDs
   - OpenRouter metrics
   - Credit balances and costs
2. Issue references:
   - New issues created
   - Issues to be closed
3. Manual Testing Instructions:
   - Prerequisites
   - Step-by-step verification
   - Edge cases
   - Known limitations

## Validation Checklist [IP-VC]

### Pre-Completion Verification [IP-VC-001]
- [ ] All documents updated
- [ ] Credit balances recorded
- [ ] PR created with all references
- [ ] Issues properly linked
- [ ] Manual testing instructions provided
- [ ] `entrypoint.md` updated for next task

### Quality Checks [IP-VC-002]
- Code follows project standards
- Tests are comprehensive
- Documentation is clear
- PR description is complete

## Error Handling [IP-EH]

### Common Issues [IP-EH-001]
- Test failures
- Merge conflicts
- Missing dependencies
- Environment issues

### Resolution Steps [IP-EH-002]
1. Document issue in `progress-log.md`
2. Create GitHub issue if needed
3. Follow resolution path per technical requirements
4. Update documentation with solution

## Phase Exit [IP-PE]

### Exit Criteria [IP-PE-001]
- All tasks completed
- All PRs merged
- Documentation updated
- Next phase prerequisites met

### Handoff Steps [IP-PE-002]
1. Final documentation review
2. Credit usage summary
3. Project status update
4. Environment cleanup