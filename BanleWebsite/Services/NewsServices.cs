using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class NewsServices
    {
        NewsRepository _newsRepository;

        public NewsServices()
        {
            _newsRepository = new NewsRepository();
        }

        public List<News> getAll()
        {
            return _newsRepository.List.ToList();
        }

        public News findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            News n = _newsRepository.FindById(id);
            return n;
        }

        public void add(News s)
        {
            _newsRepository.Add(s);
        }

        public void update(News s)
        {
            _newsRepository.Update(s);
        }

        public void delete(News s)
        {
            _newsRepository.Delete(s);
        }

        public List<News> getPopNews()
        {
            return _newsRepository.getPopNews();
        }
    }
}