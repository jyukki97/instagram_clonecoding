package dblayer

import (
	"go_server/src/models"
)
type DBLayer interface {
	// 내가 팔로잉한 사람들 게시물 주세요
	GetBoards(int) ([]models.Board, error)
	// 유저의 id 값과 같은 게시물
	GetBoardsById(int) ([]models.Board, error)
	// 유저가 팔로우 하고 있는 사람들
	GetFollowById(int) ([]models.Follow, error)
	// 유저를 팔로우 하고 있는 사람들
	GetFollowerById(int) ([]models.Follow, error)
	// 게시물의 id를 통한 댓글
	GetCommentsByBoardId(int) ([]models.Comment, error)
	// 게시물의 id를 통한 이미지
	GetImagesByBoardId(int) ([]models.Image, error)
	// 게시물의 id를 통한 좋아요
	GetLikesByBoardId(int) ([]models.Like, error)
	// 유저 추가
	AddUser(models.User) (models.User, error)
	// 유저 로그인
	SignInUser(email, password string) (models.User, error)
	// 유저 로그아웃
	SignOutUserById(int) error
}