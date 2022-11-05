package main

import (
	hf "github.com/bots-garden/capsule/capsulemodule/hostfunctions"
)

func main() {
	hf.SetHandleHttp(Handle)
}

func Handle(req hf.Request) (resp hf.Response, errResp error) {

	headers := map[string]string{
		"Content-Type": "text/html; charset=utf-8",
	}
	resp = hf.Response{
		Body: "<h1>👋 hello world 🌍</h1>",
		Headers: headers,
	}

	return resp , nil
}
