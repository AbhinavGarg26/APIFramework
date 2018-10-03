package com.synoku.karate;

import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

import cucumber.api.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(features = "classpath:com/synoku/karate/sample.feature", tags = "@create")
public class TestRunner {
    
}
