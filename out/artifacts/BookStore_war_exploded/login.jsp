<%@ page contentType="text/html;charset=gb2312"%>
<script type="text/javascript">
   function isValidate(form)
   {
      // �õ��û��������Ϣ
      userid = form.userid.value;
      userpass = form.userpass.value;

      // �ж��û�������
      if(!minLength(userid,6))
      {
         alert("�û�������С��6λ��");
         form.userid.focus();
         return false;
      }
      if(!maxLength(userid,8))
      {
         alert("�û������ȴ���8λ��");
         form.userid.focus();
         return false;
      }

      // �жϿ����
      if(!minLength(userpass,6))
      {
         alert("�����С��6λ��");
         form.userpass.focus();
         return false;
      }
      if(!maxLength(userpass,8))
      {
         alert("����ȴ���8λ��");
         form.userpass.focus();
         return false;
      }

      // �ж��û����Ϳ����Ƿ���ͬ
      if(userid==userpass)
      {
         alert("�û����Ϳ������ȣ�");
         form.userpass.focus();
         return false;
      }

      return true;
   }
   // ��֤�Ƿ�������С����
   function minLength(str,length)
   {
      if(str.length>=length)
         return true;
      else
      return false;
   }
   // �ж��Ƿ�������󳤶�
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
      <title>�û���½</title>
   </head>
   <body>
      <h2>�û���¼</h2>
      <form name="form1" action="login" method="get" 
            onsubmit="javascript:return isValidate(form1)">
         �û�����<input type="text" name="userid"> <br>
         ���<input type="password" name="userpass"><br>
            <input type="reset" value="����">
            <input type="submit" value="�ύ"><br>
      </form>
   </body>
</html>
