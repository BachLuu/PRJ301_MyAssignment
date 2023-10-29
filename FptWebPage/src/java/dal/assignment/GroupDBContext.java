/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal.assignment;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Group;
import model.Session;
import model.Student;
import model.Subject;

/**
 *
 * @author Luu Bach
 */
public class GroupDBContext extends DBContext<Group> {

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void remove(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        ArrayList<Group> groups = new ArrayList<>();
        try {
            String sql = "SELECT g.[gname], s.[subname] \n"
                    + "FROM [Group] g\n"
                    + "INNER JOIN Subject s ON g.subid = s.subid;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                g.setName(rs.getString("gname"));
                Subject s = new Subject();
                s.setName(rs.getString("subname"));
                g.setSubject(s);
                groups.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groups;
    }

    public Group listViewAttendance(String gname, String subname) throws SQLException {
        Group group = new Group();
        ArrayList<Session> sessions = new ArrayList<>();
        ArrayList<Attendance> attendances = new ArrayList<>();
        String sql = "SELECT g.[gname], s.[subname] , stu.[stuid],stu.[stuname],ses.[index],a.[status]\n"
                + "FROM [Group] g\n"
                + "INNER JOIN Subject s ON g.subid = s.subid\n"
                + "INNER JOIN Group_Student gs ON gs.gid = g.gid\n"
                + "INNER JOIN Student stu ON stu.stuid = gs.stuid\n"
                + "INNER JOIN Session ses ON ses.gid = g.gid\n"
                + "INNER JOIN Attendance a ON ses.sesid = a.sesid AND a.stuid = stu.stuid\n"
                + "WHERE g.gname=? AND s.subname=?";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setString(1, gname);
        stm.setString(2, subname);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            Student stu = new Student();
            stu.setId(rs.getInt("stuid"));
            stu.setName(rs.getString("stuname"));
            Attendance att = new Attendance();
            att.setStudent(stu);
            att.setStatus(rs.getBoolean("status"));
            attendances.add(att);
            Session ses = new Session();
            ses.setIndex(rs.getInt("index"));
            ses.setAtts(attendances);
            
            sessions.add(ses);
            group.setSessions(sessions);
        }
        return group;
    }

}
