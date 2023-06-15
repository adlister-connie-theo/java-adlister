package testing;

import dao.MockProductsDao;
import dao.ProductsDao;
import dao.ProductsDaoFactory;
import models.Product;

import java.util.List;

public class ProductTest {
    public static void main(String[] args) {


        ProductsDao dao = ProductsDaoFactory.getProductsDao();

        List<Product> myProducts = dao.all();

        System.out.println(myProducts);

        Product crowbar = new Product("crowbar", 8);
        dao.insert(crowbar);

        myProducts = dao.all();

        System.out.println(myProducts);
    }
}
