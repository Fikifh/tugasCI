/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.testng.Assert.*;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

/**
 *
 * @author syah
 */
public class LoginNGTest {
    
    public LoginNGTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @BeforeMethod
    public void setUpMethod() throws Exception {
    }

    @AfterMethod
    public void tearDownMethod() throws Exception {
    }

    /**
     * Test of processRequest method, of class Login.
     */
    @Test
    public void testProcessRequest() throws Exception {
        System.out.println("processRequest");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Login instance = new Login();
        instance.processRequest(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of doGet method, of class Login.
     */
    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Login instance = new Login();
        instance.doGet(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of doPost method, of class Login.
     */
    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Login instance = new Login();
        instance.doPost(request, response);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of getServletInfo method, of class Login.
     */
    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        Login instance = new Login();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of setUsername method, of class Login.
     */
    @Test
    public void testSetUsername() {
        System.out.println("setUsername");
        String user = "";
        Login instance = new Login();
        instance.setUsername(user);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getUsername method, of class Login.
     */
    @Test
    public void testGetUsername() {
        System.out.println("getUsername");
        Login instance = new Login();
        String expResult = "";
        String result = instance.getUsername();
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
