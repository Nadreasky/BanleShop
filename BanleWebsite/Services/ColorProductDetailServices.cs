using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class ColorProductDetailServices
    {
        ColorProductDetailRepository _colorProductDetailRepository;

        public ColorProductDetailServices()
        {
            _colorProductDetailRepository = new ColorProductDetailRepository();
        }

        public List<ColorProductDetail> getAll()
        {
            return _colorProductDetailRepository.List.ToList();
        }

        public ColorProductDetail findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            ColorProductDetail cpd = _colorProductDetailRepository.FindById(id);
            return cpd;
        }

        public void add(ColorProductDetail cpd)
        {
            _colorProductDetailRepository.Add(cpd);
        }

        public void update(ColorProductDetail cpd)
        {
            _colorProductDetailRepository.Update(cpd);
        }

        public void delete(ColorProductDetail cpd)
        {
            _colorProductDetailRepository.Delete(cpd);
        }

        public List<ColorProductDetail> getByProductId(int productId)
        {
            return getAll().Where(cpd => cpd.ProID == productId).ToList();
        }
    }
}