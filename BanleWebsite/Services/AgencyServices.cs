using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class AgencyServices
    {
        AgencyRepository _agencyRepository;

        public AgencyServices()
        {
            _agencyRepository = new AgencyRepository();
        }

        public List<Agency> getAll()
        {
            return _agencyRepository.List.ToList();
        }

        public Agency findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Agency a = _agencyRepository.FindById(id);
            return a;
        }

        public void add(Agency a)
        {
            _agencyRepository.Add(a);
        }

        public void update(Agency a)
        {
            _agencyRepository.Update(a);
        }

        public void delete(Agency a)
        {
            _agencyRepository.Delete(a);
        }
    }
}