using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class SizeProductDetailServices
    {
        SizeProductDetailRepository _sizeProductDetailRepository;

        public SizeProductDetailServices()
        {
            _sizeProductDetailRepository = new SizeProductDetailRepository();
        }

        public List<SizeProductDetail> getAll()
        {
            return _sizeProductDetailRepository.List.ToList();
        }

        public SizeProductDetail findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            SizeProductDetail spd = _sizeProductDetailRepository.FindById(id);
            return spd;
        }

        public void add(SizeProductDetail spd)
        {
            _sizeProductDetailRepository.Add(spd);
        }

        public void update(SizeProductDetail spd)
        {
            _sizeProductDetailRepository.Update(spd);
        }

        public void delete(SizeProductDetail spd)
        {
            _sizeProductDetailRepository.Delete(spd);
        }
    }
}