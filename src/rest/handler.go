package rest

import (
	"go_server/src/dblayer"
	"go_server/src/models"
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
)


type HandlerInterface interface {
	GetBoards(c *gin.Context)
	GetComments(c *gin.Context)
	GetLikes(c *gin.Context)
	//AddUser(c *gin.Context)
	//SignIn(c *gin.Context)
	//SignOut(c *gin.Context) 
}


type Handler struct {
	db dblayer.DBLayer
}

func NewHandler() (*Handler, error) {
	return new(Handler), nil
}

func (h *Handler) GetBoards(c *gin.Context) {
	if h.db == nil {
		return
	}
	p := c.Param("id")
	id, err := strconv.Atoi(p)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	url := strings.Split(c.Request.URL.String(), "/")
	var boards []models.Board

	if url[len(url)-1] == "boards" {
		boards, err = h.db.GetBoardsById(id)
	}else {
		boards, err = h.db.GetBoards(id)
	}

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, boards)
}

func (h *Handler) GetComments(c *gin.Context) {
	if h.db == nil {
		return
	}
	p := c.Param("id")
	id, err := strconv.Atoi(p)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	comments, err := h.db.GetCommentsByBoardId(id)

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, comments)
}

func (h *Handler) GetLikes(c *gin.Context) {
	if h.db == nil {
		return
	}
	p := c.Param("id")
	id, err := strconv.Atoi(p)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	likes, err := h.db.GetLikesByBoardId(id)

	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, likes)
}

