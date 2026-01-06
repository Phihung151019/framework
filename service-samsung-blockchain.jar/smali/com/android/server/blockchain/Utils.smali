.class public Lcom/android/server/blockchain/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_SUI_ABORT_MSG:Ljava/lang/String; = "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

.field public static final QC_TUISERVICE_PROCESS_NAME:Ljava/lang/String; = "com.qualcomm.qti.services.secureui"

.field private static final TAG:Ljava/lang/String; = "com.android.server.blockchain.Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 82
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/server/blockchain/Utils;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_1

    .line 85
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 81
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected static readFile(Ljava/lang/String;)[B
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .line 22
    const-string v0, "Error closing InputStream"

    const/4 v1, 0x0

    .line 23
    .local v1, "fileContent":[B
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 25
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v4, -0x1

    .line 26
    .local v4, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In readFile - Path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.server.blockchain.Utils"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Read - Length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v5, v5, [B

    move-object v1, v5

    .line 33
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    move v4, v5

    array-length v7, v1

    if-eq v5, v7, :cond_0

    .line 34
    const-string v5, "File Read Failed"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    const/4 v1, 0x0

    .line 41
    :cond_0
    nop

    .line 42
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    :cond_1
    :goto_0
    goto :goto_1

    .line 44
    :catch_0
    move-exception v5

    .line 45
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 37
    :catch_1
    move-exception v5

    .line 38
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_1

    .line 42
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 49
    :goto_1
    return-object v1

    .line 41
    :goto_2
    if-eqz v3, :cond_2

    .line 42
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 44
    :catch_2
    move-exception v7

    .line 45
    .local v7, "e":Ljava/io/IOException;
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 46
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    nop

    .line 47
    :goto_4
    throw v5
.end method

.method public static sendSecureUIAbortIntent(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const-string v0, "com.android.server.blockchain.Utils"

    const-string v1, "sendSecureUIAbortIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 96
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.qti.services.secureui.action.ACTION_SUI_ABORT_MSG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "com.qualcomm.qti.services.secureui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method

.method public static writeFile([BLjava/lang/String;)Z
    .locals 7
    .param p0, "fileContent"    # [B
    .param p1, "filePath"    # Ljava/lang/String;

    .line 54
    const-string v0, "Error closing OutputStream"

    const-string v1, "com.android.server.blockchain.Utils"

    const/4 v2, 0x0

    .line 55
    .local v2, "ret":Z
    const/4 v3, 0x0

    .line 56
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "file":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File Write - Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const/4 v2, 0x1

    .line 67
    nop

    .line 68
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_0
    :goto_0
    goto :goto_1

    .line 70
    :catch_0
    move-exception v5

    .line 71
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 63
    :catch_1
    move-exception v5

    .line 64
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .end local v5    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 74
    :goto_1
    return v2

    .line 67
    :goto_2
    if-eqz v3, :cond_1

    .line 68
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 70
    :catch_2
    move-exception v6

    .line 71
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 72
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 73
    :goto_4
    throw v5
.end method
