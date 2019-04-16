class OpenClasses {
  String firstPageUrl;
  String lastPageUrl;
  String nextPageUrl;
  String path;
  String prevPageUrl;
  int currentPage;
  int from;
  int lastPage;
  int perPage;
  int to;
  int total;
  List<DataListOpenClass> data;

  OpenClasses({this.firstPageUrl, this.lastPageUrl, this.nextPageUrl, this.path, this.prevPageUrl, this.currentPage, this.from, this.lastPage, this.perPage, this.to, this.total, this.data});

  OpenClasses.fromJson(Map<String, dynamic> json) {    
    this.firstPageUrl = json['first_page_url'];
    this.lastPageUrl = json['last_page_url'];
    this.nextPageUrl = json['next_page_url'];
    this.path = json['path'];
    this.prevPageUrl = json['prev_page_url'];
    this.currentPage = json['current_page'];
    this.from = json['from'];
    this.lastPage = json['last_page'];
    this.perPage = json['per_page'];
    this.to = json['to'];
    this.total = json['total'];
    this.data = (json['data'] as List)!=null?(json['data'] as List).map((i) => DataListOpenClass.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_page_url'] = this.firstPageUrl;
    data['last_page_url'] = this.lastPageUrl;
    data['next_page_url'] = this.nextPageUrl;
    data['path'] = this.path;
    data['prev_page_url'] = this.prevPageUrl;
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    data['data'] = this.data != null?this.data.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class DataListOpenClass {
  String judul;
  String slug;
  String deskripsi;
  String alamat;
  String tempat;
  String tanggal;
  String jamMulai;
  String jamAkhir;
  String batasAkhirDaftar;
  String imageUrl;
  String bannerUrl;
  String statusAktif;
  String nomorSertifikasi;
  String shortUrl;
  String createdAt;
  String updatedAt;
  double lng;
  double lat;
  int id;
  int idUser;
  int biaya;
  int jumlah;
  int idProvinsi;
  int idKategori;
  int pendingBooking;
  int successBooking;
  int likeCount;
  int liked;
  UserBean user;

  DataListOpenClass({this.judul, this.slug, this.deskripsi, this.alamat, this.tempat, this.tanggal, this.jamMulai, this.jamAkhir, this.batasAkhirDaftar, this.imageUrl, this.bannerUrl, this.statusAktif, this.nomorSertifikasi, this.shortUrl, this.createdAt, this.updatedAt, this.lng, this.lat, this.id, this.idUser, this.biaya, this.jumlah, this.idProvinsi, this.idKategori, this.pendingBooking, this.successBooking, this.likeCount, this.liked, this.user});

  DataListOpenClass.fromJson(Map<String, dynamic> json) {    
    this.judul = json['judul'];
    this.slug = json['slug'];
    this.deskripsi = json['deskripsi'];
    this.alamat = json['alamat'];
    this.tempat = json['tempat'];
    this.tanggal = json['tanggal'];
    this.jamMulai = json['jam_mulai'];
    this.jamAkhir = json['jam_akhir'];
    this.batasAkhirDaftar = json['batas_akhir_daftar'];
    this.imageUrl = json['image_url'];
    this.bannerUrl = json['banner_url'];
    this.statusAktif = json['status_aktif'];
    this.nomorSertifikasi = json['nomor_sertifikasi'];
    this.shortUrl = json['short_url'];
    this.createdAt = json['created_at'];
    this.updatedAt = json['updated_at'];
    this.lng = json['lng'];
    this.lat = json['lat'];
    this.id = json['id'];
    this.idUser = json['id_user'];
    this.biaya = json['biaya'];
    this.jumlah = json['jumlah'];
    this.idProvinsi = json['id_provinsi'];
    this.idKategori = json['id_kategori'];
    this.pendingBooking = json['pending_booking'];
    this.successBooking = json['success_booking'];
    this.likeCount = json['like_count'];
    this.liked = json['liked'];
    this.user = json['user'] != null ? UserBean.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['judul'] = this.judul;
    data['slug'] = this.slug;
    data['deskripsi'] = this.deskripsi;
    data['alamat'] = this.alamat;
    data['tempat'] = this.tempat;
    data['tanggal'] = this.tanggal;
    data['jam_mulai'] = this.jamMulai;
    data['jam_akhir'] = this.jamAkhir;
    data['batas_akhir_daftar'] = this.batasAkhirDaftar;
    data['image_url'] = this.imageUrl;
    data['banner_url'] = this.bannerUrl;
    data['status_aktif'] = this.statusAktif;
    data['nomor_sertifikasi'] = this.nomorSertifikasi;
    data['short_url'] = this.shortUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['lng'] = this.lng;
    data['lat'] = this.lat;
    data['id'] = this.id;
    data['id_user'] = this.idUser;
    data['biaya'] = this.biaya;
    data['jumlah'] = this.jumlah;
    data['id_provinsi'] = this.idProvinsi;
    data['id_kategori'] = this.idKategori;
    data['pending_booking'] = this.pendingBooking;
    data['success_booking'] = this.successBooking;
    data['like_count'] = this.likeCount;
    data['liked'] = this.liked;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class UserBean {
  String nama;
  String email;
  String avatarUrl;
  int id;

  UserBean({this.nama, this.email, this.avatarUrl, this.id});

  UserBean.fromJson(Map<String, dynamic> json) {    
    this.nama = json['nama'];
    this.email = json['email'];
    this.avatarUrl = json['avatar_url'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['email'] = this.email;
    data['avatar_url'] = this.avatarUrl;
    data['id'] = this.id;
    return data;
  }
}