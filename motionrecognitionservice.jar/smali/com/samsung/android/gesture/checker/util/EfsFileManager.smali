.class public Lcom/samsung/android/gesture/checker/util/EfsFileManager;
.super Ljava/lang/Object;
.source "EfsFileManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRSI_UTIL"

.field private static mEfsFileManager:Lcom/samsung/android/gesture/checker/util/EfsFileManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/checker/util/EfsFileManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->mEfsFileManager:Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->mEfsFileManager:Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->mEfsFileManager:Lcom/samsung/android/gesture/checker/util/EfsFileManager;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 50
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v1, "parent":Ljava/io/File;
    const-string v2, "MRSI_UTIL"

    if-eqz v1, :cond_0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "[EFS ] Building Parent"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    const-string v3, "[EFS ] New File"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "parent":Ljava/io/File;
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "efsName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    return-void

    .line 68
    :cond_3
    const-string v2, "None"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    return-void

    .line 71
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/gesture/checker/util/EfsFileManager;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v1    # "efsName":Ljava/lang/String;
    :goto_1
    return-void
.end method

.method read(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .local v1, "is":Ljava/io/InputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    move v3, v2

    .local v3, "n":I
    if-ltz v2, :cond_0

    .line 89
    int-to-char v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_0
    const-string v2, "MRSI_UTIL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[EFS ] Data = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v3    # "n":I
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    .end local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 86
    .restart local v1    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lcom/samsung/android/gesture/checker/util/EfsFileManager;
    .end local p1    # "path":Ljava/lang/String;
    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "this":Lcom/samsung/android/gesture/checker/util/EfsFileManager;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v0, "os":Ljava/io/OutputStream;
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 78
    .local v1, "byteArray":[B
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v1    # "byteArray":[B
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    .end local v0    # "os":Ljava/io/OutputStream;
    goto :goto_1

    .line 76
    .restart local v0    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/samsung/android/gesture/checker/util/EfsFileManager;
    .end local p1    # "path":Ljava/lang/String;
    .end local p2    # "data":Ljava/lang/String;
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    .end local v0    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/samsung/android/gesture/checker/util/EfsFileManager;
    .restart local p1    # "path":Ljava/lang/String;
    .restart local p2    # "data":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
