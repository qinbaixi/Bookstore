package severlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet{
   public void doGet(HttpServletRequest request,HttpServletResponse response)
      throws IOException,ServletException{
      
      // 获取用户输入的用户ID和口令
      String userid = request.getParameter("userid");
      String userpass = request.getParameter("userpass");
      
      // 创建模型对象
      UserBean user = new UserBean();
     
      // 调用业务方法进行验证
      boolean b = user.validate(userid,userpass); 

      // 要转向的文件
      String forward;

      // 如果登陆成功，把用户名写入session中，并且转向success.jsp，
// 否则转向failure.jsp
      if(b){
//         HttpSession session = request.getSession(true);
//         session.setAttribute("userid",userid);
         request.setAttribute("user", userid);
         // 目标转向文件是success.jsp
         forward = "success.jsp";

      }else{

         // 目标转向文件是failure.jsp
         forward = "failure.jsp";

      }
            
      // 获取Dispatcher对象
   RequestDispatcher dispatcher = request.getRequestDispatcher(forward);

      // 完成跳转
      dispatcher.forward(request,response);

   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
      throws IOException,ServletException{
      doGet(request,response);
   }
}
