.class public Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
.super Ljava/lang/Object;
.source "McfUWBRangingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$Builder;
    }
.end annotation


# static fields
.field public static final ANTENNA_PAIR_SELECTION_AOA_LANDSCAPE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANTENNA_PAIR_SELECTION_AOA_PORTRAIT:I = 0x1

.field public static final ANTENNA_PAIR_SELECTION_FOR_RANGING:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ANTENNA_PAIR_SELECTION_INVALID:I = -0x1

.field public static final AUTH_TYPE_APP:I = 0x3

.field public static final AUTH_TYPE_CONTACT:I = 0x1

.field public static final AUTH_TYPE_NONE:I = 0x0

.field public static final DATA_ENCRYPTION_TYPE_MCF:I = 0x0

.field public static final DATA_ENCRYPTION_TYPE_SMARTTHINGS:I = 0x1

.field public static final DEFAULT_RANGING_INTERVAL:I = 0x3e8

.field public static final DEVICE_ROLE_INITIATOR:I = 0x1

.field public static final DEVICE_ROLE_RESPONDER:I = 0x0

.field public static final DEVICE_TYPE_CONTROLEE:I = 0x0

.field public static final DEVICE_TYPE_CONTROLLER:I = 0x1

.field private static final KEY_ANTENNA_PAIR_SELECTION:Ljava/lang/String; = "antennaPairSelection"

.field private static final KEY_DEVICE_ROLE:Ljava/lang/String; = "deviceRole"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final KEY_ENABLE_DUAL_AOA:Ljava/lang/String; = "enableDualAoa"

.field private static final KEY_MAX_RR_RETRY:Ljava/lang/String; = "maxRrRetry"

.field private static final KEY_RANGING_AUTH_PAYLOAD:Ljava/lang/String; = "rangingAuthPayload"

.field private static final KEY_RANGING_AUTH_TYPE:Ljava/lang/String; = "rangingAuth"

.field private static final KEY_RANGING_ENCRYPT_TYPE:Ljava/lang/String; = "useAppEncrypt"

.field private static final KEY_RANGING_INTERVAL:Ljava/lang/String; = "rangingInterval"

.field private static final KEY_RANGING_TARGET:Ljava/lang/String; = "rangingTarget"

.field private static final KEY_SCREEN_OFF_SCAN:Ljava/lang/String; = "screenOffScan"

.field private static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field private static final KEY_SUBSCRIBERS_RANGING:Ljava/lang/String; = "subDevRanging"

.field public static final MAX_RANGING_INTERVAL:I = 0x7530

.field public static final MIN_RANGING_INTERVAL:I = 0x64


# instance fields
.field private final antennaPairSelection:I

.field private authPayloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final authType:I

.field private final bleSID:I

.field private final dataEncryptionType:I

.field private final deviceRole:I

.field private final deviceType:I

.field private final enableDualAoa:Z

.field private final maxRrRetry:I

.field private final needScreenOffRanging:Z

.field private final needToReportSubscribersRanging:Z

.field private final rangingInterval:I

.field private final targetDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIII)V
    .locals 0
    .param p1, "bleSID"    # I
    .param p2, "antennaPairSelection"    # I
    .param p3, "authType"    # I
    .param p5, "needToReportSubscribersRanging"    # Z
    .param p6, "needScreenOffRanging"    # Z
    .param p8, "enableDualAoa"    # Z
    .param p9, "rangingInterval"    # I
    .param p10, "maxRrRetry"    # I
    .param p11, "dataEncryptionType"    # I
    .param p12, "deviceRole"    # I
    .param p13, "deviceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "[B>;ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZIIIII)V"
        }
    .end annotation

    .line 280
    .local p4, "authPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .local p7, "targetDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    .line 282
    iput p2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    .line 283
    iput p3, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    .line 284
    iput-object p4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    .line 285
    iput-boolean p5, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    .line 286
    iput-boolean p6, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    .line 287
    iput-object p7, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    .line 288
    iput-boolean p8, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    .line 289
    iput p9, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    .line 290
    iput p10, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    .line 291
    iput p11, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    .line 292
    iput p12, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    .line 293
    iput p13, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    .line 294
    return-void
.end method

.method synthetic constructor <init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIIILcom/samsung/android/mcf/ranging/McfUWBRangingConfig$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/util/ArrayList;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/util/ArrayList;
    .param p8, "x7"    # Z
    .param p9, "x8"    # I
    .param p10, "x9"    # I
    .param p11, "x10"    # I
    .param p12, "x11"    # I
    .param p13, "x12"    # I
    .param p14, "x13"    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig$1;

    .line 18
    invoke-direct/range {p0 .. p13}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;-><init>(IIILjava/util/ArrayList;ZZLjava/util/ArrayList;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    .line 304
    const-string v0, "antennaPairSelection"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    .line 305
    const-string v0, "rangingAuth"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    .line 306
    const-string v0, "rangingAuthPayload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    .local v0, "authStringPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 310
    .local v3, "authString":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v3    # "authString":Ljava/lang/String;
    goto :goto_0

    .line 313
    :cond_0
    const-string v2, "subDevRanging"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    .line 314
    const-string v2, "screenOffScan"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    .line 315
    const-string v2, "rangingTarget"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    .line 316
    const-string v2, "enableDualAoa"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    .line 317
    const-string v2, "rangingInterval"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    .line 318
    const-string v2, "maxRrRetry"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    .line 319
    const-string v2, "useAppEncrypt"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    .line 320
    const-string v1, "deviceRole"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    .line 321
    const-string v1, "deviceType"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    .line 322
    return-void
.end method


# virtual methods
.method public getAntennaPairSelection()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public getAuthPayloads()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    return v0
.end method

.method public getBleSID()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 5

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "serviceID"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v1, "antennaPairSelection"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    const-string v1, "rangingAuth"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 355
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, "authStringPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 358
    .local v3, "authPayload":[B
    invoke-static {v3}, Lcom/samsung/android/mcf/common/Utils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v3    # "authPayload":[B
    goto :goto_0

    .line 360
    :cond_0
    const-string v2, "rangingAuthPayload"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    .end local v1    # "authStringPayloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const-string v1, "subDevRanging"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    const-string v1, "screenOffScan"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 365
    const-string v1, "rangingTarget"

    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 367
    :cond_2
    const-string v1, "enableDualAoa"

    iget-boolean v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    const-string v1, "rangingInterval"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 369
    const-string v1, "maxRrRetry"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 370
    const-string v1, "useAppEncrypt"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string v1, "deviceRole"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v1, "deviceType"

    iget v2, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    return-object v0
.end method

.method public getDataEncryption()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    return v0
.end method

.method public getDeviceRole()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    return v0
.end method

.method public getMaxRrRetry()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    return v0
.end method

.method public getRangingInterval()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    return v0
.end method

.method public getTargetDevices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isEnabledDualAoa()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    return v0
.end method

.method public isNeedScreenOffRanging()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    return v0
.end method

.method public isNeedToReportSubscribersRanging()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McfUWBRangingData{bleSID=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->bleSID:I

    .line 328
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", antennaPairSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->antennaPairSelection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authPayloads="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->authPayloads:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needSubscribersRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needToReportSubscribersRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needScreenOffRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->needScreenOffRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->targetDevices:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableDualAoa="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->enableDualAoa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rangingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->rangingInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRrRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->maxRrRetry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataEncryptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->dataEncryptionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->deviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    return-object v0
.end method
