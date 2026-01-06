.class public Lcom/sec/vsim/util/FileWritter;
.super Ljava/lang/Object;
.source "FileWritter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/vsim/util/FileWritter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePathName"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    .line 17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "filePath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "fileName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/sec/vsim/util/FileWritter;->initFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method private initFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "path":Ljava/io/File;
    const-string v1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 27
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFile: filePath ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 32
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initFile: path created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    .line 37
    iget-object v1, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    sget-object v1, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initFile: file created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    goto :goto_1

    .line 46
    :cond_3
    sget-object v1, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "initFile: file already existed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "write: file does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 62
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/sec/vsim/util/FileWritter;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v0, v2

    .line 63
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 66
    sget-object v2, Lcom/sec/vsim/util/FileWritter;->LOG_TAG:Ljava/lang/String;

    const-string v3, "write: file write complete"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    nop

    .line 75
    nop

    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "ie":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    .end local v1    # "ie":Ljava/io/IOException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 74
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 71
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 76
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 78
    :catch_2
    move-exception v2

    .line 79
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    .end local v2    # "ie":Ljava/io/IOException;
    goto :goto_2

    .line 80
    :cond_1
    :goto_1
    goto :goto_2

    .line 69
    :catch_3
    move-exception v2

    .line 70
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_1

    .line 76
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 82
    :goto_2
    return v1

    .line 75
    :goto_3
    if-eqz v0, :cond_2

    .line 76
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 78
    :catch_4
    move-exception v2

    .line 79
    .local v2, "ie":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 80
    .end local v2    # "ie":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 81
    :goto_5
    throw v1
.end method
