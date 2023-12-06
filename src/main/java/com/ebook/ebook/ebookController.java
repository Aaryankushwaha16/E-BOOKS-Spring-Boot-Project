package com.ebook.ebook;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import jakarta.servlet.http.HttpSession;



@Controller
public class ebookController {

	@Autowired
	ibookdata iu;
	
	@Autowired
	iuserdata iud;
	
	@Autowired
	icart ic;
	
	@Autowired
	iorder io;

	@RequestMapping("search")
	public ModelAndView search(String searchbooks, ModelMap mp)
	{
		List<Bookdata> s=iu.findAllByBname(searchbooks);
		ModelAndView mv = new ModelAndView();
		mv.addObject("object4",s);
		mv.setViewName("searchpage.jsp");
		return mv;
	}
	
			
	@RequestMapping("editproduct")
	public String edituserdata(int id, ModelMap mp)
	{
		Bookdata b1=iu.findById(id).get();		
		mp.put("obj", b1);
		
		return "editbookdata.jsp";
		
	}
	
	@RequestMapping("editproductdone")
	public String updatetodo(int id, String bname, String writer, double price, String img, String category)
	{	
		
		Bookdata u1=iu.findById(id).get();
		u1.setId(id);
		u1.setBname(bname);
		u1.setWriter(writer);
		u1.setPrice(price);
		u1.setImg(img);
		u1.setCategory(category);	
		iu.save(u1);
		return "productdetails";		
	}
	
	@RequestMapping("adminHome")
	public String adminHome()
	{
		return "adminHome.jsp";
	}
	
	
	@RequestMapping("viewAll")
	public ModelAndView viewAll(ModelMap mp)
	{
		mp.put("object", iu.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("viewAll.jsp");
		return mv;
	}
	
	
	@RequestMapping("home")
	public ModelAndView viewBook(ModelMap mp)
	{
		List<Bookdata> ti=iu.findAllByCategory("Top");
		mp.put("object", ti);
		
		List<Bookdata> ni=iu.findAllByCategory("New");
		mp.put("object2", ni);
		
		List<Bookdata> oi=iu.findAllByCategory("Old");
		mp.put("object3", oi);
		
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("home.jsp");
		return mv;
	}
	
	@RequestMapping("productdetails")
	public ModelAndView productdetails(ModelMap mp)
	{
		mp.put("obj", iu.findAll());
		
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("product.jsp");
		return mv;
	}
	
	@RequestMapping("orderdetails")
	public ModelAndView orderdetails(ModelMap mp)
	{
		mp.put("obj", io.findAll());
		
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("orderdata.jsp");
		return mv;
	}
	
	@RequestMapping("userdetails")
	public ModelAndView userdetails(ModelMap mp)
	{
		mp.put("obj", iud.findAll());
		
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("userdata.jsp");
		return mv;
	}
	
	
	@RequestMapping("Addbook")
	public String addbook()
	{
		return "addbook.jsp";
	}
	
	
	
	
	@RequestMapping("Register")
	public String register()
	{
		return "register.jsp";
	}
	
	
	@RequestMapping("viewdetail")
	public ModelAndView singleitem(int id)
	{
		Bookdata b=iu.findById(id).get();
		ModelAndView mv = new ModelAndView();
		mv.addObject("obj",b);
		mv.setViewName("viewdetail.jsp");
		return mv;
	}
	
	
	@RequestMapping("E-Book login")
	public String login()
	{
		return "login.jsp";
	}
	
//	@RequestMapping("adminlogin")
//	public String adminlogin()
//	{
//		return "adminHome.jsp";
//	}
	
	
	@RequestMapping("logout")
	public String logout()
	{
		return "logout.jsp";
	}
	
	@RequestMapping("remove")
	public String remove(int id)
	{
		ic.deleteById(id);
		return "home";
//		return "redirect:/addToCart";
	}
	
	@RequestMapping("delete")
	public String delete(int id)
	{
		iu.deleteById(id);
		return "productdetails";
	}
	
	@RequestMapping("deleteorder")
	public String deleteorder(int id)
	{
		io.deleteById(id);
		return "orderdetails";
	}
	
	@RequestMapping("deleteuser")
	public String deleteuser(int id)
	{
		iud.deleteById(id);
		return "userdetails";
	}
	
	
	

	
	@RequestMapping("completeOrder")
	public String completeOrder(String email, String bid, float total,String cid)
	{	
		Userdata u1=iud.findByEmail(email);
		Order o1=new Order(u1,bid,total);		
		io.save(o1);
		String[] array = cid.split(",");
	    for (String letter : array) {
	      if(letter!="")
	      {
	      int c=Integer.valueOf(letter);
	      ic.deleteById(c);
	      }
	    }
		
		return "home";
	
	}	
	
	@RequestMapping("addToCart")
	public ModelAndView addToCart(int id,String email)
	{
		Userdata u1 = iud.findByEmail(email);
		ModelAndView mv=new ModelAndView();
		
		// function for count quantity which is added into the cart
			int i=ic.countByUserdata_id(u1.getId());
			mv.addObject("qty",i);
		//
			mv.setViewName("home");
		Bookdata book=iu.findById(id).get();
		if(book != null)
		{
			Cart c=new Cart(book,u1);
			ic.save(c);
			
		}
		return mv;
	}
	
	
	@RequestMapping("allcart")
	public ModelAndView allcart(HttpSession session,ModelMap mp,String email)
	{
		Userdata u1 = iud.findByEmail(email);
		
		ModelAndView mv = new ModelAndView();
		// function for showing no. of quantity which is added into the cart
			int i=ic.countByUserdata_id(u1.getId());
			mv.addObject("qty",i);
		//
		
		int id=u1.getId();
		
		mp.put("obj", ic.findAllByUserdata_id(id));
		
		mv.addAllObjects(mp);
		session.setAttribute("uid", email);
		mv.setViewName("allCart.jsp");
		return mv;
	}
		

	
	@RequestMapping("submitbook")
	public String registeration(String bname, String writer, double price, String img, String category) {
		
		Bookdata u1=new Bookdata();
		u1.setBname(bname);
		u1.setWriter(writer);
		u1.setPrice(price);
		u1.setImg(img);
		u1.setCategory(category);	
		iu.save(u1);
		return "redirect:/productdetails";	 
		
	}
	
	
	@RequestMapping("submituser")
	public String submituser(String name, String email, String phone,String address, String landmark, String city, String state, String pincode)
	{
			
		Userdata u1=new Userdata();

		u1.setName(name);
		u1.setEmail(email);
		u1.setPhone(phone);
		u1.setAddress(address);
		u1.setLandmark(landmark);
		u1.setCity(city);
		u1.setState(state);
		u1.setPincode(pincode);
		
		iud.save(u1);
		return "E-Book login";	 
		
	}
	
	@RequestMapping("login")
	public ModelAndView loginuser(HttpSession session,String email, String password) {
		
				
		Userdata u1 = iud.findByEmail(email);
		
		if(u1==null ) {
			
			if(email.equals("ebooksadmin@gmail.com")) {
				session.setAttribute("uid", email);
				ModelAndView mv=new ModelAndView();
//				mv.setViewName("adminlogin");
				mv.setViewName("productdetails");
				return mv;
			}else {				
				ModelAndView mv=new ModelAndView();
				mv.setViewName("E-Book login");
				return mv;
			}
			
			
		}
		else {
			
			ModelAndView mv=new ModelAndView();
			int i=ic.countByUserdata_id(u1.getId());
			
			// function for showing no. of quantity which is added into the cart
			
				mv.addObject("qty",i);
				mv.setViewName("home");
			//
				
			session.setAttribute("uid", email);
			return mv;
		}
		
		
	}
	
	
	
}