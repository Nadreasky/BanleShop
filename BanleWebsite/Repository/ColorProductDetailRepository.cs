using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ColorProductDetailRepository: IRepository<ColorProductDetail>
    {
        BanleShopEntities _colorProductDetailContext;

        public ColorProductDetailRepository()
        {
            _colorProductDetailContext = new BanleShopEntities();
        }
        public IEnumerable<ColorProductDetail> List
        {
            get
            {
                return _colorProductDetailContext.ColorProductDetails;
            }
        }

        public void Add(ColorProductDetail entity)
        {
            _colorProductDetailContext.ColorProductDetails.Add(entity);
            try
            {
                _colorProductDetailContext.SaveChanges();
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

        public void Delete(ColorProductDetail entity)
        {
            _colorProductDetailContext.ColorProductDetails.Remove(entity);
            _colorProductDetailContext.SaveChanges();
        }

        public ColorProductDetail FindById(int Id)
        {
            var result = (from r in _colorProductDetailContext.ColorProductDetails where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(ColorProductDetail entity)
        {
            _colorProductDetailContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _colorProductDetailContext.SaveChanges();
        }
    }
}