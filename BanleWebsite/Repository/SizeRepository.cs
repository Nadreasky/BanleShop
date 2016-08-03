using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class SizeRepository: IRepository<Size>
    {
        BanleShopEntities _sizeContext;

        public SizeRepository()
        {
            _sizeContext = new BanleShopEntities();
        }
        public IEnumerable<Size> List
        {
            get
            {
                return _sizeContext.Sizes;
            }
        }

        public void Add(Size entity)
        {
            _sizeContext.Sizes.Add(entity);
            try
            {
                _sizeContext.SaveChanges();
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

        public void Delete(Size entity)
        {
            _sizeContext.Sizes.Remove(entity);
            _sizeContext.SaveChanges();
        }

        public Size FindById(int Id)
        {
            var result = (from r in _sizeContext.Sizes where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Size entity)
        {
            _sizeContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _sizeContext.SaveChanges();
        }
    }
}
