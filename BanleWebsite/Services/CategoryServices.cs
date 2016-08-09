using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BanleWebsite.Repository;

namespace BanleWebsite.Services
{
    public class CategoryServices
    {
        CategoryRepository _categoryRepository;
        ProductServices _productServices;

        public CategoryServices()
        {
            _categoryRepository = new CategoryRepository();
        }

        public List<Category> getAll()
        {
            return _categoryRepository.getAllCategoryActived();
        }

        public Category findByid(int id)
        {
            if (id < 0)
            {
                return null;

            }
            Category c = _categoryRepository.FindById(id);
            return c;
        }

        public void addOrUpdateCategory(int id, String name, int rank, int preCateID)
        {
            Category c;
            c = findByid(id);
            if (c == null)
            {
                c = new Category();
                c.Name = name;
                c.Rank = rank;
                c.isActived = true;
                if (preCateID < 0)
                {
                    c.PreCateID = SLIMCONFIG.NONE_PRE_CATEGORY;
                }
                else
                {
                    c.PreCateID = preCateID;
                }
                _categoryRepository.Add(c);
            }
            else
            {
                c.Name = name;
                c.Rank = rank;
                c.isActived = true;
                if (preCateID < 0)
                {
                    c.PreCateID = SLIMCONFIG.NONE_PRE_CATEGORY;
                }
                else
                {
                    c.PreCateID = preCateID;
                }
                _categoryRepository.Update(c);
            }
        }

        public void updateCategoryEntity(Category c)
        {
            _categoryRepository.Update(c);
        }

        public List<Product> getProductByCate(int id)
        {
            _productServices = new ProductServices();
            Category mainCate = findByid(id);
            List<Product> allProduct = _productServices.getAll();
            List<Product> productListByCate = new List<Product>();
            if (mainCate.PreCateID == SLIMCONFIG.NONE_PRE_CATEGORY)
            {
                List<Category> allCate = getAll();
                for (int i = 0; i < allCate.Count; i++)
                {
                    Category c = allCate.ElementAt(i);
                    if (c.PreCateID == mainCate.ID)
                    {
                        for (int j = 0; j < allProduct.Count; j++)
                        {
                            Product p = allProduct.ElementAt(j);
                            if (p.CateID == c.ID)
                            {
                                productListByCate.Add(p);
                            }
                        }
                    }
                }
            }
            for (int i = 0; i < allProduct.Count; i++)
            {
                Product p = allProduct.ElementAt(i);
                if (p.CateID == id)
                {
                    productListByCate.Add(p);
                }
            }
            return productListByCate;
        }

        /// <summary>
        /// treasuryonly
        /// lay ra cai duong dan may cai Category
        /// </summary>
        /// <param name="id"></param>
        /// <returns>categoryTree</returns>
        public List<Category> getCategoryTree(int id)
        {
            List<Category> categoryTree = new List<Category>();
            Category currentCategory = findByid(id);
            Category previousCategory = new Category();
            categoryTree.Add(currentCategory);
            while (currentCategory.PreCateID != SLIMCONFIG.NONE_PRE_CATEGORY)
            {
                previousCategory = findByid(currentCategory.PreCateID.Value);
                categoryTree.Add(previousCategory);
                currentCategory = previousCategory;
            }

            return categoryTree;
        }

        /// <summary>
        /// treasuryonly
        /// lay ra cai duong dan may cai Category (ma theo kieu de qui)
        /// </summary>
        List<Category> categoryTreeRecursion = new List<Category>();
        public List<Category> getCategoryTreeRecursion(int id)
        {
            categoryTreeRecursion.Add(findByid(id));
            if (findByid(id).PreCateID.Value == SLIMCONFIG.NONE_PRE_CATEGORY)
                return categoryTreeRecursion;

            return getCategoryTreeRecursion(findByid(id).PreCateID.Value);
        }
        public void delete(Category c)
        {
            _categoryRepository.Delete(c);
        }
    }
}