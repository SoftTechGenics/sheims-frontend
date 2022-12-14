<template>
  <!-- <HelloWorld/> -->
  <!-- <Header/> -->
  <!-- <Research/> -->
  <div class="px-5">
    <div class="display-5 fw-bolder mt-5" >
        Research Supervisors
      </div>
     
     <ul class="mt-3">
   <li  @click="tab='FO_Eng'">  Faculty of Engineering   </li>
     <li  @click="tab='FO_Comp'">  Faculty of Computing    </li>
     <li  @click="tab='FO_Mang'"   >  Faculty of Management Science and Commerce     </li>
     <li   @click="tab='FO_Phar'"  >  Faculty of Pharmacy        </li>
     <li   @click="tab='FO_Agri'" >  Faculty of Agriculture and Environment        </li>
     <li    @click="tab='FO_Medi'"  >   Faculty of Medicine and Allied Health Science       </li>
     <li   @click="tab='FO_VetAnimal'"  >   Faculty of Veterinary and Animal Sciences       </li>
     <li   @click="tab='FO_ScoSci'"  >  Faculty of Social Science      </li>
    </ul>
    </div>  
  <component :is="tab"/>

</template>

<script>
// import HelloWorld from './components/Helloworld.vue'
// import Header from './components/Header.vue'
import Research from './components/Research.vue'
import FO_Eng from './components/fo-engineering.vue'
import FO_Phar from './components/fo-pharmacy.vue'
import FO_Mang from './components/fo-managementscience.vue'
import FO_Comp from './components/fo-computing.vue'
import FO_Agri from './components/fo-agri.vue'
import FO_Medi from './components/fo-medicine.vue'
import FO_VetAnimal from './components/fo-animalscience.vue'
import FO_ScoSci from './components/fo-socialscience.vue'

export default {
  name: 'App',
  data(){
    return{
       tab:""
    }
  },
  components: {
    Research, 
    FO_Eng,
    FO_Comp,
    FO_Mang,
    FO_Phar,
    FO_Agri,
    FO_Medi,
    FO_VetAnimal,
    FO_ScoSci
  }
}
</script>

<style scoped>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;

}
li{
  color: blue;
  cursor: pointer;
}
li:hover{
  color: rgb(8, 8, 59);
}
</style>
