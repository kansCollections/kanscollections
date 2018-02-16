package com.kanCollections.kans.dao;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.kanCollections.kans.entity.Feedback;

@Component
public class FeedbackDao 
{
	//@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void addFeedback(Feedback fb) 
	{
	System.out.println (" in addFeedBack" + fb);
	Session session = sessionFactory.getCurrentSession();
	session.save(fb);
    }
	}

