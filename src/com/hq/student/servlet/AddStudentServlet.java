package com.hq.student.servlet;

import com.hq.student.bean.Student;
import com.hq.student.dao.StudentDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("unused")
@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("add.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Student student = new Student();
        String studentNumber = req.getParameter("studentNumber");
        String studentName = req.getParameter("studentName");
        String studentPassword = req.getParameter("studentPassword");
        int studentSex = Integer.parseInt(req.getParameter("studentSex"));
        student.setStudentNumber(studentNumber);
        student.setStudentName(studentName);
        student.setStudentPassword(studentPassword);
        student.setStudentSex(studentSex);
        StudentDao studentDao = new StudentDao();
        studentDao.addStudent(student);
        req.getRequestDispatcher("studentList").forward(req, resp);
    }
}