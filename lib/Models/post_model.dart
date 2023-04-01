class PostModel {
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

  PostModel(
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

  PostModel.fromJson(Map<String, dynamic> json) {
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
