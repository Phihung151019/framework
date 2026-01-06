.class public Lcom/samsung/android/transcode/info/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    }
.end annotation


# static fields
.field private static FrameInterval:I = 0x0

.field private static Framerate:I = 0x0

.field private static Height:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaInfo"

.field private static final VIDEO_FPS_BUF_COUNT:I = 0x5

.field private static Width:I

.field private static iFrameInterval:I

.field public static final sMediaExtractor:Landroid/media/MediaExtractor;

.field public static final sMetadataRetriever:Landroid/media/MediaMetadataRetriever;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    .line 49
    sput-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    .line 50
    const/16 v0, 0x1e

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 51
    const v0, 0x8235

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    .line 54
    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "do not instatiate"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFileInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .locals 20
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 86
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "0"

    new-instance v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;

    invoke-direct {v4}, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;-><init>()V

    .line 87
    .local v4, "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    const-string v5, "MediaInfo"

    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_4

    .line 88
    :cond_1
    :try_start_0
    invoke-static/range {p0 .. p2}, Lcom/samsung/android/transcode/info/MediaInfo;->newMetadataRetriever(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v6, "retriever":Landroid/media/MediaMetadataRetriever;
    const/16 v7, 0x12

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "width":Ljava/lang/String;
    const/16 v8, 0x13

    invoke-virtual {v6, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "height":Ljava/lang/String;
    const/16 v9, 0x18

    invoke-virtual {v6, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "rotation":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    .line 96
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sput v10, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    .line 97
    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    .line 98
    const/16 v10, 0x405

    invoke-virtual {v6, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "editedDuration":Ljava/lang/String;
    const/16 v11, 0x9

    invoke-virtual {v6, v11}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "duration":Ljava/lang/String;
    const/16 v12, 0x14

    invoke-virtual {v6, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 104
    .local v12, "bitrate":Ljava/lang/String;
    const/16 v13, 0x24

    invoke-virtual {v6, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    .line 106
    .local v13, "transfer":Ljava/lang/String;
    const/16 v14, 0xc

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    .line 108
    nop

    .line 109
    const/16 v14, 0xb

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Writer:Ljava/lang/String;

    .line 110
    nop

    .line 111
    invoke-static {v10}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 110
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 112
    invoke-static {v11}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 113
    invoke-static {v12}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    .line 114
    const/16 v0, 0x3f7

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "auth":Ljava/lang/String;
    const/16 v14, 0x3fe

    invoke-virtual {v6, v14}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, "recordingMode":Ljava/lang/String;
    const/16 v15, 0x403

    invoke-virtual {v6, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    .line 120
    .local v15, "hdr10bit":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "auth":Ljava/lang/String;
    .local v16, "auth":Ljava/lang/String;
    const/16 v0, 0x404

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "bitDepth":Ljava/lang/String;
    move-object/from16 v17, v0

    .end local v0    # "bitDepth":Ljava/lang/String;
    .local v17, "bitDepth":Ljava/lang/String;
    const/16 v0, 0x3fd

    invoke-virtual {v6, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "is360":Ljava/lang/String;
    move-object/from16 v18, v7

    .end local v7    # "width":Ljava/lang/String;
    .local v18, "width":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    move-object/from16 v19, v8

    .end local v8    # "height":Ljava/lang/String;
    .local v19, "height":Ljava/lang/String;
    const-string v8, "-1"

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    .line 125
    invoke-static {v14}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    .line 126
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 125
    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    .line 127
    invoke-static/range {v17 .. v17}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    .line 128
    invoke-static {v13}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    .line 129
    const-string v7, "yes"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    .line 130
    const-string v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    .line 131
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/info/MediaInfo;->getSEFSlowMotionInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V

    .line 132
    invoke-static {v2, v4, v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->updateSEFSlowMotionDuration(Landroid/content/Context;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    invoke-static {v4, v6}, Lcom/samsung/android/transcode/info/MediaInfo;->getLocationInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v0    # "is360":Ljava/lang/String;
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v10    # "editedDuration":Ljava/lang/String;
    .end local v11    # "duration":Ljava/lang/String;
    .end local v12    # "bitrate":Ljava/lang/String;
    .end local v13    # "transfer":Ljava/lang/String;
    .end local v14    # "recordingMode":Ljava/lang/String;
    .end local v15    # "hdr10bit":Ljava/lang/String;
    .end local v16    # "auth":Ljava/lang/String;
    .end local v17    # "bitDepth":Ljava/lang/String;
    .end local v18    # "width":Ljava/lang/String;
    .end local v19    # "height":Ljava/lang/String;
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_2
    goto :goto_1

    .line 88
    .restart local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_0
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .end local p0    # "filepath":Ljava/lang/String;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    throw v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    .end local v6    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v4    # "info":Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .restart local p0    # "filepath":Ljava/lang/String;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Width : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Width:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Height : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Height:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", RecordingMode : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Bitdepth :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitdepth:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", ColorTransfer : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->colorTransfer:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Author : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Author:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Is360 : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Is360:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", HDR10 :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->HDR10:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Duration : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", EditedDuration :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", MimeType :"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->MimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", Rotation : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Rotation:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",Bitrate : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Bitrate:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", IsLocationAvailable : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, v4, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid input file - can\'t get file info"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get MediaInfo filepath : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " or context : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", uri : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_2
    return-object v4
.end method

.method private static getLocationInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    .locals 5
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .param p1, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 200
    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 203
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 204
    .local v1, "lastIndex":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 205
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    const/16 v4, 0x2d

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 210
    .local v4, "index":I
    if-eq v4, v3, :cond_1

    if-nez v4, :cond_2

    .line 211
    :cond_1
    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 213
    :cond_2
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    .line 214
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    .line 215
    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->latitude:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->longitude:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->IsLocationAvailable:Z

    .line 217
    .end local v1    # "lastIndex":I
    .end local v4    # "index":I
    :cond_4
    return-void
.end method

.method private static getSEFSlowMotionInfo(Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Landroid/media/MediaMetadataRetriever;)V
    .locals 4
    .param p0, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .param p1, "retriever"    # Landroid/media/MediaMetadataRetriever;

    .line 154
    iget v0, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const/16 v0, 0x3ff

    invoke-virtual {p1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "sminfo":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 158
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "splitData":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 160
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    .line 162
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 163
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    .line 166
    .end local v1    # "splitData":[Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    if-nez v1, :cond_2

    .line 167
    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "fps":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    .line 171
    .end local v1    # "fps":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSEFSlowMotionInfo  NumOfSVCLayers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->NumOfSVCLayers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RecordingFramerate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0    # "sminfo":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static getTrackInfo(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Z)Landroid/media/MediaFormat;
    .locals 6
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isVideo"    # Z

    .line 221
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    .line 222
    .local v0, "trackinfo":Landroid/media/MediaFormat;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p0, :cond_6

    .line 223
    :cond_1
    const/4 v1, 0x0

    .line 225
    .local v1, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/transcode/info/MediaInfo;->newMediaExtractor(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;

    move-result-object v2

    move-object v1, v2

    .line 226
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 227
    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    .line 228
    .local v3, "format":Landroid/media/MediaFormat;
    const-string v4, "mime"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "mime":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 230
    const-string v5, "video/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    move-object v0, v3

    .line 232
    invoke-static {v1, v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V

    .line 233
    invoke-static {v3}, Lcom/samsung/android/transcode/info/MediaInfo;->setIFrameInterval(Landroid/media/MediaFormat;)V

    goto :goto_1

    .line 236
    :cond_2
    const-string v5, "audio/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 237
    move-object v0, v3

    .line 226
    .end local v3    # "format":Landroid/media/MediaFormat;
    .end local v4    # "mime":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v2    # "index":I
    :cond_4
    if-eqz v1, :cond_6

    .line 245
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    .line 244
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 241
    :catch_0
    move-exception v2

    .line 242
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_6

    .line 245
    goto :goto_2

    .line 244
    :goto_3
    if-eqz v1, :cond_5

    .line 245
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 247
    :cond_5
    throw v2

    .line 249
    .end local v1    # "extractor":Landroid/media/MediaExtractor;
    :cond_6
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackinfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method public static getVideoFrameInterval()I
    .locals 1

    .line 310
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    return v0
.end method

.method public static getVideoFramerate()I
    .locals 1

    .line 306
    sget v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    return v0
.end method

.method protected static isSlow120(II)Z
    .locals 1
    .param p0, "recordingMode"    # I
    .param p1, "recordingFps"    # I

    .line 177
    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/16 v0, 0x78

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static newMediaExtractor(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaExtractor;
    .locals 2
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMediaExtractor:Landroid/media/MediaExtractor;

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    :goto_0
    nop

    .line 77
    .local v0, "extractor":Landroid/media/MediaExtractor;
    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 82
    :goto_1
    return-object v0
.end method

.method private static newMetadataRetriever(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaMetadataRetriever;
    .locals 1
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 64
    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/transcode/info/MediaInfo;->sMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 65
    .local v0, "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 70
    :goto_1
    return-object v0
.end method

.method private static setFrameRateBySampleInterval(Landroid/media/MediaExtractor;)V
    .locals 18
    .param p0, "extractor"    # Landroid/media/MediaExtractor;

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "offset":I
    const-wide/16 v1, 0x0

    .line 274
    .local v1, "avgTime":J
    const-wide/16 v3, 0x0

    .line 275
    .local v3, "previousTime":J
    const/4 v5, 0x0

    .line 276
    .local v5, "frameCount":I
    const-string v6, "Calculate Framerate"

    const-string v7, "MediaInfo"

    invoke-static {v7, v6}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    sget v6, Lcom/samsung/android/transcode/info/MediaInfo;->Width:I

    sget v8, Lcom/samsung/android/transcode/info/MediaInfo;->Height:I

    mul-int/2addr v6, v8

    .line 278
    .local v6, "bufferSizeV":I
    if-lez v6, :cond_5

    .line 279
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 280
    .local v8, "dstBufV":Ljava/nio/ByteBuffer;
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 281
    .local v9, "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v11, 0x5

    if-gt v10, v11, :cond_1

    .line 282
    move-object/from16 v11, p0

    invoke-virtual {v11, v8, v0}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v12

    iput v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 283
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    .line 284
    .local v12, "presentationTimeUs":J
    invoke-virtual {v11}, Landroid/media/MediaExtractor;->advance()Z

    .line 285
    if-nez v10, :cond_0

    move-wide v3, v12

    goto :goto_1

    .line 286
    :cond_0
    sub-long v14, v12, v3

    add-long/2addr v1, v14

    .line 287
    move-wide v3, v12

    .line 288
    add-int/lit8 v5, v5, 0x1

    .line 281
    .end local v12    # "presentationTimeUs":J
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v11, p0

    .line 291
    .end local v10    # "i":I
    const-wide/16 v12, 0x0

    cmp-long v10, v1, v12

    if-lez v10, :cond_4

    if-lez v5, :cond_4

    .line 293
    int-to-long v12, v5

    div-long v12, v1, v12

    long-to-int v7, v12

    if-lez v7, :cond_2

    int-to-long v12, v5

    div-long v12, v1, v12

    long-to-int v7, v12

    goto :goto_2

    .line 294
    :cond_2
    const v7, 0x8235

    :goto_2
    sput v7, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 295
    const-wide/16 v12, 0x3e8

    div-long v14, v1, v12

    move-wide/from16 v16, v12

    int-to-long v12, v5

    div-long/2addr v14, v12

    div-long v12, v16, v14

    long-to-int v7, v12

    if-lez v7, :cond_3

    .line 296
    div-long v12, v1, v16

    int-to-long v14, v5

    div-long/2addr v12, v14

    div-long v12, v16, v12

    long-to-int v7, v12

    goto :goto_3

    :cond_3
    const/16 v7, 0x1e

    .line 297
    .local v7, "frameRate":I
    :goto_3
    sput v7, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    goto :goto_4

    .line 299
    .end local v7    # "frameRate":I
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fail to Calculate Framerate  avgTime :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", frameCount : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 278
    .end local v8    # "dstBufV":Ljava/nio/ByteBuffer;
    .end local v9    # "bufferInfoV":Landroid/media/MediaCodec$BufferInfo;
    :cond_5
    move-object/from16 v11, p0

    .line 303
    :goto_4
    return-void
.end method

.method private static setIFrameInterval(Landroid/media/MediaFormat;)V
    .locals 2
    .param p0, "videoFormat"    # Landroid/media/MediaFormat;

    .line 315
    :try_start_0
    const-string v0, "i-frame-interval"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIFrameInterval iFrameInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/android/transcode/info/MediaInfo;->iFrameInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaInfo"

    invoke-static {v1, v0}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private static setVideoFramerate(Landroid/media/MediaExtractor;Landroid/media/MediaFormat;)V
    .locals 3
    .param p0, "extractor"    # Landroid/media/MediaExtractor;
    .param p1, "videoFormat"    # Landroid/media/MediaFormat;

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "frameRate":I
    :try_start_0
    const-string v1, "frame-rate"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 259
    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 261
    invoke-static {p0}, Lcom/samsung/android/transcode/info/MediaInfo;->setFrameRateBySampleInterval(Landroid/media/MediaExtractor;)V

    goto :goto_1

    .line 263
    :cond_0
    sput v0, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    .line 264
    const v1, 0xf4240

    div-int/2addr v1, v0

    sput v1, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    .line 266
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFramerate Framerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/transcode/info/MediaInfo;->Framerate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FrameInterval : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/transcode/info/MediaInfo;->FrameInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaInfo"

    invoke-static {v2, v1}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private static updateSEFSlowMotionDuration(Landroid/content/Context;Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget v0, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    invoke-static {v0}, Lcom/samsung/android/transcode/util/SEFHelper;->isSEFVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Lcom/samsung/android/transcode/util/SEFHelper;

    invoke-direct {v0}, Lcom/samsung/android/transcode/util/SEFHelper;-><init>()V

    .line 185
    .local v0, "sh":Lcom/samsung/android/transcode/util/SEFHelper;
    invoke-virtual {v0, p2, p0, p3}, Lcom/samsung/android/transcode/util/SEFHelper;->initialize(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 186
    iget v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget-wide v2, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/transcode/util/SEFHelper;->extractSEFData(IJ)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 187
    iget-wide v1, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    .line 188
    .local v1, "duration":J
    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-static {v3, v4}, Lcom/samsung/android/transcode/info/MediaInfo;->isSlow120(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    .line 191
    :cond_0
    iget v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingMode:I

    iget v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->RecordingFramerate:I

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/samsung/android/transcode/util/SEFHelper;->checkSEFData(IIJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-wide v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->Duration:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/util/SEFHelper;->getConvertedTime(J)J

    move-result-wide v3

    div-long/2addr v3, v5

    iput-wide v3, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSEFSlowMotionDuration EditedDuration : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/samsung/android/transcode/info/MediaInfo$MediaFileInfo;->EditedDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaInfo"

    invoke-static {v4, v3}, Lcom/samsung/android/transcode/util/LogS;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v0    # "sh":Lcom/samsung/android/transcode/util/SEFHelper;
    .end local v1    # "duration":J
    :cond_1
    return-void
.end method
