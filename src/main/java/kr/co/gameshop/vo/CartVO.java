package kr.co.gameshop.vo;

import lombok.Data;

@Data
public class CartVO {

	private int cartId;
	private String uerId;
	private String userName;
	private int productId;
	private String pruductName;
	private int productPrice;
	private int amount;
	private int money;
	private int updateCart;
}
