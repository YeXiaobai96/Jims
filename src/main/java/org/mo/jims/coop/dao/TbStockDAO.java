package org.mo.jims.coop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.mo.jims.coop.entity.Stock;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 * A data access object (DAO) providing persistence and search support for
 * TbStock entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see org.mo.jims.coop.entity.TbStock
 * @author MyEclipse Persistence Tools
 */
@Transactional
public class TbStockDAO {
	private static final Logger log = LoggerFactory.getLogger(TbStockDAO.class);
	// property constants
	public static final String UNIT_COST = "unitCost";
	public static final String AMOUNT = "amount";
	public static final String SUM = "sum";
	public static final String CHECK_CONCLUSION = "checkConclusion";
	public static final String CLEARING_FORM = "clearingForm";
	public static final String HANDLER = "handler";
	public static final String STATE = "state";

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	protected void initDao() {
		// do nothing
	}

	public void save(Stock transientInstance) {
		log.debug("saving TbStock instance");
		try {
			getCurrentSession().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(Stock persistentInstance) {
		log.debug("deleting TbStock instance");
		try {
			getCurrentSession().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	
}