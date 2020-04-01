/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.Comparator;
import java.util.LinkedHashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ryan
 */
@WebServlet(name = "chatBoxServlet", urlPatterns = {"/chat"})
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session = request.getSession();
            Map < String,String > chatMap = (Map < String, String >)session.getAttribute("chatMap");
            if (chatMap == null) {
                chatMap = new LinkedHashMap<>();
                
            }
            
            //add new key-value pair to map
            String userInput = request.getParameter("userInput");
            System.out.println(userInput);
            String botResponse = "";
           chatMap.put(userInput, botResponse);
           //Map<String, String> reverseSortedMap = new TreeMap<>(Collections.reverseOrder());
           // reverseSortedMap.putAll(chatMap);
            //this will be the string to populate the textarea with
            String chatHistory = "";
            for (Map.Entry<String, String> entry : chatMap.entrySet()) {
    
                chatHistory += "Your Question: \n" + entry.getKey() + "\n\nChatbot Response: \n" + entry.getValue() + "\n\n";
       
                System.out.println("full chatmap: " + chatMap);
            }
            session.setAttribute("chatMap", chatMap);
            request.setAttribute("chatHistory", chatHistory);
            
            forward(request, response, "/chat.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void forward(HttpServletRequest request, HttpServletResponse response, String url) throws ServletException, IOException {
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }


}
