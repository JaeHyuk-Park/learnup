package dao;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtil {
	
	/** 메일 HOST **/
	private static final String HOST = "smtp.naver.com";
	/** 메일 PORT **/
	private static final String PORT = "587";


	
	
	
	public static void sendMail(String title, String write, String mails) {
		
	
		 String user = ""; 
	     String password = "";  
		

		// SMTP 발송 Properties 설정
		Properties props = new Properties();
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.smtp.host", MailUtil.HOST);
		props.put("mail.smtp.port", MailUtil.PORT);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", MailUtil.HOST);
		props.put("mail.smtp.auth", "true");
		
		// SMTP Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
			
		try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("tjdngur123@daum.net"));

            // 메일 제목
            message.setSubject(title);

            // 메일 내용
            message.setText(write);

            // send the message
            Transport.send(message);
            System.out.println("Success Message Send");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
	}