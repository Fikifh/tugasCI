/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author syah
 */
public class CBiodataFTest {
    
    public CBiodataFTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of processRequest method, of class CBiodataF.
     */
    @Test
    public void testProcessRequest() throws Exception {
        System.out.println("processRequest");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        CBiodataF instance = new CBiodataF();
        instance.processRequest(request, response);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of doGet method, of class CBiodataF.
     */
    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        CBiodataF instance = new CBiodataF();
        instance.doGet(request, response);        
    }

    /**
     * Test of doPost method, of class CBiodataF.
     */
    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        CBiodataF instance = new CBiodataF();
        instance.doPost(request, response);        
    }

    /**
     * Test of getServletInfo method, of class CBiodataF.
     */
    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        CBiodataF instance = new CBiodataF();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(expResult, result);       
    }
    
}
