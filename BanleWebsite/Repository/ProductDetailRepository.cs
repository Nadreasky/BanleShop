using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ProductDetailRepository : IRepository<ProductDetail>
    {
        BanleShopEntities _productDetailContext;

        public ProductDetailRepository()
        {
            _productDetailContext = new BanleShopEntities();
        }
        public IEnumerable<ProductDetail> List
        {
            get
            {
                return _productDetailContext.ProductDetails;
            }
        }

        public void Add(ProductDetail entity)
        {
            _productDetailContext.ProductDetails.Add(entity);
            try
            {
                _productDetailContext.SaveChanges();
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

        public void Delete(ProductDetail entity)
        {
            _productDetailContext.ProductDetails.Remove(entity);
            _productDetailContext.SaveChanges();
        }

        public ProductDetail FindById(int Id)
        {
            var result = (from r in _productDetailContext.ProductDetails where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(ProductDetail entity)
        {
            _productDetailContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _productDetailContext.SaveChanges();
        }
    }
}