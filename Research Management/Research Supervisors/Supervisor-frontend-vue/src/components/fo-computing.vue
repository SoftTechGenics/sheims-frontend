<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder">Faculty of  Computing</div>
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
    name: "FO_Comp",
    data() {
      return {
        list: [
          {
            id: 1,
            Supervisor_Name: "Dr. Nadeem Akhtar",
            role: "Associate Professor",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "	nadeem.akhtar.phd@gmail.com",
          },
          {
            id: 2,
            Supervisor_Name: "Dr. Muhammad Nauman",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "	nauman@iub.edu.pk",
          }, {
            id: 3,
            Supervisor_Name: "Dr. Syed Rafaqat Hussain Shah Kazmi",
            role: "Associate Professor",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "		rafaqat.kazmi@iub.edu.pk",
          }, {
            id: 4,
            Supervisor_Name: "Mr. Muhammad Talal",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "muhammad.talal@iub.edu.pk",
          }, {
            id: 5,
            Supervisor_Name: "Mr. Gulraiz Javaid Joyia",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "gulraiz.javaid@iub.edu.pk",
          },
          {
            id: 6,
            Supervisor_Name: "Ms. Zara Mansoor",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "	zaramansoor36@gmail.com",
          },
          {
            id: 7,
            Supervisor_Name: "Mrs. Sunnia Ikram",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "empty30@iub.edu.pk",
          },
          {
            id: 1,
            Supervisor_Name: "Dr. Malik Daler Ali Awan",
            role: "Lecturer",
            dept: "Dept of Software Engineering",
            faculty: "Faculty of Computing",
            Email: "daler.ali@iub.edu.pk",
          },
          {
            id: 8,
            Supervisor_Name: "Dr. Humera Arshad",
            role: "Associate Professor",
            dept: "Dept of Computer Science",
            faculty: "Faculty of Computing",
            Email: "		humera.arshad@iub.edu.pk",
          },
          {
            id: 9,
            Supervisor_Name: "Dr. Imran Sarwar Bajwa",
            role: "Associate Professor",
            dept: "Dept of Computer Science",
            faculty: "Faculty of Computing",
            Email: "imran.sarwar@iub.edu.pk",
          },
          {
            id: 10,
            Supervisor_Name: "Dr. Saima Abdullah",
            role: "Assistant Professor",
            dept: "Dept of Computer Science",
            faculty: "Faculty of Computing",
            Email: "			Saima.Abdullah@iub.edu.pk",
          },
          {
            id: 11,
            Supervisor_Name: "Dr. Waheed Anwar",
            role: "Assistant Professor (HEC Approved Supervisor)",
            dept: "Dept of Computer Science",
            faculty: "Faculty of Computing",
            Email: "			waheed@iub.edu.pk",
          },
          {
            id: 12,
            Supervisor_Name: "Dr. Zaigham Mushtaq",
            role: "Associate Professor",
            dept: "Dept of Computer Science",
            faculty: "Faculty of Computing",
            Email: "zaigham.mushtaq@iub.edu.pk",
          },
          {
            id: 13,
            Supervisor_Name: "Dr. Muhammad Faheem Mushtaq",
            role: "Associate Professor",
            dept: "Dept of Artificial Intelligence",
            faculty: "Faculty of Computing",
            Email: "faheem.mushtaq@iub.edu.pk",
          },
          {
            id: 14,
            Supervisor_Name: "Dr. Muhammad Ateeq",
            role: "Associate Professor",
            dept: "Dept of Artificial Intelligence",
            faculty: "Faculty of Computing",
            Email: "	Muhammad.Ateeq@iub.edu.pk",
          },
          {
            id: 15,
            Supervisor_Name: "Dr. Ghulam Gilanie",
            role: "Associate Professor",
            dept: "Dept of Artificial Intelligence",
            faculty: "Faculty of Computing",
            Email: "ghulam.gilanie@iub.edu.pk",
          },
          {
            id: 16,
            Supervisor_Name: "Dr. Shahzad Mumtaz",
            role: "Associate Professor",
            dept: "Dept of Artificial Intelligence",
            faculty: "Faculty of Computing",
            Email: "shahzad.mumtaz@iub.edu.pk",
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
  