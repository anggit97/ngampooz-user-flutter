class StatusUpdateInfo {
  String device;
  String versionName;
  String versionCode;
  String statusUpdate;
  String dateMnt;
  String mnt;
  String jenis;
  int id;

  StatusUpdateInfo({this.device, this.versionName, this.versionCode, this.statusUpdate, this.dateMnt, this.mnt, this.jenis, this.id});

  StatusUpdateInfo.fromJson(Map<String, dynamic> json) {    
    this.device = json['device'];
    this.versionName = json['version_name'];
    this.versionCode = json['version_code'];
    this.statusUpdate = json['status_update'];
    this.dateMnt = json['date_mnt'];
    this.mnt = json['mnt'];
    this.jenis = json['jenis'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['device'] = this.device;
    data['version_name'] = this.versionName;
    data['version_code'] = this.versionCode;
    data['status_update'] = this.statusUpdate;
    data['date_mnt'] = this.dateMnt;
    data['mnt'] = this.mnt;
    data['jenis'] = this.jenis;
    data['id'] = this.id;
    return data;
  }

}
