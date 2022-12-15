<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder"> Faculty of Agriculture and Environment </div>
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
    name: "FO_Agri",
    data() {
      return {
        list: [
          {
            id: 1,
            Supervisor_Name: "Dr. Abubakar Dar",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "abubakar.dar@iub.edu.pk",
          },
          {
            id: 2,
            Supervisor_Name: "Dr. Muhammad Ameen",
            role: "Assistant Professor",
            dept: "Dept of Food Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "muhammad.ameen@iub.edu.pk",
          }, {
            id: 3,
            Supervisor_Name: "Dr. Maqshoof Ahmad",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "maqshoof_ahmad@yahoo.com",
          }, {
            id: 4,
            Supervisor_Name: "Mr. Muhammad Talal",
            role: "Lecturer",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "muhammad.talal@iub.edu.pk",
          },
          
          {
            id: 8,
            Supervisor_Name: "Dr. Humera Arshad",
            role: "Associate Professor",
            dept: "Dept of Food Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "		humera.arshad@iub.edu.pk",
          },
          {
            id: 9,
            Supervisor_Name: "Dr. Imran Sarwar Bajwa",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "imran.sarwar@iub.edu.pk",
          },
          {
            id: 10,
            Supervisor_Name: "Dr. Saima Abdullah",
            role: "Assistant Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "			Saima.Abdullah@iub.edu.pk",
          },
          {
            id: 11,
            Supervisor_Name: "Dr. Waheed Anwar",
            role: "Assistant Professor (HEC Approved Supervisor)",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "			waheed@iub.edu.pk",
          },
          {
            id: 12,
            Supervisor_Name: "Dr. Zaigham Mushtaq",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "zaigham.mushtaq@iub.edu.pk",
          },
          {
            id: 13,
            Supervisor_Name: "Dr. Muhammad Faheem Mushtaq",
            role: "Associate Professor",
            dept: "Dept of Food Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "faheem.mushtaq@iub.edu.pk",
          },
          {
            id: 14,
            Supervisor_Name: "Dr. Muhammad Ateeq",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "	Muhammad.Ateeq@iub.edu.pk",
          },
          {
            id: 15,
            Supervisor_Name: "Dr. Ghulam Gilanie",
            role: "Associate Professor",
            dept: "Dept of Soil Sciences",
            faculty: "Faculty of Agriculture and Environment",
            Email: "ghulam.gilanie@iub.edu.pk",
          },
          {
            id: 16,
            Supervisor_Name: "Dr. Shahzad Mumtaz",
            role: "Associate Professor",
            dept: "Dept of Food Sciences",
            faculty: "Faculty of Agriculture and Environment",
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
  