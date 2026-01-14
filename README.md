# AI Product Manager (CLI)
AI Product Manager who helps you to write a PRD and code a prototype.

## 用途
将一个想法转化为：
- 澄清摘要
- 完善后的产品构想
- PRD（MVP 原则）
- 本地高保真可交互原型（HTML）

## 使用方式（推荐）
1) 启动 Codex CLI，并指定 agent 文件：`agents/aipm.md`
2) 用向导式流程完成 4 个阶段产出
3) 输出保存到 `Ideas/<project_slug>/`

## 快速创建输出目录
```
./scripts/aipm_start.sh my-idea
```
会在 `Ideas/` 下创建项目目录，并放入模板文件。

## 目录结构
- `agents/aipm.md`：固定流程与规则
- `templates/`：PRD、构想、原型说明模板
- `Ideas/`：每个 idea 的产出
