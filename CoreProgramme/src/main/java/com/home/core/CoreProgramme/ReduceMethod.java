package com.home.core.CoreProgramme;

import java.util.Arrays;
import java.util.List;

public class ReduceMethod {

	public static void main(String[] args) {
		List<Integer> numbers = Arrays.asList(new Integer[]{1,2,3,4,5,6,7,8,9});
		Integer x = numbers.stream().reduce(0,(ans,i) -> ans+i);
		System.out.println(x);
	}
}
