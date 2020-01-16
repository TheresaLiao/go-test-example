package main

import (
    "net/http"
	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.GET("/", check)
	router.Run(":80")
}

func check(c *gin.Context) {
	c.AbortWithStatusJSON(http.StatusOK, gin.H{
		"status":  http.StatusOK,
		"message": "apiserver ready and Summary Connection ",
	})
}