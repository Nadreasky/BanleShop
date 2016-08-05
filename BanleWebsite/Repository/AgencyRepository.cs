using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class AgencyRepository: IRepository<Agency>
    {
        BanleShopEntities _agencyContext;

        public AgencyRepository()
        {
            _agencyContext = new BanleShopEntities();
        }
        public IEnumerable<Agency> List
        {
            get
            {
                return _agencyContext.Agencies;
            }
        }

        public void Add(Agency entity)
        {
            _agencyContext.Agencies.Add(entity);
            try
            {
                _agencyContext.SaveChanges();
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

        public void Delete(Agency entity)
        {
            _agencyContext.Agencies.Remove(entity);
            _agencyContext.SaveChanges();
        }

        public Agency FindById(int Id)
        {
            var result = (from r in _agencyContext.Agencies where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Agency entity)
        {
            _agencyContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _agencyContext.SaveChanges();
        }
    }
}