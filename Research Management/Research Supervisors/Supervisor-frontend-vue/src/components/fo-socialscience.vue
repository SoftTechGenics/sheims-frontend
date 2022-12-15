
<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder">  Faculty of Social Science  </div>
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
    name: "FO_ScoSci",
    data() {
      return {
        list: [
          {       id: 1,
          Supervisor_Name: "Prof. Dr. Muhammad Saleem",
          role: "Professor/Chairman",
          dept: "Department of Applied Psychology",
          faculty: "Faculty of Social Science ",
          Email: "	masood.nadeem@iub.edu.pk",
        },
        {
          id: 2,
          Supervisor_Name: "Dr. Masood Nadeem",
          role: "Associate Professor",
          dept: "Department of Applied Psychology",
          faculty: "Faculty of Social Science ",
          Email: "	muhammad.shahid@iub.edu.pk",
        },
        {
          id: 3,
          Supervisor_Name: "Dr. Ambreen Anjum",
          role: "Assistant Professor",
          dept: "Department of Applied Psychology",
          faculty: "Faculty of Social Science ",
          Email: "	aambreenaanjum@gmail.comk",
        },
        {
          id: 4,
          Supervisor_Name: "Ms. Ayesha Batool",
          role: "Lecturer",
          dept: "Department of Applied Psychology",
          faculty: "Faculty of Social Science ",
          Email: "	Ayeshaabatool40@iub.edu.pk",
        },
        {
          id: 5,
          Supervisor_Name: "Dr.  Muhammad Ali Qureshi",
          role: "Associate Professor/Chairman",
          dept: "Department of Public Administration",
          faculty: "Faculty of Social Science ",
          Email: "	ali.qureshi@iub.edu.pk",
        },
        {
          id: 6,
          Supervisor_Name: "Dr. Asjad Amin",
          role: "Associate Professor",
          dept: "Department of Public Administration",
          faculty: "Faculty of Social Science ",
          Email: "	asjad.amin@iub.edu.pk",
        },
        {
          id: 7,
          Supervisor_Name: "Dr. Khan Bahadar Khattak",
          role: "Associate Professor",
          dept: "Department of Public Administration",
          faculty: "Faculty of Social Science ",
          Email: "	Kb.khattak@iub.edu.pk",
        },
        {
          id: 8,
          Supervisor_Name: "Engr. Syed Hafiz",
          role: "Lecturer",
          dept: "Department of Public Administration",
          faculty: "Faculty of Social Science ",
          Email: "Engr.rehman@iub.edu.pk",
        },
        {
          id: 9,
          Supervisor_Name: "Dr. Muhammad Amjad",
          role: "Professor",
          dept: "Department of Electronic Engineering",
          faculty: "Faculty of Engineering",
          Email: "	muhammad.amjad@iub.edu.pk",
        },
        {
          id: 10,
          Supervisor_Name: "Dr. Abdul Wajid Khan",
          role: "Professor",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "	muhammad.amjad@iub.edu.pk",
        },
        {
          id: 11,
          Supervisor_Name: "Dr.  M. Rizwan Anjum",
          role:  "lecturer",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "		engr.rizwan@iub.edu.pk",
        },
        {
          id: 12,
          Supervisor_Name: " Syed Hafiz",
          role: "Lecturer",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "Engr.rehman@iub.edu.pk",
        },
        {
          id: 13,
          Supervisor_Name: "Engr. Dr. M. Akbar Malik",
          role: "Lecturer",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "m.akbarmalik@iub.edu.pk",
        },
        {
          id: 14,
          Supervisor_Name: " Muhammad Shahid",
          role: "Associate Professor",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "	muhammad.shahid@iub.edu.pk",
        },
        {
          id: 15,
          Supervisor_Name: " Safeer Ahmad Zaheer",
          role: "Lecturer",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "safeer.ahmad@iub.edu.pk",
        },
        {
          id: 16,
          Supervisor_Name: "Dr.  Muhammad Ali Qureshi",
          role: "Associate Professor/Chairman",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "	ali.qureshi@iub.edu.pk",
        },
        {
          id: 17,
          Supervisor_Name: "Dr. Asjad Amin",
          role: "Associate Professor",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "	asjad.amin@iub.edu.pk",
        },
        {
          id: 18,
          Supervisor_Name: "Dr. Khan Bahadar Khattak",
          role: "Associate Professor",
          dept: "Department of Media Studies",
          faculty: "Faculty of Social Science ",
          Email: "	Kb.khattak@iub.edu.pk",
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
  