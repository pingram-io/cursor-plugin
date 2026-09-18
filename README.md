# Pingram for Cursor & Grok Bot

Official [Pingram](https://www.pingram.io) plugin for the
[Cursor Marketplace](https://cursor.com/marketplace). Install once — it works
in **Cursor** and **Grok Bot**.

Bundles:

- **MCP server** — `https://mcp.pingram.io` by default (OAuth; same account as the dashboard)
- **Skills** — MCP usage plus Pingram product skills (getting started, email, SMS, voice, inbound, webhooks, broadcasts, users)

## Regions

Use the MCP URL for the **same region as your Pingram account**:

| Region        | MCP URL                       |
| ------------- | ----------------------------- |
| Default (US)  | `https://mcp.pingram.io`      |
| Canada        | `https://mcp.ca.pingram.io`   |
| EU            | `https://mcp.eu.pingram.io`   |

This plugin’s `mcp.json` points at the default (US) host. If your account is in
Canada or the EU, add that region’s URL instead (Plugins / MCP settings, or ask
Grok Bot to add it) and complete OAuth there — the wrong region will not see
your account.

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

Swap the URL for Canada or EU using the [Regions](#regions) table above.

## Try it

> Send an email via Pingram to me@example.com with subject "Pingram test". Use notification type `cursor_test`.

> Send an SMS via Pingram to +15551234567 saying "Pingram SMS test". Use notification type `cursor_test`.

## Docs

- [MCP guide](https://www.pingram.io/docs/integrations/mcp)
- [Pingram](https://www.pingram.io)

## Updating skills

Product skills under `skills/pingram-*` are copied from [`pingram-io/skills`](https://github.com/pingram-io/skills). When those change, re-copy the relevant folders into this repo (keep `skills/pingram` — the MCP skill — as-is).

## Develop locally

```bash
mkdir -p ~/.cursor/plugins/local
ln -s "$(pwd)" ~/.cursor/plugins/local/pingram
# Reload Cursor window, then check Customize → Plugins
```

## License

MIT
