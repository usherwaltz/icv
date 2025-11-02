# Git Workflow & Branch Structure

## Branch Strategy

This project follows a simplified Git Flow workflow:

### Main Branches

- **`main`** - Production-ready code. Only merged from `develop` when ready for release.
  - Protected: Should only receive merges from `develop` branch
  - Used for: Production deployments and stable releases
  
- **`develop`** - Main development branch. All feature development happens here or in feature branches.
  - Default branch for ongoing development work
  - Used for: Active development, integration of features

### Supporting Branches

- **`icv_old`** - Archive of the old project version (preserved for reference)

### Feature Branches (when needed)

For larger features that require isolated work:
- Create from: `develop`
- Naming: `feature/feature-name` (e.g., `feature/authentication`, `feature/pdf-generation`)
- Merge back to: `develop`
- Delete after: Merged and no longer needed

### Hotfix Branches (when needed)

For urgent production fixes:
- Create from: `main`
- Naming: `hotfix/issue-description`
- Merge back to: Both `main` and `develop`
- Delete after: Merged

## Workflow

### Daily Development

1. **Start working on a feature:**
   ```bash
   git checkout develop
   git pull origin develop
   # Make changes...
   git add .
   git commit -m "feat: description of changes"
   git push origin develop
   ```

2. **For larger features, use a feature branch:**
   ```bash
   git checkout develop
   git pull origin develop
   git checkout -b feature/feature-name
   # Make changes...
   git add .
   git commit -m "feat: description of changes"
   git push origin feature/feature-name
   # Create PR to merge into develop
   ```

### Release Process

1. When ready for production:
   ```bash
   git checkout develop
   git pull origin develop
   git checkout main
   git merge develop
   git push origin main
   ```

## Commit Message Guidelines

Follow conventional commits format:

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks (dependencies, config, etc.)

Example:
```
feat: add PDF theme selector to CV editor
fix: resolve issue with section reordering
docs: update setup instructions in README
```

## Branch Protection

- `main` branch should be protected (via repository settings):
  - Require pull requests for merges
  - Require code review (if working in a team)
  - Prevent force pushes
  - Require status checks to pass

## Current Status

- **Active Branch:** `develop` (for ongoing development)
- **Production Branch:** `main` (stable releases)
- **Archive Branch:** `icv_old` (old project preserved)

