package com.exception;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import com.po.Admin;
import com.po.User;
public class MyExceptionHandler implements HandlerExceptionResolver {
	@Override
	public ModelAndView resolveException(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
			Exception arg3) {
	   	Map<String, Object> model = new HashMap<String, Object>();  
        model.put("ex", arg3); 
       if(arg3 instanceof AdminLoginNoException){
        	arg0.setAttribute("auser", new Admin());
        	arg0.setAttribute("msg", "error");
        	return new ModelAndView("/admin/login", model);
        } else if(arg3 instanceof UserLoginNoException){
        	arg0.setAttribute("buser", new User());
        	arg0.setAttribute("msg", "error");
        	return new ModelAndView("/before/login", model);
       }else{  
        	return new ModelAndView("/error/error", model);  
        }  
	}
}
