
<template>
    <div class="container mt-5">
      <div class="fs-5 my-5 text-center fw-bolder"> Faculty of Veterinary and Animal Sciences  </div>
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
    name: "FO_VetAnimal",
    data() {
      return {
        list: [
          {
            id: 1,
            Supervisor_Name: "Prof. Dr. Abdul Qayyum",
            role: "Professor/Chairman",
            dept: "Department of Clinical Medicine and Surgery",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "		clinicalmedicinesurgery@iub.edu.pk",
          },
          {
            id: 2,
            Supervisor_Name: "Dr. Khalid Mehmood",
            role: "Assistant Professor",
            dept: "Department of Clinical Medicine and Surgery",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "	kalid@iub.edu.pk",
          }, {
            id: 3,
            Supervisor_Name: "Dr. Altaf",
            role: "Associate Professor",
            dept: "Department of Clinical Medicine and Surgery",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "		altaf@iub.edu.pk",
          }, {
            id: 4,
            Supervisor_Name: "Mr. Sadaqat Ali",
            role: "Lecturer",
            dept: "Department of Clinical Medicine and Surgery",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "sadaqat.ali@iub.edu.pk",
          }, {
            id: 5,
            Supervisor_Name: "Mr. Gulraiz Javaid Joyia",
            role: "Lecturer",
            dept: "Department of Clinical Medicine and Surgery",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "gulraiz.javaid@iub.edu.pk",
          },
          {
            id: 6,
            Supervisor_Name: "Dr Imran ",
            role: "Lecturer",
            dept: "Department of Animal Nutrition",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "imran36@gmail.com",
          },
          {
            id: 7,
            Supervisor_Name: "Dr Rana Muhammad bilal",
            role: "Associate  Professor",
            dept: "Department of Animal Nutrition",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "rana30@iub.edu.pk",
          },
          {
            id: 1,
            Supervisor_Name: "Muhammad Yousuf",
            role: "Associate  Professor",
            dept: "Department of Animal Nutrition",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "yousuf@iub.edu.pk",
          },
          {
            id: 8,
            Supervisor_Name: "Saima Liaquat",
            role: "Lecturer",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "saima.liaqat@iub.edu.pk",
          },
          {
            id: 9,
            Supervisor_Name: "Dr. Abdul Ghayas",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "ghayas@iub.edu.pk",
          },
          {
            id: 10,
            Supervisor_Name: "Dr. shakeel",
            role: "Assistant Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "			shakeel.Abdullah@iub.edu.pk",
          },
          {
            id: 11,
            Supervisor_Name: "Dr. Waheed Anwar",
            role: "Assistant Professor ",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "			waheed@iub.edu.pk",
          },
          {
            id: 12,
            Supervisor_Name: "Dr. Zaigham Mushtaq",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "zaigham.mushtaq@iub.edu.pk",
          },
          {
            id: 13,
            Supervisor_Name: "Dr. Muhammad Faheem Mushtaq",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "faheem.mushtaq@iub.edu.pk",
          },
          {
            id: 14,
            Supervisor_Name: "Dr. Muhammad Ateeq",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "	Muhammad.Ateeq@iub.edu.pk",
          },
          {
            id: 15,
            Supervisor_Name: "Dr. Ghulam Gilanie",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
            Email: "ghulam.gilanie@iub.edu.pk",
          },
          {
            id: 16,
            Supervisor_Name: "Dr. Shahzad Mumtaz",
            role: "Associate Professor",
            dept: "Department of Poultry Science",
            faculty: " Faculty of Veterinary and Animal Sciences",
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
  