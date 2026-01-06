.class Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "TAController.java"


# static fields
.field private static final CMD_ABORT_MST:I = 0x3

.field private static final CMD_MOVE_SEC_OS_CORE0:I = 0x6

.field private static final CMD_MOVE_SEC_OS_CORE4:I = 0x5

.field private static final CMD_MST_OFF:I = 0x2

.field private static final CMD_MST_ON:I = 0x1

.field private static final CMD_RESET_MST:I = 0x4

.field private static final DEBUG:Z

.field private static final FILE_MIGRATE_SEC_OS:Ljava/lang/String; = "/sys/devices/system/sec_os_ctrl/migrate_os"

.field private static final FILE_MST_INTERRUPT:Ljava/lang/String; = "/dev/mst_ctrl"

.field private static final FILE_MST_POWER_ON_OFF:Ljava/lang/String; = "/sys/class/mstldo/mst_drv/transmit"

.field private static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field private mContext:Landroid/content/Context;

.field private mNative:Lcom/android/server/spay/PaymentTZNative;

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taId"    # I
    .param p3, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .line 49
    invoke-direct {p0}, Landroid/spay/ITAController$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 50
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxSendCmdSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxRecvRespSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    .line 53
    new-instance v2, Lcom/android/server/spay/PaymentTZNative;

    iget-object v4, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move v3, p2

    .end local p2    # "taId":I
    .local v3, "taId":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/spay/PaymentTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 54
    return-void
.end method

.method private makeSysCallInternal(I)Z
    .locals 10
    .param p1, "cmd"    # I

    .line 140
    const/4 v0, 0x0

    .line 143
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 144
    .local v1, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 146
    .local v2, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    const-string v4, "PaymentManagerService"

    packed-switch p1, :pswitch_data_0

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN Command ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v3

    .line 168
    :pswitch_0
    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 169
    .local v5, "filename":Ljava/lang/String;
    const-string v6, "L0"

    .line 170
    .local v6, "data":Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_1
    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 165
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "b0"

    .line 166
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_2
    const-string v5, "/dev/mst_ctrl"

    .line 161
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "0"

    .line 162
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_3
    const-string v5, "/dev/mst_ctrl"

    .line 157
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "1"

    .line 158
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_4
    const-string v5, "/sys/class/mstldo/mst_drv/transmit"

    .line 153
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "0"

    .line 154
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_5
    const-string v5, "/sys/class/mstldo/mst_drv/transmit"

    .line 149
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "1"

    .line 150
    .restart local v6    # "data":Ljava/lang/String;
    nop

    .line 176
    :goto_0
    sget-boolean v7, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writting \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" to -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 182
    new-instance v7, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 183
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v7

    .line 184
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    nop

    .line 193
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    goto :goto_1

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 199
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 200
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    goto :goto_2

    .line 202
    :catch_1
    move-exception v3

    .line 203
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 205
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 206
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 191
    :catchall_0
    move-exception v3

    goto :goto_7

    .line 185
    :catch_2
    move-exception v7

    .line 186
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writting \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to file -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    nop

    .line 192
    if-eqz v2, :cond_1

    .line 193
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 195
    :catch_3
    move-exception v4

    .line 196
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 197
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 199
    :goto_4
    if-eqz v1, :cond_2

    .line 200
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 202
    :catch_4
    move-exception v4

    .line 203
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 204
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    nop

    .line 188
    :goto_6
    return v3

    .line 192
    .end local v7    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v2, :cond_3

    .line 193
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 195
    :catch_5
    move-exception v4

    .line 196
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 197
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_8
    nop

    .line 199
    :goto_9
    if-eqz v1, :cond_4

    .line 200
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_a

    .line 202
    :catch_6
    move-exception v4

    .line 203
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 204
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_a
    nop

    .line 205
    :goto_b
    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/spay/CertInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    .local p1, "certFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "checkCertInfo"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 219
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::checkCertInfo: Lets fetch them if exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    .line 221
    .local v0, "certInfo":Landroid/spay/CertInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 222
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    .local v2, "certPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    .line 224
    .local v3, "certSign":[B
    iget-object v4, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v2    # "certPath":Ljava/lang/String;
    .end local v3    # "certSign":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public clearDeviceCertificates(Ljava/lang/String;)Z
    .locals 2
    .param p1, "certFolderPath"    # Ljava/lang/String;

    .line 211
    const-string v0, "clearDeviceCertificates"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8
    .param p1, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    const-string v0, "loadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 79
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::loadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    goto/16 :goto_4

    .line 80
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 81
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    return v0

    .line 83
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    move v3, v0

    .line 84
    .local v3, "fdInt":I
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_2

    .line 85
    :try_start_3
    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TA fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v2, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .local v4, "offset":J
    .local v6, "size":J
    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 89
    if-eqz p1, :cond_3

    .line 91
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 94
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    move-object p3, v0

    .line 93
    .local p3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .end local p3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 87
    return p2

    .line 89
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_2
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    move-object p2, v0

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .restart local v4    # "offset":J
    .restart local v6    # "size":J
    :goto_2
    if-eqz p1, :cond_4

    .line 91
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 94
    goto :goto_3

    .line 92
    :catch_1
    move-exception v0

    move-object p3, v0

    .line 93
    .restart local p3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .end local p3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .end local p0    # "this":Lcom/android/server/spay/TAController;
    .end local p1    # "pFd":Landroid/os/ParcelFileDescriptor;
    throw p2

    .line 97
    .end local v3    # "fdInt":I
    .restart local p0    # "this":Lcom/android/server/spay/TAController;
    .restart local p1    # "pFd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_3
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .restart local v4    # "offset":J
    .restart local v6    # "size":J
    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4
.end method

.method public makeSystemCall(I)Z
    .locals 7
    .param p1, "cmd"    # I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "process":Ljava/lang/Process;
    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string v2, "PaymentManagerService"

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "entered makeSystemCall in TAController - System Server process"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const-string v1, "makeSystemCall"

    invoke-static {v1}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    :try_start_0
    sget-boolean v3, Lcom/android/server/spay/TAController;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " ms"

    if-eqz v3, :cond_1

    .line 120
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makesystemcall - start time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    const-string v3, "makeSystemCall: failed to make system call"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v1

    .line 128
    :cond_2
    sget-boolean v3, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSystemCall: Successful, end time : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 3
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/spay/TAController;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    const-string v0, "processTACommand"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_1

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    .line 66
    .local v0, "result":Landroid/spay/TACommandResponse;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 67
    monitor-exit p0

    return-object v0

    .line 68
    .end local v0    # "result":Landroid/spay/TACommandResponse;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 70
    :cond_2
    const-string v0, "PaymentManagerService"

    const-string v1, "binder for cmd is died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public unloadTA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    const-string v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 104
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 106
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    .line 107
    monitor-exit p0

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
