# Content package specification

## 目的

内容包是公众号发布前的最小可交付单元。它需要让另一个人能够在不打开私人Obsidian库的情况下，理解文章是什么、来源是什么、图片怎么放、哪些地方还不能发布。

## 目录

```text
content-package/<content-id>/
├── manifest.yml
├── article.md
├── assets/
│   ├── 00-cover.png
│   └── 01-section.png
├── source-map.tsv
├── claim-ledger.tsv
├── qa-report.md
└── publish-checklist.md
```

## 必需状态

```yaml
status: preview
```

推荐状态：`preview`、`draft`、`qa_passed`、`approved`、`uploaded`、`published`、`blocked`。

## manifest.yml最小字段

```yaml
content_id: 2026-09-17-example
title: "待确认标题"
channel: wechat
status: preview
audience: "待确认读者"
source_notes:
  - "<source-note-path>"
article_file: article.md
cover: assets/00-cover.png
body_assets:
  - assets/01-section.png
source_map: source-map.tsv
claim_ledger: claim-ledger.tsv
qa_report: qa-report.md
publish_checklist: publish-checklist.md
user_approval: pending
published_url: null
```

## 主张台账字段

```text
claim_id\tsource_location\tclaim\tstate\tevidence_state\tqa_note
```

每一个数字、研究结论、临床建议、机制判断和项目链接都应该可以在台账中找到对应记录。

