using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class OrderRepository : IRepository<Order>
    {
        BanleShopEntities _orderCOntext;

        public OrderRepository()
        {
            _orderCOntext = new BanleShopEntities();
        }

        public IEnumerable<Order> List
        {
            get
            {
                return _orderCOntext.Orders;
            }
        }

        public void Add(Order entity)
        {
            _orderCOntext.Orders.Add(entity);
            try
            {
                _orderCOntext.SaveChanges();
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

        public void Delete(Order entity)
        {
            _orderCOntext.Orders.Remove(entity);
            _orderCOntext.SaveChanges();
        }

        public Order FindById(int Id)
        {
            var result = (from r in _orderCOntext.Orders where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Order entity)
        {
            _orderCOntext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _orderCOntext.SaveChanges();
        }
    }
}