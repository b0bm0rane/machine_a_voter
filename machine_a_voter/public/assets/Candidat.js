class Candidat
{
    constructor(candidat){
        this.id = candidat.id;
        this.nom = candidat.nom;
        this.prenom = candidat.prenom;
        this.slogan = candidat.slogan;
        this.photo = "./assets/candidats/" + this.id + ".jpg";
    }
}

export {Candidat}
