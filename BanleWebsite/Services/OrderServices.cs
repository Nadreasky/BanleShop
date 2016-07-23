using BanleWebsite.Models;
using BanleWebsite.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanleWebsite.Services
{
    public class OrderServices
    {
        OrderRepository _orderRepository;
        ProductOrderRepository _productOrderRepository;

        public OrderServices()
        {
            _orderRepository = new OrderRepository();
            _productOrderRepository = new ProductOrderRepository();
        }

        public void AddToCart(int productId)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
                bool isInCart = false;
                foreach (var item in cart)
                {
                    if (item.productId == productId)
                    {
                        item.quantity++;
                        isInCart = true;
                    }
                }

                if (!isInCart)
                {
                    CartItem cartItem = new CartItem();
                    cartItem.productId = productId;
                    cartItem.quantity = 1;
                    cart.Add(cartItem);
                }
            }

            else
            {
                CartItem cartItem = new CartItem();
                cartItem.productId = productId;
                cartItem.quantity = 1;
                cart.Add(cartItem);
            }

            HttpContext.Current.Session.Add("CartSession", cart);
        }

        public void SubmitOrder(string name, string phoneNo)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
            }
            else
            {
                return;
            }

            Order order = new Order();
            order.Name = name;
            order.PhoneNo = phoneNo;
            order.Status = 0;
            order.CreateDate = DateTime.Today;
            
            _orderRepository.Add(order);

            foreach (var item in cart)
            {
                OrderDetail productOrder = new OrderDetail();
                productOrder.OrderID = order.ID;
                productOrder.ProductID = item.productId;
                productOrder.Quantity = item.quantity;

                _productOrderRepository.Add(productOrder);
            }

            HttpContext.Current.Session.Clear();
        }

        public List<CartItem> getCart()
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
            }

            return cart;
        }

        
    }
}