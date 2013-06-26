package cn.freeteam.cms.service;

import cn.freeteam.base.BaseService;
import cn.freeteam.cms.dao.GuestbookMapper;

public class GuestbookService extends BaseService{

	private GuestbookMapper guestbookMapper;
	
	public GuestbookService() {
		initMapper("guestbookMapper");
	}

	public GuestbookMapper getGuestbookMapper() {
		return guestbookMapper;
	}

	public void setGuestbookMapper(GuestbookMapper guestbookMapper) {
		this.guestbookMapper = guestbookMapper;
	}
}
