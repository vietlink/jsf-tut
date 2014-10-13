/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.util.List;
import javax.faces.application.Application;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.event.ActionEvent;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;

/**
 *
 * @author v11424
 */
public class HelloBean {
    private int numControls;
    private HtmlPanelGrid controlPanel;

    public int getNumControls() {
        return numControls;
    }

    public void setNumControls(int numControls) {
        this.numControls = numControls;
    }

    public HtmlPanelGrid getControlPanel() {
        return controlPanel;
    }

    public void setControlPanel(HtmlPanelGrid controlPanel) {
        this.controlPanel = controlPanel;
    }
    public void addControls(ActionEvent actionEvent){
        Application application= FacesContext.getCurrentInstance().getApplication();
        List children= controlPanel.getChildren();
        children.clear();
        for (int i = 0; i < numControls; i++) {
            HtmlOutputText output= (HtmlOutputText)application.createComponent(HtmlOutputText.COMPONENT_TYPE);
            output.setValue(" "+i+" ");
            output.setStyle("color: blue");
            children.add(output);
        }
    }
    public String goodbye(){
        return "success";
    }
}
