using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class ProductDetailServices
    {
        ProductDetailRepository _productDetailRepository = new ProductDetailRepository();

        public List<ProductDetail> getAll()
        {
            return _productDetailRepository.List.ToList();
        }
    }
}