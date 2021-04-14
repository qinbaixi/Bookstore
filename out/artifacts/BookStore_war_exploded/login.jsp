<%@ page contentType="text/html;charset=gb2312"%>
<script type="text/javascript">
   function isValidate(form)
   {
      // 得到用户输入的信息
      userid = form.userid.value;
      userpass = form.userpass.value;

      // 判断用户名长度
      if(!minLength(userid,6))
      {
         alert("用户名长度小于6位！");
         form.userid.focus();
         return false;
      }
      if(!maxLength(userid,8))
      {
         alert("用户名长度大于8位！");
         form.userid.focus();
         return false;
      }

      // 判断口令长度
      if(!minLength(userpass,6))
      {
         alert("口令长度小于6位！");
         form.userpass.focus();
         return false;
      }
      if(!maxLength(userpass,8))
      {
         alert("口令长度大于8位！");
         form.userpass.focus();
         return false;
      }

      // 判断用户名和口令是否相同
      if(userid==userpass)
      {
         alert("用户名和口令不能相等！");
         form.userpass.focus();
         return false;
      }

      return true;
   }
   // 验证是否满足最小长度
   function minLength(str,length)
   {
      if(str.length>=length)
         return true;
      else
      return false;
   }
   // 判断是否满足最大长度
   function maxLength(str,length)
   {
      if(str.length<=length)
         return true;
      else
         return false;
   }
</script>


<html>
   <head>
      <title>用户登陆</title>
   </head>
   <body>
      <h2>用户登录</h2>
      <form name="form1" action="login" method="get" 
            onsubmit="javascript:return isValidate(form1)">
         用户名：<input type="text" name="userid"> <br>
         口令：<input type="password" name="userpass"><br>
            <input type="reset" value="重置">
            <input type="submit" value="提交"><br>
      </form>
   </body>
</html>
