# Architecture and responsibility boundaries

## Four layers

### 1. Obsidian knowledge layer

负责保存：

- 原始文献或网页来源；
- 论文卡片、研究笔记和证据矩阵；
- 临床教学经验和原创作品过程；
- 已发布内容的复盘与读者反馈；
- 未来选题和问题池。

Obsidian是长期知识库，不是每次都直接复制到公众号的仓库。

### 2. Codex orchestration layer

负责把输入变成可审查的中间制品：

- 来源核验与内容边界识别；
- 目标读者和选题角度设计；
- 文章结构与初稿；
- 配图方案和Image Gen提示词；
- 主张台账、医学审校和隐私检查；
- 可复制的上传包。

Codex可以完成准备、分析和打包，但不默认拥有最终公开权限。

### 3. GitHub workflow layer

负责保存：

- 模板；
- Codex提示词；
- 状态机和检查脚本；
- 公开的示例内容包；
- 文档和版本记录。

不负责保存：

- 整个Obsidian库；
- 私人聊天记录；
- 患者资料；
- 研究原始数据；
- 微信登录状态和密钥。

### 4. WeChat release layer

负责：

- 人工粘贴正文；
- 插入图片和设置封面；
- 后台预览；
- 最终发布；
- 记录公开链接。

微信公众号是发布端，不应被当作唯一的内容源文件。

## Data flow

```text
Obsidian source note
        ↓
source triage + claim ledger
        ↓
content brief
        ↓
outline + article draft
        ↓
visual plan + assets
        ↓
medical / privacy / copyright QA
        ↓  user approval
publish package
        ↓  user-controlled manual action
WeChat draft / published article
        ↓
publication record + feedback in Obsidian
```

