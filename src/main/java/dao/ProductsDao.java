package dao;

import models.Product;

import java.util.List;
public interface ProductsDao {
    List<Product> all(); // get all the product records

    void insert(Product product); // persist new product
}
