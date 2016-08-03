using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class ColorServices
    {
        ColorRepository _colorRepository;

        public ColorServices()
        {
            _colorRepository = new ColorRepository();
        }

        public List<Color> getAll()
        {
            return _colorRepository.List.ToList();
        }

        public Color findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Color c = _colorRepository.FindById(id);
            return c;
        }

        public void add(Color c)
        {
            _colorRepository.Add(c);
        }

        public void update(Color c)
        {
            _colorRepository.Update(c);
        }

        public void delete(Color c)
        {
            _colorRepository.Delete(c);
        }


    }
}