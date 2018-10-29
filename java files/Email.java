package action;

import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
  
public class Email {  
    public static boolean sendMail(String sub,String msg, String userid, String to) {
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");
        // Assuming you are sending email from localhost
        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("myprojectcheck9@gmail.com", "project@12345");
                    }
                });

        System.out.println("Message   " + msg);
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(userid));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(to));
            message.setSubject(sub);
            message.setText(msg);
            Transport.send(message);
            return true;

        } catch (MessagingException e) {
            System.out.println(e);
            e.printStackTrace();
            return false;
            // throw new RuntimeException(e);
        }
    }
 public static void main(String[] args) {  
  
  Email.sendMail("check","hii", "venu","venujavatrainer@gmail.com");
   }  
 
}  