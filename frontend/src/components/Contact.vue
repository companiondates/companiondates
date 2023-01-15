<template>
<v-container>
    <p class="display-2 font-weight-light	text-center pa-4">How Can We Help?</p>
    <div>
        <v-card class="pa-10" style="max-width:700px; margin:auto;">
            <v-form
            ref="form"
            action="https://formspree.io/f/mlezgnno"
            method="post"
            v-model="invalid"
            validation
            >
                <v-text-field
                v-model="name"
                :counter="10"
                :rules="nameRules"
                label="Name"
                id="Name"
                name="name"
                required
                ></v-text-field>

                <v-text-field
                v-model="email"
                id="email"
                :rules="emailRules"
                label="E-mail"
                required
                name="_replyto"
                ></v-text-field>
                
                <v-textarea
                    filled
                    :rules="messageRules"
                    label="What's on your mind?"
                    auto-grow
                    value=""
                    v-model="message"
                    required
                    id="message"
                    name="message"
                ></v-textarea>
                
                <input type="hidden" name="_subject" :value="`${name} is asking about companiondates! `">
                <v-btn
                    :disabled="!invalid"
                    color="success"
                    class="mr-4"
                    type="submit"
                >
                Submit
                </v-btn>

            </v-form>
        </v-card>
    </div>
</v-container>
</template>
<script>
export default {
    data: ()=>({
        email: '',
        emailRules: [
            v => !!v || 'E-mail is required',
            v => /.+@.+\..+/.test(v) || 'E-mail must be valid',
        ],
        invalid: false,
        name: '',
        nameRules: [
            v => !!v || 'Name is required',
        ],
        message: '',
        messageRules: [
            v => !!v || 'Message is required',
        ]
    }),
    methods: {
        validate() {
            alert(this.invalid)
            return this.$refs.form.validate()
        },
        recaptcha() {
            this.$recaptcha('login').then((token) => {
                console.log(token) // Will print the token
            })
        }
    },
    watcher:{
        invalid(){
            return this.validate()
        }
    }
}
</script>