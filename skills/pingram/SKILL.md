---
name: pingram
description: Send email and SMS and manage a Pingram account via hosted MCP in Cursor or Grok Bot. Use when the user wants Pingram notifications, delivery logs, phone numbers, or sender domains.
---

# Pingram

Pingram is a notifications platform (email, SMS, and more). Prefer the **hosted
MCP server** from this plugin — do not invent REST calls or ask for an API key
when MCP is connected.

Docs: https://www.pingram.io/docs/integrations/mcp  
MCP: https://mcp.pingram.io (Canada: https://mcp.ca.pingram.io · EU: https://mcp.eu.pingram.io)

## When MCP is not connected

Ask the user to install this plugin from the Cursor Marketplace (works in Grok
Bot too), or add the server URL `https://mcp.pingram.io` and complete OAuth.
Use the regional URL that matches their Pingram account.

## Sending messages

Always include every required field. `type` is a free-form label for Logs /
Insights (for example `grok_bot_test` or `cursor_test`) — never omit it.

### Email

Required: `type`, `to`, `subject`, `html`.

```json
{
  "type": "cursor_test",
  "to": "user@example.com",
  "subject": "Hello from Pingram",
  "html": "<p>Sent via Pingram MCP</p>"
}
```

### SMS

Required: `type`, `to`, `message`. Prefer E.164 phone numbers.

```json
{
  "type": "cursor_test",
  "to": "+15551234567",
  "message": "Hello from Pingram"
}
```

## Other tools

After connect, prefer listing MCP tools over guessing names. Typical capabilities
include delivery logs, phone numbers, inboxes, sender domains, accounts, and
A2P-related tools.

## Auth

If tools return auth errors, have the user reconnect / re-authorize the Pingram
MCP connector. Prefer a private browser window when switching Pingram accounts.
