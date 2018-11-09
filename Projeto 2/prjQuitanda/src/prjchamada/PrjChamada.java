/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prjchamada;

/**
 *
 * @author camargo
 */
public class PrjChamada {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        frmLogin l = new frmLogin();
        l.setVisible(true);
        l.setTitle("Ligações sob Controle CA");
        l.setLocationRelativeTo(null);
//para maximizar o formulário
        //l.setExtendedState(l.MAXIMIZED_BOTH);
    }
    
}
