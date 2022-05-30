<template>
  <div>
    <v-carousel hide-delimiters cycle>
      <v-carousel-item
        :src="require('../assets/img/home/slider4.jpg')"
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
          <div class="display-2 white--text pl-5 pr-5 hidden-sm-only"><strong style="text-shadow:1px 2px 3px black">Get 2 outfits + 1 wig FREE!</strong></div><br/>
        </v-row>
      </v-carousel-item>
      <v-carousel-item
        :src="require('../assets/img/home/slider2.jpg')"
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
          <div class="display-2 white--text pl-5 pr-5 hidden-sm-only"><strong style="text-shadow:1px 2px 3px black">Get 2 outfits + 1 wig FREE!</strong></div><br/>
        </v-row>
      </v-carousel-item>
      <v-carousel-item
        :src="require('../assets/img/home/slider3.jpg')"
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
          <div class="display-2 white--text pl-5 pr-5 hidden-sm-only"><strong style="text-shadow:1px 2px 3px black">Get 2 outfits + 1 wig FREE!</strong></div><br/>
        </v-row>
      </v-carousel-item>
      <v-carousel-item
        :src="require('../assets/img/home/slider1.jpg')"
      >
        <v-row
          class="fill-height"
          align="center"
          justify="center"
        >
          <div class="display-2 white--text pl-5 pr-5 hidden-sm-only"><strong style="text-shadow:1px 2px 3px black">Get 2 outfits + 1 wig FREE!</strong></div><br/>
        </v-row>
      </v-carousel-item>

    </v-carousel>
    <div class="pl-4 pr-4 row">
      <div
       class="col-md-6 col-sm-6 col-xs-12"
      >
        <v-card>

          <v-img
            :src="require('../assets/img/home/slider2.jpg')"
            class="white--text align-center"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="400px"
          >
           <h1 class="text-center font-size">Silicone</h1>
            <div class="text-center">
              <v-btn  to="/shop" class="white--text " outlined>SHOP NOW</v-btn>
            </div>


<!--            <v-expand-transition>-->
<!--              <div-->
<!--                v-if="hover"-->
<!--                class="d-flex transition-fast-in-fast-out orange darken-2 v-card&#45;&#45;reveal display-3 white&#45;&#45;text"-->
<!--                style="height: 100%;"-->
<!--              >-->

<!--                <h3>Top Picks</h3><br/>-->
<!--                <h3>sdfs</h3>-->
<!--              </div>-->
<!--            </v-expand-transition>-->
          </v-img>
        </v-card>
<!--        </v-hover>-->
      </div>
      <div
        class="col-md-6 col-sm-6 col-xs-12"
      >
        <v-card>
          <v-img
            :src="require('../assets/img/home/slider3.jpg')"
            class="white--text align-center"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="400px"
          >
            <h1 class="text-center font-size">TPE</h1>
            <div class="text-center">
              <v-btn to="/shop" class="white--text" outlined>SHOP NOW</v-btn>
            </div>
          </v-img>
        </v-card>
      </div>
    </div>
    <div class="pl-4 pr-4 row">
      <div
       class="col-md-4 col-sm-4 col-xs-12"
      >
        <v-card outlined>
          <v-img
            :src="require('../assets/img/home/deal2.jpg')"
            class="white--text align-center"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="300px"
          >
            <h1 class="text-center font-size">Mini Sex Dolls</h1>
            <div class="text-center mt-2">
              <v-btn class="white--text caption" to="/shop" text>SHOP NOW <v-icon class="white--text caption">mdi-arrow-right</v-icon></v-btn>
            </div>
          </v-img>
        </v-card>
      </div>
      <div
        class="col-md-4 col-sm-4 col-xs-12"
      >
        <v-card outlined>
          <v-img
            :src="require('../assets/img/home/deal3.jpg')"
            class="white--text align-center"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="300px"
          >
            <h1 class="text-center font-size">Busty Sex Dolls</h1>
            <div class="text-center mt-2">
              <v-btn class="white--text caption"  to="/shop" text>SHOP NOW <v-icon class="white--text caption">mdi-arrow-right</v-icon></v-btn>
            </div>
          </v-img>
        </v-card>
      </div>
      <div
        class="col-md-4 col-sm-4 col-xs-12"
      >
        <v-card outlined>
          <v-img
            :src="require('../assets/img/home/deal4.jpg')"
            class="white--text align-center"
            gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
            height="300px"
          >
            <h1 class="text-center font-size">Asian Sex Dolls</h1>
            <div class="text-center mt-2">
              <v-btn class="white--text caption" to="/shop" text>SHOP NOW <v-icon class="white--text caption">mdi-arrow-right</v-icon></v-btn>
            </div>
          </v-img>
        </v-card>
      </div>
    </div>
    <v-container>
      <v-row no-gutters>
        <v-col :cols="12">
          <v-card-text
            class=""
            tile
            outlined
          > 
            <v-card-title class="subheading">Sex Doll Essentials Deals</v-card-title>
            <v-divider></v-divider>
            <div class="row" style="justify-content: center;">
              <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center">
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd1.jpg')"
                  >
                    <v-card-title>Tuesday IN LOVE</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>10% OFF affiliate link</div>
                    <div>Halal Nail Polish & Cosmetics</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn
                      target="_blank"
                      href="https://www.tuesdayinlove.com/?rfsn=6202018.9672de&utm_source=refersion&utm_medium=affiliate&utm_campaign=6202018.9672de"
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
              <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center" >
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                  >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd2.jpg')"
                  >
                    <v-card-title>Vani Cosmetics</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>30% OFF Glitter Palettes</div>
                    <div>Eyeshadow, Pigments, Glitter</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn href="https://www.vanicosmetics.com/"
                      target="_blank"
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
              <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center" >
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                  >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd3.jpg')"
                  >
                    <v-card-title>XooKool</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>25% off at checkout</div>
                    <div>Clothing, Shoes & Accessories</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn href='https://www.xookool.com/?ref=Fash'
                      target='_blank'
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
  
              <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center" >
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                  >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd4.jpg')"
                  >
                    <v-card-title>Jouer Cosmetics</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>25% OFF sitewide sale, GET CODE</div>
                    <div>Designer makeup & beauty</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn href='https://www.jouercosmetics.com/?rfsn=6301197.836f0d1'
                      target='_blank'
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
               <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center" >
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                  >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd5.jpg')"
                  >
                    <v-card-title>LOVE Luxe Beauty</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>25% OFF Beauty</div>
                    <div>Makeup / Beauty Products</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn href='https://loveluxebeauty.com/?ref=Save10'
                      target='_blank'
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
               <div class="col-12 col-xl-3 col-md-4 col-sm-6 col-xs-6 text-center" >
                <v-hover
                  v-slot:default="{ hover }"
                  open-delay="200"
                >
                  <v-card
                    :elevation="hover ? 16 : 2"
                  >
                  <v-img
                    class="white--text align-end"
                    height="200px"
                     gradient="to bottom, rgba(0,0,0,.1), rgba(0,0,0,.5)"
                    :src="require('../assets/img/home/dotd6.jpg')"
                  >
                    <v-card-title>BLK + GRN</v-card-title>
                  </v-img>

                  <v-card-text class="text--primary text-center">
                    <div>10% OFF sitewide code</div>
                    <div>Scented Candles, Nail Polish, Bath, Beauty</div>
                  </v-card-text>

                  <div class="text-center">
                    <v-btn href='https://blkgrn.com/'
                      target='_blank'
                      class="ma-2"
                      outlined
                      color="info"
                    >
                      Explore
                    </v-btn>
                  </div>
                </v-card>
                </v-hover>
              </div>
            </div>
          </v-card-text>
        </v-col>
      </v-row>
    </v-container>
    <v-card  class="accent" >
      <v-container>
        <v-row no-gutters>
          <v-col class="col-12 col-md-4 col-sm-12">
            <v-row >
              <v-col class="col-12 col-sm-3 pr-4" align="right">
                <v-icon class="display-2">mdi--currency-usd</v-icon>
              </v-col>
              <v-col  class="col-12 col-sm-9 pr-4">
                <h3 class="font-weight-light">MONEY BACK GUARANTEE</h3>
                <p class="font-weight-thin">30 Days Money Back Guarantee</p>
              </v-col>
            </v-row>
          </v-col>
          <v-col class="col-12 col-md-4 col-sm-12">
            <v-row>
              <v-col class="col-12 col-sm-3 pr-4" align="right">
                <v-icon class="display-2">mdi-headset</v-icon>
              </v-col>
              <v-col  class="col-12 col-sm-9 pr-4">
                <h3 class="font-weight-light">647-494-2192</h3>
                <p class="font-weight-thin">24/7 Available Support</p>
              </v-col>
            </v-row>
          </v-col>
        </v-row>
      </v-container>
    </v-card>
  </div>
</template>

<script>
    export default {
      title:  'Companion Dates',
        data () {
            return {
                items: [
                    { title: 'Click Me' },
                    { title: 'Click Me' },
                    { title: 'Click Me' },
                    { title: 'Click Me 2' },
                ],
                activeBtn: 1,
                colors: [
                    'indigo',
                    'warning',
                    'pink darken-2',
                    'red lighten-1',
                    'deep-purple accent-4',
                ],
                slides: [
                    'First',
                    'Second',
                    'Third',
                    'Fourth',
                    'Fifth',
                ],
            }
        },
    }
</script>
<style>
  .v-card--reveal {
    align-items: center;
    bottom: 0;
    justify-content: center;
    opacity: .5;
    position: absolute;
    width: 100%;
  }
</style>

