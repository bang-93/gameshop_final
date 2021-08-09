package kr.co.gameshop.vo;

import lombok.Data;

@Data
public class Game {
	private int game_id;
	private String game_title;
	private String game_img;
	private String game_price;
	private String game_content;
	private String game_genre;
	private String game_date;
	private String game_capacity;
	private int game_heart;
	
	public int getGame_id() {
		return game_id;
	}
	public void setGame_id(int game_id) {
		this.game_id = game_id;
	}
	public String getGame_title() {
		return game_title;
	}
	public void setGame_title(String game_title) {
		this.game_title = game_title;
	}
	public String getGame_img() {
		return game_img;
	}
	public void setGame_img(String game_img) {
		this.game_img = game_img;
	}
	public String getGame_price() {
		return game_price;
	}
	public void setGame_price(String game_price) {
		this.game_price = game_price;
	}
	public String getGame_content() {
		return game_content;
	}
	public void setGame_content(String game_content) {
		this.game_content = game_content;
	}
	public String getGame_genre() {
		return game_genre;
	}
	public void setGame_genre(String game_genre) {
		this.game_genre = game_genre;
	}
	public String getGame_date() {
		return game_date;
	}
	public void setGame_date(String game_date) {
		this.game_date = game_date;
	}
	public String getGame_capacity() {
		return game_capacity;
	}
	public void setGame_capacity(String game_capacity) {
		this.game_capacity = game_capacity;
	}
	
	
//	public String toString() {
//		return "Game [game_id" + game_id+
//											", game_title"+game_title+
//											", game_img"+game_img+
//											", game_price"+game_price+
//											", game_content"+game_content+
//											", game_genre"+game_genre+
//											", game_date"+game_date+
//											", game_capacity"+game_capacity+"]";
//	}
}
