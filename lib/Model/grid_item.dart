class GridItem {
  String? status;
  String? message;
  List<GridValue>? data;

  GridItem onEmpty(){
    GridItem g=GridItem();
    g.data=[];
    g.status='';
    g.message='';
    return g;
  }

  GridItem({this.status, this.message, this.data});

  GridItem.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <GridValue>[];
      json['data'].forEach((v) {
        data!.add(new GridValue.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GridValue {
  int? id;
  String? name;
  String? icon;
  bool? isActive;
  String? dateCreated;
  String? dateUpdated;

  GridValue(
      {this.id,
        this.name,
        this.icon,
        this.isActive,
        this.dateCreated,
        this.dateUpdated});

  GridValue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    icon = json['icon'];
    isActive = json['is_active'];
    dateCreated = json['date_created'];
    dateUpdated = json['date_updated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['icon'] = this.icon;
    data['is_active'] = this.isActive;
    data['date_created'] = this.dateCreated;
    data['date_updated'] = this.dateUpdated;
    return data;
  }
}
