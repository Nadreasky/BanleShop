using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class OrderRepository : IRepository<Order>
    {
        BanleShopEntities _orderContext;

        public OrderRepository()
        {
            _orderContext = new BanleShopEntities();

        }

        public IEnumerable<Order> List
        {
            get
            {
                return _orderContext.Orders;

            }
        }

        public void Add(Order entity)
        {
            _orderContext.Orders.Add(entity);
            //newOrderId =_orderContext.Orders.Add(entity).ID;    // lay Id cua cai Order moi tao

            try
            {
                _orderContext.SaveChanges();

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
            _orderContext.Orders.Remove(entity);
            _orderContext.SaveChanges();

        }

        public Order FindById(int Id)
        {
            var result = (from r in _orderContext.Orders where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Order entity)
        {
            _orderContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _orderContext.SaveChanges();
        }
    }
}