<template>
  <div>
    <v-container>
      <div class="row">
        <div
         class="col-md-3 col-sm-3 col-xs-12"
        >
          <v-card outlined>
            <v-card-title>Filters</v-card-title>
            <!-- <v-divider></v-divider> -->
            <!-- <template>
              <v-treeview :items="items" :open="[1]" :active="[5]" :selected-color="'#fff'" activatable open-on-click dense></v-treeview>
            </template> -->
            <v-divider></v-divider>
            <v-card-title>Price</v-card-title>
            <v-range-slider
              v-model="range"
              :max="max"
              :min="min"
              :height="10"
              class="align-center"
              dense
            ></v-range-slider>
            <v-row class="pa-2" dense>
              <v-col cols="12" sm="5">
                <v-text-field
                  :value="range[0]"
                  label="Min"
                  outlined
                  dense
                  @change="$set(range, 0, $event)"
                  type="number"
                ></v-text-field>
              </v-col>
              <v-col cols="12" sm="2">
                <p class="pt-2 text-center">TO</p>
              </v-col>
              <v-col cols="12" sm="5">
                <v-text-field
                  :value="range[1]"
                  label="Max"
                  outlined
                  dense
                  @change="$set(range, 1, $event)"
                  type="number"
                ></v-text-field>
              </v-col>
            </v-row>
            <v-divider></v-divider>
            <v-card-title class="pb-0">Category</v-card-title>
            <v-container class="pt-0"  fluid>
              <v-checkbox label="Busty" @click.prevent="setActive('Busty')" hide-details dense></v-checkbox>
              <v-checkbox label="Fit" @click.prevent="setActive('Fit')" hide-details dense></v-checkbox>
              <v-checkbox label="Curvy" @click.prevent="setActive('Curvy')" hide-details dense></v-checkbox>
              <v-checkbox label="Mini Sex Doll" @click.prevent="setActive('Mini Sex Doll')" hide-details dense></v-checkbox>
            </v-container>
            <v-divider></v-divider>
            <v-card-title class="pb-0">Height</v-card-title>
            <v-container class="pt-0" fluid>
              <v-checkbox label="125cm" @click.prevent="setActive('125cm')" hide-details dense></v-checkbox>
              <v-checkbox label="158cm" @click.prevent="setActive('158cm')" hide-details dense></v-checkbox>
              <v-checkbox label="165cm" @click.prevent="setActive('165cm')" hide-details dense></v-checkbox>
              <v-checkbox label="169cm" @click.prevent="setActive('169cm')" hide-details dense></v-checkbox>
              <v-checkbox label="174cm" @click.prevent="setActive('174cm')" hide-details dense></v-checkbox>
              <v-checkbox label="171cm" @click.prevent="setActive('171cm')" hide-details dense></v-checkbox>
            
            
            
            </v-container>
            <v-divider></v-divider>
            <v-card-title class="pb-0">Ethnicity</v-card-title>
            <v-container class="pt-0" fluid>
              <v-checkbox label="Asian" @click.prevent="setActive('Asian')" hide-details dense></v-checkbox>
              <v-checkbox label="Latina" @click.prevent="setActive('Latina')" hide-details dense></v-checkbox>
              <v-checkbox label="European" @click.prevent="setActive('European')" hide-details dense></v-checkbox>
            </v-container>

          </v-card>
        </div>
        <div
          class="col-md-9 col-sm-9 col-xs-12"
        >

          <v-breadcrumbs class="pb-0" :items="breadcrums"></v-breadcrumbs>

          <v-row dense>
            <v-col cols="12" sm="8" class="pl-6 pt-6">
              <small>Showing 1-12 of 200 products</small>
            </v-col>
            <v-col cols="12" sm="4">
              <v-select class="pa-0" v-model="select" :items="options" style="margin-bottom: -20px;"  @click="sortByPrice($event)" outlined dense></v-select>
            </v-col>
          </v-row>

          <v-divider></v-divider>

          <div class="row text-center">
            <div class="col-md-3 col-sm-6 col-xs-12" :key="pro.id" v-for="pro in filteredItems">
              <v-hover v-slot:default="{ hover }">
                <v-card
                  class="mx-auto"
                  color="grey lighten-4"
                  max-width="600"
                >
                  <v-img
                    class="white--text align-end"
                    :aspect-ratio="16/9"
                    height="200px"
                    :src="require(`../assets/img/shop/${pro.ID}.jpg`)"
                  >
                    <v-card-title style="text-shadow:1px 2px 3px black">{{pro.NAME}} </v-card-title>
                    <v-expand-transition>
                      <div
                        v-if="hover"
                        class="d-flex transition-fast-in-fast-out white darken-2 v-card--reveal display-3 white--text"
                        style="height: 100%;"
                      >
                        <v-btn v-if="hover" :to="`/product?doll=${pro.ID}`" class="" outlined>VIEW</v-btn>
                      </div>

                    </v-expand-transition>
                  </v-img>
                  <v-card-text class="text--primary">
                    <div><router-link :to="`/product?doll=${pro.ID}`" style="text-decoration: none">{{pro.HEIGHT}}</router-link></div>
                    <div>${{pro.PRICE}}</div>
                  </v-card-text>
                </v-card>
              </v-hover>
            </div>
          </div>
          <div class="text-center mt-12">
            <v-pagination
              v-model="page"
              :length="6"
            ></v-pagination>
          </div>
        </div>
      </div>
    </v-container>
  </div>
</template>
<style>
  .v-card--reveal {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .8;
    position: absolute;
    width: 100%;
  }
</style>
<script>
import axios from 'axios'
    export default {
        data: () => ({
            range: [0, 9000],
            select:'Default',
            options: [
                'Default',
                'Price: Low to High',
                'Price: High to Low',
            ],
            filtersApplied:['price'],
            page:1,
            breadcrums: [
                {
                    text: 'Home',
                    disabled: false,
                    to: '/',
                },
                {
                    text: 'Sex Dolls',
                    disabled: true,
                    to: '/shop',
                },
            ],
            min:0,
            max:9000,
            items: [
                {
                    id: 2,
                    name: 'Shoes',
                    children: [
                        { id: 2, name: 'Casuals' },
                        { id: 3, name: 'Formals' },
                        { id: 4, name: 'Sneakers' },
                    ],
                },
                {
                    id: 1,
                    name: 'Clothing',
                    children: [
                        { id: 5, name: 'Shirts' },
                        { id: 6, name: 'Tops' },
                        { id: 7, name: 'Tunics' },
                        { id: 8, name: 'Bodysuit' },
                    ],
                }
            ],
            products:[
            //     {
            //         id:1,
            //         name:'BLACK TEE',
            //         type:'Jackets',
            //         price:'18.00',
            //         src:require('../assets/img/shop/1.jpg')
            //     },
            //     {
            //         id:2,
            //         name:'WHITE TEE',
            //         type:'Polo',
            //         price:'40.00',
            //         src:require('../assets/img/shop/2.jpg')
            //     },
            //     {
            //         id:3,
            //         name:'Zara limited...',
            //         type:'Denim',
            //         price:'25.00',
            //         src:require('../assets/img/shop/3.jpg')
            //     },
            //     {
            //         id:4,
            //         name:'SKULL TEE',
            //         type:'Jackets',
            //         price:'30.00',
            //         src:require('../assets/img/shop/4.jpg')
            //     },
            //     {
            //         id:5,
            //         name:'MANGO WINTER',
            //         type:'Sweaters',
            //         price:'50.00',
            //         src:require('../assets/img/shop/5.jpg')
            //     },
            //     {
            //         id:6,
            //         name:'SHIRT',
            //         type:'Denim',
            //         price:'34.00',
            //         src:require('../assets/img/shop/6.jpg')
            //     },
            //     {
            //         id:7,
            //         name:'TRUCKER JACKET',
            //         type:'Jackets',
            //         price:'38.00',
            //         src:require('../assets/img/shop/7.jpg')
            //     },
            //     {
            //         id:8,
            //         name:'COATS',
            //         type:'Jackets',
            //         price:'25.00',
            //         src:require('../assets/img/shop/8.jpg')
            //     },{
            //         id:9,
            //         name:'MANGO WINTER',
            //         type:'Sweaters',
            //         price:'50.00',
            //         src:require('../assets/img/shop/9.jpg')
            //     },
            //     {
            //         id:10,
            //         name:'SHIRT',
            //         type:'Denim',
            //         price:'34.00',
            //         src:require('../assets/img/shop/10.jpg')
            //     },
            //     {
            //         id:11,
            //         name:'TRUCKER JACKET',
            //         type:'Jackets',
            //         price:'38.00',
            //         src:require('../assets/img/shop/11.jpg')
            //     },
            //     {
            //         id:12,
            //         name:'COATS',
            //         type:'Jackets',
            //         price:'25.00',
            //         src:require('../assets/img/shop/12.jpg')
            //     }
            ]
        }),
        computed: {
          filteredItems: function() {
            return this.products.filter( product => {
              return this.filtersApplied.every( filterApplied => {
                if (product.CATEGORY.includes(filterApplied)) {
                  return product.CATEGORY.includes(filterApplied);
                }
                if (product.HEIGHT.includes(filterApplied)) {
                  return product.HEIGHT.includes(filterApplied);
                }
                if (product.ETHNICITY.includes(filterApplied)) {
                  return product.ETHNICITY.includes(filterApplied);
                }
                if (filterApplied == 'price') {
                  if(typeof this.range[0] == 'string' || typeof this.range[1] == 'string'){
                    console.log('its a string')
                    return true;
                  }
                  return (product.PRICE >= this.range[0] && product.PRICE <= this.range[1]);
                }
                
              });
            });
          },

        },
        methods:{
          sortByPrice: function(e) {
            console.log(e.target)
            return this.products.sort(function(a,b) {
              return a.PRICE - b.PRICE;
            })
            return this.products.sort(function(a,b) {
              return a.PRICE - b.PRICE;
            })
          },
          getDolls(){
            axios.post('/api/getDolls')
            .then(resp=>{
              this.products = resp.data
            })
          },
          setActive: function(element){
            let index = this.filtersApplied.indexOf(element);
            if(index > -1){
              this.filtersApplied.splice(index, 1)
            }else{
              this.filtersApplied.push(element)
            }
          },
        },
        beforeMount(){
          this.getDolls()
        }
    }
</script>
