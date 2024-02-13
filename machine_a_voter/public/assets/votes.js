import {Candidat} from './Candidat.js';

const candidatsUrl = 'http://localhost:3000/api/candidats';

const app = {
    data() {
        return {
            nbCandidats: 10, 
            listeCandidats:[]
        }
    },
    async mounted() {
        let rep = await fetch(candidatsUrl);
        let repForm = await rep.json();
        console.log(repForm);
        for (let candidat of repForm){
            let c = new Candidat(candidat);
            this.listeCandidats.push(c);
        }
        console.log(this.listeCandidats);
    },
    computed: {

    },
    methods: {

    }
}

Vue.createApp(app).mount('#app');
