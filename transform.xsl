<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:bcu="http://www.bostoncollege.edu.us/college">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="bcu:College">
        <html>
            <head>
                <title>Boston College</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>Boston College</h1>
                
                <h2>Administrators</h2>
                <table>
                    <tr>
                        <th>AdminID</th>
                        <th>Prefix</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Phone No</th>
                        <th>Email</th>
                        <th>Designation</th>
                        <th>Qualification</th>
                        <th>Date of Appointment</th>
                    </tr>
                    <xsl:for-each select="bcu:Administrator">
                        <tr>
                            <td><xsl:value-of select="@AdminID" /></td>
                            <td><xsl:value-of select="bcu:Prefix" /></td>
                            <td><xsl:value-of select="bcu:First_Name" /></td>
                            <td><xsl:value-of select="bcu:Middle_Name" /></td>
                            <td><xsl:value-of select="bcu:Last_Name" /></td>
                            <td><xsl:value-of select="bcu:Phone_No" /></td>
                            <td><xsl:value-of select="bcu:Email" /></td>
                            <td><xsl:value-of select="bcu:Designation" /></td>
                            <td><xsl:value-of select="bcu:Qualification" /></td>
                            <td><xsl:value-of select="bcu:Date_of_Appointment" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h2>Students</h2>
                <table>
                    <tr>
                        <th>RollNo</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Phone No</th>
                        <th>Email</th>
                        <th>DepartmentID</th>
                        <th>ProgrammeID</th>
                        <th>Attendance</th>
                    </tr>
                    <xsl:for-each select="bcu:Student">
                        <tr>
                            <td><xsl:value-of select="@RollNo" /></td>
                            <td><xsl:value-of select="bcu:First_Name" /></td>
                            <td><xsl:value-of select="bcu:Middle_Name" /></td>
                            <td><xsl:value-of select="bcu:Last_Name" /></td>
                            <td><xsl:value-of select="bcu:Gender" /></td>
                            <td><xsl:value-of select="bcu:Phone_No" /></td>
                            <td><xsl:value-of select="bcu:Email" /></td>
                            <td><xsl:value-of select="bcu:DepartmentID" /></td>
                            <td><xsl:value-of select="bcu:ProgrammeID" /></td>
                            <td><xsl:value-of select="bcu:Attendance" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Teachers</h2>
                <table>
                    <tr>
                        <th>TeacherID</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Gender</th>
                        <th>Phone No</th>
                        <th>Email</th>
                        <th>DepartmentID</th>
                        <th>Qualification</th>
                        <th>NET Qualified</th>
                        <th>Designation</th>
                        <th>Date of Joining</th>
                    </tr>        
                    <xsl:for-each select="bcu:Teacher">
                        <tr>
                            <td><xsl:value-of select="@TeacherID"/></td>
                            <td><xsl:value-of select="bcu:First_Name"/></td>
                            <td><xsl:value-of select="bcu:Middle_Name"/></td>
                            <td><xsl:value-of select="bcu:Last_Name"/></td>
                            <td><xsl:value-of select="bcu:Gender"/></td>
                            <td><xsl:value-of select="bcu:Phone_No"/></td>
                            <td><xsl:value-of select="bcu:Email"/> </td>
                            <td><xsl:value-of select="bcu:DepartmentID"/> </td>
                            <td><xsl:value-of select="bcu:Qualification"/> </td>
                            <td><xsl:value-of select="bcu:NET_Qualified"/> </td>
                            <td><xsl:value-of select="bcu:Designation"/> </td>
                            <td><xsl:value-of select="bcu:Date_of_Joining"/> </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Departments</h2>
                <table>
                    <tr>
                        <th>DepartmentID</th>
                        <th>HoD_ID</th>
                        <th>Department Email</th>
                        <th>No of Faculty</th>
                        <th>Dept Library</th>
                        <th>Location</th>
                        <th>Year of Establishment</th>
                        <th>Dept Website</th>
                        <th>No of Research Papers</th>
                    </tr>
                    <xsl:for-each select="bcu:Department">
                        <tr>
                            <td><xsl:value-of select="@DepartmentID" /></td>
                            <td><xsl:value-of select="bcu:HoD_ID" /></td>
                            <td><xsl:value-of select="bcu:Department_Email" /></td>
                            <td><xsl:value-of select="bcu:No_of_Faculty" /></td>
                            <td><xsl:value-of select="bcu:Dept_Library" /></td>
                            <td><xsl:value-of select="bcu:Location" /></td>
                            <td><xsl:value-of select="bcu:Year_of_Estb" /></td>
                            <td><xsl:value-of select="bcu:Dept_Website" /></td>
                            <td><xsl:value-of select="bcu:No_of_Research_Papers" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Programmes</h2>
                <table>
                    <tr>
                        <th>ProgrammeID</th>
                        <th>Programme Name</th>
                        <th>DepartmentID</th>
                        <th>No of Students</th>
                        <th>No of Faculty</th>
                        <th>Degree</th>
                        <th>No of Years</th>
                        <th>System</th>
                        <th>Max Credits</th>
                    </tr>
                    <xsl:for-each select="bcu:Programme">
                        <tr>
                            <td><xsl:value-of select="@ProgrammeID" /></td>
                            <td><xsl:value-of select="bcu:ProgrammeName" /></td>
                            <td><xsl:value-of select="bcu:DepartmentID" /></td>
                            <td><xsl:value-of select="bcu:No_of_Students" /></td>
                            <td><xsl:value-of select="bcu:No_of_Faculty" /></td>
                            <td><xsl:value-of select="bcu:Degree" /></td>
                            <td><xsl:value-of select="bcu:No_of_Years" /></td>
                            <td><xsl:value-of select="bcu:System" /></td>
                            <td><xsl:value-of select="bcu:Max_Credits" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Admissions</h2>
                <table>
                    <tr>
                        <th>Registration No</th>
                        <th>First Name</th>
                        <th>Middle Name</th>
                        <th>Last Name</th>
                        <th>Phone No</th>
                        <th>Email</th>
                        <th>Class 10 Percentage</th>
                        <th>Class 11 Percentage</th>
                        <th>Class 12 Percentage</th>
                        <th>CUET Score</th>
                        <th>ProgrammeID</th>
                        <th>Admission Status</th>
                    </tr>
                    <xsl:for-each select="bcu:Admission">
                        <tr>
                            <td><xsl:value-of select="@RegistrationNo" /></td>
                            <td><xsl:value-of select="bcu:First_Name" /></td>
                            <td><xsl:value-of select="bcu:Middle_Name" /></td>
                            <td><xsl:value-of select="bcu:Last_Name" /></td>
                            <td><xsl:value-of select="bcu:Phone_No" /></td>
                            <td><xsl:value-of select="bcu:Email" /></td>
                            <td><xsl:value-of select="bcu:Class10_Perc" /></td>
                            <td><xsl:value-of select="bcu:Class11_Perc" /></td>
                            <td><xsl:value-of select="bcu:Class12_Perc" /></td>
                            <td><xsl:value-of select="bcu:CUET_Score" /></td>
                            <td><xsl:value-of select="bcu:ProgrammeID" /></td>
                            <td><xsl:value-of select="bcu:Admission_status" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Display Club Data -->
                <h2>Clubs</h2>
                <table>
                    <tr>
                        <th>CCC_ID</th>
                        <th>CCC Name</th>
                        <th>CCC Agenda</th>
                        <th>Convener ID</th>
                        <th>President Name</th>
                        <th>Secretary Name</th>
                        <th>Treasurer Name</th>
                        <th>Date of Establishment</th>
                        <th>No of Members</th>
                    </tr>
                    <xsl:for-each select="bcu:Club">
                        <tr>
                            <td><xsl:value-of select="@CCC_ID" /></td>
                            <td><xsl:value-of select="bcu:CCC_Name" /></td>
                            <td><xsl:value-of select="bcu:CCC_Agenda" /></td>
                            <td><xsl:value-of select="bcu:Convener_ID" /></td>
                            <td><xsl:value-of select="bcu:President_Name" /></td>
                            <td><xsl:value-of select="bcu:Secretary_Name" /></td>
                            <td><xsl:value-of select="bcu:Treasurer_Name" /></td>
                            <td><xsl:value-of select="bcu:Date_of_Estb" /></td>
                            <td><xsl:value-of select="bcu:No_of_Members" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Library</h2>
                <table>
                    <tr>
                        <th>BookID</th>
                        <th>Category</th>
                        <th>DepartmentID</th>
                        <th>Borrowable Status</th>
                        <th>Number of Copies</th>
                        <th>Number of Pages</th>
                        <th>Author1</th>
                        <th>Author2</th>
                        <th>ISBN</th>
                    </tr>
                    <xsl:for-each select="bcu:Library">
                        <tr>
                            <td><xsl:value-of select="@BookID" /></td>
                            <td><xsl:value-of select="bcu:Category" /></td>
                            <td><xsl:value-of select="bcu:DepartmentID" /></td>
                            <td><xsl:value-of select="bcu:Borrowable_Status" /></td>
                            <td><xsl:value-of select="bcu:Number_of_copies" /></td>
                            <td><xsl:value-of select="bcu:Number_of_Pages" /></td>
                            <td><xsl:value-of select="bcu:Author1" /></td>
                            <td><xsl:value-of select="bcu:Author2" /></td>
                            <td><xsl:value-of select="bcu:ISBN" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Research</h2>
                <table>
                    <tr>
                        <th>PublicationID</th>
                        <th>Publication Name</th>
                        <th>Publication Synopsis</th>
                        <th>Research Area</th>
                        <th>AuthorID1</th>
                        <th>EtAl Status</th>
                        <th>Link</th>
                        <th>Verified Status</th>
                    </tr>
                    <xsl:for-each select="bcu:Research">
                        <tr>
                            <td><xsl:value-of select="@PublicationID" /></td>
                            <td><xsl:value-of select="bcu:PublicationName" /></td>
                            <td><xsl:value-of select="bcu:PublicationSynopsis" /></td>
                            <td><xsl:value-of select="bcu:ResearchArea" /></td>
                            <td><xsl:value-of select="bcu:AuthorID1" /></td>
                            <td><xsl:value-of select="bcu:EtAl_Status" /></td>
                            <td><xsl:value-of select="bcu:Link" /></td>
                            <td><xsl:value-of select="bcu:Verified_Status" /></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2>Alumni</h2>
                <table>
                    <tr>
                        <th>AlumniID</th>
                        <th>RollNo</th>
                        <th>DepartmentID</th>
                        <th>ProgrammeID</th>
                        <th>Year of Graduation</th>
                        <th>Alumni Email</th>
                        <th>Alumni Phone No</th>
                        <th>Highest Qualification</th>
                        <th>Current Occupation</th>
                        <th>Testimonial</th>
                    </tr>
                    <xsl:for-each select="bcu:Alumni">
                        <tr>
                            <td><xsl:value-of select="@AlumniID" /></td>
                            <td><xsl:value-of select="bcu:RollNo" /></td>
                            <td><xsl:value-of select="bcu:DepartmentID" /></td>
                            <td><xsl:value-of select="bcu:ProgrammeID" /></td>
                            <td><xsl:value-of select="bcu:Year_of_Graduation" /></td>
                            <td><xsl:value-of select="bcu:Alum_Email" /></td>
                            <td><xsl:value-of select="bcu:Alum_Phone_No" /></td>
                            <td><xsl:value-of select="bcu:Highest_Qualification" /></td>
                            <td><xsl:value-of select="bcu:Current_Occupation" /></td>
                            <td><xsl:value-of select="bcu:Testimonial" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
