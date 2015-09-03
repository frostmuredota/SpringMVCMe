package org.ramon.test;

import org.ramon.dao.jdbcPersonaDao;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
        jdbcPersonaDao j=new jdbcPersonaDao();
        for(int i=0;i<j.getPersonas().size();i++){
        	System.out.println(j.getPersonas().get(i).getNombre());
        }
	}

}
