using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ProductOrderRepository : IRepository<ProductOrder>
    {
        BanleShopEntities _productOrderContext;
        
        public ProductOrderRepository()
        {
            _productOrderContext = new BanleShopEntities();
        }

        public IEnumerable<ProductOrder> List
        {
            get
            {
                return _productOrderContext.ProductOrders;
            }
        }

        public void Add(ProductOrder entity)
        {
            _productOrderContext.ProductOrders.Add(entity);
            try
            {
                _productOrderContext.SaveChanges();
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

        public void Delete(ProductOrder entity)
        {
            _productOrderContext.ProductOrders.Remove(entity);
            _productOrderContext.SaveChanges();
        }

        public ProductOrder FindById(int Id)
        {
            var result = (from r in _productOrderContext.ProductOrders where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(ProductOrder entity)
        {
            throw new NotImplementedException();
        }

        public void Update(Product entity)
        {
            _productOrderContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _productOrderContext.SaveChanges();
        }

    }
}