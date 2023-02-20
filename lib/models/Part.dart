class Part {
  int? pk;
  String? nom;
  String? email;
  String? nbreTel;
  String? exprenceC;
  String? diplome;
  String? cv;
  int? place;
  String? comptence;
  int?scor_Final;

  Part(
      {this.pk,
      this.nom,
      this.email,
      this.nbreTel,
      this.exprenceC,
      this.diplome,
      this.cv,
      this.place,
      this.comptence,this.scor_Final});

  Part.fromJson(Map<String, dynamic> json) {
    pk = json['pk'];
    nom = json['nom'];
    scor_Final=int.parse(json['scor_Final']);
    email = json['email'];
    nbreTel = json['nbre_tel'];
    exprenceC = json['exprence_c'];
    diplome = json['diplome'];
    cv = json['cv'];
    place = json['Place'];
    comptence = json['comptence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pk'] = this.pk;
    data['nom'] = this.nom;
    data['email'] = this.email;
    data['scor_Final']=this.scor_Final;
    data['nbre_tel'] = this.nbreTel;
    data['exprence_c'] = this.exprenceC;
    data['diplome'] = this.diplome;
    data['cv'] = this.cv;
    data['Place'] = this.place;
    data['comptence'] = this.comptence;
    return data;
  }
}
