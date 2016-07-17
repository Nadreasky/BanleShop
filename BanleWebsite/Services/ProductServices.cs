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
        
        public ProductServices()
        {
            _productRepository = new ProductRepository();
        }

        public List<Product> getAll()
        {
            return _productRepository.List.ToList();
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

        public void addOrUpdateProduct(int id, string name, double price, int cateID, string des, int quantity, string imgPath1, string imgPath2, string imgPath3)
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
                
                _productRepository.Update(p);
            }
        }

        public void delete(Product p)
        {
            _productRepository.Delete(p);
        }
    }
}