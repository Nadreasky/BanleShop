﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BanleWebsite.Repository;

namespace BanleWebsite.Services
{
    public class ProductServices
    {
        ProductRepository _productRepository;
        CategoryServices _categoryServices;
        
        public ProductServices()
        {
            _productRepository = new ProductRepository();
        }

        public List<Product> getAll()
        {
            return _productRepository.getAllProductActived();
        }

        public List<Product> getProductsByCategory(int categoryId)
        {
            return _productRepository.getByCategoryId(categoryId);
        }

        public Product findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Product p = _productRepository.FindById(id);
            return p;
        }
        public ProductMapping findByIDMapping(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Product p = _productRepository.FindById(id);
            ProductMapping pMapping = new ProductMapping();
            pMapping.CateID = p.CateID;
            pMapping.Descriptions = p.Descriptions;
            pMapping.Featured = p.Featured;
            pMapping.ID = p.ID;
            pMapping.Img1 = p.Img1;
            pMapping.Img2 = p.Img2;
            pMapping.Img3 = p.Img3;
            pMapping.isActived = p.isActived;
            pMapping.Name = p.Name;
            pMapping.OldPrice = p.OldPrice;
            pMapping.Price = p.Price;
            pMapping.Promotion = p.Promotion;
            pMapping.Quantity = p.Quantity;
            pMapping.SalePercent = p.SalePercent;
            pMapping.isPromoted = p.isPromoted;
            pMapping.ExpiredDate = p.ExpiredDate;
            return pMapping;
        }

        public void addOrUpdateProduct(int id, string name, double price, int cateID, string des, int quantity,
            string imgPath1, string imgPath2, string imgPath3, double oldPrice, bool featured, double salePercent, bool isPromoted, string promotion)
        {
            Product p = findByID(id);
            if (p == null)
            {
                p = new Product();
                p.Name = name;
                p.Price = price;
                p.CateID = cateID;
                p.Descriptions = des;
                p.Quantity = quantity;
                p.Img1 = imgPath1;
                p.Img2 = imgPath2;
                p.Img3 = imgPath3;
                p.OldPrice = oldPrice;
                p.Featured = featured;
                p.SalePercent = salePercent;
                p.isActived = SLIMCONFIG.PRODUCT_IS_ACTIVED;
                p.isPromoted = false;
                p.Promotion = promotion;
                _productRepository.Add(p);
            }
            else
            {
                p.Name = name;
                p.Price = price;
                p.CateID = cateID;
                p.Descriptions = des;
                p.Quantity = quantity;
                if (imgPath1 != null && !imgPath1.Equals(""))
                {
                    p.Img1 = imgPath1;
                }
                if (imgPath2 != null && !imgPath2.Equals(""))
                {
                    p.Img2 = imgPath2;
                }
                if (imgPath3 != null && !imgPath3.Equals(""))
                {
                    p.Img3 = imgPath3;
                }
                p.OldPrice = oldPrice;
                p.Featured = featured;
                p.SalePercent = salePercent;
                p.isActived = SLIMCONFIG.PRODUCT_IS_ACTIVED;
                p.isPromoted = isPromoted;
                p.Promotion = promotion;
                _productRepository.Update(p);
            }
        }

        public void updateProductentity(Product p)
        {
            _productRepository.Update(p);
        }

        public void delete(Product p)
        {
            _productRepository.Delete(p);
        }

        public List<Product> getRelativeProducts(int id)
        {
            Product mainProduct = findByID(id);
            List<Product> relativeProducts = new List<Product>();
            List<Product> allProduct = getAll();
            int count = 0;

            int indexOfMainProduct = allProduct.IndexOf(mainProduct);

            for (int i = indexOfMainProduct + 1; i < allProduct.Count && count < 4; i++)
            {

                Product p = allProduct.ElementAt(i);
                if (p.CateID == mainProduct.CateID)
                {
                    relativeProducts.Add(p);
                    count++;
                }
            }

            count = 0;

            for (int i = indexOfMainProduct - 1; i >= 0 && count < 4; i--)
            {

                Product p = allProduct.ElementAt(i);
                if (p.CateID == mainProduct.CateID)
                {
                    relativeProducts.Add(p);
                    count++;
                }
            }

            return relativeProducts;

        }

        public List<Category> getProductTree(int id)
        {
            List<Category> productTree = new List<Category>();
            _categoryServices = new CategoryServices();

            Product mainProduct = findByID(id);

            if (mainProduct != null)
            {
                Category mainProCate = _categoryServices.findByid(mainProduct.CateID);

                productTree.Add(mainProCate);
                Category tmp = new Category();

                tmp = mainProCate;



                while (tmp != null && tmp.PreCateID != SLIMCONFIG.NONE_PRE_CATEGORY)
                {
                    if (tmp.PreCateID != SLIMCONFIG.NONE_PRE_CATEGORY && tmp.PreCateID != null)
                    {

                        Category c = _categoryServices.findByid(tmp.PreCateID.Value);
                        productTree.Add(c);
                        tmp = c;
                    }
                }


            }

            return productTree;
        }

        public bool isProductHasImage(int id)
        {
            Product p = findByID(id);
            if ((p != null) && ((p.Img1 != null) || (p.Img2 != null) || (p.Img3 != null)))
            {
                return true;
            }
            return false;
        }

        public Product getHighlightProduct()
        {
            Product p = _productRepository.getHighLightProduct();
            return p;
        }

        public List<Product> getSaleProducts()
        {
            List<Product> saleProducts = _productRepository.getSaleProducts();
            return saleProducts;
        }

        public ResultProductSearch findProductHint(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Product p = _productRepository.FindById(id);
            ResultProductSearch rp = new ResultProductSearch();
            rp.ID = p.ID;
            rp.Name = p.Name;
            rp.URL = SLIMCONFIG.GenerateSlug(p.ID, p.Name);

            return rp;
        }

        public List<Product> getFashionProduct()
        {
            _categoryServices = new CategoryServices();
            List<Product> allProduct = _productRepository.getAllProductActived();
            List<int> fashionID = _categoryServices.getFashionCategoriesID();
            List<Product> fashionProducts = new List<Product>();
            for (int i = 0; i < allProduct.Count; i++)
            {
                for (int j = 0; j < fashionID.Count; j++)
                {
                    if(allProduct.ElementAt(i).CateID == fashionID.ElementAt(j))
                    {
                        fashionProducts.Add(allProduct.ElementAt(i));
                    }
                }
            }
            return fashionProducts;
        }

        public List<Product> getNonFashionProduct()
        {
            _categoryServices = new CategoryServices();
            List<Product> allProduct = _productRepository.getAllProductActived();
            List<int> fashionID = _categoryServices.getFashionCategoriesID();
            List<Product> nonFashionProducts = new List<Product>();
            for (int i = 0; i < allProduct.Count; i++)
            {
                for (int j = 0; j < fashionID.Count; j++)
                {
                    if (allProduct.ElementAt(i).CateID == fashionID.ElementAt(j))
                    {
                        nonFashionProducts.Add(allProduct.ElementAt(i));
                    }
                }
            }
            return nonFashionProducts;
        }

        public List<Product> getListProductRandom()
        {
            List<Product> list = getAll();
            List<Product> listRandom = new List<Product>();

            Random ran = new Random();
            int ranNum = 0;

            while (list.Count != 0)
            {
                ranNum = ran.Next(0, list.Count);
                listRandom.Add(list[ranNum]);
                list.RemoveAt(ranNum);
            }

            //list = listRandom.ToList();

            return listRandom;
        }

        public List<Product> getListProductRandomByCate(int id)
        {
            _categoryServices = new CategoryServices();
            List<Product> list = _categoryServices.getProductByCate(id);
            List<Product> listRandom = new List<Product>();

            Random ran = new Random();
            int ranNum = 0;

            while (list.Count != 0)
            {
                ranNum = ran.Next(0, list.Count);
                listRandom.Add(list[ranNum]);
                list.RemoveAt(ranNum);
            }

            //list = listRandom.ToList();

            return listRandom;
        }

        public List<Product> getPromoteProduct()
        {
            List<Product> all = getAll();
            List<Product> promoteProduct = new List<Product>();
            foreach (var item in all)
            {
                if(item.SalePercent != 0 && item.SalePercent != null)
                {
                    promoteProduct.Add(item);
                }
            }
            return promoteProduct;
        }
    }
}
public class ProductMapping
{

    public int ID { get; set; }
    public string Name { get; set; }
    public int CateID { get; set; }
    public Nullable<double> Price { get; set; }
    public string Descriptions { get; set; }
    public Nullable<int> Quantity { get; set; }
    public string Img1 { get; set; }
    public string Img2 { get; set; }
    public string Img3 { get; set; }
    public Nullable<double> OldPrice { get; set; }
    public Nullable<bool> isActived { get; set; }
    public Nullable<bool> Featured { get; set; }
    public Nullable<double> SalePercent { get; set; }
    public string Promotion { get; set; }
    public Nullable<bool> isPromoted { get; set; }
    public Nullable<DateTime> ExpiredDate { get; set; }
}


public class ResultProductSearch
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string URL { get; set; }
}