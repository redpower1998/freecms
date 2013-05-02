package cn.freeteam.util;
import java.io.File;  
import java.io.FileOutputStream;  
import java.io.InputStream;  
  /**
   * 
   * <p>Title: ZipTools.java</p>
   * 
   * <p>Description: zip解压</p>
   * 
   * <p>Date: May 2, 2013</p>
   * 
   * <p>Time: 8:56:36 PM</p>
   * 
   * <p>Copyright: 2013</p>
   * 
   * <p>Company: freeteam</p>
   * 
   * @author freeteam
   * @version 1.0
   * 
   * <p>============================================</p>
   * <p>Modification History
   * <p>Mender: </p>
   * <p>Date: </p>
   * <p>Reason: </p>
   * <p>============================================</p>
   */
  
public class ZipTools {  
	public static void  createDirectory(String directory, String subDirectory) {
	    String dir[];
	    File fl = new File(directory);
	      if (subDirectory == "" && fl.exists() != true)
	        fl.mkdir();
	      else if (subDirectory != "") {
	        dir = subDirectory.replace("//", "/").split("/");
	        for (int i = 0; i < dir.length; i++) {
	          File subFile = new File(directory + File.separator + dir[i]);
	          if (subFile.exists() == false)
	            subFile.mkdir();
	          directory += File.separator + dir[i];
	        }
	      }
	  }

	public static  void unZip(String zipFileName, String outputDirectory) throws Exception {
	      org.apache.tools.zip.ZipFile zipFile = new org.apache.tools.zip.ZipFile(zipFileName);
	      java.util.Enumeration e = zipFile.getEntries();
	      org.apache.tools.zip.ZipEntry zipEntry = null;
	      createDirectory(outputDirectory, "");
	      while (e.hasMoreElements()) {
	        zipEntry = (org.apache.tools.zip.ZipEntry) e.nextElement();
	        if (zipEntry.isDirectory()) {
	          String name = zipEntry.getName();
	          name = name.substring(0, name.length() - 1);
	          File f = new File(outputDirectory + File.separator + name);
	          f.mkdir();
	        }
	        else {
	          String fileName = zipEntry.getName();
	          fileName = fileName.replace("//", "/");
	          if (fileName.indexOf("/") != -1)
	          {
	              createDirectory(outputDirectory,
	                              fileName.substring(0, fileName.lastIndexOf("/")));
	              fileName=fileName.substring(fileName.lastIndexOf("/")+1,fileName.length());
	          }

	                   File f = new File(outputDirectory + File.separator + zipEntry.getName());

	          f.createNewFile();
	          InputStream in = zipFile.getInputStream(zipEntry);
	          FileOutputStream out=new FileOutputStream(f);

	          byte[] by = new byte[1024];
	          int c;
	          while ( (c = in.read(by)) != -1) {
	            out.write(by, 0, c);
	          }
	          out.close();
	          in.close();
	        }
	      }
	        
	    }

    public static void main(String[] args) {
    	  try {  
              ZipTools.unZip("d:/test.zip","d:/up/");  
          } catch (Exception e) {  
              e.printStackTrace();  
          } 
	}
}  