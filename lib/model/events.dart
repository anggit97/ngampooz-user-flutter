class Events {
  LinksBean links;
  MetaBean meta;
  List<DataListEvents> data;

  Events({this.links, this.meta, this.data});

  Events.fromJson(Map<String, dynamic> json) {    
    this.links = json['links'] != null ? LinksBean.fromJson(json['links']) : null;
    this.meta = json['meta'] != null ? MetaBean.fromJson(json['meta']) : null;
    this.data = (json['data'] as List)!=null?(json['data'] as List).map((i) => DataListEvents.fromJson(i)).toList():null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta.toJson();
    }
    data['data'] = this.data != null?this.data.map((i) => i.toJson()).toList():null;
    return data;
  }

}

class LinksBean {
  String first;
  String last;
  String prev;
  String next;

  LinksBean({this.first, this.last, this.prev, this.next});

  LinksBean.fromJson(Map<String, dynamic> json) {    
    this.first = json['first'];
    this.last = json['last'];
    this.prev = json['prev'];
    this.next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}

class MetaBean {
  String path;
  int currentPage;
  int from;
  int lastPage;
  int perPage;
  int to;
  int total;

  MetaBean({this.path, this.currentPage, this.from, this.lastPage, this.perPage, this.to, this.total});

  MetaBean.fromJson(Map<String, dynamic> json) {
    this.path = json['path'];
    this.currentPage = json['current_page'];
    this.from = json['from'];
    this.lastPage = json['last_page'];
    this.perPage = json['per_page'];
    this.to = json['to'];
    this.total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['current_page'] = this.currentPage;
    data['from'] = this.from;
    data['last_page'] = this.lastPage;
    data['per_page'] = this.perPage;
    data['to'] = this.to;
    data['total'] = this.total;
    return data;
  }
}

class DataListEvents {
  String judul;
  String slug;
  String shortUrl;
  String deskripsi;
  String lokasi;
  String alamat;
  String tempat;
  String jenis;
  String organize;
  String jenisTopic;
  String tanggal;
  String jamMulai;
  String jamAkhir;
  String liked;
  String statusAktif;
  String nomorSertifikasi;
  String createdAt;
  int id;
  int biaya;
  int jumlah;
  int jumlahOts;
  Object jumlahPesertaTerdaftar;
  int bookingSuccess;
  int likedTotal;
  int statusDaftar;
  BatasAkhirDaftarBean batasAkhirDaftar;
  EventOrganizerBean eventOrganizer;
  FotoBean foto;
  KategoriBean kategori;
  ProvinsiBean provinsi;
  UniversitasBean universitas;

  DataListEvents({this.judul, this.slug, this.shortUrl, this.deskripsi, this.lokasi, this.alamat, this.tempat, this.jenis, this.organize, this.jenisTopic, this.tanggal, this.jamMulai, this.jamAkhir, this.liked, this.statusAktif, this.nomorSertifikasi, this.createdAt, this.id, this.biaya, this.jumlah, this.jumlahOts, this.jumlahPesertaTerdaftar, this.bookingSuccess, this.likedTotal, this.statusDaftar, this.batasAkhirDaftar, this.eventOrganizer, this.foto, this.kategori, this.provinsi, this.universitas});

  DataListEvents.fromJson(Map<String, dynamic> json) {
    this.judul = json['judul'];
    this.slug = json['slug'];
    this.shortUrl = json['short_url'];
    this.deskripsi = json['deskripsi'];
    this.lokasi = json['lokasi'];
    this.alamat = json['alamat'];
    this.tempat = json['tempat'];
    this.jenis = json['jenis'];
    this.organize = json['organize'];
    this.jenisTopic = json['jenis_topic'];
    this.tanggal = json['tanggal'];
    this.jamMulai = json['jam_mulai'];
    this.jamAkhir = json['jam_akhir'];
    this.liked = json['liked'];
    this.statusAktif = json['status_aktif'];
    this.nomorSertifikasi = json['nomor_sertifikasi'];
    this.createdAt = json['created_at'];
    this.id = json['id'];
    this.biaya = json['biaya'];
    this.jumlah = json['jumlah'];
    this.jumlahOts = json['jumlah_ots'];
    this.jumlahPesertaTerdaftar = json['jumlah_peserta_terdaftar'];
    this.bookingSuccess = json['booking_success'];
    this.likedTotal = json['liked_total'];
    this.statusDaftar = json['status_daftar'];
    this.batasAkhirDaftar = json['batas_akhir_daftar'] != null ? BatasAkhirDaftarBean.fromJson(json['batas_akhir_daftar']) : null;
    this.eventOrganizer = json['event_organizer'] != null ? EventOrganizerBean.fromJson(json['event_organizer']) : null;
    this.foto = json['foto'] != null ? FotoBean.fromJson(json['foto']) : null;
    this.kategori = json['kategori'] != null ? KategoriBean.fromJson(json['kategori']) : null;
    this.provinsi = json['provinsi'] != null ? ProvinsiBean.fromJson(json['provinsi']) : null;
    this.universitas = json['universitas'] != null ? UniversitasBean.fromJson(json['universitas']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['judul'] = this.judul;
    data['slug'] = this.slug;
    data['short_url'] = this.shortUrl;
    data['deskripsi'] = this.deskripsi;
    data['lokasi'] = this.lokasi;
    data['alamat'] = this.alamat;
    data['tempat'] = this.tempat;
    data['jenis'] = this.jenis;
    data['organize'] = this.organize;
    data['jenis_topic'] = this.jenisTopic;
    data['tanggal'] = this.tanggal;
    data['jam_mulai'] = this.jamMulai;
    data['jam_akhir'] = this.jamAkhir;
    data['liked'] = this.liked;
    data['status_aktif'] = this.statusAktif;
    data['nomor_sertifikasi'] = this.nomorSertifikasi;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['biaya'] = this.biaya;
    data['jumlah'] = this.jumlah;
    data['jumlah_ots'] = this.jumlahOts;
    data['jumlah_peserta_terdaftar'] = this.jumlahPesertaTerdaftar;
    data['booking_success'] = this.bookingSuccess;
    data['liked_total'] = this.likedTotal;
    data['status_daftar'] = this.statusDaftar;
    if (this.batasAkhirDaftar != null) {
      data['batas_akhir_daftar'] = this.batasAkhirDaftar.toJson();
    }
    if (this.eventOrganizer != null) {
      data['event_organizer'] = this.eventOrganizer.toJson();
    }
    if (this.foto != null) {
      data['foto'] = this.foto.toJson();
    }
    if (this.kategori != null) {
      data['kategori'] = this.kategori.toJson();
    }
    if (this.provinsi != null) {
      data['provinsi'] = this.provinsi.toJson();
    }
    if (this.universitas != null) {
      data['universitas'] = this.universitas.toJson();
    }
    return data;
  }
}

class BatasAkhirDaftarBean {
  String tanggal;
  String jam;

  BatasAkhirDaftarBean({this.tanggal, this.jam});

  BatasAkhirDaftarBean.fromJson(Map<String, dynamic> json) {
    this.tanggal = json['tanggal'];
    this.jam = json['jam'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tanggal'] = this.tanggal;
    data['jam'] = this.jam;
    return data;
  }
}

class EventOrganizerBean {
  String telepon;
  int id;
  int statusAktif;
  PartnerBean partner;

  EventOrganizerBean({this.telepon, this.id, this.statusAktif, this.partner});

  EventOrganizerBean.fromJson(Map<String, dynamic> json) {
    this.telepon = json['telepon'];
    this.id = json['id'];
    this.statusAktif = json['status_aktif'];
    this.partner = json['partner'] != null ? PartnerBean.fromJson(json['partner']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['telepon'] = this.telepon;
    data['id'] = this.id;
    data['status_aktif'] = this.statusAktif;
    if (this.partner != null) {
      data['partner'] = this.partner.toJson();
    }
    return data;
  }
}

class FotoBean {
  String original;
  String thumb;

  FotoBean({this.original, this.thumb});

  FotoBean.fromJson(Map<String, dynamic> json) {
    this.original = json['original'];
    this.thumb = json['thumb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['original'] = this.original;
    data['thumb'] = this.thumb;
    return data;
  }
}

class KategoriBean {
  String nama;
  String slug;
  String foto;
  int id;

  KategoriBean({this.nama, this.slug, this.foto, this.id});

  KategoriBean.fromJson(Map<String, dynamic> json) {
    this.nama = json['nama'];
    this.slug = json['slug'];
    this.foto = json['foto'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['slug'] = this.slug;
    data['foto'] = this.foto;
    data['id'] = this.id;
    return data;
  }
}

class ProvinsiBean {
  String nama;
  int id;

  ProvinsiBean({this.nama, this.id});

  ProvinsiBean.fromJson(Map<String, dynamic> json) {
    this.nama = json['nama'];
    this.id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['id'] = this.id;
    return data;
  }
}

class UniversitasBean {
  String kode;
  String nama;
  String kategori;
  String createdAt;
  String updatedAt;
  int id;
  int idProvinsi;

  UniversitasBean({this.kode, this.nama, this.kategori, this.createdAt, this.updatedAt, this.id, this.idProvinsi});

  UniversitasBean.fromJson(Map<String, dynamic> json) {
    this.kode = json['kode'];
    this.nama = json['nama'];
    this.kategori = json['kategori'];
    this.createdAt = json['created_at'];
    this.updatedAt = json['updated_at'];
    this.id = json['id'];
    this.idProvinsi = json['id_provinsi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode'] = this.kode;
    data['nama'] = this.nama;
    data['kategori'] = this.kategori;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['id'] = this.id;
    data['id_provinsi'] = this.idProvinsi;
    return data;
  }
}

class PartnerBean {
  String nama;
  String email;
  String telepon;
  String website;
  int id;
  CreatedAtBean createdAt;
  FotoBean foto;

  PartnerBean({this.nama, this.email, this.telepon, this.website, this.id, this.createdAt, this.foto});

  PartnerBean.fromJson(Map<String, dynamic> json) {    
    this.nama = json['nama'];
    this.email = json['email'];
    this.telepon = json['telepon'];
    this.website = json['website'];
    this.id = json['id'];
    this.createdAt = json['created_at'] != null ? CreatedAtBean.fromJson(json['created_at']) : null;
    this.foto = json['foto'] != null ? FotoBean.fromJson(json['foto']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['email'] = this.email;
    data['telepon'] = this.telepon;
    data['website'] = this.website;
    data['id'] = this.id;
    if (this.createdAt != null) {
      data['created_at'] = this.createdAt.toJson();
    }
    if (this.foto != null) {
      data['foto'] = this.foto.toJson();
    }
    return data;
  }
}

class CreatedAtBean {
  String diffForHumans;
  String frendlyDate;

  CreatedAtBean({this.diffForHumans, this.frendlyDate});

  CreatedAtBean.fromJson(Map<String, dynamic> json) {    
    this.diffForHumans = json['diffForHumans'];
    this.frendlyDate = json['frendlyDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['diffForHumans'] = this.diffForHumans;
    data['frendlyDate'] = this.frendlyDate;
    return data;
  }
}
