/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
public class insertDataNGTest {
    
    public insertDataNGTest() {
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
     * Test of insert method, of class insertData.
     */
    @Test
    public void testInsert() throws Exception {
        System.out.println("insert");
        String sql = "";
        insertData instance = new insertData();
        int expResult = 0;
        int result = instance.insert(sql);
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
