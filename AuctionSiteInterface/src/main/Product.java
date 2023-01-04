/**
 * Product.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package main;

public interface Product extends java.rmi.Remote {
    public java.lang.String getProducts() throws java.rmi.RemoteException;
    public int getProductID() throws java.rmi.RemoteException;
    public void insertProduct(java.lang.String userID, java.lang.String title, java.lang.String description, java.lang.String category, java.lang.String location) throws java.rmi.RemoteException;
    public void setLatestProductID() throws java.rmi.RemoteException;
}
