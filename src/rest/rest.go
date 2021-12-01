package rest

import (
	"github.com/gin-gonic/gin"
)

func RunApi(address string) error {
	h, err := NewHandler()
	if err != nil {
		return err
	}
	return RunApiWithHandler(address, h)
}

func RunApiWithHandler(address string, h HandlerInterface) error {
	r:= gin.Default()

	userGroup := r.Group("/user") 
	{
		//userGroup.POST("/:id/signout",h.SignOut)
		userGroup.GET("/:id/follow_boards", h.GetBoards)
		userGroup.GET("/:id/boards", h.GetBoards)
	}

	/*
	usersGroup := r.Group("/users")
	{
		usersGroup.POST("/signin", h.SignIn)
		usersGroup.POST("", h.AddUser)
	}
	*/

	boardGroup := r.Group("/board")
	{
		boardGroup.GET("/:id/comments", h.GetComments)
		boardGroup.GET("/:id/likes", h.GetLikes)
	}

	return r.Run(address)
}