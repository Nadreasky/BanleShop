using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class SizeProductDetailRepository: IRepository<SizeProductDetail>
    {
        BanleShopEntities _sizeProductDetailContext;

        public SizeProductDetailRepository()
        {
            _sizeProductDetailContext = new BanleShopEntities();
        }
        public IEnumerable<SizeProductDetail> List
        {
            get
            {
                return _sizeProductDetailContext.SizeProductDetails;
            }
        }

        public void Add(SizeProductDetail entity)
        {
            _sizeProductDetailContext.SizeProductDetails.Add(entity);
            try
            {
                _sizeProductDetailContext.SaveChanges();
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

        public void Delete(SizeProductDetail entity)
        {
            _sizeProductDetailContext.SizeProductDetails.Remove(entity);
            _sizeProductDetailContext.SaveChanges();
        }

        public SizeProductDetail FindById(int Id)
        {
            var result = (from r in _sizeProductDetailContext.SizeProductDetails where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(SizeProductDetail entity)
        {
            _sizeProductDetailContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _sizeProductDetailContext.SaveChanges();
        }
    }
}