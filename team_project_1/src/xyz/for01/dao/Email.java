package xyz.for01.dao;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Email {
	public static void emailSend(String key, String email) {
		Properties p = System.getProperties();
		String charSet = "UTF-8" ;
		
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.port", "587");

		Authenticator auth = new MyAuthentication();

		Session session = Session.getDefaultInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);
		
		try {
			msg.setSentDate(new Date());
			
			String fromName = "요기죠기";
			InternetAddress from = new InternetAddress();
			
			try{
	            from = new InternetAddress(new String(fromName.getBytes(charSet), "8859_1") + "<team.project.yogijogi@gmail.com>");
	        }catch(UnsupportedEncodingException uee){
	            uee.printStackTrace();
	        }
			msg.setFrom(from); 

			InternetAddress to = new InternetAddress(email); // �̸��� ������
			msg.setRecipient(Message.RecipientType.TO, to);
			
			msg.setSubject("요기죠기.", charSet); // �̸��� ����
			msg.setText("인증번호 : " + key, charSet); // �̸��� ����
			msg.setHeader("content-Type", "text/html"); // �̸��� ���
			javax.mail.Transport.send(msg); // ���Ϻ�����

		} catch (AddressException addr_e) { addr_e.printStackTrace();
		} catch (MessagingException msg_e) { msg_e.printStackTrace();
		}
	}
	
	public static void emailSend2(String key, String email) {
		Properties p = System.getProperties();
		String charSet = "UTF-8" ;
		
		p.put("mail.smtp.starttls.enable", "true"); 
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.port", "587");

		Authenticator auth = new MyAuthentication();

		Session session = Session.getDefaultInstance(p, auth);
		MimeMessage msg = new MimeMessage(session);
		
		try {
			msg.setSentDate(new Date());
			
			String fromName = "요기죠기";
			InternetAddress from = new InternetAddress();
			
			try{
	            from = new InternetAddress(new String(fromName.getBytes(charSet), "8859_1") + "<team.project.yogijogi@gmail.com>");
	        }catch(UnsupportedEncodingException uee){
	            uee.printStackTrace();
	        }
			msg.setFrom(from);

			InternetAddress to = new InternetAddress(email);
			msg.setRecipient(Message.RecipientType.TO, to);
			
			msg.setSubject("요기죠기", charSet); // �̸��� ����
			msg.setText("임시비밀번호 : " + key, charSet); // �̸��� ����
			msg.setHeader("content-Type", "text/html"); // �̸��� ���
			javax.mail.Transport.send(msg); // ���Ϻ�����

		} catch (AddressException addr_e) { addr_e.printStackTrace();
		} catch (MessagingException msg_e) { msg_e.printStackTrace();
		}
	}
}

class MyAuthentication extends Authenticator {
	PasswordAuthentication pa;

	MyAuthentication() {
		String id = "team.project.yogijogi@gmail.com"; // ���� ID
		String pw = "01065400424a"; // ���� ��й�ȣ

		// ID�� ��й�ȣ�� �Է��Ѵ�.
		pa = new PasswordAuthentication(id, pw);
	}

	// �ý��ۿ��� ����ϴ� ��������
	public PasswordAuthentication getPasswordAuthentication() { return pa; }
}