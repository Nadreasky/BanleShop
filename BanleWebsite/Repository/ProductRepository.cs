﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ProductRepository : IRepository<Product>
    {
        BanleShopEntities _productContext;

        public ProductRepository()
        {
            _productContext = new BanleShopEntities();
        }

        public IEnumerable<Product> List
        {
            get
            {
                return _productContext.Products;
            }
        }

        public void Add(Product entity)
        {
            _productContext.Products.Add(entity);
            try
            {
                _productContext.SaveChanges();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }

        public void Delete(Product entity)
        {
            _productContext.Products.Remove(entity);
            _productContext.SaveChanges();
        }

        public Product FindById(int Id)
        {
            var result = (from r in _productContext.Products where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Product entity)
        {
            _productContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _productContext.SaveChanges();
        }

        public List<Product> getByCategoryId(int cateId)
        {
            var result = (from r in _productContext.Products where r.CateID == cateId select r).ToList();
            if (result == null)
            {
                result = new List<Product>();
            }
            return result;
        }

        public List<Product> getAllProductActived()
        {
            var result = (from r in _productContext.Products where r.isActived.Value == true select r).ToList();
            if (result == null)
            {
                result = new List<Product>();
            }
            return result;
        }

        public Product getHighLightProduct()
        {
            var result = (from r in _productContext.Products where r.isPromoted == true select r).ToList().LastOrDefault();
            if (result == null)
            {
                result = new Product();
            }
            return result;
        }

        public List<Product> getSaleProducts()
        {
            var result = (from r in _productContext.Products where (r.SalePercent.HasValue && r.SalePercent != 0) select r).ToList();
            if (result == null)
            {
                result = new List<Product>();
            }
            return result;
        }
    }
}