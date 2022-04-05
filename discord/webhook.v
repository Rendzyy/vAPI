module discord

import json
import net.http

pub fn send_attack_logs(username string, host string, port string, time string, method string) {
	mut url := "https://discord.com/api/webhooks/960789377989115925/YTCrdIPXzad2aT8Q7irgIshsC7_X1FEVKW8Rq4L7pTRzltRCN-j3SFklu29PsWammTWl"
	data := {
		"content": "**New Attack Logs**\n```\nUsername: $username\nHost: $host\nPort: $port\nDuration: $time\nMethod: $method```",
		"username": "vAPI Logs"
	}
	payload := json.encode(data)
	http.post_json(url, payload) or {
		panic("Failed to send webhook logs!")
	}
}
