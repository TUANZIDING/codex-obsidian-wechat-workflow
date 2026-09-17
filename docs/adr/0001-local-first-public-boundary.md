# ADR 0001：本地优先，公开边界显式化

## Status

Accepted for preview; public release still requires user approval.

## Context

用户的Obsidian库包含未公开文献笔记、研究构想、临床教学内容和可能不适合公开的工作记录。微信公众号又是一个需要人工审阅的公开发布端。若把知识库、内容草稿和公开仓库直接混合，容易发生隐私泄露、证据边界丢失和误发布。

## Decision

1. Obsidian作为本地知识与来源层，不整体复制进GitHub；
2. GitHub只保存工作流、模板、规则、可公开示例和经过批准的公开资产；
3. 每个公众号内容使用独立的内容包；
4. 公众号发布必须保留用户最终确认；
5. GitHub的commit、push、仓库创建和公开发布必须单独审批；
6. 所有状态转换都要区分“准备完成”和“外部系统已发生”。

## Consequences

优点：隐私边界清晰、容易复盘、便于版本管理、不会把准备动作误报成发布结果。

代价：需要维护内容包、主张台账和发布记录；Obsidian与GitHub之间不会自动完全同步。

