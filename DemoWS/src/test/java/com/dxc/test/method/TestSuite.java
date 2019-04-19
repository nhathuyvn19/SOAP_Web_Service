package com.dxc.test.method;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)

@SuiteClasses({GetAllTest.class,DeleteTest.class,InsertTest.class, UpdateTest.class})
public class TestSuite {

}
