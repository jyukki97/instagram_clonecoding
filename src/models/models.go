package models

import (
	"time"

	"github.com/jinzhu/gorm"
)

type User struct {
	gorm.Model
	Email       string  `json:"email"`
	Name       	string  `json:"name"`
	NickName       string  `json:"nick_name"`
	Password       string  `json:"password"`
	CreatedAt    time.Time  `json:"created_at"`
}

func (User) TableName() string {
	return "users"
}

type Board struct {
	gorm.Model
	UserId       int  `json:"user_id"`
	Contents       	string  `json:"contents"`
	PostedAt       string  `json:"posted_at"`
	Likes       string  `json:"likes"`
	Comments    time.Time  `json:"comments"`
}

func (Board) TableName() string {
	return "boards"
}

type Follow struct {
	gorm.Model
	User
	FollowerId       int  `json:"follower_id"`
	FollowingId       int  `json:"following_id"`
}

func (Follow) TableName() string {
	return "follows"
}

type Like struct {
	gorm.Model
	User
	Board
	UserId       int  `json:"user_id"`
	BoardId       int  `json:"board_id"`
}

func (Like) TableName() string {
	return "likes"
}

type Comment struct {
	gorm.Model
	User
	Board
	UserId       int  `json:"user_id"`
	BoardId       int  `json:"board_id"`
	Comments       string  `json:"comments"`
}

func (Comment) TableName() string {
	return "comments"
}

type Image struct {
	gorm.Model
	Board
	BoardId       int  `json:"board_id"`
	Image       string  `json:"img"`
}

func (Image) TableName() string {
	return "images"
}