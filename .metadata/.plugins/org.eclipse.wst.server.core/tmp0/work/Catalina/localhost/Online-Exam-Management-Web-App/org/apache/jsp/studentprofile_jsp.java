/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.95
 * Generated at: 2024-10-20 11:26:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Registration.RegisterModel;
import javax.servlet.http.HttpSession;

public final class studentprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.LinkedHashSet<>(3);
    _jspx_imports_classes.add("javax.servlet.http.HttpSession");
    _jspx_imports_classes.add("Registration.RegisterModel");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"RegistrationAssets/IMGS/dash.png\">\r\n");
      out.write("    <title>STUDENT DASH</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"RegistrationAssets/CSS/profilestyle.css\" />\r\n");
      out.write("    <link\r\n");
      out.write("    href=\"https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css\"\r\n");
      out.write("    rel=\"stylesheet\"\r\n");
      out.write("  />\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"navigation\">\r\n");
      out.write("          <ul>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"Home.jsp\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon class=\"bx bxs-book-reader\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">SmartExam</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("  \r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"#\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon name=\"home-outline\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Dashboard</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("  \r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"examconcern.jsp\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon class=\"bx bxs-envelope\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Exam Concerns</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("  \r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"examwrite.jsp\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon class =\"bx bxs-edit\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Write Exam</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("  \r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"#\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon name=\"megaphone\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Results</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("            \r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"pricelist2.jsp\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon name=\"money\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Enrollment</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("  \r\n");
      out.write("           <br>\r\n");
      out.write("           <br>\r\n");
      out.write("           <br>\r\n");
      out.write("            <li>\r\n");
      out.write("              <a href=\"Home.jsp\">\r\n");
      out.write("                <span class=\"icon\">\r\n");
      out.write("                  <ion-icon name=\"log-out-outline\"></ion-icon>\r\n");
      out.write("                </span>\r\n");
      out.write("                <span class=\"title\">Sign Out</span>\r\n");
      out.write("              </a>\r\n");
      out.write("            </li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"main\">\r\n");
      out.write("            <div class=\"topbar\">\r\n");
      out.write("              <div class=\"toggle\">\r\n");
      out.write("                <ion-icon name=\"menu-outline\"></ion-icon>\r\n");
      out.write("              </div>\r\n");
      out.write("    \r\n");
      out.write("              <div class=\"search\">\r\n");
      out.write("                <label>\r\n");
      out.write("                  <input type=\"text\" placeholder=\"Search here\" />\r\n");
      out.write("                  <ion-icon name=\"search-outline\"></ion-icon>\r\n");
      out.write("                </label>\r\n");
      out.write("              </div>\r\n");
      out.write("    \r\n");
      out.write("              <div class=\"user\">\r\n");
      out.write("                <i class=\"bx bxs-user\" ></i>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-container sign-up\">\r\n");
      out.write("              <form action=\"updateProfileServlet\" method=\"post\">\r\n");
      out.write("                <a href=\"../home/home.html\" class=\"home-icon\">\r\n");
      out.write("                  <i class=\"fa-solid fa-house\"></i>\r\n");
      out.write("                </a>\r\n");
      out.write("                <h1>Profile</h1>\r\n");
      out.write("      \r\n");

    // Use the session object directly (it's already available in JSP)
    if (session != null && session.getAttribute("loggedInStudent") != null) {
        RegisterModel student = (RegisterModel) session.getAttribute("loggedInStudent");

      out.write("\r\n");
      out.write("    <input type=\"text\" name=\"stName\" value=\"");
      out.print( student.getStName() );
      out.write("\" placeholder=\"Name\" />\r\n");
      out.write("    <input type=\"email\" name=\"stEmail\" value=\"");
      out.print( student.getStEmail() );
      out.write("\" readonly placeholder=\"Email\" />\r\n");
      out.write("    <input type=\"text\" name=\"mobileNumber\" value=\"");
      out.print( student.getMobileNumber() );
      out.write("\" placeholder=\"Mobile Number\" />\r\n");
      out.write("    <input type=\"password\" name=\"password\" value=\"");
      out.print( student.getPassword() );
      out.write("\" placeholder=\"Password\" />\r\n");
      out.write("    <input type=\"password\" value=\"");
      out.print( student.getPassword() );
      out.write("\" placeholder=\"Confirm Password\" />\r\n");
      out.write("    <input type=\"hidden\" name=\"student_Id\" value=\"");
      out.print( student.getStudent_Id() );
      out.write("\" />\r\n");
      out.write("    <button class=\"btn\" type=\"submit\">Save Changes</button>\r\n");
      out.write("   \r\n");
      out.write("     </form>\r\n");
      out.write("      <form action=\"DeleteStudentServlet\" method=\"post\">\r\n");
      out.write("    <input type=\"hidden\" name=\"student_Id\" value=\"");
      out.print( student.getStudent_Id() );
      out.write("\" />\r\n");
      out.write("    <!-- Add Delete Profile button -->\r\n");
      out.write("    <button type=\"submit\" class=\"btn btn-danger\" onclick=\"return confirm('Are you sure you want to delete your profile? This action cannot be undone.');\">Delete Profile</button>\r\n");
      out.write("</form>\r\n");

    } else {
        response.sendRedirect("login.jsp");
    }

      out.write("\r\n");
      out.write("               \r\n");
      out.write("             \r\n");
      out.write("   \r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <script>\r\n");
      out.write("            \r\n");
      out.write("                function deleteProfile() {\r\n");
      out.write("                    if (confirm(\"Are you sure you want to delete your profile?\")) {\r\n");
      out.write("                        window.location.href = \"DeleteProfileServlet\"; // Implement this servlet for deletion\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("                document.addEventListener(\"DOMContentLoaded\", function () {\r\n");
      out.write("                    const form = document.querySelector(\".sign-up form\");\r\n");
      out.write("                    const emailInput = form.querySelector('input[placeholder=\"Email\"]');\r\n");
      out.write("                  const mobileInput = form.querySelector('input[placeholder=\"Mobile Number\"]');\r\n");
      out.write("                    const passwordInput = form.querySelector('input[placeholder=\"Password\"]');\r\n");
      out.write("                    const confirmPasswordInput = form.querySelector('input[placeholder=\"Confirm Password\"]');\r\n");
      out.write("                    const signUpButton = form.querySelector(\"button\");\r\n");
      out.write("                  \r\n");
      out.write("                    // Email validation: must include '@'\r\n");
      out.write("                    function validateEmail() {\r\n");
      out.write("                      const email = emailInput.value;\r\n");
      out.write("                      return email.includes(\"@\");\r\n");
      out.write("                    }\r\n");
      out.write("                  \r\n");
      out.write("                    //Mobile number validation: must be exactly 10 digits\r\n");
      out.write("                    function validateMobileNumber() {\r\n");
      out.write("                      const mobile = mobileInput.value;\r\n");
      out.write("                      const mobilePattern = /^[0-9]{10}$/;\r\n");
      out.write("                      return mobilePattern.test(mobile);\r\n");
      out.write("                    }\r\n");
      out.write("                  \r\n");
      out.write("                    // Password matching validation\r\n");
      out.write("                    function validatePasswordMatch() {\r\n");
      out.write("                      return passwordInput.value === confirmPasswordInput.value;\r\n");
      out.write("                    }\r\n");
      out.write("                  \r\n");
      out.write("                    // Add event listener to validate on form submission\r\n");
      out.write("                    form.addEventListener(\"submit\", function (e) {\r\n");
      out.write("                      let isValid = true;\r\n");
      out.write("                  \r\n");
      out.write("                      // Validate email\r\n");
      out.write("                      if (!validateEmail()) {\r\n");
      out.write("                        alert(\"Please enter a valid email address with '@'.\");\r\n");
      out.write("                        isValid = false;\r\n");
      out.write("                      }\r\n");
      out.write("                  \r\n");
      out.write("                      //Validate mobile number\r\n");
      out.write("                      if (!validateMobileNumber()) {\r\n");
      out.write("                        alert(\"Please enter a valid 10-digit mobile number.\");\r\n");
      out.write("                        isValid = false;\r\n");
      out.write("                      }\r\n");
      out.write("                  \r\n");
      out.write("                      // Validate password match\r\n");
      out.write("                      if (!validatePasswordMatch()) {\r\n");
      out.write("                        alert(\"Password and Confirm Password must match.\");\r\n");
      out.write("                        isValid = false;\r\n");
      out.write("                      }\r\n");
      out.write("                  \r\n");
      out.write("                      // If any validation fails, prevent form submission\r\n");
      out.write("                      if (!isValid) {\r\n");
      out.write("                        e.preventDefault();\r\n");
      out.write("                      }\r\n");
      out.write("                    });\r\n");
      out.write("                  \r\n");
      out.write("                    // Add input restrictions for mobile number (only digits)\r\n");
      out.write("                    mobileInput.addEventListener(\"input\", function () {\r\n");
      out.write("                      mobileInput.value = mobileInput.value.replace(/[^0-9]/g, \"\"); // Allow only digits\r\n");
      out.write("                    });\r\n");
      out.write("                  });\r\n");
      out.write("            </script>\r\n");
      out.write("           \r\n");
      out.write("            <script src=\"RegistrationAssets/Script/profile.js\"></script>\r\n");
      out.write("            <script\r\n");
      out.write("            type=\"module\"\r\n");
      out.write("            src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js\"\r\n");
      out.write("          ></script>\r\n");
      out.write("          <script\r\n");
      out.write("            nomodule\r\n");
      out.write("            src=\"https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js\"\r\n");
      out.write("          ></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
