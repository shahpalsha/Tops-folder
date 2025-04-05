class RefEduBoookModel {
  String? id;
  String? name;
  String? email;
  int? contact;
  int? age;
  String? gender;
  String? city;
  String? book;


  RefEduBoookModel(
      {this.id,
        this.name,
        this.email,
        this.contact,
        this.age,
        this.gender,
        this.city,
        this.book
      });

  RefEduBoookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    contact = json['contact'];
    age = json['age'];
    gender = json['gender'];
    city = json['city'];
    book = json['book'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['contact'] = this.contact;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['book'] = this.book;
    return data;
  }
}
