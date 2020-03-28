package com.home.core.CoreProgramme;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.commons.beanutils.BeanUtils;

public class App 
{
    public static void main( String[] args ) {
    	List<Student> students = new ArrayList<Student>();
    	
    	students.add(new Student(1, "Balaram", "Mandal", "Odisha"));
    	students.add(new Student(1, "Ram", "Mandal", "Odisha"));
    	students.add(new Student(1, "KaliKrushna", "Mandal", "Odisha"));
    	students.add(new Student(1, "Kalia", "Mandal", "Odisha"));
    	
    	final List<StudentCopy> studnentsCopy = new ArrayList<StudentCopy>();
    	
    	students.forEach(stud -> {StudentCopy stdCopy = new StudentCopy();try{
    		BeanUtils.copyProperties(stdCopy, stud);
    		studnentsCopy.add(stdCopy);								//This is the process of converting one bean to another bean
    	}catch(Exception ex){
    		
    	}});    	
    	
    	List<String> names = students.stream().map(stud -> stud.getfName()).collect(Collectors.toList());
    	
    	System.out.println(names);
    }
}
