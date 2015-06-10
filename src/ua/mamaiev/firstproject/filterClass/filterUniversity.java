package ua.mamaiev.firstproject.filterClass;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class filterUniversity implements Filter{

	@Override
	public void destroy() {
		System.out.println("Filter is dead ! ! !");
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletResponse resp = (HttpServletResponse) response;
		System.out.println("Filter run!");
		
		Pattern p1 = Pattern.compile("[A-Z][a-z]{2,30}");
		Matcher m1 = p1.matcher(request.getParameter("name"));
		Pattern p2 = Pattern.compile("[5,6,7,8]\\.[0-9]{8}");
		Matcher m2 = p2.matcher(request.getParameter("specialization"));
		
		if (!request.getParameter("name").isEmpty()) {
			if(m1.matches() & m2.matches())
			request.setAttribute("What", "OK !!!!!!");
			System.out.println("Параметры заданы правильно.");
		} else {
			resp.sendError(500);
			System.out.println("Параметры заданы НЕ правильно.");
		}
		
		arg2.doFilter(request, response);
	
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("Filter is ready ! ! !");
		
	}
	
	
}