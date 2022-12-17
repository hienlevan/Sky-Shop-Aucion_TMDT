package com.skyshop.business;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Image_product implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5710898006534968443L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long imageId;

	@ManyToOne
	@JoinColumn(name = "productId")
	private Product product;

	public Long getImageId() {
		return imageId;
	}

	public void setImageId(Long imageId) {
		this.imageId = imageId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Column(nullable = false)
	private String imagePath;

}