package dao;

import models.Product;

import java.util.ArrayList;
import java.util.List;

public class MockProductsDao implements ProductsDao {
    private final List<Product> products = new ArrayList<>();

    public MockProductsDao() {
        products.add(new Product("hammer", 3));
        products.add(new Product("drill", 30));
        products.add(new Product("saw", 20));
    }

    @Override
    public List<Product> all() {
        return products;
    }

    @Override
    public void insert(Product product) {
        products.add(product);
    }
}
