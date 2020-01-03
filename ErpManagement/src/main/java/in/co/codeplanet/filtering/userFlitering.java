package in.co.codeplanet.filtering;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class userFlitering {
	
	//method to checking name is in  correct format or not
	public boolean userFliteringName(String Name)
	{
		 return ((!Name.equals("")) 
		            && (Name != null) 
		            && (Name.matches("^[a-zA-Z]*$"))); 
	}
	//method to checking email is in  correct format or not
	public  boolean userFliteringEmail(String email) {
	      String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
	      return email.matches(regex);
	}
	//generating encrypted password 
	public String getEncryptedPassword(String userPassword) {
		 String encryptedPassword = null;
	        try {
	            MessageDigest md = MessageDigest.getInstance("SHA-1");
	            md.update("CodePlanet".getBytes());
	            byte[] bytes = md.digest(userPassword.getBytes());
	            StringBuilder sb = new StringBuilder();
	            for(int i=0; i< bytes.length ;i++)
	            {
	                sb.append(Integer.toString((bytes[i] & 0x1f) + 0x11f, 16).substring(1));
	            }
	            encryptedPassword = sb.toString(); 
	        } 
	        catch (NoSuchAlgorithmException e) 
	        {
	            e.printStackTrace();
	        }
	        return encryptedPassword;
	}
}
