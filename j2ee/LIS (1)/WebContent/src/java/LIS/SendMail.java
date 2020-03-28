/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package LIS;
import java.util.Properties;     
import javax.mail.*;
import javax.mail.internet.*;
           
/**     
 *
 * @author A1
 */
public class SendMail
{
    String status="";
    String email="";
    String msg="";
    String subject="";
    public void setEmail(String nemail)
    {
        email=nemail;
    }
    public void setMessage(String ncode)
    {
        msg=ncode;
    }
    public void setSub(String nsubject)
    {
        subject = nsubject;
    }

   
    public String sendEmail()
    {
        Properties props = new Properties();    
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Authenticator auth = new SMTPAuthenticator();

        Session session = Session.getDefaultInstance(props, auth);

        try
        {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("lifeinsurancesystem2014@gmail.com"));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
            message.setSubject(subject);
            message.setContent(msg,"text/html");
            Transport.send(message);
            status="Success";
        }
        catch(Exception e)
        {
            System.out.println(e);
            status="Fail"+e;
        }

        return status;
    }

}
class SMTPAuthenticator extends javax.mail.Authenticator
{
    public PasswordAuthentication getPasswordAuthentication()
    {
        return new PasswordAuthentication("lifeinsurancesystem2014@gmail.com","life2014insurance");
    }
}
