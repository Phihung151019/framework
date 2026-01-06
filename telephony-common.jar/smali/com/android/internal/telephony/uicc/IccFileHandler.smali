.class public abstract Lcom/android/internal/telephony/uicc/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;,
        Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
    }
.end annotation


# static fields
.field protected static final blacklist COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final blacklist COMMAND_READ_BINARY:I = 0xb0

.field protected static final blacklist COMMAND_READ_RECORD:I = 0xb2

.field protected static final blacklist COMMAND_SEEK:I = 0xa2

.field protected static final blacklist COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final blacklist COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final blacklist EF_TYPE_CYCLIC:I = 0x3

.field protected static final blacklist EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final blacklist EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final blacklist EVENT_GET_BIG_BINARY_SIZE_DONE:I = 0x76

.field protected static final blacklist EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final blacklist EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final blacklist EVENT_GET_EF_TRANSPARENT_SIZE_DONE:I = 0xc

.field protected static final blacklist EVENT_GET_IMG_RECORD_SIZE_DONE:I = 0x70

.field protected static final blacklist EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final blacklist EVENT_GET_RECORD_SIZE_IMG_DONE:I = 0xb

.field protected static final blacklist EVENT_GET_SIM_FILE_STATUS_DONE:I = 0x74

.field protected static final blacklist EVENT_GET_USIM_PB_CAPA_DONE:I = 0x72

.field protected static final blacklist EVENT_READ_BIG_BINARY_DONE:I = 0x77

.field protected static final blacklist EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final blacklist EVENT_READ_ICON_DONE:I = 0xa

.field protected static final blacklist EVENT_READ_IMG_DONE:I = 0x9

.field protected static final blacklist EVENT_READ_IMG_RECORD_DONE:I = 0x71

.field protected static final blacklist EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final blacklist EVENT_UPDATE_ADN_DONE:I = 0x75

.field protected static final blacklist EVENT_UPDATE_LINEAR_FIXED_RECORD_DONE:I = 0x78

.field protected static final blacklist GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final blacklist GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "IccFileHandler"

.field protected static final blacklist MAX_SEC_SIM_DATA_STRING:I = 0xfd

.field protected static final blacklist READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final blacklist RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final blacklist RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final blacklist RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final blacklist RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final blacklist RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final blacklist RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final blacklist RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final blacklist RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final blacklist RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final blacklist RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final blacklist RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final blacklist TYPE_DF:I = 0x2

.field protected static final blacklist TYPE_EF:I = 0x4

.field protected static final blacklist TYPE_MF:I = 0x1

.field protected static final blacklist TYPE_RFU:I

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist EFS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final greylist-max-r mAid:Ljava/lang/String;

.field protected final greylist-max-r mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private blacklist mEfBitset:Ljava/util/BitSet;

.field protected final greylist-max-r mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected final blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 49
    const-string v0, "IccFileHandler"

    const/4 v1, 0x2

    .line 50
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccFileHandler;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1

    .line 281
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 283
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 286
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 287
    sget-object p1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->createEfs(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->EFS:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 271
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 272
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 274
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 275
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->createEfs(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->EFS:Ljava/util/Map;

    .line 276
    new-instance p1, Ljava/util/BitSet;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->EFS:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mEfBitset:Ljava/util/BitSet;

    return-void
.end method

.method private blacklist createCsimEfs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1453
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler$2;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object v0
.end method

.method private blacklist createEfs(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1400
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1402
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1404
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne p1, v0, :cond_2

    .line 1405
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->createIsimEfs()Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 1407
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 1403
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->createCsimEfs()Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    .line 1401
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->createSimEfs()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private blacklist createIsimEfs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1475
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler$3;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object v0
.end method

.method private blacklist createSimEfs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1411
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IccFileHandler$1;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    return-object v0
.end method

.method private static blacklist getDataFileSize([B)I
    .locals 2

    const/4 v0, 0x2

    .line 1315
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z
    .locals 3

    .line 634
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 635
    iget-object p2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 636
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    .line 639
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 641
    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 628
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist updateEfBitset(IZ)V
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->EFS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return-void

    .line 1392
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mEfBitset:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getAdnLikesRecordInfo(ILandroid/os/Message;)V
    .locals 1

    const/16 v0, 0x73

    .line 1347
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1350
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz p0, :cond_0

    .line 1351
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public blacklist getAdnLikesSimStatusInfo(ILandroid/os/Message;)V
    .locals 12

    const/16 v0, 0x74

    .line 1370
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 1372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist getCommonIccEFPath(I)Ljava/lang/String;
    .locals 1

    .line 1258
    const-string v0, "3F007FFF"

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1294
    :sswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIntType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 1295
    const-string p0, "3F007F20"

    return-object p0

    :cond_0
    :sswitch_1
    return-object v0

    .line 1272
    :sswitch_2
    const-string p0, "3F007F10"

    return-object p0

    .line 1282
    :sswitch_3
    const-string p0, "3F007F105F3A"

    return-object p0

    .line 1284
    :sswitch_4
    const-string p0, "3F007F105F50"

    return-object p0

    .line 1279
    :sswitch_5
    const-string p0, "3F00"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_5
        0x2f30 -> :sswitch_5
        0x2fe2 -> :sswitch_5
        0x4f20 -> :sswitch_4
        0x4f30 -> :sswitch_3
        0x6f3a -> :sswitch_2
        0x6f3b -> :sswitch_2
        0x6f3e -> :sswitch_1
        0x6f40 -> :sswitch_2
        0x6f42 -> :sswitch_2
        0x6f43 -> :sswitch_2
        0x6f49 -> :sswitch_2
        0x6f4a -> :sswitch_2
        0x6f4b -> :sswitch_2
        0x6f4c -> :sswitch_2
        0x6f4e -> :sswitch_2
        0x6f73 -> :sswitch_0
        0x6f78 -> :sswitch_0
        0x6f7b -> :sswitch_0
        0x6f7e -> :sswitch_0
        0x6fb7 -> :sswitch_0
        0x6fe3 -> :sswitch_0
        0x6fe5 -> :sswitch_2
    .end sparse-switch
.end method

.method public greylist-max-r getEFLinearRecordSize(ILandroid/os/Message;)V
    .locals 1

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    if-nez p2, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 388
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    const/16 p3, 0x8

    .line 389
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected abstract greylist-max-r getEFPath(I)Ljava/lang/String;
.end method

.method public blacklist getEFTransparentRecordSize(ILandroid/os/Message;)V
    .locals 13

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 417
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 418
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 421
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move v4, p1

    .line 418
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getEfBitset()Ljava/util/BitSet;
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mEfBitset:Ljava/util/BitSet;

    return-object p0
.end method

.method public blacklist getEfid(Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;)I
    .locals 0

    .line 210
    iget p0, p1, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    return p0
.end method

.method public blacklist getPhoneId()I
    .locals 0

    .line 1378
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUsimPBCapa(Landroid/os/Message;)V
    .locals 1

    const/16 v0, 0x72

    .line 1361
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1363
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz p0, :cond_0

    .line 1364
    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getUsimPBCapa(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 680
    :try_start_0
    iget v3, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x7

    const-string v5, "exception caught from EVENT_GET_RECORD_SIZE"

    const/16 v6, 0xe

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xd

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x6f

    const/16 v5, 0x77

    const/16 v14, 0xfd

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_a

    .line 1013
    :pswitch_0
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 1014
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 1015
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1016
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1018
    :try_start_2
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_9

    .line 1023
    :cond_0
    iget-boolean v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    if-nez v0, :cond_1

    .line 1024
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 1025
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1027
    :cond_1
    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    add-int/2addr v0, v12

    iput v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 1032
    iget v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-le v0, v3, :cond_3

    .line 1033
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    new-array v0, v0, [B

    move v3, v13

    .line 1034
    :goto_0
    iget v5, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    if-ge v3, v5, :cond_2

    .line 1035
    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    mul-int/lit16 v7, v3, 0xfd

    .line 1036
    array-length v8, v5

    invoke-static {v5, v13, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1038
    :cond_2
    iget v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    invoke-direct {v1, v3, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 1040
    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    mul-int/lit16 v3, v0, 0xfd

    shr-int/lit8 v19, v3, 0x8

    mul-int/2addr v0, v14

    and-int/lit16 v0, v0, 0xff

    .line 1045
    iget-object v15, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v18

    .line 1048
    iget v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-ge v7, v8, :cond_4

    :goto_1
    move/from16 v21, v14

    goto :goto_2

    :cond_4
    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    mul-int/2addr v7, v14

    sub-int v14, v8, v7

    goto :goto_1

    :goto_2
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1051
    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const/16 v16, 0xb0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v20, v0

    move/from16 v17, v3

    move-object/from16 v24, v7

    .line 1045
    invoke-interface/range {v15 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_1
    move-exception v0

    move-object v6, v2

    goto/16 :goto_9

    .line 968
    :pswitch_1
    :try_start_3
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 969
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    .line 970
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 971
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 973
    :try_start_4
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 974
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 978
    :cond_5
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 979
    iget v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    .line 981
    aget-byte v10, v0, v10

    if-ne v11, v10, :cond_9

    .line 986
    aget-byte v9, v0, v9

    if-nez v9, :cond_8

    .line 992
    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v8, v0

    .line 997
    iput v13, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 998
    iput v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mBinSize:I

    .line 999
    div-int/lit16 v0, v8, 0xfd

    iput v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    if-le v8, v14, :cond_6

    move v13, v12

    .line 1000
    :cond_6
    iput-boolean v13, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    iget v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mCountPhases:I

    add-int/2addr v7, v12

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->results:Ljava/util/ArrayList;

    .line 1002
    iget-object v15, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v18

    if-le v8, v14, :cond_7

    move/from16 v21, v14

    goto :goto_3

    :cond_7
    move/from16 v21, v8

    .line 1005
    :goto_3
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 1008
    invoke-virtual {v1, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    const/16 v16, 0xb0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v0

    move/from16 v17, v3

    .line 1002
    invoke-interface/range {v15 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_8
    move v0, v3

    .line 987
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 988
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    :cond_9
    move v0, v3

    .line 982
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 983
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1200
    :pswitch_2
    :try_start_5
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 1201
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v4

    check-cast v6, Landroid/os/Message;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1203
    :try_start_6
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1205
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_a

    .line 1209
    :cond_a
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1211
    aget-byte v3, v0, v10

    if-ne v11, v3, :cond_d

    .line 1215
    aget-byte v3, v0, v9

    if-eq v12, v3, :cond_c

    if-ne v7, v3, :cond_b

    goto :goto_4

    .line 1216
    :cond_b
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    :cond_c
    :goto_4
    const/16 v3, 0xb

    .line 1218
    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    filled-new-array {v0}, [I

    move-result-object v0

    .line 1219
    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1212
    :cond_d
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1225
    :pswitch_3
    :try_start_7
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1226
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/os/Message;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1228
    :try_start_8
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_e

    .line 1229
    invoke-direct {v1, v6, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1233
    :cond_e
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1234
    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    .line 1186
    :pswitch_4
    :try_start_9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 1187
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1188
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1189
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1191
    :try_start_a
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_a

    .line 1195
    :cond_f
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    .line 1143
    :pswitch_5
    :try_start_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 1144
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 1145
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 1146
    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 1148
    :try_start_c
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v5, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_a

    .line 1152
    :cond_10
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 1156
    aget-byte v3, v0, v10

    if-ne v11, v3, :cond_13

    .line 1160
    aget-byte v3, v0, v9

    if-ne v12, v3, :cond_12

    .line 1164
    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    iput v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 1166
    aget-byte v6, v0, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v6, v0

    .line 1169
    div-int/2addr v6, v3

    iput v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 1171
    iget-boolean v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v0, :cond_11

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v6, v5

    goto/16 :goto_9

    .line 1175
    :cond_11
    :goto_5
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v9

    iget v10, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v12, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v15, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v0, 0x71

    .line 1179
    invoke-virtual {v1, v0, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    const/16 v7, 0xb2

    const/4 v11, 0x4

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 1175
    invoke-interface/range {v6 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1161
    :cond_12
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 1157
    :cond_13
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 1101
    :pswitch_6
    :try_start_d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1102
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 1104
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    .line 1105
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 1107
    :try_start_e
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 1108
    invoke-direct {v1, v6, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1111
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pblc EFID = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "record number = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "total record = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "Used Record = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "count record = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1113
    iget-boolean v0, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-nez v0, :cond_15

    .line 1115
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget-object v0, v0, v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    .line 1116
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v15, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iget v0, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    iget-object v3, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget-object v17, v3, v13

    iget-object v3, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->number:Ljava/lang/String;

    iget-object v4, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    move/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1117
    invoke-direct {v1, v6, v14, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1120
    :cond_15
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget-object v0, v0, v8

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v19

    .line 1121
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget v15, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iget v0, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->recordIndex:I

    iget-object v7, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->alphaTags:[Ljava/lang/String;

    aget-object v17, v7, v13

    iget-object v7, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->number:Ljava/lang/String;

    iget-object v8, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->additionalNumbers:[Ljava/lang/String;

    move/from16 v16, v0

    move-object/from16 v18, v7

    move-object/from16 v20, v8

    invoke-direct/range {v14 .. v20}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1122
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    iget v0, v5, Lcom/android/internal/telephony/uicc/SimPBEntryResult;->nextIndex:I

    iput v0, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 1124
    iget v5, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    iget v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    const v8, 0xffff

    if-le v5, v7, :cond_16

    if-ne v0, v8, :cond_16

    .line 1126
    const-string v0, "Read ADN finished unexpected, Try again"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 1127
    iget v0, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V

    return-void

    :cond_16
    if-eq v5, v7, :cond_18

    if-ne v0, v8, :cond_17

    goto :goto_6

    :cond_17
    add-int/2addr v7, v12

    .line 1131
    iput v7, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 1133
    iget-object v15, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz v15, :cond_35

    .line 1134
    iget v5, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    .line 1135
    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const/16 v16, 0xb2

    const/16 v19, 0x0

    move/from16 v18, v0

    move/from16 v17, v5

    .line 1134
    invoke-interface/range {v15 .. v20}, Lcom/android/internal/telephony/SemCommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1129
    :cond_18
    :goto_6
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    return-void

    .line 1062
    :pswitch_7
    :try_start_f
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1064
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_19

    move v3, v13

    move v5, v3

    goto :goto_7

    .line 1066
    :cond_19
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, [I

    aget v5, v5, v13

    .line 1067
    move-object v5, v3

    check-cast v5, [I

    aget v5, v5, v12

    .line 1068
    check-cast v3, [I

    aget v3, v3, v8

    .line 1071
    :goto_7
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    .line 1072
    iget-object v6, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 1074
    :try_start_10
    iput v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mUsedRecords:I

    .line 1075
    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 1077
    iput v13, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    if-nez v5, :cond_1a

    .line 1083
    new-instance v3, Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 1084
    invoke-direct {v1, v6, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 1088
    :cond_1a
    iget-boolean v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    if-eqz v3, :cond_1b

    .line 1089
    new-instance v3, Ljava/util/ArrayList;

    iget v5, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mTotalRecords:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->results:Ljava/util/ArrayList;

    .line 1092
    :cond_1b
    iget v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    add-int/2addr v3, v12

    iput v3, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mCountRecords:I

    .line 1094
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz v7, :cond_35

    .line 1095
    iget v9, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    iget v10, v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 1096
    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    const/16 v8, 0xb2

    const/4 v11, 0x0

    .line 1095
    invoke-interface/range {v7 .. v12}, Lcom/android/internal/telephony/SemCommandsInterface;->getPhoneBookEntry(IIILjava/lang/String;Landroid/os/Message;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    return-void

    .line 929
    :pswitch_8
    :try_start_11
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/AsyncResult;

    .line 930
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/os/Message;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    .line 931
    :try_start_12
    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 933
    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 935
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 940
    :cond_1c
    iget-object v3, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 942
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 944
    aget-byte v4, v3, v10

    if-ne v11, v4, :cond_1e

    .line 951
    aget-byte v4, v3, v9

    if-nez v4, :cond_1d

    .line 958
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v3

    .line 960
    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 962
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 953
    :cond_1d
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 955
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 946
    :cond_1e
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 948
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    .line 716
    :pswitch_9
    :try_start_13
    const-string v3, "IccFileHandler: get record size img done"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 717
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 718
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 719
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 720
    iget-object v7, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 722
    :try_start_14
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v7, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 723
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 724
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    return-void

    :catch_3
    move-exception v0

    move-object v6, v7

    goto/16 :goto_9

    .line 728
    :cond_1f
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 729
    iget-object v3, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 730
    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    iput v5, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 732
    aget-byte v5, v0, v10

    if-ne v11, v5, :cond_21

    aget-byte v0, v0, v9

    if-ne v12, v0, :cond_21

    .line 739
    const-string v0, "IccFileHandler: read EF IMG"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    if-nez v3, :cond_20

    .line 741
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    :cond_20
    move-object v11, v3

    .line 743
    iget-object v8, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v12, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v14, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0x9

    .line 747
    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    const/16 v9, 0xb2

    const/4 v13, 0x4

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, v0

    .line 743
    invoke-interface/range {v8 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 734
    :cond_21
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 735
    const-string v0, "IccFileHandler: File type mismatch: Throw Exception"

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    .line 736
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 848
    :pswitch_a
    :try_start_15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 849
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 850
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 851
    iget-object v6, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    .line 854
    :try_start_16
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 855
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 858
    :cond_22
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 859
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    return-void

    .line 682
    :pswitch_b
    :try_start_17
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 683
    iget-object v4, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 684
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 685
    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    .line 687
    :try_start_18
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v5, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 689
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 694
    :cond_23
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 696
    aget-byte v3, v0, v10

    if-ne v11, v3, :cond_24

    aget-byte v3, v0, v9

    if-ne v12, v3, :cond_24

    .line 704
    new-array v3, v7, [I

    .line 705
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v13

    .line 706
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v0

    aput v0, v3, v12

    .line 707
    aget v6, v3, v13

    div-int/2addr v0, v6

    aput v0, v3, v8

    .line 709
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 711
    invoke-direct {v1, v5, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 699
    :cond_24
    iget v0, v4, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 701
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    .line 864
    :pswitch_c
    :try_start_19
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 865
    iget-object v5, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 866
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 867
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    .line 868
    :try_start_1a
    iget-object v7, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 870
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 872
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 877
    :cond_25
    iget-boolean v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-nez v0, :cond_26

    .line 879
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 881
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    .line 883
    :cond_26
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    add-int/2addr v0, v12

    iput v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    .line 887
    iget v3, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    if-le v0, v3, :cond_27

    .line 889
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 891
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void

    :cond_27
    if-nez v7, :cond_28

    .line 894
    iget v0, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v7

    :cond_28
    move-object v10, v7

    .line 897
    iget-object v7, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v9, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v11, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v13, v5, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v0, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 901
    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const/16 v8, 0xb2

    const/4 v12, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    .line 897
    invoke-interface/range {v7 .. v17}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    return-void

    .line 751
    :pswitch_d
    :try_start_1b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    .line 752
    iget-object v8, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    .line 753
    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 754
    iget-object v14, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mOnLoaded:Landroid/os/Message;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1

    .line 756
    :try_start_1c
    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {v1, v14, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 758
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 760
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    return-void

    :catch_4
    move-exception v0

    move-object v6, v14

    goto/16 :goto_9

    .line 764
    :cond_29
    iget-object v0, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 765
    iget-object v3, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mPath:Ljava/lang/String;

    .line 767
    iget v5, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    .line 771
    aget-byte v10, v0, v10

    if-ne v11, v10, :cond_2e

    .line 778
    aget-byte v9, v0, v9

    if-eq v12, v9, :cond_2b

    if-ne v7, v9, :cond_2a

    goto :goto_8

    .line 779
    :cond_2a
    invoke-direct {v1, v5, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 781
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 784
    :cond_2b
    :goto_8
    aget-byte v5, v0, v6

    and-int/lit16 v5, v5, 0xff

    iput v5, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    .line 786
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v0

    .line 788
    iget v5, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    div-int/2addr v0, v5

    iput v0, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    .line 790
    iget-boolean v0, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mLoadAll:Z

    if-eqz v0, :cond_2c

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    iget v5, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mCountRecords:I

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    :cond_2c
    if-nez v3, :cond_2d

    .line 795
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    :cond_2d
    move-object v6, v3

    .line 797
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mEfid:I

    iget v7, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordNum:I

    iget v9, v8, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;->mRecordSize:I

    iget-object v12, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    .line 801
    invoke-virtual {v1, v4, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    const/16 v4, 0xb2

    const/4 v8, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 797
    invoke-interface/range {v3 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 773
    :cond_2e
    invoke-direct {v1, v5, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 775
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4

    .line 912
    :pswitch_e
    :try_start_1d
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/AsyncResult;

    .line 913
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/os/Message;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1

    .line 914
    :try_start_1e
    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 916
    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 918
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 923
    :cond_2f
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 925
    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-direct {v1, v6, v0, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    return-void

    .line 804
    :pswitch_f
    :try_start_1f
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Landroid/os/AsyncResult;

    .line 805
    iget-object v5, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/os/Message;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1

    .line 806
    :try_start_20
    iget-object v4, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 808
    check-cast v3, Landroid/os/AsyncResult;

    invoke-direct {v1, v6, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->processException(Landroid/os/Message;Landroid/os/AsyncResult;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 810
    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    return-void

    .line 815
    :cond_30
    iget-object v3, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 817
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 819
    sget-boolean v4, Lcom/android/internal/telephony/uicc/IccFileHandler;->VDBG:Z

    if-eqz v4, :cond_31

    .line 820
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Contents of the Select Response for command %x: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 820
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 824
    :cond_31
    aget-byte v4, v3, v10

    if-ne v11, v4, :cond_33

    .line 831
    aget-byte v4, v3, v9

    if-nez v4, :cond_32

    .line 838
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getDataFileSize([B)I

    move-result v20

    .line 840
    iget-object v14, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/4 v4, 0x5

    .line 842
    invoke-virtual {v1, v4, v0, v13, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    const/16 v15, 0xb0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v16, v0

    move-object/from16 v23, v3

    .line 840
    invoke-interface/range {v14 .. v24}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 833
    :cond_32
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 835
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0

    .line 826
    :cond_33
    invoke-direct {v1, v0, v13}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEfBitset(IZ)V

    .line 828
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    :goto_9
    if-eqz v6, :cond_34

    .line 1240
    invoke-direct {v1, v6, v2, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1242
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncaught exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loge(Ljava/lang/String;)V

    :cond_35
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_e
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method

.method public blacklist loadEFImgLinearFixed(ILandroid/os/Message;)V
    .locals 13

    .line 343
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    const/16 v1, 0x4f20

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 347
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xc0

    const/16 v4, 0x4f20

    const/4 v7, 0x4

    const/16 v8, 0xa

    const/4 v9, 0x0

    move v6, p1

    .line 347
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFImgLinearFixedSTK(ILandroid/os/Message;)V
    .locals 12

    .line 364
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    const/16 v1, 0x4f20

    invoke-direct {v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    const/16 p2, 0x70

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 369
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    const/16 v3, 0x4f20

    const-string v4, "img"

    const/4 v6, 0x4

    const/16 v7, 0xa

    const/4 v8, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 11

    const/16 v1, 0xa

    const/4 v3, 0x0

    move-object/from16 v4, p5

    .line 521
    invoke-virtual {p0, v1, p1, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccFileHandler: loadEFImgTransparent fileid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " filePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x4f20

    .line 525
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " highOffset = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lowOffset = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " length = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->logd(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v0, v1

    const/16 v1, 0xb0

    const/4 v7, 0x0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFImgTransparentSTK(IIIILandroid/os/Message;)V
    .locals 12

    const/4 p2, 0x4

    const/4 v0, 0x0

    move-object/from16 v1, p5

    .line 573
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 575
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    const-string v4, "img"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixed(IILandroid/os/Message;)V
    .locals 1

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixed(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 11

    if-nez p2, :cond_0

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 310
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, p3, v3, p4}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    const/4 p3, 0x6

    .line 311
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 1

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    if-nez p2, :cond_0

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v3, p2

    .line 443
    new-instance p2, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {p2, p1, v3, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    const/4 p3, 0x6

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist loadEFTransparent(IILandroid/os/Message;)V
    .locals 13

    const/4 v0, 0x5

    const/4 v1, 0x0

    move-object/from16 v2, p3

    .line 502
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xb0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move v4, p1

    move v8, p2

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist loadEFTransparent(ILandroid/os/Message;)V
    .locals 11

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getPhoneId()I

    move-result v3

    const-string v4, "LGT"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    new-instance v3, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;

    invoke-direct {v3, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;-><init>(ILandroid/os/Message;)V

    const/16 v1, 0x76

    invoke-virtual {p0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v0, v1

    const/16 v1, 0xc0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 482
    invoke-virtual {p0, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 485
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    move-object v0, v1

    const/16 v1, 0xc0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method blacklist loadItemInPhoneBookStorageAll(ILandroid/os/Message;)V
    .locals 1

    .line 1330
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;-><init>(ILandroid/os/Message;)V

    const/16 p2, 0x6e

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1332
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    if-eqz p0, :cond_0

    .line 1333
    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->getPhoneBookStorageInfo(ILandroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected abstract blacklist logd(Ljava/lang/String;)V
.end method

.method protected abstract blacklist loge(Ljava/lang/String;)V
.end method

.method public greylist-max-r updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .locals 12

    .line 594
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;

    move-object/from16 v1, p5

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    const/16 v1, 0x75

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    array-length v7, v0

    .line 599
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xdc

    const/4 v6, 0x4

    move v3, p1

    move v5, p2

    move-object/from16 v9, p4

    .line 597
    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V
    .locals 13

    const/16 v0, 0x78

    const/4 v1, 0x0

    move-object/from16 v2, p6

    .line 552
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    if-nez p2, :cond_0

    .line 553
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v5, p2

    .line 554
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 p2, p4

    array-length v8, p2

    .line 556
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v3, 0xdc

    const/4 v7, 0x4

    move v4, p1

    move/from16 v6, p3

    move-object/from16 v10, p5

    .line 554
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public greylist-max-r updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 11

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    .line 612
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v1, 0xd6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    move-object v10, p3

    .line 610
    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method
