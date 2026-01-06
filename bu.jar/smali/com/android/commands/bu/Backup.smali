.class public final Lcom/android/commands/bu/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field static final TAG:Ljava/lang/String; = "bu"

.field static mArgs:[Ljava/lang/String;


# instance fields
.field mBackupManager:Landroid/app/backup/IBackupManager;

.field mNextArg:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/app/backup/IBackupManager;)V
    .locals 0
    .param p1, "backupManager"    # Landroid/app/backup/IBackupManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 43
    return-void
.end method

.method private doBackup(II)V
    .locals 22
    .param p1, "socketFd"    # I
    .param p2, "userId"    # I

    .line 84
    const-string v1, "IO error closing output for backup: "

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 85
    .local v2, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "saveApks":Z
    const/4 v3, 0x0

    .line 87
    .local v3, "saveObbs":Z
    const/4 v4, 0x0

    .line 88
    .local v4, "saveShared":Z
    const/4 v5, 0x0

    .line 89
    .local v5, "doEverything":Z
    const/4 v6, 0x0

    .line 90
    .local v6, "doWidgets":Z
    const/4 v7, 0x1

    .line 91
    .local v7, "allIncludesSystem":Z
    const/4 v8, 0x1

    .line 92
    .local v8, "doCompress":Z
    const/4 v9, 0x0

    move v13, v0

    move v14, v3

    move v15, v4

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    .line 95
    .end local v0    # "saveApks":Z
    .end local v3    # "saveObbs":Z
    .end local v4    # "saveShared":Z
    .end local v5    # "doEverything":Z
    .end local v6    # "doWidgets":Z
    .end local v7    # "allIncludesSystem":Z
    .end local v8    # "doCompress":Z
    .local v13, "saveApks":Z
    .local v14, "saveObbs":Z
    .local v15, "saveShared":Z
    .local v16, "doWidgets":Z
    .local v17, "doEverything":Z
    .local v18, "allIncludesSystem":Z
    .local v19, "doCompress":Z
    .local v20, "doKeyValue":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v3, "arg":Ljava/lang/String;
    const-string v4, "bu"

    if-eqz v0, :cond_11

    .line 96
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 97
    const-string v0, "-apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v13, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "-noapk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v13, 0x0

    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "-obb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const/4 v14, 0x1

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "-noobb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    const/4 v14, 0x0

    goto :goto_0

    .line 105
    :cond_3
    const-string v0, "-shared"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const/4 v15, 0x1

    goto :goto_0

    .line 107
    :cond_4
    const-string v0, "-noshared"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    const/4 v15, 0x0

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "-system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 110
    const/16 v18, 0x1

    goto :goto_0

    .line 111
    :cond_6
    const-string v0, "-nosystem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    const/16 v18, 0x0

    goto :goto_0

    .line 113
    :cond_7
    const-string v0, "-widgets"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    const/16 v16, 0x1

    goto :goto_0

    .line 115
    :cond_8
    const-string v0, "-nowidgets"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    const/16 v16, 0x0

    goto :goto_0

    .line 117
    :cond_9
    const-string v0, "-all"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 118
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 119
    :cond_a
    const-string v0, "-compress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 121
    :cond_b
    const-string v0, "-nocompress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 122
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 123
    :cond_c
    const-string v0, "-keyvalue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 125
    :cond_d
    const-string v0, "-nokeyvalue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 127
    :cond_e
    const-string v0, "-user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown backup flag "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto/16 :goto_0

    .line 137
    :cond_10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 141
    :cond_11
    if-eqz v17, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 142
    const-string v0, "-all passed for backup along with specific package names"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_12
    if-nez v17, :cond_13

    if-nez v15, :cond_13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 146
    const-string v0, "no backup packages supplied and neither -shared nor -all given"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 150
    :cond_13
    const/4 v5, 0x0

    .line 152
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 153
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .local v12, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    .local v0, "packArray":[Ljava/lang/String;
    move-object/from16 v6, p0

    :try_start_2
    iget-object v10, v6, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 155
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, [Ljava/lang/String;

    .line 154
    move/from16 v11, p2

    invoke-interface/range {v10 .. v21}, Landroid/app/backup/IBackupManager;->adbBackup(ILandroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    .end local v0    # "packArray":[Ljava/lang/String;
    if-eqz v12, :cond_15

    .line 161
    :try_start_3
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 164
    :goto_1
    goto :goto_6

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_7

    .line 156
    :catch_1
    move-exception v0

    goto :goto_2

    .line 159
    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    move-object v5, v0

    goto :goto_7

    .line 156
    :catch_2
    move-exception v0

    move-object/from16 v6, p0

    :goto_2
    move-object v5, v12

    goto :goto_3

    .line 159
    .end local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v0

    move-object/from16 v6, p0

    move-object v12, v5

    move-object v5, v0

    goto :goto_7

    .line 156
    :catch_3
    move-exception v0

    move-object/from16 v6, p0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    :try_start_4
    const-string v7, "Unable to invoke backup manager for backup"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v5, :cond_14

    .line 161
    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 164
    :goto_4
    goto :goto_5

    .line 162
    :catch_4
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 167
    :cond_14
    :goto_5
    move-object v12, v5

    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_15
    :goto_6
    return-void

    .line 159
    .end local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v0

    move-object v12, v5

    move-object v5, v0

    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v12    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_7
    if-eqz v12, :cond_16

    .line 161
    :try_start_6
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 164
    goto :goto_8

    .line 162
    :catch_5
    move-exception v0

    .line 163
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "e":Ljava/io/IOException;
    :cond_16
    :goto_8
    throw v5
.end method

.method private doRestore(II)V
    .locals 4
    .param p1, "socketFd"    # I
    .param p2, "userId"    # I

    .line 171
    const/4 v0, 0x0

    .line 173
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 174
    iget-object v1, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p2, v0}, Landroid/app/backup/IBackupManager;->adbRestore(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v0, :cond_0

    .line 180
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 181
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "bu"

    const-string v3, "Unable to invoke backup manager for restore"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    if-eqz v0, :cond_0

    .line 180
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 184
    :cond_0
    :goto_1
    return-void

    .line 178
    :goto_2
    if-eqz v0, :cond_1

    .line 180
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 181
    :goto_3
    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_3

    .line 183
    :cond_1
    :goto_4
    throw v1
.end method

.method private isBackupActiveForUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not access BackupManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bu"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 51
    const-string v0, "bu"

    :try_start_0
    new-instance v1, Lcom/android/commands/bu/Backup;

    invoke-direct {v1}, Lcom/android/commands/bu/Backup;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bu/Backup;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error running backup/restore"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "Finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 224
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    sget-object v0, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    aget-object v0, v0, v1

    .line 227
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bu/Backup;->mNextArg:I

    .line 228
    return-object v0
.end method

.method private parseUserId()I
    .locals 3

    .line 187
    const/4 v0, 0x0

    .local v0, "argNumber":I
    :goto_0
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 188
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "-user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 187
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "argNumber":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static showUsage()V
    .locals 3

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, " backup [-user USER_ID] [-f FILE] [-apk|-noapk] [-obb|-noobb] [-shared|-noshared]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "        [-all] [-system|-nosystem] [-keyvalue|-nokeyvalue] [PACKAGE...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 208
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     write an archive of the device\'s data to FILE [default=backup.adb]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     package list optional if -all/-shared are supplied"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "     -user: user ID for which to perform the operation (default - system user)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -apk/-noapk: do/don\'t back up .apk files (default -noapk)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -obb/-noobb: do/don\'t back up .obb files (default -noobb)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 213
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -shared|-noshared: do/don\'t back up shared storage (default -noshared)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -all: back up all installed applications"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -system|-nosystem: include system apps in -all (default -system)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "     -keyvalue|-nokeyvalue: include apps that perform key/value backups."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "         (default -nokeyvalue)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " restore [-user USER_ID] FILE       restore device contents from FILE"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 219
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 220
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/commands/bu/Backup;->mBackupManager:Landroid/app/backup/IBackupManager;

    const-string v1, "bu"

    if-nez v0, :cond_0

    .line 60
    const-string v0, "Can\'t obtain Backup Manager binder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Beginning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sput-object p1, Lcom/android/commands/bu/Backup;->mArgs:[Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->parseUserId()I

    move-result v0

    .line 68
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/commands/bu/Backup;->isBackupActiveForUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupManager is not available for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/android/commands/bu/Backup;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "backup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget v2, Landroid/system/OsConstants;->STDOUT_FILENO:I

    invoke-direct {p0, v2, v0}, Lcom/android/commands/bu/Backup;->doBackup(II)V

    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "restore"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sget v2, Landroid/system/OsConstants;->STDIN_FILENO:I

    invoke-direct {p0, v2, v0}, Lcom/android/commands/bu/Backup;->doRestore(II)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {}, Lcom/android/commands/bu/Backup;->showUsage()V

    .line 81
    :goto_0
    return-void
.end method
