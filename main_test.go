package main

import (
	"testing"
	"net/http"
	"github.com/stretchr/testify/assert"
)

func TestCheck(t *testing.T) {
	req, _ := http.NewRequest(http.MethodGet, "http://localhost:80/", nil)
	resp, err := http.DefaultClient.Do(req)
	if err != nil {
		t.Log(err)
	}
	assert.Equal(t, http.StatusOK, resp.StatusCode)
}