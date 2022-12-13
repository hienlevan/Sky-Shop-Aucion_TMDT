package com.skyshopaucion.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import com.skyshopaucion.utils.DbUtils;

public abstract class AbstractDAO<T> {

	private Class<T> entityClass;

	public AbstractDAO(Class<T> cls) {
		this.entityClass = cls;
	}

	public void insert(T entity) {
		EntityManager em = DbUtils.getEmFactory();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try {
			em.persist(entity);
			trans.commit();
		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {
			em.close();
		}
	}

	public void update(T entity) {
		EntityManager em = DbUtils.getEmFactory();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try {
			em.merge(entity);
			trans.commit();
		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {
			em.close();
		}
	}

	public void delete(T entity) {
		EntityManager em = DbUtils.getEmFactory();
		EntityTransaction trans = em.getTransaction();
		trans.begin();
		try {
			em.remove(em.merge(entity));
			trans.commit();
		} catch (Exception e) {
			System.out.println(e);
			trans.rollback();
		} finally {
			em.close();
		}
	}
}
