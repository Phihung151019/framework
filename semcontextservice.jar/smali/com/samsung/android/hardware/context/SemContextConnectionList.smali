.class public Lcom/samsung/android/hardware/context/SemContextConnectionList;
.super Ljava/lang/Object;
.source "SemContextConnectionList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextConnectionList$SCPMReceiver;,
        Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;,
        Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
    }
.end annotation


# static fields
.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.SemContext"

.field public static final CALL_GESTURE_CATEGORY:Ljava/lang/String; = "CallGesture"

.field private static final CALL_INJECT_PKG:I = 0x547c1

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field private static final INIT_CALL_INJECT_PKG:I = 0x747c1

.field private static final INIT_PHYSICAL_INJECT_PKG:I = 0x647c1

.field private static final INIT_VM_INJECT_PKG:I = 0xb47c1

.field private static final INJECT_PROXIMITY_TIMEOUT:I = 0xa47c1

.field private static final ITEM:Ljava/lang/String; = "item"

.field private static final PHYSICAL_INJECT_PKG:I = 0x447c1

.field public static final PHYSICAL_PROX_CATEGORY:Ljava/lang/String; = "PhysicalProx"

.field public static final PROXIMITY_TIMEOUT_CATEGORY:Ljava/lang/String; = "TimeOut"

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "SemContext"

.field public static final SEMCONTEXT_CATEGORY:Ljava/lang/String; = "SemContext"

.field private static final TAG:Ljava/lang/String; = "SemContextConnectionList"

.field private static final TYPE_SENSORHUB:I = 0x10032

.field public static final VM_CATEGORY:Ljava/lang/String; = "VM"

.field private static final VM_INJECT_PKG:I = 0xc47c1


# instance fields
.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field public final SCPM_URI_SEMCONTEXT:Landroid/net/Uri;

.field private mBootCompleteReceiver:Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;

.field private mContext:Landroid/content/Context;

.field private mHubSensor:Landroid/hardware/Sensor;

.field private final mLock:Ljava/lang/Object;

.field private mSCPMReceiver:Lcom/samsung/android/hardware/context/SemContextConnectionList$SCPMReceiver;

.field mSemContextAllowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/SemContextConnectionList;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHubSensor(Lcom/samsung/android/hardware/context/SemContextConnectionList;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 109
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mLock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    .line 112
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/SemContext"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->SCPM_URI_SEMCONTEXT:Landroid/net/Uri;

    .line 113
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSemContextAllowList:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextConnectionList$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList$SCPMReceiver;-><init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSCPMReceiver:Lcom/samsung/android/hardware/context/SemContextConnectionList$SCPMReceiver;

    .line 75
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;-><init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mBootCompleteReceiver:Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10032

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    .line 82
    :cond_1
    return-void
.end method

.method private getSCPMPolicyItemFromDB()V
    .locals 11

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v0, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 301
    .local v4, "projection":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 302
    .local v8, "scpmpkg":Ljava/lang/String;
    const-string v0, "SemContextConnectionList"

    const-string v2, "getSCPMPolicyItemFromDB!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->SCPM_URI_SEMCONTEXT:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 305
    if-eqz v1, :cond_a

    .line 306
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 307
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 309
    .local v2, "item":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 310
    .local v3, "category":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 311
    .local v5, "data1":Ljava/lang/String;
    const-string v0, "SemContext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    move-object v8, v2

    .line 313
    iget-object v6, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSemContextAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    monitor-exit v6

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v8    # "scpmpkg":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/hardware/context/SemContextConnectionList;
    :try_start_2
    throw v0

    .line 316
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "projection":[Ljava/lang/String;
    .restart local v8    # "scpmpkg":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/hardware/context/SemContextConnectionList;
    :cond_1
    const-string v0, "PhysicalProx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CallGesture"

    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "VM"

    .line 318
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    const-string v0, "TimeOut"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 337
    .local v0, "timeout":I
    new-instance v6, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;

    const v7, 0xa47c1

    invoke-direct {v6, p0, v0, v7}, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;-><init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;II)V

    .line 338
    .local v6, "sInfo":Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
    iget-object v7, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v6}, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;->-$$Nest$fgetmInfo(Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 339
    const-string v7, "SemContextConnectionList"

    const-string v9, "Allow List Inject Error!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 335
    .end local v0    # "timeout":I
    .end local v6    # "sInfo":Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
    :cond_3
    :goto_1
    goto :goto_4

    .line 320
    :cond_4
    :goto_2
    const/4 v0, 0x0

    .line 321
    .local v0, "mode":I
    const-string v6, "PhysicalProx"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 322
    const v0, 0x447c1

    goto :goto_3

    .line 323
    :cond_5
    const-string v6, "CallGesture"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 324
    const v0, 0x547c1

    goto :goto_3

    .line 325
    :cond_6
    const-string v6, "VM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 326
    const v0, 0xc47c1

    .line 329
    :cond_7
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 330
    .local v6, "bytes":[B
    new-instance v7, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;

    array-length v9, v6

    invoke-direct {v7, p0, v9, v6, v0}, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;-><init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;I[BI)V

    .line 331
    .local v7, "sInfo":Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
    iget-object v9, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v7}, Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;->-$$Nest$fgetmInfo(Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 332
    const-string v9, "SemContextConnectionList"

    const-string v10, "Allow List Inject Error!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 343
    .end local v0    # "mode":I
    .end local v6    # "bytes":[B
    .end local v7    # "sInfo":Lcom/samsung/android/hardware/context/SemContextConnectionList$SContextInfo;
    :cond_8
    :goto_4
    sget-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_9

    .line 344
    const-string v0, "SemContextConnectionList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSCPMPolicyItemFromDB item = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", category = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , data1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v5    # "data1":Ljava/lang/String;
    :cond_9
    goto/16 :goto_0

    .line 348
    :cond_a
    const-string v0, "SemContextConnectionList"

    const-string v2, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    :cond_b
    if-eqz v1, :cond_c

    .line 356
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 355
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SemContextConnectionList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 355
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_c

    .line 356
    goto :goto_5

    .line 361
    :cond_c
    :goto_6
    return-void

    .line 355
    :goto_7
    if-eqz v1, :cond_d

    .line 356
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_d
    throw v0
.end method

.method private hasValidItemFromDB()Z
    .locals 17

    .line 212
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 213
    .local v2, "cursor":Landroid/database/Cursor;
    const-string v0, "item"

    const-string v3, "category"

    const-string v4, "data1"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 214
    .local v5, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 215
    .local v9, "scpmpkg":Ljava/lang/String;
    const/4 v10, 0x0

    .line 216
    .local v10, "initSemContext":Z
    const/4 v11, 0x0

    .line 217
    .local v11, "initPhysicalProx":Z
    const/4 v12, 0x0

    .line 218
    .local v12, "initCallGesture":Z
    const/4 v13, 0x0

    .line 219
    .local v13, "initProximityTimeOut":Z
    const/4 v14, 0x0

    .line 221
    .local v14, "initVm":Z
    const-string v0, "SemContextConnectionList"

    const-string v3, "hasValidItemFromDB!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v4

    :try_start_1
    iget-object v4, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->SCPM_URI_SEMCONTEXT:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v16, v6

    const/4 v6, 0x0

    move v15, v3

    move-object v3, v0

    :try_start_2
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 224
    if-eqz v2, :cond_7

    .line 225
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 227
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    .local v0, "item":Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "category":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, "data1":Ljava/lang/String;
    const-string v4, "PhysicalProx"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    const/4 v11, 0x1

    goto :goto_1

    .line 233
    :cond_0
    const-string v4, "CallGesture"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    const/4 v12, 0x1

    goto :goto_1

    .line 235
    :cond_1
    const-string v4, "SemContext"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    const/4 v10, 0x1

    goto :goto_1

    .line 237
    :cond_2
    const-string v4, "TimeOut"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 238
    const/4 v13, 0x1

    goto :goto_1

    .line 239
    :cond_3
    const-string v4, "VM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    const/4 v14, 0x1

    .line 242
    .end local v0    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v7    # "data1":Ljava/lang/String;
    :cond_4
    :goto_1
    goto :goto_0

    .line 226
    :cond_5
    const/4 v6, 0x1

    goto :goto_0

    .line 225
    :cond_6
    const/4 v6, 0x1

    goto :goto_2

    .line 245
    :cond_7
    const/4 v6, 0x1

    const-string v0, "SemContextConnectionList"

    const-string v3, "hasValidItemFromDB error, no database!!"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 251
    :goto_2
    if-eqz v2, :cond_8

    .line 252
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 247
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v6, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    move v15, v3

    goto :goto_4

    .line 251
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 247
    :catch_3
    move-exception v0

    move v15, v3

    move v6, v4

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    const-string v3, "SemContextConnectionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with contentResolver : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_8

    .line 252
    goto :goto_3

    .line 258
    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    .line 259
    iget-object v3, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSemContextAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    monitor-exit v3

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 265
    :cond_9
    :goto_6
    if-eqz v11, :cond_a

    .line 266
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 267
    .local v0, "intarray":[I
    aput v6, v0, v15

    .line 268
    const v3, 0x647c1

    aput v3, v0, v6

    .line 269
    iget-object v3, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    invoke-static {v3, v0}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 270
    .local v3, "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 271
    const-string v4, "SemContextConnectionList"

    const-string v7, "Init allow list Inject Error!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v0    # "intarray":[I
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_a
    if-eqz v12, :cond_b

    .line 275
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 276
    .restart local v0    # "intarray":[I
    aput v6, v0, v15

    .line 277
    const v3, 0x747c1

    aput v3, v0, v6

    .line 278
    iget-object v3, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    invoke-static {v3, v0}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 279
    .restart local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 280
    const-string v4, "SemContextConnectionList"

    const-string v7, "Init allow list Inject Error!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "intarray":[I
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_b
    if-eqz v14, :cond_c

    .line 284
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 285
    .restart local v0    # "intarray":[I
    aput v6, v0, v15

    .line 286
    const v3, 0xb47c1

    aput v3, v0, v6

    .line 287
    iget-object v3, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mHubSensor:Landroid/hardware/Sensor;

    invoke-static {v3, v0}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v3

    .line 288
    .restart local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    iget-object v4, v1, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 289
    const-string v4, "SemContextConnectionList"

    const-string v7, "Init allow list Inject Error!"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v0    # "intarray":[I
    .end local v3    # "info":Landroid/hardware/SensorAdditionalInfo;
    :cond_c
    if-nez v10, :cond_e

    if-nez v11, :cond_e

    if-nez v12, :cond_e

    if-nez v13, :cond_e

    if-eqz v14, :cond_d

    goto :goto_7

    :cond_d
    move v3, v15

    goto :goto_8

    :cond_e
    :goto_7
    move v3, v6

    :goto_8
    return v3

    .line 251
    :goto_9
    if-eqz v2, :cond_f

    .line 252
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_f
    throw v0
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .locals 10

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "cursorPolicy":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 180
    .local v2, "isNeedUpdate":Z
    sget-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    const-string v3, "SemContextConnectionList"

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 185
    if-eqz v1, :cond_2

    .line 186
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "policyName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "policyName":Ljava/lang/String;
    const-string v4, "policyVersion"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "policyVersion":Ljava/lang/String;
    const-string v5, "SemContext"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v2, 0x1

    .line 192
    goto :goto_1

    .line 194
    .end local v0    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 199
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 200
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 199
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 200
    goto :goto_2

    .line 204
    :cond_3
    :goto_3
    return v2

    .line 199
    :goto_4
    if-eqz v1, :cond_4

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_4
    throw v0
.end method

.method private isSCPMAvailable()Z
    .locals 3

    .line 170
    sget-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    .line 171
    const-string v0, "SemContextConnectionList"

    const-string v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 364
    const-string v0, "mSemContextAllowList:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSemContextAllowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 367
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .end local v2    # "app":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_0
    monitor-exit v0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSCPMAllowList(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    sget-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    if-eqz v0, :cond_0

    const-string v0, "SemContextConnectionList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->mSemContextAllowList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "pkg":Ljava/lang/String;
    sget-boolean v3, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    if-eqz v3, :cond_1

    const-string v3, "SemContextConnectionList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllowList packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 93
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit v0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSCPMParametersFromDB()V
    .locals 2

    .line 156
    sget-boolean v0, Lcom/samsung/android/hardware/context/SemContextConnectionList;->DEBUG_SCPM:Z

    const-string v1, "SemContextConnectionList"

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    return-void

    .line 162
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->getSCPMPolicyItemFromDB()V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "scpm doesn\'t find the Policy name for SemContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void
.end method
