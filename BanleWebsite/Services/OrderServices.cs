﻿using BanleWebsite.Models;
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

        public void AddToCart(int productId, int color, int size)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
                bool isInCart = false;
                foreach (var item in cart)
                {
                    if (item.productId == productId
                        && item.color ==color
                        && item.size == size)
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
                    cartItem.color = color;
                    cartItem.size = size;
                    cart.Add(cartItem);
                }
            }

            else
            {
                CartItem cartItem = new CartItem();
                cartItem.productId = productId;
                cartItem.quantity = 1;
                cartItem.color = color;
                cartItem.size = size;
                cart.Add(cartItem);
            }

            HttpContext.Current.Session.Add("CartSession", cart);
        }

        public void UpdateQuantity(int productId, int quantity, int color, int size)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
                foreach (var item in cart)
                {
                    if (item.productId==productId
                        && item.color == color
                        && item.size == size)
                    {
                        item.quantity = quantity;
                    }
                }
            }

            HttpContext.Current.Session.Add("CartSession", cart);
        }

        public void DeleteCartItem(int productId, int color, int size)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
                foreach (var item in cart)
                {
                    if (item.productId == productId
                        && item.color==color
                        && item.size == size)
                    {
                        cart.Remove(item);
                        break;
                    }
                }
            }

            HttpContext.Current.Session.Add("CartSession", cart);
        }

        public List<CartItem> SubmitOrder(string name, string phoneNo, string address, string email)
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
            }
            else
            {
                return cart;
            }

            Order order = new Order();
            order.Name = name;
            order.PhoneNo = phoneNo;
            order.Status = SLIMCONFIG.ORDER_STATUS_UNCHECK;
            order.CreateDate = DateTime.Now;
            order.Address = address;
            order.Email = email;
            
            _orderRepository.Add(order);

            foreach (var item in cart)
            {
                OrderDetail productOrder = new OrderDetail();
                productOrder.OrderID = order.ID;
                productOrder.ProductID = item.productId;
                productOrder.Quantity = item.quantity;
                productOrder.Color = item.color;
                productOrder.Size = item.size;

                _productOrderRepository.Add(productOrder);
            }

            //HttpContext.Current.Session.Clear();

            HttpContext.Current.Session.Add("OrderId", order.ID);

            return cart;
            //LogFile logfile = new LogFile();
            //logfile.WriteLog(name + " - " + phoneNo);
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

        public int getNumberOfItemInCart()
        {
            List<CartItem> cart = new List<CartItem>();
            if (HttpContext.Current.Session["CartSession"] != null)
            {
                cart = (List<CartItem>)HttpContext.Current.Session["CartSession"];
            }

            return cart.Count;
        }

        // may ham ben quan li Order
        ////////////////////////////////////////////////////////
        public Order findOrderByID(int id)
        {
            return _orderRepository.FindById(id);
        }
        public OrderMapping findOrderByIDMapping(int id)
        {
            Order order = findOrderByID(id);
            OrderMapping orderMapping = new OrderMapping();
            orderMapping.CreateDate = order.CreateDate;
            orderMapping.ID = order.ID;
            orderMapping.Name = order.Name;
            orderMapping.PhoneNo = order.PhoneNo;
            orderMapping.Status = order.Status;
            return orderMapping;
        }


        public List<Order> getAllOrder()
        {
            return _orderRepository.List.ToList(); 
        }

        public List<OrderDetail> getOrderDetail(int Id)
        {
            List<OrderDetail> orderDetailListOfAnOrder = new List<OrderDetail>();
            foreach (var item in _productOrderRepository.List.ToList())
            {
                if (item.OrderID==Id)
                {
                    orderDetailListOfAnOrder.Add(item);
                }
            }

            return orderDetailListOfAnOrder;
        }

        public List<OrderDetailMapping> getOrderDetailMapping(int Id)
        {
                    List<OrderDetail> orderDetailListOfAnOrder = new List<OrderDetail>();
            foreach (var item in _productOrderRepository.List.ToList())
            {
                if (item.OrderID==Id)
                {
                    orderDetailListOfAnOrder.Add(item);
                }
            }
            List<OrderDetailMapping> result = new List<OrderDetailMapping>();
            foreach(OrderDetail od in orderDetailListOfAnOrder)
            {
                OrderDetailMapping odm = new OrderDetailMapping();
                odm.ID = od.ID;
                odm.OrderID = od.OrderID;
                odm.ProductID = od.ProductID;
                odm.Quantity = od.Quantity;
                odm.Size = od.Size;
                odm.Color = od.Color;
                result.Add(odm);
            }
            return result;
        }
        
        public void updateOrder(Order order)
        {
            _orderRepository.Update(order);
        }

        public List<Order> getOrderFilter(string keyword, int? status, DateTime? fromDate, DateTime? toDate)
        {
            var getAny = string.IsNullOrWhiteSpace(keyword);

            var orderListFull = _orderRepository.List;

            return orderListFull.Where(o => (getAny || (o.Name+o.PhoneNo.ToString()).Contains(keyword))
                && (!status.HasValue || o.Status.Value == status.Value)
                && (!fromDate.HasValue || o.CreateDate >= fromDate.Value)
                && (!toDate.HasValue || o.CreateDate <= toDate.Value.AddDays(1))).ToList();
        }

        public List<Order> getOrderFilterByPhoneNumber(string phoneNo)
        {
            //var getAny = string.IsNullOrWhiteSpace(phoneNo);

            var orderListFull = _orderRepository.List;

            return orderListFull.Where(o => ((o.PhoneNo.ToString()).Equals(phoneNo))).ToList();
        }
    }
}
public class OrderDetailMapping
{
    public int ID { get; set; }
    public int OrderID { get; set; }
    public int ProductID { get; set; }
    public int Quantity { get; set; }
    public Nullable<int> Color { get; set; }
    public Nullable<int> Size { get; set; }
}
public class OrderMapping
{
    public int ID { get; set; }
    public string Name { get; set; }
    public string PhoneNo { get; set; }
    public Nullable<int> Status { get; set; }
    public System.DateTime CreateDate
    {
        get;
        set;

    }
}