package util;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpFilter;


@WebFilter(
		filterName = "encodingFilter1", 
		urlPatterns = { "/*" }, 
		initParams = { 
				@WebInitParam(name = "encoding", value = "utf-8"),
			
		})

//웹필터로 바꿔보기

public class CharacterEncodingFilter implements Filter {
       private String encoding;
  

       
       public void init(FilterConfig fConfig) throws ServletException {
		encoding = fConfig.getInitParameter("encoding");
		if(encoding==null) {
			encoding = "EUC-KR";
			}
		}
    
//모든페이지 인코딩처리하는 방법 인코딩필터 개이득

       public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("문자인코딩설정");
		request.setCharacterEncoding(encoding);
		chain.doFilter(request, response);
	}

       public void destroy() {
		
	}
	

}
