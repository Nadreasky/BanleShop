using System;
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
            return pMapping;
        }

        public void addOrUpdateProduct(int id, string name, double price, int cateID, string des, int quantity,
            string imgPath1, string imgPath2, string imgPath3, double oldPrice, bool featured, double salePercent, bool isPromoted)
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
}