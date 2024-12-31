# Brainstorm Phase Protocol [BP]

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in RFC 2119.

## Overview [BP-OV]

### Purpose [BP-OV-001]
The Brainstorm Phase MUST establish the foundational understanding of the project by facilitating structured dialogue between the user and LLM to define project scope, requirements, and technical constraints.

### Input/Prerequisites [BP-OV-002]
- MUST have initial project idea or concept
- MUST have access to `krm-ctx` directory structure
- MUST verify entrypoint.md phase is set to "brainstorm"
- SHOULD have stakeholder availability for clarifications
- MAY have existing project files to analyze

### Output/Deliverables [BP-OV-003]
- MUST complete `project-context.md`
- MUST complete `functional-requirements.md`
- MUST complete `technical-requirements.md`

### Success Criteria [BP-OV-004]
- MUST have all critical questions addressed
- MUST obtain user approval of documented requirements
- MUST define clear boundaries and constraints
- MUST provide sufficient detail for Design Phase initiation

## Document Templates [BP-DT]

### project-context.md Template [BP-DT-001]
```markdown
# Project Context

## Business Overview
- Project Name
- Key Stakeholders
- Target Users/Audience
- Business Domain

## Project Goals
- Primary Objectives
- Success Metrics
- Expected Outcomes
- Timeline Constraints

## Strategic Context
- Business Value Proposition
- Market Analysis
- Risk Factors
- Dependencies

## Constraints
- Budget/Resource Limitations
- Technical Boundaries
- Legal/Compliance Requirements
- Time Constraints

## Notes
- Key Decisions
- Open Questions
- Assumptions
```

### functional-requirements.md Template [BP-DT-002]
```markdown
# Functional Requirements

## Core Features
[FR-001] Feature Name
- Description
- User Stories
- Acceptance Criteria
- SWOT Analysis
- Priority Level
- Dependencies

## User Workflows
[WF-001] Workflow Name
- Trigger Events
- Steps
- Expected Outcomes
- Error Scenarios
- Recovery Paths

## Integration Requirements
[IR-001] Integration Name
- Systems Involved
- Data Flow
- API Requirements
- Security Considerations

## Performance Requirements
[PR-001] Requirement Name
- Metrics
- Thresholds
- Monitoring Needs
```

### technical-requirements.md Template [BP-DT-003]
```markdown
# Technical Requirements

## Technology Stack
- Programming Languages
- Frameworks
- Libraries
- Tools & Utilities

## Infrastructure
- Hosting Requirements
- Scalability Needs
- Backup/Recovery
- Monitoring

## Security Requirements
- Authentication
- Authorization
- Data Protection
- Compliance Needs

## Development Standards
- Coding Conventions
- Documentation Requirements
- Testing Requirements
- CI/CD Requirements

## External Dependencies
- Third-party Services
- APIs
- Libraries
- License Requirements
```

## Execution Steps [BP-EX]

### 1. Project Analysis [BP-EX-000]

1. Existing Project Detection
   ```markdown
   Example Steps:
   LLM: Check for project files in working directory
   LLM: Analyze code structure and dependencies
   LLM: Identify key components and features
   ```

2. Document Bootstrap
   ```markdown
   Example Steps:
   LLM: Extract business context from existing documentation
   LLM: Identify implemented features and workflows
   LLM: Document current technical stack and dependencies
   LLM: Create initial drafts of phase documents
   ```

### 2. Initial Discovery [BP-EX-001]

1. Project Overview Gathering
   ```markdown
   Example Dialogue:
   LLM: "Could you describe the core purpose of this project?"
   LLM: "Who are the primary users or stakeholders?"
   LLM: "What problem does this project solve?"
   ```

2. Scope Definition
   ```markdown
   Example Dialogue:
   LLM: "What features are must-haves vs nice-to-haves?"
   LLM: "Are there any specific deadline constraints?"
   LLM: "What would a minimum viable product look like?"
   ```

### 2. Requirements Elaboration [BP-EX-002]

1. Functional Requirements
   ```markdown
   Example Dialogue:
   LLM: "Let's break down each core feature. For [Feature X]:"
   LLM: "- What triggers this feature?"
   LLM: "- What's the expected outcome?"
   LLM: "- What could go wrong?"
   ```

2. Technical Constraints
   ```markdown
   Example Dialogue:
   LLM: "Are there any specific technologies that must be used?"
   LLM: "What are the performance requirements?"
   LLM: "Are there any integration points with existing systems?"
   ```

### 3. Documentation & Validation [BP-EX-003]

1. Document Updates
   - Update each document iteratively
   - Maintain cross-references
   - Flag uncertain areas

2. Validation Checkpoints
   - Review completeness
   - Verify consistency
   - Check for ambiguities

## Cross-Phase Validation [BP-CV]

### Prerequisites for Design Phase [BP-CV-001]
- [ ] All critical requirements documented
- [ ] Technical constraints clearly defined
- [ ] User approval obtained
- [ ] No blocking questions remaining

### Handoff Requirements [BP-CV-002]
1. Documentation Review
   - All templates filled
   - Cross-references verified
   - Unique IDs assigned

2. Stakeholder Sign-off
    - Requirements approved
    - Technical constraints validated
    - Resource availability confirmed
    - MUST update entrypoint.md phase to "design"

### Rollback Procedures [BP-CV-003]
1. Document Version Control
   - Maintain change history
   - Track major decisions
   - Record alternatives considered

## Phase-Specific Guidelines [BP-GL]

### Best Practices [BP-GL-001]
1. Documentation
   - Use clear, concise language
   - Include examples where possible
   - Maintain consistent terminology

2. Communication
   - Ask open-ended questions
   - Verify assumptions explicitly
   - Summarize key points regularly

### Common Pitfalls [BP-GL-002]
- Assuming implicit requirements
- Skipping validation steps
- Insufficient detail in critical areas
- Missing non-functional requirements

### Quality Checks [BP-GL-003]
1. Requirements
   - Completeness
   - Consistency
   - Testability
   - Feasibility

2. Documentation
   - Clarity
   - Completeness
   - Cross-referencing
   - Version control