<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder">Faculty of Pharmacy</div>
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
      <div class=" my-5 text-center fw-bolder text-primary">See more</div>
    </div>
  </template>
  
  <script>

  export default {
    name: "FO_Phar",
    data() {
      return {
        list: [
          {
            id: 1,
            Supervisor_Name: "Dr. Fahad Pervaiz",
            role: "Associate Professor",
            dept: "Dept of  Pharmacy",
            faculty: "Faculty of Pharmacy",
            Email: "		fahad.pervaiz@iub.edu.pk",
          },
          {
            id: 2,
            Supervisor_Name: "Dr. Muhammad Naeem Amir",
            role: "Associate Professor",
            dept: "Dept of  Pharmacy",
            faculty: "Faculty of Pharmacy",
            Email: "	Dr.MuhammadNaeemAmir@iub.edu.pk",
          },
          {
            id: 3,
            Supervisor_Name: "Mr. Rizwan Ahmad",
            role: "Assistant Professor",
            dept: "Dept of  Pharmacy",
            faculty: "Faculty of Pharmacy",
            Email: "rizwan.ahmad@iub.edu.pk",
          },
          {
            id: 4,
            Supervisor_Name: "Mr.Muhammad Qamar-uz-Zaman",
            role: "Assistant Professor",
            dept: "Dept of  Pharmacy",
            faculty: "Faculty of Pharmacy",
            Email: "qamar.uz.zaman@iub.edu.pk",
          },
          {
            id: 5,
            Supervisor_Name: "M. Younis Khan",
            role: "Assistant Professor",
            dept: "Dept of  Pharmacy",
            faculty: "Faculty of Pharmacy",
            Email: "	Younis.Khan@iub.edu.pk",
          },
          {
            id: 6,
            Supervisor_Name: "Prof. Dr. Saeed Ahmad",
            role: "Professor / Chairman",
            dept: "Department of Pharmaceutical Chemistry",
            faculty: "Faculty of Pharmacy",
            Email: "Saeed.Ahmad@iub.edu.pk",
          },
          {
            id: 7,
            Supervisor_Name: "Prof. Dr. Qaiser Jabeen",
            role: "Professor / Chairman",
            dept: "Department of Pharmacology",
            faculty: "Faculty of Pharmacy",
            Email: "qaiser.jabeen@iub.edu.pk",
          },
          {
            id: 8,
            Supervisor_Name: "Prof. Dr. Muhammad Atif",
            role: "Professor / Chairman",
            dept: "Department of Pharmacy Practice",
            faculty: "Faculty of Pharmacy",
            Email: "Muhammad.Atif@iub.edu.pk",
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
  