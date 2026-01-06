.class final Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;
.super Landroid/os/Handler;
.source "UwbFactoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UwbFactoryHandler"
.end annotation


# instance fields
.field private mAoaArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentChannel:B

.field private mCurrentRangingCount:I

.field private mCurrentRxAntenna:B

.field private mCurrentSessionId:I

.field private mCurrentTxAntenna:B

.field private mDeviceMacAddress:S

.field private mDistance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDstMacAddress:S

.field private mFilterCount:I

.field private mIsAnchorUwbRangingOn:Z

.field private mIsEnabled:Z

.field private mIsReportResult:Z

.field private mIsUwbRangingOn:Z

.field private mMaxRangingCount:I

.field private mPdoaArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPerRxTimeout:I

.field private mRangingCallback:Landroid/uwb/RangingSession$Callback;

.field private mRangingErrorCount:I

.field private mRangingModeSessionObject:Ljava/lang/Object;

.field private mRangingSession:Landroid/uwb/RangingSession;

.field private mRssi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;


# direct methods
.method public static synthetic $r8$lambda$6r9YsvZ2DFLNZrUIx03Io4crv7I(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$initRangingSession$3(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IRzuBiOsAEQoHLInNKM_XychmJM(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$startRfLoopback$1()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Nz8TYri6K48UwjmSPcrU-GZJ9ls(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$testEseDoBind$4()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QCL7LNRqJ6K02PCU5smzrGBRt3Y(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$eseBindingCheck$5()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iHHgjYue8P-D2Nf4AufvYvWCRu4(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$testEseConnectivity$6()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jv33fQfC3rYcPJIA6ZKMHEU2b_g(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Z)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$setEnabled$7(Z)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kQEH9fkHckCSdEnigHATkxQF0wk(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$startPerRx$0()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oqyPEUa7d4hboDYW7Y3ytht2fjs(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;B)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->lambda$temporaryDoVcoPllCalibrationForNxp$2(B)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mAoaArr:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDistance(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDistance:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mFilterCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsReportResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsReportResult:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdoaArr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPdoaArr:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRangingErrorCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingErrorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingModeSessionObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Landroid/uwb/RangingSession;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRssi(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRssi:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSnr(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mSnr:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRangingCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRangingErrorCount(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingErrorCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Landroid/uwb/RangingSession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    .line 288
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsEnabled:Z

    .line 262
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    .line 263
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 264
    iput-byte v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    .line 265
    const/16 v1, 0x9

    iput-byte v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    .line 266
    const/16 v1, 0x1388

    iput v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPerRxTimeout:I

    .line 268
    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    .line 269
    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsAnchorUwbRangingOn:Z

    .line 270
    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsReportResult:Z

    .line 271
    iput-short p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 272
    iput-short v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 273
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    .line 274
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    .line 275
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mFilterCount:I

    .line 276
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingErrorCount:I

    .line 277
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPdoaArr:Ljava/util/List;

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mAoaArr:Ljava/util/List;

    .line 279
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDistance:Ljava/util/List;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRssi:Ljava/util/List;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mSnr:Ljava/util/List;

    .line 289
    return-void
.end method

.method private checkAntennaConnectionStatus()V
    .locals 2

    .line 2419
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2420
    return-void
.end method

.method private doVcoPllCalibration()V
    .locals 13

    .line 1322
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    .line 1323
    .local v0, "chipInfo":Ljava/lang/String;
    const-string v1, "SR100T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "SR200T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1329
    :cond_0
    const/4 v1, 0x1

    .line 1330
    .local v1, "vcoPllCalStatus":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v2, "vcoPllCalResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    .line 1332
    .local v3, "channelIdList":[B
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-byte v7, v3, v6

    .line 1333
    .local v7, "channelId":B
    const/4 v8, -0x1

    .line 1334
    .local v8, "calValue":I
    new-instance v9, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;

    invoke-direct {v9, v7}, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;-><init>(B)V

    .line 1336
    .local v9, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10, v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v10

    aget-byte v10, v10, v5

    .line 1337
    .local v10, "status":I
    if-eqz v10, :cond_1

    .line 1338
    const/4 v1, 0x0

    .line 1339
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DoVcoPllCalibration_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : respUci is null or size of respUci is zero"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UwbFactoryManager"

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1341
    :cond_1
    const/4 v8, 0x0

    .line 1343
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    .end local v7    # "channelId":B
    .end local v8    # "calValue":I
    .end local v9    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v10    # "status":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1346
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    array-length v5, v3

    if-eq v4, v5, :cond_3

    .line 1347
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v4

    const-string v5, "NG"

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1348
    return-void

    .line 1351
    :cond_3
    new-instance v4, Ljava/util/StringJoiner;

    const-string v5, ","

    invoke-direct {v4, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1352
    .local v4, "stringJoiner":Ljava/util/StringJoiner;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1353
    .local v6, "value":I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1354
    .end local v6    # "value":I
    goto :goto_2

    .line 1356
    :cond_4
    if-nez v1, :cond_5

    .line 1357
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NG,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_3

    .line 1359
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OK,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1361
    :goto_3
    return-void

    .line 1324
    .end local v1    # "vcoPllCalStatus":Z
    .end local v2    # "vcoPllCalResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "channelIdList":[B
    .end local v4    # "stringJoiner":Ljava/util/StringJoiner;
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->temporaryDoVcoPllCalibrationForNxp()V

    .line 1325
    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x9t
    .end array-data
.end method

.method private eseBindingCheck()Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    .locals 7

    .line 2256
    const-string v0, "UwbFactoryManager"

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2257
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2258
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2277
    .local v2, "eseGetBindingStatusTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2279
    const/4 v3, 0x2

    .line 2281
    .local v3, "status":I
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2289
    :goto_0
    goto :goto_1

    .line 2287
    :catch_0
    move-exception v4

    .line 2288
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 2285
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v4

    .line 2286
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2282
    :catch_2
    move-exception v4

    .line 2283
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2284
    const-string v5, "testEseBindingCheck: Timeout occurred"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 2290
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2291
    if-eqz v3, :cond_0

    .line 2292
    const-string v4, "testEseBindingCheck: Status Failed"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingCheckResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    move-result-object v0

    return-object v0
.end method

.method private getPdoaOffset(B)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    .locals 9
    .param p1, "channelId"    # B

    .line 2172
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/samsung/uwb/support/uci/cmd/GetDeviceCalibrationCommand;-><init>(BB)V

    .line 2173
    .local v0, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v1

    .line 2174
    .local v1, "respUci":[B
    const/4 v2, 0x0

    const-string v3, "UwbFactoryManager"

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    aget-byte v5, v1, v4

    if-eqz v5, :cond_0

    goto :goto_0

    .line 2179
    :cond_0
    new-instance v5, Lcom/samsung/uwb/support/uci/UciPacket;

    .line 2180
    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v6

    invoke-virtual {v0}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v7

    const/4 v8, 0x2

    invoke-direct {v5, v8, v6, v7, v1}, Lcom/samsung/uwb/support/uci/UciPacket;-><init>(BBB[B)V

    invoke-virtual {v5}, Lcom/samsung/uwb/support/uci/UciPacket;->parse()Lcom/samsung/uwb/support/uci/UciPacket;

    move-result-object v5

    .line 2181
    .local v5, "respUciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    instance-of v6, v5, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;

    if-nez v6, :cond_1

    .line 2182
    const-string v4, "getPdoaOffset: GetDeviceCalibrationResponse not matched"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-object v2

    .line 2186
    :cond_1
    move-object v2, v5

    check-cast v2, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;

    invoke-virtual {v2}, Lcom/samsung/uwb/support/uci/rsp/GetDeviceCalibrationResponse;->getTlvParams()Ljava/util/List;

    move-result-object v2

    .line 2187
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    .line 2188
    .local v2, "pdoaOffsetCalib":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    return-object v2

    .line 2175
    .end local v2    # "pdoaOffsetCalib":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    .end local v5    # "respUciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    :cond_2
    :goto_0
    const-string v4, "getPdoaOffset: Get PDoA Offset failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    return-object v2
.end method

.method private initRangingSession(I)V
    .locals 14
    .param p1, "sessionId"    # I

    .line 1460
    const-string v0, "UwbFactoryManager"

    const/4 v1, 0x1

    iput-short v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 1461
    const/16 v2, 0xb

    iput-short v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 1463
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1464
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-short v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 1465
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1466
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1468
    .local v3, "deviceMacAddress":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1469
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-short v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 1470
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1471
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 1472
    .local v4, "dstMacAddress":[B
    const/16 v5, 0x960

    .line 1473
    .local v5, "slotDuration":S
    const/16 v6, 0x28

    .line 1474
    .local v6, "rangingInterval":S
    const/4 v7, 0x0

    .line 1476
    .local v7, "stsIndex":I
    new-instance v8, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v8}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    .line 1477
    invoke-virtual {v8, p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1478
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1479
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1480
    const/16 v10, 0x9

    invoke-virtual {v8, v10}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setChannelNumber(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1481
    invoke-static {v3}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    new-instance v11, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$2;

    invoke-direct {v11, p0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$2;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;[B)V

    .line 1482
    invoke-virtual {v8, v11}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1485
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceRole(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1486
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1487
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMultiNodeMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1488
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setFcsType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1489
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRframeConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1490
    invoke-virtual {v8, v10}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleCodeIndex(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1491
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSfdId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1492
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPsduDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1493
    invoke-virtual {v8, v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleDuration(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1494
    invoke-virtual {v8, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSlotDurationRstu(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1495
    invoke-virtual {v8, v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingIntervalMs(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1496
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSlotsPerRangingRound(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1497
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsTxAdaptivePayloadPowerEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1498
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPrfMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1499
    invoke-virtual {v8, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMacAddressMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    .line 1500
    invoke-virtual {v8, v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsSegmentCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 1501
    invoke-virtual {v8, v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setVendorId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    const/4 v8, 0x6

    new-array v8, v8, [B

    fill-array-data v8, :array_1

    .line 1502
    invoke-virtual {v2, v8}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStaticStsIV([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    sget-object v8, Lcom/google/uwb/support/fira/FiraParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 1503
    invoke-virtual {v2, v8}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setProtocolVersion(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    .line 1504
    const-wide/16 v10, 0x0

    invoke-virtual {v2, v10, v11}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRangingErrorStreakTimeoutMs(J)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    .line 1505
    invoke-virtual {v2, v9}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setInBandTerminationAttemptCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    .line 1506
    invoke-virtual {v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v2

    .line 1508
    .local v2, "firaOpenSessionParams":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    if-nez v8, :cond_0

    .line 1509
    new-instance v8, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;

    invoke-direct {v8, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$3;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    iput-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    .line 1630
    :cond_0
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingModeSessionObject:Ljava/lang/Object;

    .line 1631
    const/4 v8, 0x2

    .line 1632
    .local v8, "status":I
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 1633
    .local v9, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v10, Ljava/util/concurrent/FutureTask;

    new-instance v11, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)V

    invoke-direct {v10, v11}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1651
    .local v10, "openSessionTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1653
    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v11

    .line 1661
    :goto_0
    goto :goto_1

    .line 1659
    :catch_0
    move-exception v11

    .line 1660
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v11}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 1657
    .end local v11    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v11

    .line 1658
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v11    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1654
    :catch_2
    move-exception v11

    .line 1655
    .local v11, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1656
    const-string v12, "openTestModeSession: Timeout occurred"

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v11    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 1662
    :goto_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingModeSessionObject:Ljava/lang/Object;

    .line 1664
    if-eqz v8, :cond_1

    .line 1665
    const-string v1, "MSG_TEST_RANGING_ON: openRangingSession Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 1668
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    .line 1669
    iput p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1673
    :goto_2
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private initTestModeSession()Z
    .locals 9

    .line 1090
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    .line 1091
    iput-short v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 1092
    const/4 v1, 0x1

    iput-short v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 1094
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1095
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-short v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 1096
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1097
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 1099
    .local v3, "deviceMacAddress":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 1100
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-short v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 1101
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1102
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 1104
    .local v4, "dstMacAddress":[B
    new-instance v5, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    invoke-direct {v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;-><init>()V

    iget v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    .line 1105
    invoke-virtual {v5, v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1106
    const/16 v6, 0xd0

    invoke-virtual {v5, v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSessionType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1107
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1108
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setChannelNumber(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1109
    invoke-static {v3}, Landroid/uwb/UwbAddress;->fromBytes([B)Landroid/uwb/UwbAddress;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceAddress(Landroid/uwb/UwbAddress;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;

    invoke-direct {v7, p0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$1;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;[B)V

    .line 1110
    invoke-virtual {v5, v7}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDestAddressList(Ljava/util/List;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1113
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceRole(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1114
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setDeviceType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1115
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMultiNodeMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1116
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setFcsType(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1117
    invoke-virtual {v5, v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setRframeConfig(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1118
    invoke-virtual {v5, v6}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleCodeIndex(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1119
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setAoaResultRequest(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1120
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setSfdId(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1121
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPsduDataRate(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1122
    invoke-virtual {v5, v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPreambleDuration(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1123
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setIsTxAdaptivePayloadPowerEnabled(Z)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1124
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setPrfMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1125
    invoke-virtual {v5, v0}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setMacAddressMode(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    .line 1126
    invoke-virtual {v5, v1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStsSegmentCount(I)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v5

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 1127
    invoke-virtual {v5, v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setVendorId([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    const/4 v5, 0x6

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    .line 1128
    invoke-virtual {v2, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setStaticStsIV([B)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/uwb/support/fira/FiraParams;->PROTOCOL_VERSION_1_1:Lcom/google/uwb/support/fira/FiraProtocolVersion;

    .line 1129
    invoke-virtual {v2, v5}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->setProtocolVersion(Lcom/google/uwb/support/fira/FiraProtocolVersion;)Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;

    move-result-object v2

    .line 1130
    invoke-virtual {v2}, Lcom/google/uwb/support/fira/FiraOpenSessionParams$Builder;->build()Lcom/google/uwb/support/fira/FiraOpenSessionParams;

    move-result-object v2

    .line 1132
    .local v2, "firaOpenSessionParams":Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    new-instance v5, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    invoke-direct {v5}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;-><init>()V

    .line 1133
    const/16 v6, 0x3e8

    invoke-virtual {v5, v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setNumOfPackets(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1134
    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTGap(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1135
    const/16 v6, 0x1c2

    invoke-virtual {v5, v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1136
    const/16 v6, 0x2ee

    invoke-virtual {v5, v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTWin(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1137
    invoke-virtual {v5, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setRandomPsduSize(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1138
    invoke-virtual {v5, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setPhrRangingBit(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1139
    invoke-virtual {v5, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setRmarkerTxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1140
    invoke-virtual {v5, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setRmarkerRxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1141
    invoke-virtual {v5, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setStsIndexAutoInc(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v5

    .line 1145
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v5

    .line 1147
    .local v5, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    new-instance v6, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    .line 1148
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setRssiAverageFilterCount(I)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v6

    .line 1149
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v6

    .line 1151
    .local v6, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v7

    invoke-virtual {v7, v2, v5, v6}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->openTestModeSession(Lcom/google/uwb/support/fira/FiraOpenSessionParams;Ljava/util/List;Ljava/util/List;)I

    move-result v7

    .line 1152
    .local v7, "res":I
    if-eqz v7, :cond_0

    .line 1153
    const-string v1, "UwbFactoryManager"

    const-string v8, "initTestModeSession: openTestModeSession Failed"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v0

    .line 1156
    :cond_0
    return v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private synthetic lambda$eseBindingCheck$5()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2260
    const/4 v0, 0x2

    .line 2261
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2262
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmSeBindingCheckResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;)V

    .line 2263
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCheckCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCheckCommand;-><init>()V

    .line 2264
    .local v2, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 2265
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 2266
    const-string v4, "UwbFactoryManager"

    const-string v5, "testEseBindingCheck: eSE Binding Check Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2270
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 2271
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingCheckResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2272
    const/4 v0, 0x0

    .line 2274
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2275
    .end local v2    # "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v3    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$initRangingSession$3(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;
    .locals 6
    .param p1, "firaOpenSessionParams"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1635
    const/4 v0, 0x2

    .line 1636
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingModeSessionObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1637
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    .line 1639
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 1640
    .local v2, "callbackExecutor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Landroid/uwb/UwbManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    invoke-virtual {v3, v4, v2, v5}, Landroid/uwb/UwbManager;->openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;

    .line 1642
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingModeSessionObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1643
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz v3, :cond_0

    .line 1644
    const/4 v0, 0x0

    goto :goto_0

    .line 1646
    :cond_0
    const-string v3, "UwbFactoryManager"

    const-string v4, "mRangingSession is null so need to check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1649
    .end local v2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$setEnabled$7(Z)Ljava/lang/Integer;
    .locals 4
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2744
    const/4 v0, 0x2

    .line 2745
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getWaitObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2746
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Landroid/uwb/UwbManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    .line 2747
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getWaitObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2748
    if-eqz p1, :cond_0

    .line 2749
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2750
    const/4 v0, 0x0

    goto :goto_0

    .line 2753
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getState()I

    move-result v2

    if-nez v2, :cond_1

    .line 2754
    const/4 v0, 0x0

    .line 2757
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2758
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$startPerRx$0()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1165
    const/4 v0, 0x2

    .line 1166
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1167
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/rftest/TestPerRxData;)V

    .line 1168
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v2

    const-string v3, "ABCDABCD"

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->startTestModeSession(I[B)I

    move-result v2

    .line 1169
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 1170
    const-string v3, "UwbFactoryManager"

    const-string v4, "startPerRx: startTestModeSession Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    .line 1175
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    goto :goto_0

    .line 1176
    :catch_0
    move-exception v3

    .line 1177
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1180
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1181
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getStatus()I

    move-result v3

    move v0, v3

    goto :goto_1

    .line 1183
    :cond_1
    const-string v3, "UwbFactoryManager"

    const-string v4, "mTestRxPacketErrorRateResult is null so need to check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1186
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private synthetic lambda$startRfLoopback$1()Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1258
    const/4 v0, 0x2

    .line 1259
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1260
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;)V

    .line 1261
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v2

    const-string v3, "ABCDABCD"

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->startTestModeSession(I[B)I

    move-result v2

    .line 1262
    .local v2, "result":I
    if-eqz v2, :cond_0

    .line 1263
    const-string v3, "UwbFactoryManager"

    const-string v4, "MSG_TEST_RF_LOOPBACK: startTestModeSession Failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1267
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 1268
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1269
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->getStatus()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 1271
    :cond_1
    const-string v3, "UwbFactoryManager"

    const-string v4, "mTestRfLoopbackResult is null so need to check"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 1274
    .end local v2    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$temporaryDoVcoPllCalibrationForNxp$2(B)Ljava/lang/Integer;
    .locals 7
    .param p1, "channelId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1377
    const/4 v0, 0x2

    .line 1378
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1379
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;[B)V

    .line 1380
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;

    invoke-direct {v2, p1}, Lcom/samsung/uwb/support/uci/cmd/DoVcoPllCalibrationCommand;-><init>(B)V

    .line 1382
    .local v2, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 1383
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 1384
    const-string v4, "UwbFactoryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temporaryDoVcoPllCalibrationForNxp: VcoPLlCal_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1388
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    .line 1389
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1390
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v5

    aget-byte v4, v5, v4

    move v0, v4

    .line 1392
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 1393
    .end local v2    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v3    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$testEseConnectivity$6()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2336
    const/4 v0, 0x2

    .line 2337
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2338
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmSeConnectivityTestResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;)V

    .line 2339
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseConnectivityCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseConnectivityCommand;-><init>()V

    .line 2340
    .local v2, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 2341
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 2342
    const-string v4, "UwbFactoryManager"

    const-string v5, "MSG_TEST_ESE_CONNECTIVITY: eSE Connectivity Test Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2346
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 2347
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeConnectivityTestResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2348
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeConnectivityTestResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;->getStatus()I

    move-result v4

    move v0, v4

    .line 2350
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2351
    .end local v2    # "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v3    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private synthetic lambda$testEseDoBind$4()Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2196
    const/4 v0, 0x2

    .line 2197
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2198
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeBindingResultData;)V

    .line 2199
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCommand;

    invoke-direct {v2}, Lcom/samsung/uwb/support/uci/cmd/UwbEseBindingCommand;-><init>()V

    .line 2200
    .local v2, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 2201
    .local v3, "result":I
    if-eqz v3, :cond_0

    .line 2202
    const-string v4, "UwbFactoryManager"

    const-string v5, "testEseDoBind: eSE Do Bind Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2206
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 2207
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2208
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getStatus()I

    move-result v4

    move v0, v4

    .line 2210
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    monitor-exit v1

    return-object v4

    .line 2211
    .end local v2    # "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v3    # "result":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setChannel(B)Z
    .locals 7
    .param p1, "channelId"    # B

    .line 1878
    iput-byte p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    .line 1879
    new-instance v0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;-><init>()V

    iget-byte v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    .line 1880
    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setChannelNumber(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .line 1882
    .local v0, "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v1

    .line 1883
    .local v1, "sessionToken":I
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1884
    .local v2, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 1885
    .local v3, "status":I
    if-eqz v3, :cond_0

    .line 1886
    const-string v5, "UwbFactoryManager"

    const-string v6, "setChannel: SessionSetAppConfigCommand Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    return v4

    .line 1889
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method private declared-synchronized setEnabled(Z)I
    .locals 7
    .param p1, "flag"    # Z

    monitor-enter p0

    .line 2732
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Landroid/uwb/UwbManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/uwb/UwbManager;->isUwbEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getReason()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 2734
    monitor-exit p0

    return v1

    .line 2736
    .end local p0    # "this":Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->setExpectedState(I)V

    .line 2738
    const/4 v0, 0x2

    .line 2739
    .local v0, "status":I
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2740
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->setWaitObject(Ljava/lang/Object;)V

    .line 2741
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 2742
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Z)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2760
    .local v3, "setUwbEnabledTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2763
    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v4

    .line 2769
    goto :goto_0

    .line 2767
    :catch_0
    move-exception v4

    .line 2768
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2764
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2765
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2766
    const-string v5, "UwbFactoryManager"

    const-string v6, "setEnabled: Timeout occurred"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    nop

    .line 2770
    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->clearWaitObject()V

    .line 2772
    if-eqz v0, :cond_2

    .line 2773
    const-string v4, "UwbFactoryManager"

    const-string v5, "setEnabled: setEnabled is Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2774
    const/4 v0, 0x2

    .line 2777
    :cond_2
    monitor-exit p0

    return v0

    .line 2731
    .end local v0    # "status":I
    .end local v1    # "object":Ljava/lang/Object;
    .end local v2    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "setUwbEnabledTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local p1    # "flag":Z
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private setPdoaOffset(BLcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;)Z
    .locals 3
    .param p1, "channelId"    # B
    .param p2, "pdoaOffsetCalib"    # Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    .line 2162
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    invoke-direct {v0, p1, p2}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2163
    .local v0, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 2164
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 2165
    return v2

    .line 2167
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private setPreambleCode(B)Z
    .locals 7
    .param p1, "preambleCode"    # B

    .line 1894
    new-instance v0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;-><init>()V

    .line 1895
    invoke-virtual {v0, p1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setPreambleCodeIndex(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v0

    .line 1896
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .line 1897
    .local v0, "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v1

    .line 1898
    .local v1, "sessionToken":I
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4, v0}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1899
    .local v2, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    .line 1900
    .local v3, "status":I
    if-eqz v3, :cond_0

    .line 1901
    const-string v5, "UwbFactoryManager"

    const-string v6, "setPreambleCode: SessionSetAppConfigCommand Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return v4

    .line 1904
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method private setRfLoopbackAntenna(Ljava/lang/String;)Z
    .locals 9
    .param p1, "sData"    # Ljava/lang/String;

    .line 1796
    const-string v0, "UwbFactoryManager"

    const/4 v1, 0x0

    .line 1798
    .local v1, "antennaCaseNo":I
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    .end local v1    # "antennaCaseNo":I
    .local v3, "antennaCaseNo":I
    nop

    .line 1806
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 1807
    iput-byte v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1808
    iput-byte v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    goto :goto_0

    .line 1809
    :cond_0
    const/4 v6, 0x4

    if-ne v3, v4, :cond_1

    .line 1810
    iput-byte v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1811
    iput-byte v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    goto :goto_0

    .line 1812
    :cond_1
    if-ne v3, v1, :cond_2

    .line 1813
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1814
    iput-byte v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    goto :goto_0

    .line 1815
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1816
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1817
    iput-byte v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    goto :goto_0

    .line 1818
    :cond_3
    const/4 v1, 0x5

    if-ne v3, v1, :cond_5

    .line 1819
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1820
    iput-byte v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    .line 1826
    :goto_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    iget-byte v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    new-array v6, v5, [B

    aput-byte v4, v6, v2

    .line 1827
    invoke-virtual {v1, v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v1

    iget-byte v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    new-array v6, v5, [B

    aput-byte v4, v6, v2

    .line 1828
    invoke-virtual {v1, v2, v6}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v1

    .line 1829
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v1

    .line 1831
    .local v1, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v4

    iget v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v4, v6}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v4

    .line 1832
    .local v4, "sessionToken":I
    new-instance v6, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    int-to-long v7, v4

    invoke-direct {v6, v7, v8, v1}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1834
    .local v6, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v7

    aget-byte v7, v7, v2

    .line 1835
    .local v7, "status":I
    if-eqz v7, :cond_4

    .line 1836
    const-string v5, "MSG_TEST_RF_LOOPBACK: SessionSetVendorAppConfigCommand Failed"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    return v2

    .line 1839
    :cond_4
    return v5

    .line 1822
    .end local v1    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v4    # "sessionToken":I
    .end local v6    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v7    # "status":I
    :cond_5
    const-string v1, "MSG_TEST_RF_LOOPBACK: Undefined ANT Pair"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    return v5

    .line 1799
    .end local v3    # "antennaCaseNo":I
    .local v1, "antennaCaseNo":I
    :catch_0
    move-exception v3

    .line 1800
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "MSG_TEST_RF_LOOPBACK: Exception occurred"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1802
    return v2
.end method

.method private setRframeConfg(B)Z
    .locals 8
    .param p1, "rframeConfig"    # B

    .line 1909
    const/4 v0, 0x1

    .line 1910
    .local v0, "numOfSegment":B
    if-nez p1, :cond_0

    .line 1911
    const/4 v0, 0x0

    .line 1914
    :cond_0
    new-instance v1, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;-><init>()V

    .line 1915
    invoke-virtual {v1, p1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setRframeConfig(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v1

    .line 1916
    invoke-virtual {v1, v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setNumberOfStsSegments(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v1

    .line 1917
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v1

    .line 1918
    .local v1, "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v2, v3}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v2

    .line 1919
    .local v2, "sessionToken":I
    new-instance v3, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5, v1}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1920
    .local v3, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    .line 1921
    .local v4, "status":I
    if-eqz v4, :cond_1

    .line 1922
    const-string v6, "UwbFactoryManager"

    const-string v7, "setRframeConfg: SessionSetAppConfigCommand Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    return v5

    .line 1925
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method private setRxAntenna(Ljava/lang/String;)Z
    .locals 13
    .param p1, "sData"    # Ljava/lang/String;

    .line 1738
    const/4 v0, 0x0

    .line 1739
    .local v0, "rxAntMode":B
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 1741
    .local v1, "noOfRxAnts":I
    new-array v2, v1, [B

    .line 1742
    .local v2, "rxAntPairs":[B
    const/4 v3, 0x0

    .line 1743
    .local v3, "idx":I
    const-string v4, "RX_ANT_4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1744
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .local v4, "idx":I
    const/4 v5, 0x5

    aput-byte v5, v2, v3

    .line 1745
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    move v3, v4

    .line 1747
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_0
    const-string v4, "RX_ANT_3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1748
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x4

    aput-byte v5, v2, v3

    .line 1749
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    move v3, v4

    .line 1751
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_1
    const-string v4, "RX_ANT_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1752
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x3

    aput-byte v5, v2, v3

    .line 1753
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    move v3, v4

    .line 1755
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_2
    const-string v4, "RX_ANT_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1756
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    const/4 v5, 0x2

    aput-byte v5, v2, v3

    .line 1757
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    move v3, v4

    .line 1759
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_3
    const-string v4, "RX_ANT_0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1760
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    aput-byte v5, v2, v3

    .line 1761
    iput-byte v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRxAntenna:B

    move v3, v4

    .line 1763
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_4
    const-string v4, "UwbFactoryManager"

    const/4 v6, 0x0

    if-eq v3, v1, :cond_5

    .line 1764
    const-string v5, "setRxAntenna: Undefined Rx ANT"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return v6

    .line 1768
    :cond_5
    new-instance v7, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v7}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    .line 1769
    invoke-virtual {v7, v0, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v7

    .line 1770
    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v7

    .line 1774
    .local v7, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v8

    .line 1775
    .local v8, "chipInfo":Ljava/lang/String;
    const-string v9, "QM35725"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1776
    new-instance v9, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v9}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    iget-byte v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    new-array v11, v5, [B

    aput-byte v10, v11, v6

    .line 1777
    invoke-virtual {v9, v11}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v9

    .line 1778
    invoke-virtual {v9, v0, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v9

    .line 1779
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v7

    .line 1783
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v9, v10}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v9

    .line 1784
    .local v9, "sessionToken":I
    new-instance v10, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    int-to-long v11, v9

    invoke-direct {v10, v11, v12, v7}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1786
    .local v10, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v11, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11, v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v11

    aget-byte v11, v11, v6

    .line 1787
    .local v11, "status":I
    if-eqz v11, :cond_7

    .line 1788
    const-string v5, "setRxAntenna: SessionSetVendorAppConfigCommand Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    return v6

    .line 1791
    :cond_7
    return v5
.end method

.method private setTxAntenna(Ljava/lang/String;)Z
    .locals 9
    .param p1, "sData"    # Ljava/lang/String;

    .line 1711
    const/4 v0, 0x1

    .line 1712
    .local v0, "tx":B
    const-string v1, "TX_ANT_0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "UwbFactoryManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1713
    const/4 v0, 0x1

    goto :goto_0

    .line 1714
    :cond_0
    const-string v1, "TX_ANT_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1715
    const/4 v0, 0x2

    .line 1720
    :goto_0
    iput-byte v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1722
    new-instance v1, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [B

    aput-byte v0, v5, v3

    .line 1723
    invoke-virtual {v1, v5}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v1

    .line 1724
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v1

    .line 1725
    .local v1, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v5, v6}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v5

    .line 1726
    .local v5, "sessionToken":I
    new-instance v6, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    int-to-long v7, v5

    invoke-direct {v6, v7, v8, v1}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1728
    .local v6, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v7

    aget-byte v7, v7, v3

    .line 1729
    .local v7, "status":I
    if-eqz v7, :cond_1

    .line 1730
    const-string v4, "setTxAntenna: SessionSetVendorAppConfigCommand Failed"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v3

    .line 1733
    :cond_1
    return v4

    .line 1717
    .end local v1    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v5    # "sessionToken":I
    .end local v6    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v7    # "status":I
    :cond_2
    const-string v1, "setTxAntenna: Undefined Tx ANT"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    return v3
.end method

.method private setTxPower(BSS)I
    .locals 4
    .param p1, "txAntId"    # B
    .param p2, "rmsPower"    # S
    .param p3, "peakPower"    # S

    .line 1930
    new-instance v0, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;-><init>()V

    .line 1931
    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    move-result-object v0

    .line 1932
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;

    move-result-object v0

    .line 1934
    .local v0, "txPowerPerAntenna":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;
    new-instance v1, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    iget-byte v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    invoke-direct {v1, v2, v0}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 1935
    .local v1, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    return v2
.end method

.method private setTxRxAntenna(Ljava/lang/String;)Z
    .locals 11
    .param p1, "sData"    # Ljava/lang/String;

    .line 1844
    const/4 v0, 0x2

    .line 1845
    .local v0, "tx":B
    const/4 v1, 0x1

    .line 1846
    .local v1, "rxMode":B
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForAoaPortrait()[B

    move-result-object v2

    .line 1847
    .local v2, "rxAntPairs":[B
    const-string v3, "ANT_AOA_PORTRAIT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "UwbFactoryManager"

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1848
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForAoaPortrait()[B

    move-result-object v2

    goto :goto_0

    .line 1849
    :cond_0
    const-string v3, "ANT_AOA_LANDSCAPE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1850
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForAoaLandscape()[B

    move-result-object v2

    goto :goto_0

    .line 1851
    :cond_1
    const-string v3, "ANT_RANGING_ONLY"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1852
    const/4 v0, 0x1

    .line 1853
    const/4 v1, 0x0

    .line 1854
    iget-byte v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    invoke-static {v3}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getRxAntForRanging(I)[B

    move-result-object v2

    .line 1859
    :goto_0
    iput-byte v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    .line 1861
    new-instance v3, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    const/4 v6, 0x1

    new-array v7, v6, [B

    aput-byte v0, v7, v5

    .line 1862
    invoke-virtual {v3, v7}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationTx([B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v3

    .line 1863
    invoke-virtual {v3, v1, v2}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setAntennaConfigurationRx(B[B)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v3

    .line 1864
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v3

    .line 1865
    .local v3, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v7

    .line 1866
    .local v7, "sessionToken":I
    new-instance v8, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    int-to-long v9, v7

    invoke-direct {v8, v9, v10, v3}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 1868
    .local v8, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9, v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v9

    aget-byte v9, v9, v5

    .line 1869
    .local v9, "status":I
    if-eqz v9, :cond_2

    .line 1870
    const-string v6, "setTxRxAntenna: SessionSetVendorAppConfigCommand Failed"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return v5

    .line 1873
    :cond_2
    return v6

    .line 1856
    .end local v3    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v7    # "sessionToken":I
    .end local v8    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v9    # "status":I
    :cond_3
    const-string v3, "setTxRxAntenna: Undefined Tx Rx ANT"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    return v5
.end method

.method private startPerRx()V
    .locals 12

    .line 1161
    const-string v0, "UwbFactoryManager"

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1162
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 1163
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1188
    .local v2, "TestPerRxTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1190
    iget v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPerRxTimeout:I

    .line 1191
    .local v3, "timeout":I
    const/4 v4, 0x2

    .line 1193
    .local v4, "status":I
    int-to-long v5, v3

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1201
    :goto_0
    goto :goto_1

    .line 1199
    :catch_0
    move-exception v5

    .line 1200
    .local v5, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 1197
    .end local v5    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v5

    .line 1198
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1194
    :catch_2
    move-exception v5

    .line 1195
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1196
    const-string v6, "startPerRx: Timeout occurred"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 1202
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1204
    const-string v5, ""

    .line 1205
    .local v5, "str":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1206
    const/high16 v0, -0x3d000000    # -128.0f

    .line 1207
    .local v0, "maxRssi":F
    const/high16 v6, -0x3d000000    # -128.0f

    .line 1209
    .local v6, "maxSnr":F
    iget-object v7, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getSamsungSpecificDataForRfTest()Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    move-result-object v7

    .line 1210
    .local v7, "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getNumOfRx()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 1211
    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getRssi()[F

    move-result-object v9

    aget v9, v9, v8

    .line 1212
    .local v9, "rssi":F
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_0

    cmpl-float v10, v9, v0

    if-lez v10, :cond_0

    .line 1213
    move v0, v9

    .line 1214
    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getSnr()[F

    move-result-object v10

    aget v6, v10, v8

    .line 1210
    .end local v9    # "rssi":F
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1218
    .end local v8    # "i":I
    :cond_1
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "%.2f,%.2f"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getAttempts()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v10

    .line 1220
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getAcqDetect()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v10

    .line 1221
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getAcqReject()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v10

    .line 1222
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getRxFail()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v10

    .line 1223
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getPhrDecError()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    move-result-object v9

    .line 1224
    invoke-virtual {v9}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;->getPsduDecError()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1226
    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OK,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1227
    .end local v0    # "maxRssi":F
    .end local v6    # "maxSnr":F
    .end local v7    # "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    goto :goto_3

    .line 1228
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startPerRx: PER RX Failed, status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->stopTestModeSession()I

    move-result v4

    .line 1230
    if-nez v4, :cond_3

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v6, "NG, -1"

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_3

    .line 1233
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v6, "NG"

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1236
    :goto_3
    return-void
.end method

.method private startRfLoopback()Ljava/lang/String;
    .locals 14

    .line 1239
    new-instance v0, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;-><init>()V

    .line 1240
    const v1, 0x1e460

    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setRmarkerTxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v0

    .line 1241
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setRmarkerRxStart(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v0

    .line 1242
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setStsIndexAutoInc(B)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .line 1245
    .local v0, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->reConfigureTestModeSession(Ljava/util/List;)I

    move-result v2

    .line 1246
    .local v2, "status":I
    const-string v3, "NG"

    const-string v4, "UwbFactoryManager"

    if-eqz v2, :cond_0

    .line 1247
    const-string v1, "startRfLoopback: reConfigureTestModeSession Failed"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    return-object v3

    .line 1251
    :cond_0
    const/high16 v5, -0x3d000000    # -128.0f

    .line 1252
    .local v5, "maxRssi":F
    const/4 v6, 0x3

    .line 1253
    .local v6, "loopCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_6

    .line 1254
    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1255
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    .line 1256
    .local v8, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v9, Ljava/util/concurrent/FutureTask;

    new-instance v10, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda5;

    invoke-direct {v10, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    invoke-direct {v9, v10}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1276
    .local v9, "TestLoopbackTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1278
    const/4 v2, 0x2

    .line 1280
    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1388

    invoke-virtual {v9, v11, v12, v10}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1288
    .end local v2    # "status":I
    .local v10, "status":I
    move v2, v10

    goto :goto_2

    .line 1286
    .end local v10    # "status":I
    .restart local v2    # "status":I
    :catch_0
    move-exception v10

    .line 1287
    .local v10, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v10}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    .line 1284
    .end local v10    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v10

    .line 1285
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v10    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1281
    :catch_2
    move-exception v10

    .line 1282
    .local v10, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1283
    const-string v11, "MSG_TEST_RF_LOOPBACK: Timeout occurred"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    .end local v10    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_1
    nop

    .line 1289
    :goto_2
    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1290
    if-eqz v2, :cond_1

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_TEST_RF_LOOPBACK: RF Loopback Failed in repeat "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, ", status="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    goto :goto_5

    .line 1294
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->getSamsungSpecificData()Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    move-result-object v10

    .line 1295
    .local v10, "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getNumOfRx()I

    move-result v11

    if-gt v11, v1, :cond_5

    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getNumOfRx()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_4

    .line 1299
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_TEST_RF_LOOPBACK: RF Loopback Success in repeat "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getNumOfRx()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 1303
    invoke-virtual {v10}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->getRssi()[F

    move-result-object v12

    aget v12, v12, v11

    .line 1304
    .local v12, "rssi":F
    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_3

    cmpl-float v13, v12, v5

    if-lez v13, :cond_3

    .line 1305
    move v5, v12

    .line 1302
    .end local v12    # "rssi":F
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1308
    .end local v11    # "j":I
    :cond_4
    iget-object v11, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$mwaitUntilDeviceStatusChanged(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)Z

    .line 1253
    .end local v8    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v9    # "TestLoopbackTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local v10    # "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1296
    .restart local v8    # "executor":Ljava/util/concurrent/ExecutorService;
    .restart local v9    # "TestLoopbackTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .restart local v10    # "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    :cond_5
    :goto_4
    const-string v1, "MSG_TEST_RF_LOOPBACK: RF Loopback works with one RX"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    nop

    .line 1312
    .end local v7    # "i":I
    .end local v8    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v9    # "TestLoopbackTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    .end local v10    # "specificData":Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    :cond_6
    :goto_5
    const/high16 v1, -0x3d000000    # -128.0f

    cmpl-float v1, v5, v1

    if-nez v1, :cond_7

    .line 1313
    return-object v3

    .line 1315
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "%.2f"

    invoke-static {v3, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private temporaryDoVcoPllCalibrationForNxp()V
    .locals 18

    .line 1364
    move-object/from16 v1, p0

    const/4 v2, -0x1

    filled-new-array {v2, v2}, [I

    move-result-object v0

    move-object v3, v0

    .line 1365
    .local v3, "vcoPllCalValue":[I
    const/4 v4, 0x2

    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    move-object v5, v0

    .line 1366
    .local v5, "vcoPllCalStatus":[Z
    new-array v0, v4, [Z

    fill-array-data v0, :array_1

    move-object v6, v0

    .line 1368
    .local v6, "dcdcStatus":[Z
    new-array v0, v4, [B

    fill-array-data v0, :array_2

    move-object v7, v0

    .line 1369
    .local v7, "channelIdList":[B
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_0
    array-length v0, v7

    const-string v9, "UwbFactoryManager"

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ge v8, v0, :cond_3

    .line 1370
    aget-byte v12, v7, v8

    .line 1372
    .local v12, "channelId":B
    const/4 v13, 0x2

    .line 1373
    .local v13, "status":I
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    invoke-static {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1374
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v14

    .line 1375
    .local v14, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v15, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;

    invoke-direct {v15, v1, v12}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;B)V

    invoke-direct {v0, v15}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object v15, v0

    .line 1395
    .local v15, "doVcoPllTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v14, v15}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1398
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v5    # "vcoPllCalStatus":[Z
    .local v17, "vcoPllCalStatus":[Z
    const-wide/16 v4, 0x1388

    :try_start_1
    invoke-virtual {v15, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    move v13, v0

    .line 1406
    :goto_1
    goto :goto_5

    .line 1404
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1402
    :catch_1
    move-exception v0

    goto :goto_3

    .line 1399
    :catch_2
    move-exception v0

    goto :goto_4

    .line 1404
    .end local v17    # "vcoPllCalStatus":[Z
    .restart local v5    # "vcoPllCalStatus":[Z
    :catch_3
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 1405
    .end local v5    # "vcoPllCalStatus":[Z
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v17    # "vcoPllCalStatus":[Z
    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_5

    .line 1402
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v17    # "vcoPllCalStatus":[Z
    .restart local v5    # "vcoPllCalStatus":[Z
    :catch_4
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 1403
    .end local v5    # "vcoPllCalStatus":[Z
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v17    # "vcoPllCalStatus":[Z
    :goto_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 1399
    .end local v17    # "vcoPllCalStatus":[Z
    .restart local v5    # "vcoPllCalStatus":[Z
    :catch_5
    move-exception v0

    move/from16 v16, v4

    move-object/from16 v17, v5

    .line 1400
    .end local v5    # "vcoPllCalStatus":[Z
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    .restart local v17    # "vcoPllCalStatus":[Z
    :goto_4
    invoke-interface {v14}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 1401
    const-string v4, "temporaryDoVcoPllCalibrationForNxp: Timeout occurred"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_1

    .line 1407
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 1409
    if-eqz v13, :cond_0

    .line 1410
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v2, "NG"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1411
    return-void

    .line 1414
    :cond_0
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v0

    aget-byte v0, v0, v16

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    iget-object v4, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v4

    aget-byte v4, v4, v10

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v4

    aput v0, v3, v8

    .line 1416
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v0

    aget-byte v0, v0, v16

    const/16 v4, -0x80

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_1

    move v0, v10

    goto :goto_6

    :cond_1
    move v0, v11

    :goto_6
    aput-boolean v0, v17, v8

    .line 1417
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B

    move-result-object v0

    aget-byte v0, v0, v16

    const/16 v4, 0x40

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_2

    goto :goto_7

    :cond_2
    move v10, v11

    :goto_7
    aput-boolean v10, v6, v8

    .line 1369
    .end local v12    # "channelId":B
    .end local v13    # "status":I
    .end local v14    # "executor":Ljava/util/concurrent/ExecutorService;
    .end local v15    # "doVcoPllTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    move-object/from16 v5, v17

    goto/16 :goto_0

    .end local v17    # "vcoPllCalStatus":[Z
    .restart local v5    # "vcoPllCalStatus":[Z
    :cond_3
    move-object/from16 v17, v5

    .line 1420
    .end local v5    # "vcoPllCalStatus":[Z
    .end local v8    # "i":I
    .restart local v17    # "vcoPllCalStatus":[Z
    aget v0, v3, v11

    const-string v4, "NG,"

    const-string v5, ","

    if-eq v0, v2, :cond_d

    aget v0, v3, v10

    if-ne v0, v2, :cond_4

    goto/16 :goto_c

    .line 1425
    :cond_4
    aget-boolean v0, v17, v11

    if-eqz v0, :cond_c

    aget-boolean v0, v17, v10

    if-nez v0, :cond_5

    goto/16 :goto_b

    .line 1430
    :cond_5
    aget-boolean v0, v6, v11

    if-eqz v0, :cond_b

    aget-boolean v0, v6, v10

    if-nez v0, :cond_6

    goto/16 :goto_a

    .line 1437
    :cond_6
    aget v0, v3, v11

    if-ltz v0, :cond_a

    aget v0, v3, v11

    const/16 v2, 0x1ff

    if-gt v0, v2, :cond_a

    aget v0, v3, v10

    if-ltz v0, :cond_a

    aget v0, v3, v10

    if-le v0, v2, :cond_7

    goto/16 :goto_9

    .line 1445
    :cond_7
    aget v0, v3, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "/efs/sec_efs/uwb_factory/5_RF_PLL"

    invoke-static {v2, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget v0, v3, v10

    .line 1446
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "/efs/sec_efs/uwb_factory/9_RF_PLL"

    invoke-static {v2, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    .line 1452
    :cond_8
    const-string v0, "MSG_TEST_CAL_RF_PLL: VCO PLL Cal success"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1456
    return-void

    .line 1447
    :cond_9
    :goto_8
    const-string v0, "MSG_TEST_CAL_RF_PLL: Write VCO PLL code into EFS failed"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1450
    return-void

    .line 1438
    :cond_a
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_CAL_RF_PLL: VCO PLL value is out of range (Ch5="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v3, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",Ch9="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v3, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1442
    return-void

    .line 1431
    :cond_b
    :goto_a
    const-string v0, "MSG_TEST_CAL_RF_PLL: DCDC screening value is invalid"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, -0x6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1434
    return-void

    .line 1426
    :cond_c
    :goto_b
    const-string v0, "MSG_TEST_CAL_RF_PLL: VCO PLL locking failed"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v11

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v10

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1429
    return-void

    .line 1421
    :cond_d
    :goto_c
    const-string v0, "MSG_TEST_CAL_RF_PLL: VCO PLL Cal not working"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v8, v3, v11

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v8, v3, v10

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1424
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5t
        0x9t
    .end array-data
.end method

.method private testCompareAoaCal()V
    .locals 6

    .line 1681
    const-string v0, "/system/etc/libuwb-cal.conf"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1682
    .local v1, "versionConf":Ljava/lang/String;
    const-string v2, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "NG,"

    const-string v5, ","

    if-nez v3, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1684
    return-void

    .line 1687
    :cond_0
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1688
    .local v3, "versionEfs":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 1689
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OK,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1693
    :goto_0
    return-void
.end method

.method private testCompareAoaCalVersion()V
    .locals 6

    .line 1696
    const-string v0, "/system/etc/libuwb-cal.conf"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    .local v0, "versionConf":Ljava/lang/String;
    const-string v1, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "NG,"

    const-string v4, ","

    if-nez v2, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1699
    return-void

    .line 1702
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->readCalibrationFileVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1703
    .local v1, "versionEfs":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1704
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OK,"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 1706
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1708
    :goto_0
    return-void
.end method

.method private testCreateAoaCalToEfs()V
    .locals 3

    .line 1676
    const-string v0, "/system/etc/libuwb-cal.conf"

    const-string v1, "/efs/sec_efs/uwb_factory/AOA_CAL_DATA"

    invoke-static {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1677
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "OK"

    goto :goto_0

    :cond_0
    const-string v2, "NG"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1678
    return-void
.end method

.method private testCustomDeinitSession()V
    .locals 1

    .line 2406
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->closeTestModeSession()V

    .line 2407
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->close()V

    .line 2410
    :cond_0
    return-void
.end method

.method private testCustomRangingStartAsAnchor()V
    .locals 3

    .line 2377
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsAnchorUwbRangingOn:Z

    if-eqz v0, :cond_0

    .line 2378
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2379
    return-void

    .line 2382
    :cond_0
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    .line 2383
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    .line 2384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsReportResult:Z

    .line 2386
    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingErrorCount:I

    .line 2387
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPdoaArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2388
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mAoaArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2389
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDistance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2390
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRssi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2392
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/uwb/RangingSession;->start(Landroid/os/PersistableBundle;)V

    .line 2393
    iput-boolean v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsAnchorUwbRangingOn:Z

    .line 2394
    return-void
.end method

.method private testCustomRangingStop()V
    .locals 1

    .line 2398
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    goto :goto_0

    .line 2399
    :catch_0
    move-exception v0

    .line 2402
    :goto_0
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    .line 2403
    return-void
.end method

.method private testCustomSetDeviceRole(Ljava/lang/String;)V
    .locals 8
    .param p1, "sData"    # Ljava/lang/String;

    .line 2707
    const/4 v0, 0x0

    .line 2708
    .local v0, "deviceRole":B
    const/4 v1, 0x0

    .line 2710
    .local v1, "deviceType":B
    const-string v2, "INITIATOR"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2711
    const/4 v0, 0x1

    .line 2712
    const/4 v1, 0x1

    .line 2715
    :cond_0
    new-instance v2, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    invoke-direct {v2}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;-><init>()V

    .line 2716
    invoke-virtual {v2, v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setDeviceRole(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v2

    .line 2717
    invoke-virtual {v2, v1}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setDeviceType(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v2

    .line 2718
    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v2

    .line 2719
    .local v2, "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v3, v4}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v3

    .line 2720
    .local v3, "sessionToken":I
    new-instance v4, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    int-to-long v5, v3

    invoke-direct {v4, v5, v6, v2}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 2721
    .local v4, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    .line 2723
    .local v5, "status":I
    if-eqz v5, :cond_1

    .line 2724
    const-string v6, "UwbFactoryManager"

    const-string v7, "MSG_CUSTOM_SET_DEVICE_ROLE: SessionSetAppConfigCommand Failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    const-string v7, "NG"

    invoke-virtual {v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2727
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2729
    :goto_0
    return-void
.end method

.method private testCustomSetRangingCallback(I)V
    .locals 2
    .param p1, "callbackFormat"    # I

    .line 2495
    packed-switch p1, :pswitch_data_0

    .line 2698
    const-string v0, "UwbFactoryManager"

    const-string v1, "MSG_CUSTOM_SET_RANGING_CALLBACK: setRangingCallback failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2700
    return-void

    .line 2557
    :pswitch_0
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$5;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    .line 2694
    goto :goto_0

    .line 2497
    :pswitch_1
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    .line 2553
    nop

    .line 2703
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2704
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private testEseBindingCheck()V
    .locals 7

    .line 2299
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->eseBindingCheck()Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    move-result-object v0

    .line 2301
    .local v0, "seBindingCheckResultData":Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    const-string v1, "NG"

    const-string v2, "UwbFactoryManager"

    if-eqz v0, :cond_3

    .line 2302
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getBindingStatus()I

    move-result v3

    const-string v4, "NG_BIND,"

    const-string v5, ","

    if-nez v3, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2304
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedSeBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2303
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2305
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getBindingStatus()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 2306
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2307
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedSeBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2306
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getBindingStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 2309
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2310
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedSeBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2309
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2312
    :cond_2
    const-string v3, "testEseBindingCheck: Undefined binding state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2316
    :cond_3
    const-string v3, "testEseBindingCheck: BindingCheckResult Status Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2319
    :goto_0
    return-void
.end method

.method private testEseConnectivity()V
    .locals 7

    .line 2332
    const-string v0, "UwbFactoryManager"

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2333
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2334
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2353
    .local v2, "eseConnectivityTestTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2355
    const/4 v3, 0x2

    .line 2357
    .local v3, "status":I
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2365
    :goto_0
    goto :goto_1

    .line 2363
    :catch_0
    move-exception v4

    .line 2364
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 2361
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v4

    .line 2362
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2358
    :catch_2
    move-exception v4

    .line 2359
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2360
    const-string v5, "MSG_TEST_ESE_CONNECTIVITY: Timeout occurred"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 2366
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2368
    if-nez v3, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v4, "OK"

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 2371
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testEseConnectivity: status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v4, "NG"

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2374
    :goto_2
    return-void
.end method

.method private testEseDoBind()V
    .locals 9

    .line 2192
    const-string v0, "UwbFactoryManager"

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2193
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2194
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2213
    .local v2, "eseDoBindTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2215
    const/4 v3, 0x2

    .line 2217
    .local v3, "status":I
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v5, v6, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2225
    :goto_0
    goto :goto_1

    .line 2223
    :catch_0
    move-exception v4

    .line 2224
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 2221
    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v4

    .line 2222
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2218
    :catch_2
    move-exception v4

    .line 2219
    .local v4, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2220
    const-string v5, "testEseDoBind: Timeout occurred"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 2226
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fputmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V

    .line 2228
    const-string v4, "NG"

    const-string v5, ","

    if-nez v3, :cond_2

    .line 2229
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getBindingState()I

    move-result v6

    const/4 v7, 0x1

    const-string v8, "OK,"

    if-ne v6, v7, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getRemainedBindingCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2232
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getBindingState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 2233
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getRemainedBindingCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2236
    :cond_1
    const-string v5, "testEseDoBind: Undefined binding state"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2240
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getBindingState()I

    move-result v6

    if-nez v6, :cond_4

    .line 2241
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getRemainedBindingCount()I

    move-result v4

    const-string v6, "NB"

    if-nez v4, :cond_3

    .line 2242
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NG_COUNT,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getRemainedBindingCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    .line 2243
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getBindingState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2242
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 2245
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NG_BIND,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getRemainedBindingCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    move-result-object v6

    .line 2246
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/ese/SeBindingResultData;->getBindingState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2245
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_2

    .line 2249
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2251
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testEseDoBind: BindingResult Status Failed, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :goto_3
    return-void
.end method

.method private testGetChipInfo()V
    .locals 3

    .line 2413
    invoke-static {}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getUwbChipInfo()Ljava/lang/String;

    move-result-object v0

    .line 2414
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(ILjava/lang/String;)V

    .line 2415
    return-void
.end method

.method private testGetEseBindingCount()V
    .locals 4

    .line 2322
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->eseBindingCheck()Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    move-result-object v0

    .line 2324
    .local v0, "seBindingCheckResultData":Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    if-eqz v0, :cond_0

    .line 2325
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OK,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;->getRemainedSeBindingCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2327
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const-string v2, "NG"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2329
    :goto_0
    return-void
.end method

.method private testOverwritePhaseOffset(BLjava/lang/String;F)V
    .locals 9
    .param p1, "channel"    # B
    .param p2, "rxPair"    # Ljava/lang/String;
    .param p3, "phaseOffset"    # F

    .line 2038
    const/16 v0, 0x9

    const-string v1, "UwbFactoryManager"

    const-string v2, "NG"

    if-eq p1, v0, :cond_0

    .line 2039
    const-string v0, "MSG_TEST_OVERWRITE_PHASE_OFFSET: only Ch9 AoA is supported..."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2041
    return-void

    .line 2044
    :cond_0
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 2045
    .local v0, "path":Ljava/lang/String;
    const/4 v3, 0x1

    .line 2046
    .local v3, "rxAntPairs":I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "AOA_LANDSCAPE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "AOA_PORTRAIT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "P1:P3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "P1:P2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 2073
    const-string v4, "MSG_TEST_OVERWRITE_PHASE_OFFSET: invalid Rx Antenna Pair"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2075
    return-void

    .line 2067
    :pswitch_0
    const-string v0, "/efs/sec_efs/uwb_factory/9_landscape"

    .line 2068
    const/4 v3, 0x2

    .line 2069
    goto :goto_2

    .line 2061
    :pswitch_1
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 2062
    const/4 v3, 0x1

    .line 2063
    goto :goto_2

    .line 2054
    :pswitch_2
    const-string v0, "/efs/sec_efs/uwb_factory/9_landscape"

    .line 2055
    const/4 v3, 0x2

    .line 2056
    goto :goto_2

    .line 2048
    :pswitch_3
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 2049
    const/4 v3, 0x1

    .line 2050
    nop

    .line 2079
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->getPdoaOffset(B)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v4

    .line 2080
    .local v4, "currentPdoaOffsetCalib":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    if-nez v4, :cond_2

    .line 2081
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2082
    return-void

    .line 2085
    :cond_2
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    invoke-direct {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;-><init>()V

    .line 2086
    .local v5, "pdoaOffsetCalibBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getNumOfRx()B

    move-result v7

    if-ge v6, v7, :cond_4

    .line 2087
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getRxAntenna()[B

    move-result-object v7

    aget-byte v7, v7, v6

    .line 2088
    .local v7, "idx":B
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getPhaseOffset()[F

    move-result-object v8

    aget v8, v8, v6

    .line 2089
    .local v8, "currentOffset":F
    if-ne v7, v3, :cond_3

    .line 2090
    invoke-virtual {v5, v7, p3}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    goto :goto_4

    .line 2092
    :cond_3
    invoke-virtual {v5, v7, v8}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    .line 2086
    .end local v7    # "idx":B
    .end local v8    # "currentOffset":F
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2096
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setPdoaOffset(BLcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;)Z

    move-result v6

    .line 2097
    .local v6, "res":Z
    if-nez v6, :cond_5

    .line 2098
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2100
    :cond_5
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2101
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2103
    :cond_6
    const-string v7, "MSG_TEST_OVERWRITE_PHASE_OFFSET: Write to efs failed"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2107
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x47e821b -> :sswitch_3
        0x47e821c -> :sswitch_2
        0x4cd6bc87 -> :sswitch_1
        0x5fc70f2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private testReadAllPhaseOffsetFromEfs()V
    .locals 6

    .line 2466
    const-string v0, "UwbFactoryManager"

    const-string v1, "MSG_TEST_READ_ALL_PHASE_OFFSET_FROM_EFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2468
    .local v0, "azimuthPdoaOffsetCh9":Ljava/lang/String;
    const-string v1, "/efs/sec_efs/uwb_factory/9_landscape"

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2470
    .local v1, "elevationPdoaOffsetCh9":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2476
    .local v2, "res":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OK,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2477
    return-void

    .line 2471
    .end local v2    # "res":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    const-string v3, "NG"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method private testReadAllTxPowerFromEfs()V
    .locals 8

    .line 2480
    const-string v0, "/efs/sec_efs/uwb_factory/5_M_1"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2481
    .local v0, "rangingTxPowerCh5":Ljava/lang/String;
    const-string v1, "/efs/sec_efs/uwb_factory/5_P_1"

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2482
    .local v1, "aoaTxPowerCh5":Ljava/lang/String;
    const-string v2, "/efs/sec_efs/uwb_factory/9_M_1"

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2483
    .local v2, "rangingTxPowerCh9":Ljava/lang/String;
    const-string v3, "/efs/sec_efs/uwb_factory/9_P_1"

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2485
    .local v3, "aoaTxPowerCh9":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 2490
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2491
    .local v4, "res":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OK,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2492
    return-void

    .line 2486
    .end local v4    # "res":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v4

    const-string v5, "NG"

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2487
    return-void
.end method

.method private testReadPhaseOffset(BLjava/lang/String;)V
    .locals 7
    .param p1, "channel"    # B
    .param p2, "rxPair"    # Ljava/lang/String;

    .line 2110
    const/4 v0, 0x1

    .line 2111
    .local v0, "rxAntPairs":I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "AOA_LANDSCAPE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "AOA_PORTRAIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "P1:P3"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "P1:P2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "NG"

    packed-switch v1, :pswitch_data_0

    .line 2134
    const-string v1, "UwbFactoryManager"

    const-string v3, "MSG_TEST_READ_PHASE_OFFSET: invalid Rx Antenna Pair"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2136
    return-void

    .line 2129
    :pswitch_0
    const/4 v0, 0x2

    .line 2130
    goto :goto_2

    .line 2124
    :pswitch_1
    const/4 v0, 0x1

    .line 2125
    goto :goto_2

    .line 2118
    :pswitch_2
    const/4 v0, 0x2

    .line 2119
    goto :goto_2

    .line 2113
    :pswitch_3
    const/4 v0, 0x1

    .line 2114
    nop

    .line 2140
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->getPdoaOffset(B)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v1

    .line 2141
    .local v1, "pdoaOffsetCalib":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    if-nez v1, :cond_1

    .line 2142
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2143
    return-void

    .line 2146
    :cond_1
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 2147
    .local v3, "pdoaOffset":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getNumOfRx()B

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2148
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getRxAntenna()[B

    move-result-object v5

    aget-byte v5, v5, v4

    .line 2149
    .local v5, "idx":B
    if-ne v5, v0, :cond_2

    .line 2150
    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getPhaseOffset()[F

    move-result-object v6

    aget v3, v6, v4

    .line 2147
    .end local v5    # "idx":B
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2154
    .end local v4    # "i":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_4

    .line 2155
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%.2f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_4

    .line 2157
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2159
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x47e821b -> :sswitch_3
        0x47e821c -> :sswitch_2
        0x4cd6bc87 -> :sswitch_1
        0x5fc70f2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private testWriteAllTxPower([Ljava/lang/String;)V
    .locals 8
    .param p1, "sDataArray"    # [Ljava/lang/String;

    .line 2423
    const-string v0, "NG"

    const/4 v1, 0x0

    .line 2424
    .local v1, "rangingTxPowerCh5":I
    const/4 v2, 0x0

    .line 2425
    .local v2, "aoaTxPowerCh5":I
    const/4 v3, 0x0

    .line 2426
    .local v3, "rangingTxPowerCh9":I
    const/4 v4, 0x0

    .line 2428
    .local v4, "aoaTxPowerCh9":I
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 2429
    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 2430
    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 2431
    const/4 v5, 0x3

    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    .end local v4    # "aoaTxPowerCh9":I
    .local v5, "aoaTxPowerCh9":I
    nop

    .line 2439
    const-string v4, "/efs/sec_efs/uwb_factory/5_M_1"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 2440
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 2441
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2442
    return-void

    .line 2445
    :cond_0
    const-string v6, "/efs/sec_efs/uwb_factory/5_P_1"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 2446
    if-nez v4, :cond_1

    .line 2447
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2448
    return-void

    .line 2451
    :cond_1
    const-string v6, "/efs/sec_efs/uwb_factory/9_M_1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 2452
    if-nez v4, :cond_2

    .line 2453
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2454
    return-void

    .line 2457
    :cond_2
    const-string v6, "/efs/sec_efs/uwb_factory/9_P_1"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .line 2458
    if-eqz v4, :cond_3

    .line 2459
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v6, "OK"

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 2461
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2463
    :goto_0
    return-void

    .line 2432
    .end local v5    # "aoaTxPowerCh9":I
    .local v4, "aoaTxPowerCh9":I
    :catch_0
    move-exception v5

    .line 2433
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "UwbFactoryManager"

    const-string v7, "MSG_TEST_WRITE_ALL_TX_POWER: Exception occurred"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2435
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2436
    return-void
.end method

.method private testWritePhaseOffset(BLjava/lang/String;F)V
    .locals 9
    .param p1, "channel"    # B
    .param p2, "rxPair"    # Ljava/lang/String;
    .param p3, "phaseOffset"    # F

    .line 1965
    const/16 v0, 0x9

    const-string v1, "UwbFactoryManager"

    const-string v2, "NG"

    if-eq p1, v0, :cond_0

    .line 1966
    const-string v0, "MSG_TEST_WRITE_PHASE_OFFSET: only Ch9 AoA is supported..."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1968
    return-void

    .line 1971
    :cond_0
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 1972
    .local v0, "path":Ljava/lang/String;
    const/4 v3, 0x1

    .line 1973
    .local v3, "rxAntPairs":I
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "AOA_LANDSCAPE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "AOA_PORTRAIT"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "P1:P3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v4, "P1:P2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 2000
    const-string v4, "MSG_TEST_WRITE_PHASE_OFFSET: invalid Rx Antenna Pair"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2002
    return-void

    .line 1994
    :pswitch_0
    const-string v0, "/efs/sec_efs/uwb_factory/9_landscape"

    .line 1995
    const/4 v3, 0x2

    .line 1996
    goto :goto_2

    .line 1988
    :pswitch_1
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 1989
    const/4 v3, 0x1

    .line 1990
    goto :goto_2

    .line 1981
    :pswitch_2
    const-string v0, "/efs/sec_efs/uwb_factory/9_landscape"

    .line 1982
    const/4 v3, 0x2

    .line 1983
    goto :goto_2

    .line 1975
    :pswitch_3
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    .line 1976
    const/4 v3, 0x1

    .line 1977
    nop

    .line 2006
    :goto_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->getPdoaOffset(B)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v4

    .line 2007
    .local v4, "currentPdoaOffsetCalib":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;
    if-nez v4, :cond_2

    .line 2008
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2009
    return-void

    .line 2012
    :cond_2
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    invoke-direct {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;-><init>()V

    .line 2013
    .local v5, "pdoaOffsetCalibBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getNumOfRx()B

    move-result v7

    if-ge v6, v7, :cond_4

    .line 2014
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getRxAntenna()[B

    move-result-object v7

    aget-byte v7, v7, v6

    .line 2015
    .local v7, "idx":B
    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;->getPhaseOffset()[F

    move-result-object v8

    aget v8, v8, v6

    .line 2016
    .local v8, "currentOffset":F
    if-ne v7, v3, :cond_3

    .line 2017
    add-float/2addr p3, v8

    .line 2018
    invoke-virtual {v5, v7, p3}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    goto :goto_4

    .line 2020
    :cond_3
    invoke-virtual {v5, v7, v8}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    .line 2013
    .end local v7    # "idx":B
    .end local v8    # "currentOffset":F
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2024
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setPdoaOffset(BLcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;)Z

    move-result v6

    .line 2025
    .local v6, "res":Z
    if-nez v6, :cond_5

    .line 2026
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2028
    :cond_5
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->writeString(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2029
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_5

    .line 2031
    :cond_6
    const-string v7, "MSG_TEST_WRITE_PHASE_OFFSET: Write to efs failed"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 2035
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x47e821b -> :sswitch_3
        0x47e821c -> :sswitch_2
        0x4cd6bc87 -> :sswitch_1
        0x5fc70f2f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private testWriteToEfs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "powerIndex"    # Ljava/lang/String;

    .line 1939
    const-string v0, "writeToEfs"

    const-string v1, "UwbFactoryManager"

    const/4 v2, 0x0

    .line 1942
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/efs/sec_efs/uwb_factory/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 1943
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 1944
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1945
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 1946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeToEfs path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", powerIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    const-string v4, "OK"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    nop

    .line 1954
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1958
    goto :goto_0

    .line 1956
    :catch_0
    move-exception v3

    .line 1957
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1948
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1952
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1949
    :catch_1
    move-exception v3

    .line 1950
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1953
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_0

    .line 1954
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 1956
    :catch_2
    move-exception v3

    .line 1957
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 1958
    :cond_0
    :goto_1
    nop

    .line 1961
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v1, "NG"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1962
    return-void

    .line 1953
    :goto_3
    if-eqz v2, :cond_1

    .line 1954
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 1956
    :catch_3
    move-exception v4

    .line 1957
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1958
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    nop

    .line 1959
    :goto_5
    throw v3
.end method

.method private uwbOff()Z
    .locals 4

    .line 1059
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setEnabled(Z)I

    move-result v1

    .line 1060
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 1061
    const-string v2, "UwbFactoryManager"

    const-string v3, "uwbOff: disable Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v0

    .line 1064
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    .line 1065
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsAnchorUwbRangingOn:Z

    .line 1066
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsEnabled:Z

    .line 1067
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    .line 1068
    iput-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    .line 1070
    const/16 v2, 0x64

    iput v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    .line 1071
    iput v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mFilterCount:I

    .line 1072
    iput-short v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 1073
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 1074
    return v0
.end method

.method private uwbOn()Z
    .locals 3

    .line 1079
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setEnabled(Z)I

    move-result v1

    .line 1080
    .local v1, "res":I
    if-eqz v1, :cond_0

    .line 1081
    const-string v0, "UwbFactoryManager"

    const-string v2, "uwbOn: enable Failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v0, 0x0

    return v0

    .line 1084
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsEnabled:Z

    .line 1085
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 292
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v2, Landroid/os/Message;->what:I

    .line 293
    .local v3, "msgType":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, "sData":Ljava/lang/String;
    const-string v0, "ABCDABCD"

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x4

    const-string v9, "_"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v13, "OK"

    const-string v14, "NG"

    const-string v15, "UwbFactoryManager"

    sparse-switch v3, :sswitch_data_0

    move/from16 v18, v3

    .end local v3    # "msgType":I
    .local v18, "msgType":I
    goto/16 :goto_8

    .line 1042
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_0
    const-string v0, "INITIATOR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RESPONDER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1043
    const-string v0, "MSG_CUSTOM_SET_DEVICE_ROLE: Undefined Device Role"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1045
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1047
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_CUSTOM_SET_DEVICE_ROLE: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomSetDeviceRole(Ljava/lang/String;)V

    .line 1049
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1028
    :sswitch_1
    const/4 v5, 0x0

    .line 1030
    .local v5, "callbackFormat":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .end local v5    # "callbackFormat":I
    .local v0, "callbackFormat":I
    nop

    .line 1036
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_RFG_SET_RANGING_CALLBACK: callbackFormat No."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomSetRangingCallback(I)V

    .line 1038
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1031
    .end local v0    # "callbackFormat":I
    .restart local v5    # "callbackFormat":I
    :catch_0
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MSG_CUSTOM_SET_RANGING_CALLBACK: Exception occurred - Fail to convert String->int"

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1034
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "callbackFormat":I
    :sswitch_2
    const-string v0, "MSG_CUSTOM_DEINIT_SESSION"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomDeinitSession()V

    .line 1016
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOn()Z

    .line 1017
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1018
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1008
    :sswitch_3
    const-string v0, "MSG_CUSTOM_SET_ANTENNA_PHASE_FLIP"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    move/from16 v18, v3

    goto/16 :goto_8

    .line 994
    :sswitch_4
    const-string v0, "MSG_CUSTOM_RANGING_STOP"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomRangingStop()V

    .line 996
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0, v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$mwaitUntilDeviceStatusChanged(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)Z

    move-result v0

    .line 997
    .local v0, "res":Z
    if-nez v0, :cond_1

    .line 998
    const-string v5, "MSG_CUSTOM_RANGING_STOP: rangingStop Failed"

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 1001
    :cond_1
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 1002
    iput-boolean v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsAnchorUwbRangingOn:Z

    .line 1004
    move/from16 v18, v3

    goto/16 :goto_8

    .line 981
    .end local v0    # "res":Z
    :sswitch_5
    const-string v0, "MSG_CUSTOM_RANGING_START_AS_ANCHOR"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomRangingStartAsAnchor()V

    .line 983
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0, v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$mwaitUntilDeviceStatusChanged(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)Z

    move-result v0

    .line 984
    .restart local v0    # "res":Z
    if-nez v0, :cond_2

    .line 985
    const-string v5, "MSG_CUSTOM_RANGING_START_AS_ANCHOR: rangingStart Failed"

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 988
    :cond_2
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 990
    move/from16 v18, v3

    goto/16 :goto_8

    .line 811
    .end local v0    # "res":Z
    :sswitch_6
    const-string v0, "MSG_TEST_FUNCTION_CHECK_RANGING_START"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-boolean v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    if-nez v0, :cond_3

    .line 814
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 815
    move/from16 v18, v3

    goto/16 :goto_8

    .line 818
    :cond_3
    const/16 v0, 0x7f

    .line 819
    .local v0, "rmsTxPower":S
    const/16 v5, 0x7f

    .line 820
    .local v5, "peakTxPower":S
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    invoke-direct {v1, v6, v0, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxPower(BSS)I

    move-result v6

    .line 822
    .local v6, "status":I
    if-eqz v6, :cond_4

    .line 823
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 824
    move/from16 v18, v3

    goto/16 :goto_8

    .line 826
    :cond_4
    const-string v7, "MAX Back-off is applied, TX_POWER_ID_127"

    invoke-static {v15, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    .line 829
    iput-boolean v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsReportResult:Z

    .line 830
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPdoaArr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 831
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mAoaArr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 833
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v7, v8}, Landroid/uwb/RangingSession;->start(Landroid/os/PersistableBundle;)V

    .line 835
    move/from16 v18, v3

    goto/16 :goto_8

    .line 970
    .end local v0    # "rmsTxPower":S
    .end local v5    # "peakTxPower":S
    .end local v6    # "status":I
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_SET_TX_RX_ANTENNA: ant="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxRxAntenna(Ljava/lang/String;)Z

    move-result v0

    .line 972
    .local v0, "res":Z
    if-nez v0, :cond_5

    .line 973
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 975
    :cond_5
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 977
    move/from16 v18, v3

    goto/16 :goto_8

    .line 848
    .end local v0    # "res":Z
    :sswitch_8
    const-string v0, "MSG_TEST_READ_ALL_TX_POWER_FROM_EFS"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testReadAllTxPowerFromEfs()V

    .line 851
    move/from16 v18, v3

    goto/16 :goto_8

    .line 940
    :sswitch_9
    const-string v0, "MSG_TEST_READ_ALL_PHASE_OFFSET_FROM_EFS"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testReadAllPhaseOffsetFromEfs()V

    .line 942
    move/from16 v18, v3

    goto/16 :goto_8

    .line 839
    :sswitch_a
    const-string v0, "MSG_TEST_WRITE_ALL_TX_POWER"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "sDataArray":[Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testWriteAllTxPower([Ljava/lang/String;)V

    .line 844
    move/from16 v18, v3

    goto/16 :goto_8

    .line 919
    .end local v0    # "sDataArray":[Ljava/lang/String;
    :sswitch_b
    const-string v0, "MSG_TEST_OVERWRITE_PHASE_OFFSET"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 922
    .local v5, "tmp":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 923
    .local v6, "phaseData":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 924
    .local v13, "channel":B
    const/4 v15, 0x0

    .line 926
    .local v15, "phaseOffset":F
    array-length v0, v6

    if-ne v0, v8, :cond_6

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v6, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v6, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    aget-object v0, v6, v11

    :goto_0
    move-object v9, v0

    .line 929
    .local v9, "rxPair":Ljava/lang/String;
    :try_start_1
    aget-object v0, v6, v12

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    move v13, v0

    .line 930
    array-length v0, v6

    if-ne v0, v8, :cond_7

    aget-object v0, v6, v7

    goto :goto_1

    :cond_7
    aget-object v0, v6, v10

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 934
    .end local v15    # "phaseOffset":F
    .local v0, "phaseOffset":F
    nop

    .line 935
    invoke-direct {v1, v13, v9, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testOverwritePhaseOffset(BLjava/lang/String;F)V

    .line 936
    move/from16 v18, v3

    goto/16 :goto_8

    .line 931
    .end local v0    # "phaseOffset":F
    .restart local v15    # "phaseOffset":F
    :catch_1
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 933
    move/from16 v18, v3

    goto/16 :goto_8

    .line 409
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "tmp":Ljava/lang/String;
    .end local v6    # "phaseData":[Ljava/lang/String;
    .end local v9    # "rxPair":Ljava/lang/String;
    .end local v13    # "channel":B
    .end local v15    # "phaseOffset":F
    :sswitch_c
    const-string v0, "MSG_TEST_CHECK_ANTENNA_CONNECTION_STATUS"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->checkAntennaConnectionStatus()V

    .line 412
    move/from16 v18, v3

    goto/16 :goto_8

    .line 1022
    :sswitch_d
    const-string v0, "MSG_TEST_GET_CHIP_INFO"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testGetChipInfo()V

    .line 1024
    move/from16 v18, v3

    goto/16 :goto_8

    .line 964
    :sswitch_e
    const-string v0, "MSG_TEST_ESE_CONNECTIVITY"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testEseConnectivity()V

    .line 966
    move/from16 v18, v3

    goto/16 :goto_8

    .line 958
    :sswitch_f
    const-string v0, "MSG_TEST_GET_ESE_BINDING_COUNT"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testGetEseBindingCount()V

    .line 960
    move/from16 v18, v3

    goto/16 :goto_8

    .line 952
    :sswitch_10
    const-string v0, "MSG_TEST_GET_ESE_BINDING_STATUS"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testEseBindingCheck()V

    .line 954
    move/from16 v18, v3

    goto/16 :goto_8

    .line 946
    :sswitch_11
    const-string v0, "MSG_TEST_ESE_DO_BIND"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testEseDoBind()V

    .line 948
    move/from16 v18, v3

    goto/16 :goto_8

    .line 899
    :sswitch_12
    const-string v0, "MSG_TEST_READ_PHASE_OFFSET"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 902
    .restart local v5    # "tmp":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 903
    .restart local v6    # "phaseData":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 905
    .local v8, "channel":B
    array-length v0, v6

    if-ne v0, v7, :cond_8

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v6, v11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v7, v6, v10

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    aget-object v0, v6, v11

    :goto_2
    move-object v7, v0

    .line 908
    .local v7, "rxPair":Ljava/lang/String;
    :try_start_2
    aget-object v0, v6, v12

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 912
    .end local v8    # "channel":B
    .local v0, "channel":B
    nop

    .line 914
    invoke-direct {v1, v0, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testReadPhaseOffset(BLjava/lang/String;)V

    .line 915
    move/from16 v18, v3

    goto/16 :goto_8

    .line 909
    .end local v0    # "channel":B
    .restart local v8    # "channel":B
    :catch_2
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v9, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 911
    move/from16 v18, v3

    goto/16 :goto_8

    .line 877
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "tmp":Ljava/lang/String;
    .end local v6    # "phaseData":[Ljava/lang/String;
    .end local v7    # "rxPair":Ljava/lang/String;
    .end local v8    # "channel":B
    :sswitch_13
    const-string v0, "MSG_TEST_WRITE_PHASE_OFFSET"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 880
    .restart local v5    # "tmp":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 881
    .restart local v6    # "phaseData":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 882
    .restart local v13    # "channel":B
    const/4 v15, 0x0

    .line 884
    .restart local v15    # "phaseOffset":F
    array-length v0, v6

    if-ne v0, v8, :cond_9

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v6, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v9, v6, v10

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    aget-object v0, v6, v11

    :goto_3
    move-object v9, v0

    .line 887
    .restart local v9    # "rxPair":Ljava/lang/String;
    :try_start_3
    aget-object v0, v6, v12

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    move v13, v0

    .line 888
    array-length v0, v6

    if-ne v0, v8, :cond_a

    aget-object v0, v6, v7

    goto :goto_4

    :cond_a
    aget-object v0, v6, v10

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 892
    .end local v15    # "phaseOffset":F
    .local v0, "phaseOffset":F
    nop

    .line 894
    invoke-direct {v1, v13, v9, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testWritePhaseOffset(BLjava/lang/String;F)V

    .line 895
    move/from16 v18, v3

    goto/16 :goto_8

    .line 889
    .end local v0    # "phaseOffset":F
    .restart local v15    # "phaseOffset":F
    :catch_3
    move-exception v0

    .line 890
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 891
    return-void

    .line 864
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "tmp":Ljava/lang/String;
    .end local v6    # "phaseData":[Ljava/lang/String;
    .end local v9    # "rxPair":Ljava/lang/String;
    .end local v13    # "channel":B
    .end local v15    # "phaseOffset":F
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_READ_FROM_EFS: path="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/efs/sec_efs/uwb_factory/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "res":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 868
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 870
    :cond_b
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 873
    move/from16 v18, v3

    goto/16 :goto_8

    .line 855
    .end local v0    # "res":Ljava/lang/String;
    :sswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_TEST_WRITE_TO_EFS: sData="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 859
    .local v5, "powerIndex":Ljava/lang/String;
    invoke-direct {v1, v0, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testWriteToEfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    move/from16 v18, v3

    goto/16 :goto_8

    .line 788
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v5    # "powerIndex":Ljava/lang/String;
    :sswitch_16
    iget-boolean v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    if-nez v0, :cond_c

    .line 789
    const-string v0, "MSG_TEST_RANGING_START: Session Is Not Opened Yet"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 791
    move/from16 v18, v3

    goto/16 :goto_8

    .line 794
    :cond_c
    const-string v0, "MSG_TEST_RANGING_START"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iput v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentRangingCount:I

    .line 796
    iput-boolean v11, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsReportResult:Z

    .line 798
    iput v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingErrorCount:I

    .line 799
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPdoaArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 800
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mAoaArr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 801
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDistance:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 802
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRssi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 803
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mSnr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 805
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mRangingSession:Landroid/uwb/RangingSession;

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v0, v5}, Landroid/uwb/RangingSession;->start(Landroid/os/PersistableBundle;)V

    .line 807
    move/from16 v18, v3

    goto/16 :goto_8

    .line 775
    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_READ_RSSI: rxAnt="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setRxAntenna(Ljava/lang/String;)Z

    move-result v0

    .line 778
    .local v0, "res":Z
    if-nez v0, :cond_d

    .line 779
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 780
    move/from16 v18, v3

    goto/16 :goto_8

    .line 782
    :cond_d
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->startPerRx()V

    .line 784
    move/from16 v18, v3

    goto/16 :goto_8

    .line 713
    .end local v0    # "res":Z
    :sswitch_18
    const-string v5, "MSG_TEST_SET_TX_CALIBRATED_POWER"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string v5, "/efs/sec_efs/uwb_factory/5_M_1"

    .line 716
    .local v5, "path":Ljava/lang/String;
    iget-byte v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    const-string v8, "MSG_TEST_SET_TX_CALIBRATED_POWER: Undefined Tx ANT"

    if-ne v7, v6, :cond_10

    .line 717
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    if-ne v6, v11, :cond_e

    .line 718
    const-string v5, "/efs/sec_efs/uwb_factory/5_M_1"

    goto :goto_5

    .line 719
    :cond_e
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    if-ne v6, v10, :cond_f

    .line 720
    const-string v5, "/efs/sec_efs/uwb_factory/5_P_1"

    goto :goto_5

    .line 722
    :cond_f
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 724
    move/from16 v18, v3

    goto/16 :goto_8

    .line 726
    :cond_10
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentChannel:B

    const/16 v7, 0x9

    if-ne v6, v7, :cond_17

    .line 727
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    if-ne v6, v11, :cond_11

    .line 728
    const-string v5, "/efs/sec_efs/uwb_factory/9_M_1"

    goto :goto_5

    .line 729
    :cond_11
    iget-byte v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    if-ne v6, v10, :cond_16

    .line 730
    const-string v5, "/efs/sec_efs/uwb_factory/9_P_1"

    .line 742
    :goto_5
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 743
    const-string v0, "MSG_TEST_SET_TX_CALIBRATED_POWER: Read Calibrated Tx Power Failed"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    const-string v6, "NG,NO_CAL"

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 745
    move/from16 v18, v3

    goto/16 :goto_8

    .line 748
    :cond_12
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v6

    .line 749
    .local v6, "rmsTxPower":S
    const/4 v7, 0x0

    .line 751
    .local v7, "peakTxPower":S
    const/16 v8, -0x8000

    if-ne v6, v8, :cond_13

    .line 752
    const-string v0, "MSG_TEST_SET_TX_CALIBRATED_POWER: RMS TxPower is Wrong Value"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 754
    move/from16 v18, v3

    goto/16 :goto_8

    .line 757
    :cond_13
    iget-byte v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    invoke-direct {v1, v8, v6, v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxPower(BSS)I

    move-result v8

    .line 758
    .local v8, "res":I
    if-eqz v8, :cond_14

    .line 759
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 760
    move/from16 v18, v3

    goto/16 :goto_8

    .line 763
    :cond_14
    iget-object v9, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v9

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->startTestModeSession(I[B)I

    move-result v0

    .line 764
    .end local v8    # "res":I
    .local v0, "res":I
    if-eqz v0, :cond_15

    .line 765
    const-string v8, "MSG_TEST_SET_TX_CALIBRATED_POWER: startTestModeSession Failed"

    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 768
    :cond_15
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 771
    move/from16 v18, v3

    goto/16 :goto_8

    .line 732
    .end local v0    # "res":I
    .end local v6    # "rmsTxPower":S
    .end local v7    # "peakTxPower":S
    :cond_16
    invoke-static {v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 734
    move/from16 v18, v3

    goto/16 :goto_8

    .line 737
    :cond_17
    const-string v0, "MSG_TEST_SET_TX_CALIBRATED_POWER: Undefined Channel"

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 739
    move/from16 v18, v3

    goto/16 :goto_8

    .line 682
    .end local v5    # "path":Ljava/lang/String;
    :sswitch_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_TEST_SET_TX_POWER: TX powerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v5, 0x0

    .line 685
    .local v5, "rmsTxPower":S
    const/4 v6, 0x0

    .line 687
    .local v6, "peakTxPower":S
    :try_start_4
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 693
    .end local v5    # "rmsTxPower":S
    .local v7, "rmsTxPower":S
    nop

    .line 695
    iget-byte v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    invoke-direct {v1, v5, v7, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxPower(BSS)I

    move-result v5

    .line 696
    .local v5, "res":I
    if-eqz v5, :cond_18

    .line 697
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 698
    move/from16 v18, v3

    goto/16 :goto_8

    .line 701
    :cond_18
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v12, v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->startTestModeSession(I[B)I

    move-result v0

    .line 702
    .end local v5    # "res":I
    .restart local v0    # "res":I
    if-eqz v0, :cond_19

    .line 703
    const-string v5, "MSG_TEST_SET_TX_POWER: startTestModeSession Failed"

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 706
    :cond_19
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 709
    move/from16 v18, v3

    goto/16 :goto_8

    .line 688
    .end local v0    # "res":I
    .end local v7    # "rmsTxPower":S
    .local v5, "rmsTxPower":S
    :catch_4
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "MSG_TEST_SET_TX_POWER: Exception occurred"

    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 692
    move/from16 v18, v3

    goto/16 :goto_8

    .line 642
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "rmsTxPower":S
    .end local v6    # "peakTxPower":S
    :sswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_RF_LOOPBACK: antenna_caseNo="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOn()Z

    move-result v0

    .line 645
    .local v0, "res":Z
    if-nez v0, :cond_1a

    .line 646
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 647
    move/from16 v18, v3

    goto/16 :goto_8

    .line 650
    :cond_1a
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->initTestModeSession()Z

    move-result v0

    .line 651
    if-nez v0, :cond_1b

    .line 652
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 653
    move/from16 v18, v3

    goto/16 :goto_8

    .line 656
    :cond_1b
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setRfLoopbackAntenna(Ljava/lang/String;)Z

    move-result v0

    .line 657
    if-nez v0, :cond_1c

    .line 658
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 659
    move/from16 v18, v3

    goto/16 :goto_8

    .line 662
    :cond_1c
    const/16 v5, 0x7f

    .line 663
    .restart local v5    # "rmsTxPower":S
    const/16 v6, 0x7f

    .line 664
    .restart local v6    # "peakTxPower":S
    iget-byte v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentTxAntenna:B

    invoke-direct {v1, v7, v5, v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxPower(BSS)I

    move-result v7

    .line 666
    .local v7, "status":I
    if-eqz v7, :cond_1d

    .line 667
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 668
    move/from16 v18, v3

    goto/16 :goto_8

    .line 670
    :cond_1d
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->startRfLoopback()Ljava/lang/String;

    move-result-object v8

    .line 671
    .local v8, "response":Ljava/lang/String;
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOff()Z

    move-result v0

    .line 672
    if-nez v0, :cond_1e

    .line 673
    iget-object v9, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 675
    :cond_1e
    iget-object v9, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 678
    move/from16 v18, v3

    goto/16 :goto_8

    .line 619
    .end local v0    # "res":Z
    .end local v5    # "rmsTxPower":S
    .end local v6    # "peakTxPower":S
    .end local v7    # "status":I
    .end local v8    # "response":Ljava/lang/String;
    :sswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_SET_STS_PACKET_TYPE: RframeConfig="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v5, 0x0

    .line 623
    .local v5, "rframeConfig":B
    :try_start_5
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 629
    .end local v5    # "rframeConfig":B
    .local v0, "rframeConfig":B
    nop

    .line 631
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setRframeConfg(B)Z

    move-result v5

    .line 632
    .local v5, "res":Z
    if-nez v5, :cond_1f

    .line 633
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 635
    :cond_1f
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 638
    move/from16 v18, v3

    goto/16 :goto_8

    .line 624
    .end local v0    # "rframeConfig":B
    .local v5, "rframeConfig":B
    :catch_5
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MSG_TEST_SET_STS_PACKET_TYPE: Exception occurred"

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 627
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 628
    move/from16 v18, v3

    goto/16 :goto_8

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "rframeConfig":B
    :sswitch_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v6

    const-string v6, "MSG_TEST_SET_AOA_RANGING_CONFIG: sData="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 574
    .local v6, "sDataArray":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 575
    .local v9, "stsIndex":I
    const/16 v17, 0x28

    .line 578
    .local v17, "rangingInterval":S
    :try_start_6
    aget-object v0, v6, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    .line 579
    aget-object v0, v6, v11

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mFilterCount:I

    .line 580
    aget-object v0, v6, v10

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 581
    aget-object v0, v6, v7

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 582
    aget-object v0, v6, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 583
    array-length v0, v6

    if-ne v0, v5, :cond_20

    .line 584
    aget-object v0, v6, v16

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move/from16 v17, v0

    move/from16 v5, v17

    goto :goto_6

    .line 583
    :cond_20
    move/from16 v5, v17

    .line 586
    .end local v17    # "rangingInterval":S
    .local v5, "rangingInterval":S
    :goto_6
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RangingCount="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mMaxRangingCount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", FilterCount="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mFilterCount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", DeviceMacAddress="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", DstMacAddress="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", StsIndex="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", RangingInterval="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 597
    nop

    .line 599
    new-instance v0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;-><init>()V

    iget-short v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDeviceMacAddress:S

    .line 600
    invoke-virtual {v0, v7}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setDeviceMacAddress(S)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v0

    iget-short v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mDstMacAddress:S

    .line 601
    invoke-virtual {v0, v7}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setDstMacAddress(S)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v5}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->setRangingInterval(I)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v0

    .line 605
    .local v0, "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v7

    iget v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v7, v8}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v7

    .line 606
    .local v7, "sessionToken":I
    new-instance v8, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;

    int-to-long v10, v7

    invoke-direct {v8, v10, v11, v0}, Lcom/samsung/uwb/support/uci/cmd/SessionSetAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 607
    .local v8, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v10, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10, v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v10

    aget-byte v10, v10, v12

    .line 608
    .local v10, "status":I
    if-eqz v10, :cond_21

    .line 609
    const-string v11, "MSG_TEST_SET_AOA_RANGING_CONFIG: SessionSetAppConfigCommand Failed"

    invoke-static {v15, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v11, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 612
    :cond_21
    iget-object v11, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 615
    move/from16 v18, v3

    goto/16 :goto_8

    .line 592
    .end local v0    # "appConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v7    # "sessionToken":I
    .end local v8    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v10    # "status":I
    :catch_6
    move-exception v0

    move/from16 v17, v5

    goto :goto_7

    .end local v5    # "rangingInterval":S
    .restart local v17    # "rangingInterval":S
    :catch_7
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    const-string v5, "MSG_TEST_SET_AOA_RANGING_CONFIG: Exception occurred"

    invoke-static {v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    iget-object v5, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 596
    move/from16 v18, v3

    goto/16 :goto_8

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v6    # "sDataArray":[Ljava/lang/String;
    .end local v9    # "stsIndex":I
    .end local v17    # "rangingInterval":S
    :sswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_SET_PREAMBLE_INDEX: preambleCode="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v5, 0x0

    .line 552
    .local v5, "preambleCode":B
    :try_start_8
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 558
    .end local v5    # "preambleCode":B
    .local v0, "preambleCode":B
    nop

    .line 560
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setPreambleCode(B)Z

    move-result v5

    .line 561
    .local v5, "res":Z
    if-nez v5, :cond_22

    .line 562
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    move/from16 v18, v3

    goto/16 :goto_8

    .line 564
    :cond_22
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 567
    move/from16 v18, v3

    goto/16 :goto_8

    .line 553
    .end local v0    # "preambleCode":B
    .local v5, "preambleCode":B
    :catch_8
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "MSG_TEST_SET_PREAMBLE_INDEX: Exception occurred"

    invoke-static {v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    iget-object v6, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 557
    move/from16 v18, v3

    goto/16 :goto_8

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "preambleCode":B
    :sswitch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_TEST_CHANGE_GAP_AND_PACKET_WITH_FILTER: sData="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 500
    .local v5, "sDataArray":[Ljava/lang/String;
    :try_start_9
    aget-object v0, v5, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, "gap":I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 502
    .local v6, "win":I
    aget-object v9, v5, v10

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 503
    .local v9, "noOfPackets":I
    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    iput v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPerRxTimeout:I

    .line 504
    aget-object v7, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 506
    .local v7, "filterCnt":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TGap="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", TWin="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", noOfPackets="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", RxTimeout="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mPerRxTimeout:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", filterCnt="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 516
    nop

    .line 518
    new-instance v8, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    invoke-direct {v8}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;-><init>()V

    .line 519
    invoke-virtual {v8, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTGap(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v8

    .line 520
    invoke-virtual {v8, v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTWin(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v8

    .line 521
    invoke-virtual {v8, v9}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setNumOfPackets(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v8

    .line 522
    invoke-virtual {v8}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v8

    .line 524
    .local v8, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v10, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v10}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->reConfigureTestModeSession(Ljava/util/List;)I

    move-result v10

    .line 525
    .restart local v10    # "status":I
    if-eqz v10, :cond_23

    .line 526
    iget-object v11, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v11}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 527
    move/from16 v18, v3

    goto/16 :goto_8

    .line 530
    :cond_23
    new-instance v11, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    invoke-direct {v11}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;-><init>()V

    .line 531
    invoke-virtual {v11, v7}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->setRssiAverageFilterCount(I)Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;

    move-result-object v11

    .line 532
    invoke-virtual {v11}, Lcom/samsung/uwb/support/data/param/vendorappconfig/VendorAppConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v11

    .line 533
    .local v11, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    move/from16 v16, v12

    iget-object v12, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v12}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v12

    move/from16 v17, v0

    .end local v0    # "gap":I
    .local v17, "gap":I
    iget v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mCurrentSessionId:I

    invoke-interface {v12, v0}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v0

    .line 534
    .local v0, "sessionToken":I
    new-instance v12, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    int-to-long v2, v0

    invoke-direct {v12, v2, v3, v11}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 536
    .local v12, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2, v12}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v2

    aget-byte v2, v2, v16

    .line 537
    .end local v10    # "status":I
    .local v2, "status":I
    if-eqz v2, :cond_24

    .line 538
    const-string v3, "MSG_TEST_CHANGE_GAP_AND_PACKET_WITH_FILTER: respUci is null or size of respUci is zero"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 541
    :cond_24
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 544
    goto/16 :goto_8

    .line 511
    .end local v0    # "sessionToken":I
    .end local v2    # "status":I
    .end local v6    # "win":I
    .end local v7    # "filterCnt":I
    .end local v8    # "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v9    # "noOfPackets":I
    .end local v11    # "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v12    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v17    # "gap":I
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :catch_9
    move-exception v0

    move/from16 v18, v3

    .line 512
    .end local v3    # "msgType":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "msgType":I
    const-string v2, "MSG_TEST_CHANGE_GAP_AND_PACKET_WITH_FILTER: Exception occurred"

    invoke-static {v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 515
    goto/16 :goto_8

    .line 463
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "sDataArray":[Ljava/lang/String;
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_1f
    move/from16 v18, v3

    move/from16 v16, v12

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_CHANGE_GAP_AND_PACKET: TGap_TWin_noOfPackets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "sDataArray":[Ljava/lang/String;
    :try_start_a
    aget-object v0, v2, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 469
    .local v0, "gap":I
    aget-object v3, v2, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 470
    .local v3, "win":I
    aget-object v5, v2, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 476
    .local v5, "noOfPackets":I
    nop

    .line 478
    new-instance v6, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;-><init>()V

    .line 479
    invoke-virtual {v6, v0}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTGap(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v6

    .line 480
    invoke-virtual {v6, v3}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setTWin(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v6

    .line 481
    invoke-virtual {v6, v5}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->setNumOfPackets(I)Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;

    move-result-object v6

    .line 482
    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/param/testconfig/TestConfigParameter$Builder;->build()Ljava/util/List;

    move-result-object v6

    .line 484
    .local v6, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    iget-object v7, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v7}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->reConfigureTestModeSession(Ljava/util/List;)I

    move-result v7

    .line 485
    .local v7, "status":I
    if-eqz v7, :cond_25

    .line 486
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 488
    :cond_25
    iget-object v8, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v8}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 491
    goto/16 :goto_8

    .line 471
    .end local v0    # "gap":I
    .end local v3    # "win":I
    .end local v5    # "noOfPackets":I
    .end local v6    # "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .end local v7    # "status":I
    :catch_a
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MSG_TEST_CHANGE_GAP_AND_PACKET: Exception occurred"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 475
    goto/16 :goto_8

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sDataArray":[Ljava/lang/String;
    .end local v18    # "msgType":I
    .local v3, "msgType":I
    :sswitch_20
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_SET_CHANNEL: channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v2, 0x0

    .line 444
    .local v2, "channelId":B
    :try_start_b
    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 450
    .end local v2    # "channelId":B
    .local v0, "channelId":B
    nop

    .line 452
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setChannel(B)Z

    move-result v2

    .line 453
    .local v2, "res":Z
    if-nez v2, :cond_26

    .line 454
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 456
    :cond_26
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 459
    goto/16 :goto_8

    .line 445
    .end local v0    # "channelId":B
    .local v2, "channelId":B
    :catch_b
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MSG_TEST_SET_CHANNEL: Exception occurred"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 449
    goto/16 :goto_8

    .line 428
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "channelId":B
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_21
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_SET_RX_ANTENNA: rxAnt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setRxAntenna(Ljava/lang/String;)Z

    move-result v0

    .line 431
    .local v0, "res":Z
    if-nez v0, :cond_27

    .line 432
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 434
    :cond_27
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 436
    goto/16 :goto_8

    .line 416
    .end local v0    # "res":Z
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_22
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_SET_TX_ANTENNA: txAnt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {v1, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->setTxAntenna(Ljava/lang/String;)Z

    move-result v0

    .line 419
    .restart local v0    # "res":Z
    if-nez v0, :cond_28

    .line 420
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 422
    :cond_28
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 425
    goto/16 :goto_8

    .line 402
    .end local v0    # "res":Z
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_23
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_COMPARE_AOA_CAL_VERSION"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCompareAoaCalVersion()V

    .line 405
    goto/16 :goto_8

    .line 395
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_24
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_COMPARE_AOA_CAL"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCompareAoaCal()V

    .line 398
    goto/16 :goto_8

    .line 388
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_25
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_CREATE_AOA_CAL_TO_EFS"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCreateAoaCalToEfs()V

    .line 391
    goto/16 :goto_8

    .line 360
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_26
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_TEST_RANGING_ON: sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-boolean v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsUwbRangingOn:Z

    if-eqz v0, :cond_29

    .line 363
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 364
    goto/16 :goto_8

    .line 367
    :cond_29
    const/4 v2, 0x0

    .line 369
    .local v2, "sessionId":I
    :try_start_c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 375
    .end local v2    # "sessionId":I
    .local v0, "sessionId":I
    nop

    .line 377
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOn()Z

    move-result v2

    .line 378
    .local v2, "res":Z
    if-nez v2, :cond_2a

    .line 379
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 380
    goto/16 :goto_8

    .line 382
    :cond_2a
    invoke-direct {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->initRangingSession(I)V

    .line 384
    goto/16 :goto_8

    .line 370
    .end local v0    # "sessionId":I
    .local v2, "sessionId":I
    :catch_c
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MSG_TEST_RANGING_ON: Exception occurred"

    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    iget-object v3, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 374
    goto/16 :goto_8

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "sessionId":I
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_27
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_RANGING_OFF"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOff()Z

    move-result v0

    .line 350
    .local v0, "res":Z
    if-nez v0, :cond_2b

    .line 351
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 353
    :cond_2b
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 356
    goto/16 :goto_8

    .line 334
    .end local v0    # "res":Z
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_28
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_CAL_RF_PLL"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-boolean v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsEnabled:Z

    if-nez v0, :cond_2c

    .line 337
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 338
    goto :goto_8

    .line 341
    :cond_2c
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->doVcoPllCalibration()V

    .line 343
    goto :goto_8

    .line 310
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_29
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_UWB_ON"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-boolean v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->mIsEnabled:Z

    if-eqz v0, :cond_2d

    .line 313
    iget-object v0, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 314
    goto :goto_8

    .line 317
    :cond_2d
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOn()Z

    move-result v0

    .line 318
    .restart local v0    # "res":Z
    if-nez v0, :cond_2e

    .line 319
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 320
    goto :goto_8

    .line 323
    :cond_2e
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->initTestModeSession()Z

    move-result v0

    .line 324
    if-nez v0, :cond_2f

    .line 325
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_8

    .line 327
    :cond_2f
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 330
    goto :goto_8

    .line 297
    .end local v0    # "res":Z
    .end local v18    # "msgType":I
    .restart local v3    # "msgType":I
    :sswitch_2a
    move/from16 v18, v3

    .end local v3    # "msgType":I
    .restart local v18    # "msgType":I
    const-string v0, "MSG_TEST_UWB_OFF"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->uwbOff()Z

    move-result v0

    .line 300
    .restart local v0    # "res":Z
    if-nez v0, :cond_30

    .line 301
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    goto :goto_8

    .line 303
    :cond_30
    iget-object v2, v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;

    invoke-static {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->-$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->sendResponse(Ljava/lang/String;)V

    .line 306
    nop

    .line 1056
    .end local v0    # "res":Z
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2a
        0x1 -> :sswitch_29
        0x2 -> :sswitch_28
        0x3 -> :sswitch_27
        0x4 -> :sswitch_26
        0x5 -> :sswitch_25
        0x6 -> :sswitch_24
        0x7 -> :sswitch_23
        0x8 -> :sswitch_22
        0x9 -> :sswitch_21
        0xa -> :sswitch_20
        0xb -> :sswitch_1f
        0xc -> :sswitch_1e
        0xd -> :sswitch_1d
        0xe -> :sswitch_1c
        0xf -> :sswitch_1b
        0x10 -> :sswitch_1a
        0x11 -> :sswitch_19
        0x12 -> :sswitch_18
        0x13 -> :sswitch_17
        0x14 -> :sswitch_16
        0x15 -> :sswitch_15
        0x16 -> :sswitch_14
        0x17 -> :sswitch_13
        0x18 -> :sswitch_12
        0x19 -> :sswitch_11
        0x1a -> :sswitch_10
        0x1b -> :sswitch_f
        0x1c -> :sswitch_e
        0x1e -> :sswitch_d
        0x20 -> :sswitch_c
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x23 -> :sswitch_9
        0x24 -> :sswitch_8
        0x25 -> :sswitch_7
        0x27 -> :sswitch_6
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_4
        0xca -> :sswitch_3
        0xcb -> :sswitch_2
        0xcc -> :sswitch_1
        0xcd -> :sswitch_0
    .end sparse-switch
.end method
