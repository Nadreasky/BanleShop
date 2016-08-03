using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BanleWebsite.Repository;
using System.Web.Helpers;

namespace BanleWebsite.Services
{
    public class ImageServices
    {
        ImageRepository _imageRepository;

        public ImageServices()
        {
            _imageRepository = new ImageRepository();
        }

        public List<Image> getAll()
        {
            return _imageRepository.List.ToList();
        }

        //public List<Image> getImagesByNameCode(int nameCode)
        //{
        //    return _imageRepository.getImagesByNameCode(nameCode);
        //}
        
        //public void addImage(int id, int nameCode, string path)
        //{
        //    Image i = findByID(id);
        //    if (i == null)
        //    {
        //        i = new Image();
        //        i.NameCode = nameCode;
        //        i.Path = path;
        //        _imageRepository.Add(i);
        //    }
        //    else
        //    {
        //        i.NameCode = nameCode;
        //        if (path != null && !path.Equals(""))
        //        {
        //            i.Path = path;
        //        }
        //        _imageRepository.Update(i);
        //    }
        //}

        public void delete(Image p)
        {
            _imageRepository.Delete(p);
        }

        public Image findByID(int id)
        {
            if (id < 0)
            {
                return null;
            }
            Image i = _imageRepository.FindById(id);
            return i;
        }

        public WebImage reSizeImg(HttpPostedFileBase file)
        {
            WebImage img = new WebImage(file.InputStream);

            img.Resize(SLIMCONFIG.PRODUCT_IMG_WIDTH, SLIMCONFIG.PRODUCT_IMG_HEIGHT, true, true);
            img.Crop(1, 1, 0, 0);

            return img;
        }

        public WebImage reSizeImg(WebImage file)
        {
            WebImage img = file;
            img.Resize(SLIMCONFIG.PRODUCT_IMG_WIDTH, SLIMCONFIG.PRODUCT_IMG_HEIGHT, true, true);
            img.Crop(1, 1, 0, 0);
            return img;
        }

        public WebImage reSizeImgBig(HttpPostedFileBase file)
        {
            WebImage img = new WebImage(file.InputStream);

            img.Resize(SLIMCONFIG.BIG_PRODUCT_IMG_WIDTH, SLIMCONFIG.BIG_PRODUCT_IMG_HEIGHT, true, true);
            img.Crop(1, 1, 0, 0);

            return img;
        }

        // Kun 30.7.16
        public void add(int idColor, string path, int idProduct)
        {
            Image img = new Image();
            img.IDColor = idColor;
            img.Path = path;
            img.IDProduct = idProduct;

            _imageRepository.Add(img);
        }

        public List<Image> getByProductId(int productId)
        {
            return getAll().Where(img => img.IDProduct == productId).OrderBy(o=>o.IDColor).ToList();
        }

        public void update(Image img)
        {
            _imageRepository.Update(img);
        }

        public Image findByProductIdAndColorId(int productId, int colorId)
        {
            return _imageRepository.List.Where(img => img.IDProduct.Value == productId
                && img.IDColor==colorId).FirstOrDefault();
        }
    }
}