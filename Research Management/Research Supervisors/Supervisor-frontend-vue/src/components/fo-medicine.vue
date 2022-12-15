<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder"> Faculty of Medicine and Allied Health Science    </div>
      <table>
        <thead>
          <tr>
            <th>Id.No</th>
            <th>Supervisor Name</th>
            <th> Role</th>
            <th>Department</th>
            <th>Faculty</th>
            <th>Email</th>
            
          </tr>
        </thead>
        <tbody>
          <tr v-for="item in list" :key="item">
            <td>{{ item.id }}</td>
            <td>
              <a href="#"> {{ item.Supervisor_Name }} </a>
            </td>
            <td>{{ item.role }}</td>
            <td>{{ item.dept }}</td>
            <td>{{ item.faculty }}</td>
            <td>{{ item.Email }}</td>
          </tr>
        </tbody>
      </table>
      <div class=" my-5 text-center fw-bolder text-primary">See More</div>

    </div>
  </template>
  
  <script>

  export default {
    name: "FO_Medi",
    data() {
      return {
        list: [
          {
            id: 1,
            Supervisor_Name: "Prof. Dr. Muhammad Asadullah Madni",
            role: "Professor / ChairmanPost-Doc",
            dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "asadullah.madni@iub.edu.pk",
          },
          {
            id: 1,
            Supervisor_Name: "Prof. Dr. Iqbal",
            role: "Professor/Director ",
            dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "jawad.iqbal@iub.edu.pk",
          },
          {
            id: 2,
            Supervisor_Name: "Dr. Hassan Danial Aslam",
            role: "Assistant Professor / In-Charge",
            dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "hassan.danial@iub.edu.pk",
          },
          {
            id: 3,
            Supervisor_Name: "Mr. Abdul Mannan Khan",
            role: "Assistant Professor / In-Charge",
            dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "	mannan.khan@iub.edu.pk",
          },     {
            id: 4,
            Supervisor_Name: "Dr.  Aslam",
            role: "Assistant Professor / In-Charge",
            dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "hassan.d@iub.edu.pk",
          },     {
            id: 5,
            Supervisor_Name: "Dr. Danial Aslam",
            role: "Assistant Professor / In-Charge",
            dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
            Email: "danial@iub.edu.pk",
          },
          {
          id: 6,
          Supervisor_Name: "Dr. Asjad Amin",
          role: "Associate Professor",
          dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "	asjad.amin@iub.edu.pk",
        },
        {
          id: 7,
          Supervisor_Name: "Dr. Khan Bahadar Khattak",
          role: "Associate Professor",
          dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "	Kb.khattak@iub.edu.pk",
        },
        {
          id: 8,
          Supervisor_Name: "Engr. Syed Hafiz",
          role: "Lecturer",
          dept: "Department of Physical Therapy",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "Engr.rehman@iub.edu.pk",
        },
        {
          id: 9,
          Supervisor_Name: "Dr. Muhammad Amjad",
          role: "Professor",
          dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "	muhammad.amjad@iub.edu.pk",
        },
        {
          id: 10,
          Supervisor_Name: "Dr. Muhammad Amjad",
          role: "Professor",
          dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "	muhammad.amjad@iub.edu.pk",
        },
        {
          id: 11,
          Supervisor_Name: "Dr. Engr. M. Rizwan Anjum",
          role: "Professor",
          dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "		engr.rizwan@iub.edu.pk",
        },
        {
          id: 12,
          Supervisor_Name: "Engr. Syed Hafiz",
          role: "Lecturer",
          dept: "University College of Nursing",
            faculty: " Faculty of Medicine and Allied Health Science       ",
          Email: "Engr.rehman@iub.edu.pk",
        },
         
          
   
        
        ],
      };
    },
  };
  </script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
  <style scoped>
  table {
    width: 100%;
  }
  th,
  tr,
  td {
    border: 1px solid beige;
  }
  a {
    text-decoration: none;
  }
  td,
  th {
    padding: 10px;
  }
  tr:nth-child(even) {
    background-color: skyblue;
  }
  
  @media only screen and (max-width: 900px) {
    .container {
      width: 100% !important;
    }
  }
  </style>
  