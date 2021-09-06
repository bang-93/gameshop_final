package kr.co.gameshop.vo;

import lombok.Data;

@Data
public class Cart {
	private int cart_id;
	private int game_id;
	private int mem_id;
	private String game_title;
	private String game_img;
	private String game_price;
	//private int ea;	
}
