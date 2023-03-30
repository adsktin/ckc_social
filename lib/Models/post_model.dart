class PostModel {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Links>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  PostModel(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.links,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  PostModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links!.add(Links.fromJson(v));
      });
    }
    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;
    if (links != null) {
      data['links'] = links!.map((v) => v.toJson()).toList();
    }
    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Data {
  int? id;
  String? postContent;
  int? userId;
  int? privacy;
  String? parentPost;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  int? status;
  String? username;
  String? avatarUser;
  int? totalMediaFile;
  int? totalComment;
  List<Mediafile>? mediafile;

  Data(
      {this.id,
      this.postContent,
      this.userId,
      this.privacy,
      this.parentPost,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.status,
      this.username,
      this.avatarUser,
      this.totalMediaFile,
      this.totalComment,
      this.mediafile});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    postContent = json['post_content'];
    userId = json['user_id'];
    privacy = json['privacy'];
    parentPost = json['parent_post'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    status = json['status'];
    username = json['username'];
    avatarUser = json['avatarUser'];
    totalMediaFile = json['totalMediaFile'];
    totalComment = json['totalComment'];
    if (json['mediafile'] != null) {
      mediafile = <Mediafile>[];
      json['mediafile'].forEach((v) {
        mediafile!.add(Mediafile.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['post_content'] = postContent;
    data['user_id'] = userId;
    data['privacy'] = privacy;
    data['parent_post'] = parentPost;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    data['status'] = status;
    data['username'] = username;
    data['avatarUser'] = avatarUser;
    data['totalMediaFile'] = totalMediaFile;
    data['totalComment'] = totalComment;
    if (mediafile != null) {
      data['mediafile'] = mediafile!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Mediafile {
  int? id;
  String? mediaFileName;
  String? mediaType;
  int? postId;
  int? userId;
  int? status;
  String? createdAt;
  String? updatedAt;

  Mediafile(
      {this.id,
      this.mediaFileName,
      this.mediaType,
      this.postId,
      this.userId,
      this.status,
      this.createdAt,
      this.updatedAt});

  Mediafile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    mediaFileName = json['media_file_name'];
    mediaType = json['media_type'];
    postId = json['post_id'];
    userId = json['user_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['media_file_name'] = mediaFileName;
    data['media_type'] = mediaType;
    data['post_id'] = postId;
    data['user_id'] = userId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Links {
  String? url;
  String? label;
  bool? active;

  Links({this.url, this.label, this.active});

  Links.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    label = json['label'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['label'] = label;
    data['active'] = active;
    return data;
  }
}
