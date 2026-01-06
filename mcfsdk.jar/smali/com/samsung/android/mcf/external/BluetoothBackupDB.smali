.class public Lcom/samsung/android/mcf/external/BluetoothBackupDB;
.super Ljava/lang/Object;
.source "BluetoothBackupDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    }
.end annotation


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "address"

.field private static final BONDSTATE_DB_ADDR_SWITCHED:I = 0x4

.field private static final BONDSTATE_DB_BONDED:I = 0x2

.field private static final BONDSTATE_DB_DELETED:I = 0x3

.field private static final BONDSTATE_DB_RESTORED:I = 0x1

.field private static final BONDSTATE_DB_UNBONDED:I = 0x0

.field private static final BOND_STATE:Ljava/lang/String; = "bond_state"

.field private static final MANUFACTURERDATA:Ljava/lang/String; = "manufacturerdata"

.field private static final TAG:Ljava/lang/String; = "BluetoothBackupDB"

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 81
    return v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong Index Name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bonded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;",
            ">;"
        }
    .end annotation

    .line 33
    const-string v1, "retrieveBackupDataFromDB "

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    .line 35
    .local v2, "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;>;"
    const-string v0, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 38
    .local v4, "uri":Landroid/net/Uri;
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 42
    :cond_0
    const-string v0, "bond_state == 2"

    .line 43
    .local v0, "clause_addrSwitched_restored_devices":Ljava/lang/String;
    const-string v9, "BluetoothBackupDB"

    if-nez p1, :cond_1

    .line 44
    const-string v3, "retrieveBackupDataFromDB"

    const-string v5, " query restored device"

    invoke-static {v9, v3, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "bond_state == 1 OR bond_state == 4"

    move-object v6, v0

    goto :goto_0

    .line 43
    :cond_1
    move-object v6, v0

    .line 49
    .end local v0    # "clause_addrSwitched_restored_devices":Ljava/lang/String;
    .local v6, "clause_addrSwitched_restored_devices":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "timestamp DESC"

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 52
    .local v3, "c":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 53
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " cursor count: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", Columns : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "address"

    invoke-static {v3, v0}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, "indexAddress":I
    const-string v5, "manufacturerdata"

    invoke-static {v3, v5}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 56
    .local v5, "indexMF":I
    const-string v7, "bond_state"

    invoke-static {v3, v7}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 58
    .local v7, "indexBondState":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 59
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_3

    .line 60
    new-instance v8, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    invoke-direct {v8}, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;-><init>()V

    .line 61
    .local v8, "tempDeviceProperty":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 62
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    .line 63
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v8, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    .line 65
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v10, " retrieveBackupDataFromDB backup "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v8, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    nop

    .end local v8    # "tempDeviceProperty":Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    goto :goto_1

    .line 49
    .end local v0    # "indexAddress":I
    .end local v5    # "indexMF":I
    .end local v7    # "indexBondState":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;>;"
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v6    # "clause_addrSwitched_restored_devices":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "bonded":Z
    :cond_2
    :goto_2
    throw v5

    .line 72
    .restart local v2    # "backupDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;>;"
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v6    # "clause_addrSwitched_restored_devices":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "bonded":Z
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 74
    .end local v3    # "c":Landroid/database/Cursor;
    :cond_4
    goto :goto_3

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    return-object v2

    .line 39
    .end local v6    # "clause_addrSwitched_restored_devices":Ljava/lang/String;
    :cond_5
    :goto_4
    return-object v2
.end method
