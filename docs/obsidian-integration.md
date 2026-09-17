# Obsidian integration

## 设计原则

本预览版不要求把Obsidian整个库复制到GitHub，也不依赖某个特定的Obsidian插件。它假设Codex可以在用户授权的本地工作区读取或创建Markdown文件，并用统一的YAML frontmatter管理状态。

## 推荐的Obsidian笔记分层

```text
00-Inbox/                临时素材和未分流内容
01-Sources/              论文、网页、项目记录、原始来源
02-Research-Cards/       论文卡片、证据矩阵、方法笔记
03-Content-Briefs/       公众号选题简报
04-Drafts/               公众号草稿和修改版本
05-Publication-Records/  已上传或已发布记录
99-Archive/              过期、暂停或不再使用的内容
```

如果现有库已经有成熟的中文目录，不需要重命名。可以用frontmatter、标签和索引笔记实现相同的分层。

## 推荐字段

```yaml
content_id: 2026-09-17-unipert-g2cp
type: content-brief
channel: wechat
audience: medical-and-computational-researchers
status: draft
evidence_state: direct+synthesis
source_notes:
  - <Obsidian来源笔记路径>
public_assets: pending-review
medical_review: pending
copyright_review: pending
user_approval: pending
```

## Codex与Obsidian的边界

- Codex可以读取被用户放入任务范围的笔记；
- Codex可以创建草稿、台账、审校报告和发布记录；
- Codex不应自动把私有笔记全部同步到公开仓库；
- 未经过脱敏和审校的内容不能进入 `public/` 或公开发布包；
- Obsidian中的原始笔记应尽量保留，不用公众号稿件覆盖原始记录。

## 回写规则

发布完成后，回写的是“结果记录”而不是复制一份不受控的全文：

- 发布日期；
- 最终标题；
- 实际公开链接；
- 公开版本文件路径；
- 用户实际修改；
- 读者反馈；
- 下一步选题。

