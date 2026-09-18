# Pingram for Cursor & Grok Bot

Official [Pingram](https://www.pingram.io) plugin for the
[Cursor Marketplace](https://cursor.com/marketplace). Install once — it works
in **Cursor** and **Grok Bot**.

Bundles:

- **MCP server** — `https://mcp.pingram.io` (OAuth; same account as the dashboard)
- **Skill** — how to call email / SMS / account tools correctly

## Install

1. Open [Cursor Marketplace → Pingram](https://cursor.com/marketplace) (search **Pingram**), or submit this repo after review.
2. Install the plugin and complete Pingram OAuth when prompted.
3. In Grok Bot: **Plugins** → find Pingram → Authorize (same Cursor account).

### Manual MCP (without the plugin)

```json
{
  "mcpServers": {
    "pingram": {
      "url": "https://mcp.pingram.io"
    }
  }
}
```

Regional URLs: `https://mcp.ca.pingram.io` (Canada), `https://mcp.eu.pingram.io` (EU).

## Try it

> Send an email via Pingram to me@example.com with subject "Pingram test". Use notification type `cursor_test`.

> Send an SMS via Pingram to +15551234567 saying "Pingram SMS test". Use notification type `cursor_test`.

## Docs

- [MCP guide](https://www.pingram.io/docs/integrations/mcp)
- [Pingram](https://www.pingram.io)

## Develop locally

```bash
mkdir -p ~/.cursor/plugins/local
ln -s "$(pwd)" ~/.cursor/plugins/local/pingram
# Reload Cursor window, then check Customize → Plugins
```

## License

MIT
