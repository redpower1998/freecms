package cn.freeteam.cms.action;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.service.GuestbookService;

/**
 * 
 * <p>Title: GuestbookAction.java</p>
 * 
 * <p>Description:留言本相关操作 </p>
 * 
 * <p>Date: Feb 4, 2013</p>
 * 
 * <p>Time: 7:52:23 PM</p>
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
public class GuestbookAction extends BaseAction{

	private GuestbookService guestbookService;

	

	public GuestbookService getGuestbookService() {
		return guestbookService;
	}

	public void setGuestbookService(GuestbookService guestbookService) {
		this.guestbookService = guestbookService;
	}
	
}
