package com.home.core.CoreProgramme;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;

public class ObjecterMapperTest 
{
    public static void main( String[] args )
    {
    	try{
    		String s = "[1,2,4,5,4,6]";
        	ObjectMapper mapper = new ObjectMapper();
        	List<Integer> list = new ArrayList<Integer>();
        	list.addAll(Arrays.asList(mapper.readValue(s, Integer[].class)));
        	list.add(8);
        	if(list.contains(3)){
        		list.remove(3);
        	}else{
        		list.add(3);
        	}
        	System.out.println(list);
    	}catch(Exception exception){
    		System.out.println(exception);
    	}
    }
}