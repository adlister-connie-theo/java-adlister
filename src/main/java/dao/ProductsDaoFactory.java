package dao;

public class ProductsDaoFactory {
    private static ProductsDao productsDao;

    public static ProductsDao getProductsDao() {
        if(productsDao == null) {
            productsDao = new MockProductsDao();
        }
        return productsDao;
    }
}
