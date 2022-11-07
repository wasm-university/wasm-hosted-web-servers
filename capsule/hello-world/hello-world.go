package main

import (
	hf "github.com/bots-garden/capsule/capsulemodule/hostfunctions"
)

func main() {
	hf.SetHandleHttp(Handle)
}

func Handle(request hf.Request) (response hf.Response, errResp error) {

	headersResp := map[string]string{
		"Content-Type": "text/plain; charset=utf-8",
	}

	responseTxt := "👋 Hello " + request.Body

	return hf.Response{Body: responseTxt, Headers: headersResp}, nil
}

