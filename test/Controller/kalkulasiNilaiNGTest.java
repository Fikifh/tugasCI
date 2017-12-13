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
public class kalkulasiNilaiNGTest {
    
    public kalkulasiNilaiNGTest() {
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
        assertEquals(result, expResult);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of kali method, of class kalkulasiNilai.
     */
    @Test
    public void testKali() {
        System.out.println("kali");
        double a = 0.0;
        double b = 0.0;
        kalkulasiNilai instance = new kalkulasiNilai();
        double expResult = 0.0;
        double result = instance.kali(a, b);
        assertEquals(result, expResult, 0.0);
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of tambah method, of class kalkulasiNilai.
     */
    @Test
    public void testTambah() {
        System.out.println("tambah");
        double c = 0.0;
        double d = 0.0;
        kalkulasiNilai instance = new kalkulasiNilai();
        double expResult = 0.0;
        double result = instance.tambah(c, d);
        assertEquals(result, expResult, 0.0);
        // TODO review the generated test code and remove the default call to fail.
    }
    
}
