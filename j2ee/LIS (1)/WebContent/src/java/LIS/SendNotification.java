/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package LIS;

import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author padmanava
 */
public class SendNotification
{
     String status="";
     String email ="";
     public void setEmail(String nemail)
     {
         email = nemail;
     }
     String data ="";
     public void setData(String ndata)
     {
         data = ndata;
     }
     String path ="";
     public void setPath(String npath)
     {
         path = npath;
     }
     String content="";
     public void setContent(String ncontent)
     {
        content = ncontent;
     }

      public String sendEmail()
        {
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            Authenticator auth = new SMTPAuthenticator();


            Session session = Session.getDefaultInstance(props,auth);
            String[] recipients = email.split(",");
            try
            {
                Message message = new MimeMessage(session);
                message.setFrom(new InternetAddress("lifeinsurancesystem2014@gmail.com"));
                message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
                message.setSubject("Notification : ");

                BodyPart mbodypart = new MimeBodyPart();
                //mbodypart.setText(content);
                mbodypart.setContent(content, "text/html");
                Multipart multipart = new MimeMultipart();
                multipart.addBodyPart(mbodypart);
                String[] arr = data.split(",");

                for(int i=0;i<arr.length;i++)
                {
                    mbodypart = new MimeBodyPart();
                    FileDataSource fileDataSource =new FileDataSource(path+arr[i]);
                    mbodypart.setDataHandler(new DataHandler(fileDataSource));
                    mbodypart.setFileName(arr[i]);
                    multipart.addBodyPart(mbodypart);
                }
                message.setContent(multipart);
                Transport.send(message);

                status = "success";
            }
            catch(Exception e)
            {
                System.out.println(e);
                status = "fail : "+e;
            }
            return status;
    }
}