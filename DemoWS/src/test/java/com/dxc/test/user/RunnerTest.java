package com.dxc.test.user;

import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

public class RunnerTest {

	public static void main(String[] args) {
		Result result = JUnitCore.runClasses(UserTest.class);

		for (Failure failure : result.getFailures()) {
			System.out.println("Failure: " + failure.toString());
		}

		System.out.println("Number of Success: " + (result.getRunCount() - result.getFailureCount()));

	}

}
