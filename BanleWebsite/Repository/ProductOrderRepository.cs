using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ProductOrderRepository : IRepository<OrderDetail>
    {
        BanleShopEntities _productOrderContext;
        
        public ProductOrderRepository()
        {
            _productOrderContext = new BanleShopEntities();
        }

        public IEnumerable<OrderDetail> List
        {
            get
            {
                return _productOrderContext.OrderDetails;
            }
        }

        public void Add(OrderDetail entity)
        {
            _productOrderContext.OrderDetails.Add(entity);
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

        public void Delete(OrderDetail entity)
        {
            _productOrderContext.OrderDetails.Remove(entity);
            _productOrderContext.SaveChanges();
        }

        public OrderDetail FindById(int Id)
        {
            var result = (from r in _productOrderContext.OrderDetails where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(OrderDetail entity)
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