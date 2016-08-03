using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class SizeServices
    {
        SizeRepository _sizeRepository;

        public SizeServices()
        {
            _sizeRepository = new SizeRepository();
        }

        public List<Size> getAll()
        {
            return _sizeRepository.List.ToList();
        }

        public Size findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Size s = _sizeRepository.FindById(id);
            return s;
        }

        public void add(Size s)
        {
            _sizeRepository.Add(s);
        }

        public void update(Size s)
        {
            _sizeRepository.Update(s);
        }

        public void delete(Size s)
        {
            _sizeRepository.Delete(s);
        }
    }
}