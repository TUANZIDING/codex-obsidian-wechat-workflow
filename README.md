# Codex + Obsidian 微信公众号内容创作工作流

这是一个面向个人医学科研与教学创作者的本地优先工作流预览版。

公开仓库：[github.com/TUANZIDING/codex-obsidian-wechat-workflow](https://github.com/TUANZIDING/codex-obsidian-wechat-workflow)

它把三个系统分开，但让它们能够连续协作：

```text
Obsidian：保存来源、研究笔记、经验与长期知识
    ↓
Codex：研究提炼、选题设计、写作、配图、审校、打包
    ↓
微信公众号：人工确认后的受控发布端
```

GitHub在这个项目中首先承担“工作流代码、模板、规则和可复用示例”的角色，而不是自动把私人Obsidian库或未审校文章公开出去。

## 预览版目标

- 让一个选题从Obsidian素材变成一份可审校的公众号内容包；
- 保留来源、证据强度、修改理由和人工确认记录；
- 支持医学科研、医学教学、AI实践和原创作品展示等内容类型；
- 将准备、审校、批准、上传、发布、复盘分成不同状态；
- 在公开到GitHub之前，先能在本地运行、阅读和检查。

## 当前不做的事

- 不自动登录或自动发布微信公众号；
- 不把整个Obsidian库复制进GitHub；
- 不上传患者数据、私人文档、账号凭证、Cookie、API密钥或未公开研究材料；
- 不把“模型生成”标记成“医学专家签署”；
- 不在用户确认前创建公开GitHub仓库、推送、发布或改仓库可见性。

## 目录预览

```text
codex-obsidian-wechat-workflow-preview/
├── README.md
├── CONTEXT.md
├── .gitignore
├── docs/
│   ├── index.html                 # GitHub Pages 主界面预览
│   ├── assets/workflow-hero.png   # 无文字主视觉
│   ├── architecture.md
│   ├── workflow.md
│   ├── codex-runbook.md
│   ├── obsidian-integration.md
│   ├── content-package-spec.md
│   ├── approval-gates.md
│   ├── release-readiness.md
│   ├── roadmap.md
│   └── adr/0001-local-first-public-boundary.md
├── prompts/
│   ├── 01-source-triage.md
│   ├── 02-content-brief.md
│   ├── 03-draft-and-rewrite.md
│   ├── 04-visual-plan.md
│   ├── 05-claim-and-medical-qa.md
│   └── 06-publish-package.md
├── templates/
│   ├── obsidian/
│   │   ├── source-note.md
│   │   ├── content-brief.md
│   │   └── publication-record.md
│   └── package/
│       ├── manifest.yml
│       ├── article.md
│       ├── claim-ledger.tsv
│       ├── qa-report.md
│       └── publish-checklist.md
├── examples/
│   └── unipert-g2cp/
│       ├── README.md
│       └── claim-ledger.tsv
├── scripts/
│   └── validate_preview.sh
└── .workflow/
    └── wechat-content-creation/
        ├── plan.md
        ├── orchestration.md
        └── state.json
```

## 一次内容创作的标准路径

1. 在Obsidian中保存来源或经验素材。
2. 用 `01-source-triage` 识别来源、直接证据、推断和缺口。
3. 用 `02-content-brief` 冻结读者、问题、主张和不写什么。
4. 用 `03-draft-and-rewrite` 形成公众号正文。
5. 用 `04-visual-plan` 设计封面、段落图和图片顺序。
6. 用 `05-claim-and-medical-qa` 检查来源、医学边界、隐私、版权和表述强度。
7. 用户确认后，用 `06-publish-package` 生成可逐项复制到公众号后台的上传包。
8. 用户在微信公众号后台人工完成最终粘贴、预览和发布。
9. 发布后把链接、反馈和修改意见写回Obsidian，并更新内容状态。

## 如何开始本地预览

在本目录运行：

```bash
bash scripts/validate_preview.sh
python3 -m http.server 8788
```

然后打开 `http://127.0.0.1:8788/docs/index.html` 查看主界面预览。主视觉位于 `docs/assets/workflow-hero.png`，流程图中的文字和状态均保留为可编辑 HTML/SVG。

然后阅读：

- `docs/index.html`：浏览器主界面预览，可直接作为 GitHub Pages 的入口；

- `docs/architecture.md`：系统边界与目录责任；
- `docs/workflow.md`：全流程和状态机；
- `docs/codex-runbook.md`：实际使用Codex的操作顺序；
- `docs/approval-gates.md`：哪些动作必须停下来等用户确认；
- `docs/main-interface-design.md`：GitHub Pages主界面的视觉和流程图设计 checkpoint；
- `docs/public-audit.md`：当前公开前审查结果；
- `docs/licensing.md`：MIT与原创内容/配图边界方案；
- `examples/unipert-g2cp/README.md`：当前UniPert-G2CP文章的示例接入方式。

## GitHub公开前必须确认

预览版不是已发布项目。公开前需要用户明确确认：

- 仓库名称与定位；
- 是否公开；
- 许可证；
- 示例文章和图片是否允许公开；
- 是否保留当前中文目录和个人品牌信息；
- 是否需要把工作流中的医学免责声明、版权说明和来源要求写入README。
