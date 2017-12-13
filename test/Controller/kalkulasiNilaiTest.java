/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
public class kalkulasiNilaiTest {
    
    public kalkulasiNilaiTest() {
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
     * Test of Setnilaiawal method, of class kalkulasiNilai.
     */
    @Test
    public void testSetnilaiawal() {
        System.out.println("Setnilaiawal");
        int a = 0;
        int b = 0;
        kalkulasiNilai instance = new kalkulasiNilai();
        int expResult = 0;
        int result = instance.Setnilaiawal(a, b);
        assertEquals(expResult, result);        
    }
    
}
