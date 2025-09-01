package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

public class LogFileFilter extends HttpFilter implements Filter {
	PrintWriter writer;
	
	public void init(FilterConfig filterConfig) throws ServletException {
		String filename = filterConfig.getInitParameter("filename");
		System.out.println("로그파일: "+filename);
        if(filename==null) throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
        try {
            writer = new PrintWriter(new FileWriter(filename, true), true);
        } catch (IOException e) {
            throw new ServletException("로그 파일을 열 수 없습니다.");
        }
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hRequest = (HttpServletRequest)request;
		// request
		writer.printf("현재일시 : %s %n",  getCurrentTime());
		String clientAddr = request.getRemoteAddr();
		writer.printf("클라이언트 주소 : %s %n", clientAddr);
		writer.printf("요청메소드 : %s %n",hRequest.getMethod());
		writer.printf("요청리소스 : %s %n",hRequest.getRequestURI());
		//필터 체인
		chain.doFilter(request, response);
		
		//response
		String contentType = response.getContentType();
        writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
        writer.println("----------------------------------------------");
	}
	
	public void destroy() {
		writer.close();
	}
	
	private String getCurrentTime() {
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());	
	}




}
