var sheme = new Vue({
   el: '#vue_det',
   data:{
      Object:{
         Department: 'Software Engineering',
         Semester: '5TH',
         Batch: 'Fall-2020',
         sosBy: 'Muhammad Usama',
      },
      SoS:[
         {
            cCode : 'COSC-1201',
            cName: 'Web Systems & Technologies',
            cHours: '3-1'
         },
         {
            cCode : 'COSC-1202',
            cName: 'Introdution to Programming',
            cHours: '3-1'
         },
         {
            cCode : 'COSC-1203',
            cName: 'Visual PRogramming',
            cHours: '3-1'
         },
         {
            cCode : 'COSC-1204',
            cName: 'English',
            cHours: '2-0'
         }
      ],
   }
})