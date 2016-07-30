using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Repository
{
    public class ColorRepository: IRepository<Color>
    {
        BanleShopEntities _colorContext;

        public ColorRepository()
        {
            _colorContext = new BanleShopEntities();
        }
        public IEnumerable<Color> List
        {
            get
            {
                return _colorContext.Colors;
            }
        }

        public void Add(Color entity)
        {
            _colorContext.Colors.Add(entity);
            try
            {
                _colorContext.SaveChanges();
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

        public void Delete(Color entity)
        {
            _colorContext.Colors.Remove(entity);
            _colorContext.SaveChanges();
        }

        public Color FindById(int Id)
        {
            var result = (from r in _colorContext.Colors where r.ID == Id select r).FirstOrDefault();
            return result;
        }

        public void Update(Color entity)
        {
            _colorContext.Entry(entity).State = System.Data.Entity.EntityState.Modified;
            _colorContext.SaveChanges();
        }
    }
}
