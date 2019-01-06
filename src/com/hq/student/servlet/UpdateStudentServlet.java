package com.hq.student.servlet;

import com.hq.student.bean.Student;
import com.hq.student.dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        StudentDao studentDao = new StudentDao();
        Student student = studentDao.getStudentById(studentId);
        req.setAttribute("student", student);
        req.getRequestDispatcher("update.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Student student = new Student();
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        String studentNumber = req.getParameter("studentNumber");
        String studentName = req.getParameter("studentName");
        String studentPassword = req.getParameter("studentPassword");
        int studentSex = Integer.parseInt(req.getParameter("studentSex"));
        student.setStudentId(studentId);
        student.setStudentNumber(studentNumber);
        student.setStudentName(studentName);
        student.setStudentPassword(studentPassword);
        student.setStudentSex(studentSex);
        StudentDao studentDao = new StudentDao();
        studentDao.updateStudent(student);
        req.getRequestDispatcher("studentList").forward(req, resp);
    }
}