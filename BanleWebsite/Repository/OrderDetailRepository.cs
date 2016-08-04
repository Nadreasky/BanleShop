using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class OrderDetailRepository : IRepository<OrderDetail>
    {
        BanleShopEntities _orderDetailContext;

        public OrderDetailRepository()
        {
            _orderDetailContext = new BanleShopEntities();
        }
        public IEnumerable<OrderDetail> List
        {
            get
            {
                return _orderDetailContext.OrderDetails;
            }
        }

        public void Add(OrderDetail entity)
        {
            _orderDetailContext.OrderDetails.Add(entity);
            try
            {
                _orderDetailContext.SaveChanges();
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
            _orderDetailContext.OrderDetails.Remove(entity);
            _orderDetailContext.SaveChanges();
        }

        public OrderDetail FindById(int Id)
        {
            var result = (from r in _orderDetailContext.OrderDetails where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(OrderDetail entity)
        {
            _orderDetailContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _orderDetailContext.SaveChanges();
        }
    }
}