package main;

public class ProductProxy implements main.Product {
  private String _endpoint = null;
  private main.Product product = null;
  
  public ProductProxy() {
    _initProductProxy();
  }
  
  public ProductProxy(String endpoint) {
    _endpoint = endpoint;
    _initProductProxy();
  }
  
  private void _initProductProxy() {
    try {
      product = (new main.ProductServiceLocator()).getProduct();
      if (product != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)product)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)product)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (product != null)
      ((javax.xml.rpc.Stub)product)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public main.Product getProduct() {
    if (product == null)
      _initProductProxy();
    return product;
  }
  
  public java.lang.String getProducts() throws java.rmi.RemoteException{
    if (product == null)
      _initProductProxy();
    return product.getProducts();
  }
  
  public int getProductID() throws java.rmi.RemoteException{
    if (product == null)
      _initProductProxy();
    return product.getProductID();
  }
  
  public void insertProduct(java.lang.String userID, java.lang.String title, java.lang.String description, java.lang.String category, java.lang.String location) throws java.rmi.RemoteException{
    if (product == null)
      _initProductProxy();
    product.insertProduct(userID, title, description, category, location);
  }
  
  public void setLatestProductID() throws java.rmi.RemoteException{
    if (product == null)
      _initProductProxy();
    product.setLatestProductID();
  }
  
  
}