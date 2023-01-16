<template>
  <v-app id="inspire">
    <!-- <v-app-bar
      :clipped-left="$vuetify.breakpoint.lgAndUp"
      app
      color="primary"
    >
    <v-app-bar-nav-icon @click.stop="drawer = !drawer" />

      <v-toolbar-title
        style="width: 350px"
      >
        <a href="/" class="white--text align-center justify-center" style="text-decoration: none">
        <v-img 
          class=""
          width="80%"
          :src="require('../assets/img/logos/F873_Web Logo-07.png')"
        /></a>
      </v-toolbar-title>
      <v-btn icon>
        <v-icon>mdi-account-circle</v-icon>
      </v-btn>
    </v-app-bar> -->
    <v-main>
      <div style="width:100%; text-align:center;">
        <a href="/" style="text-decoration: none; text-align:center;">
          <v-img 
            style="max-width:300px; margin-left:auto; margin-right:auto"
            :src="require('../assets/img/logos/F873_Web Logo-07.png')"
          />
        </a>
      </div>
      <v-bottom-navigation
        style="height:80px!important"
        :value="activeBtn"
        color="primary"
        horizontal
      >
        <v-btn to="/" class="v-btn">
          <span>Home</span>
        </v-btn>
   
        <!-- <v-menu open-on-hover offset-y>
          <template v-slot:activator="{ on }">
            <v-btn v-on="on">
              <span>Shop</span>
            </v-btn>
          </template>
          <v-card
            class="mx-auto"
            max-width="344"
            outlined
          >

            <v-list-item
              v-for="(item, index) in items"
              :key="index"
              to="/shop"
            >
              <v-list-item-title>{{ item.title }}</v-list-item-title>
            </v-list-item>

          </v-card>
        </v-menu> -->
        <v-btn to="/shop" class="v-btn">
          <span>Shop</span>
        </v-btn>
        <v-btn to="/contact" class="v-btn">
          <span>Contact Us</span>
        </v-btn>
        <v-btn to="/blog">
          <span>Blog</span>
        </v-btn>
      </v-bottom-navigation>
    </v-main>
      <router-view/>
    <v-footer
      :padless="true"
    >
      <v-card
        flat
        tile
        width="100%"
        class="secondary white--text text-center"
      >
        <v-card-text>
          <v-btn
            class="mx-4 white--text"
            icon
             href="/"
          >
            <v-icon size="24px">mdi-home</v-icon>
          </v-btn>
          <v-btn
            class="mx-4 white--text"
            icon
            href="mailto:fdaluca@yahoo.ca"
          >
            <v-icon size="24px">mdi-email</v-icon>
          </v-btn>
          <v-btn
            class="mx-4 white--text"
            icon
            href="tel:647-494-2192"
          >
            <v-icon size="24px">mdi-phone</v-icon>
          </v-btn>

        </v-card-text>

        <v-card-text class="white--text pt-0">
          Contact us by phone or email for any inquiries and we'll get back to you as soon as possible. Companion Dates prides ourselves on providing excellent customer service or assistance regarding any inquiry or questions that you may have. Contact us via our 24/7 phone number 647-494-2192 by call or text, or alternatively by email fdaluca@yahoo.ca
        </v-card-text>

        <v-divider></v-divider>

        <v-card-text class="white--text">
          <v-icon class="white--text">mdi-copyright</v-icon> &nbsp;{{ new Date().getFullYear() }} — <strong>Companion Dates</strong>
        </v-card-text>
      </v-card>
    </v-footer>
  </v-app>
</template>
<script>
    export default {
        data () {
            return {
                items: [
                    { title: 'T-Shirts' },
                    { title: 'Jackets' },
                    { title: 'Shirts' },
                    { title: 'Jeans' },
                    { title: 'Shoes' },
                ],
                activeBtn: 1,
            }
        },
    }
</script>
