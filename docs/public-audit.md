# Public-readiness audit — preview

Date: 2026-09-17

## Scope audited

Only `codex-obsidian-wechat-workflow-preview/` was audited. The parent workspace also contains local article drafts, image folders, ZIP packages, and other untracked material; the parent directory must not be uploaded as the public repository.

## Passed checks

- [x] No GitHub remote is configured for the current local repository.
- [x] No commit or push was performed.
- [x] Preview structure and basic secret scan passed.
- [x] No obvious API key, GitHub token, private key, cookie, or password was found in preview content.
- [x] Private material categories are listed in `.gitignore`.
- [x] Public release and WeChat publication remain separate approval gates.
- [x] Root license draft and content/asset boundary notice are present.
- [x] Browser-rendered main interface preview and editable SVG flowchart are present.
- [x] Local HTTP response, HTML parsing, hero asset reference, flowchart labels, and reduced-motion CSS checks passed.

## Blockers before public push

- [ ] Confirm the copyright holder name in `LICENSE`.
- [ ] Decide whether the original article and Image Gen assets are included, excluded, or separately licensed.
- [ ] Replace the preview-only relative references in `examples/unipert-g2cp/README.md` with a release-safe example package, or remove that example before push.
- [ ] Decide whether `docs/assets/workflow-hero.png` is included, excluded, or separately licensed.
- [ ] Re-run a release scan after any final content or asset changes.
- [ ] User confirms repository name, visibility, license and push.

## Important boundary

Passing this audit proves only that the local preview has a reasonable release boundary. It does not prove medical correctness, copyright clearance, source permission, WeChat publication, or GitHub publication.
