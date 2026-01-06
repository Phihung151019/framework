.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final blacklist APP_FAM_3GPP:I = 0x1

.field public static final blacklist APP_FAM_3GPP2:I = 0x2

.field public static final blacklist APP_FAM_IMS:I = 0x3

.field public static final blacklist INVALID_SLOT_ID:I = -0x1

.field private static final blacklist PHONE_ON_KEY:[Ljava/lang/String;

.field private static final blacklist VDBG:Z

.field private static greylist mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final greylist mLock:Ljava/lang/Object;

.field private static blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

.field private static blacklist sEnhancedLog:Lcom/android/internal/telephony/LocalLog;

.field public static blacklist sLastSlotStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private static blacklist sUiccHqmController:Lcom/android/internal/telephony/uicc/UiccHqmController;


# instance fields
.field private blacklist PROJECT_SIM_NUM:I

.field private blacklist mCardStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private greylist-max-r mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field public greylist mContext:Landroid/content/Context;

.field private blacklist mDefaultEuiccCardId:I

.field private final blacklist mEuiccSlots:[I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mHasActiveBuiltInEuicc:Z

.field private blacklist mHasBuiltInEuicc:Z

.field protected blacklist mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field protected blacklist mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mIsSlotStatusSupported:Z

.field private blacklist mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

.field private blacklist mPhoneIdToSlotId:[I

.field private final blacklist mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

.field private blacklist mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

.field private blacklist mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

.field private final blacklist mSimApplicationState:[I

.field private final blacklist mSimCardState:[I

.field private blacklist mSimTraySwapState:[I

.field private blacklist mSimTraySwapType:[I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

.field private blacklist mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

.field private blacklist mUseRemovableEsimAsDefault:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3-HHeJOIf4HW5sDWkHadcuuc84Q(Lcom/android/internal/telephony/uicc/UiccController;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimStateForInactivePort$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ATcts-Hm9n73GTlx0-PR7RHRs_s(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimState$2(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nkJAljiimZVBBNHRX7rKvl0SLks(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccSlot;I)Z
    .locals 0

    .line 690
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zYVo8ZXisvE5FLaCrh3gmYU160Y(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->lambda$updateSimState$3(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 173
    const-string v0, "UiccController"

    const/4 v1, 0x2

    .line 174
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    .line 238
    const-string v0, "phone1_on"

    const-string v1, "phone2_on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->PHONE_ON_KEY:[Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    .line 311
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const/16 v2, 0x40

    const/16 v3, 0x100

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sEnhancedLog:Lcom/android/internal/telephony/LocalLog;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    .line 335
    const-string v0, "Exception during closing"

    const-string v1, "UiccController"

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x1

    .line 209
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    const/4 v3, 0x0

    .line 263
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    .line 266
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    .line 269
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    .line 288
    new-instance v4, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v4}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 336
    const-string v4, "Creating UiccController"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 338
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 339
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 341
    invoke-static {p1}, Lcom/android/internal/telephony/SemPhoneFactory;->getSemCommandsInterfaces(Landroid/content/Context;)[Lcom/android/internal/telephony/SemCommandsInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x10e0126

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 345
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->sim_slots_count()Ljava/util/Optional;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_num_physical_slots = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    .line 354
    iput p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROJECT_SIM_NUM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    .line 357
    new-array v4, p2, [Lcom/android/internal/telephony/RegistrantList;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_0

    .line 359
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    new-instance v6, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v6}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 361
    :cond_0
    new-array v4, p2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    .line 362
    new-array v4, p2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapState:[I

    .line 365
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-class v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 367
    new-array p2, p2, [Lcom/android/internal/telephony/uicc/UiccSlot;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 368
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    .line 369
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result p2

    .line 370
    new-array v4, p2, [I

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimCardState:[I

    .line 371
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    .line 372
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v4, -0x1

    invoke-static {p2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 373
    sget-boolean p2, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 374
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/RadioConfig;->getInstance()Lcom/android/internal/telephony/RadioConfig;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 375
    invoke-virtual {p2, p0, v5, v6}, Lcom/android/internal/telephony/RadioConfig;->registerForSimSlotStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    move p2, v3

    .line 376
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v7, v5

    if-ge p2, v7, :cond_2

    .line 377
    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, p0, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 378
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 379
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x7

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 380
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x8

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x64

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x65

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 384
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aput v4, v5, p2

    .line 385
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapState:[I

    aput v4, v5, p2

    .line 388
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x66

    invoke-interface {v5, p0, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 392
    :cond_2
    new-instance p2, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    invoke-direct {p2, p1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mLauncher:Lcom/android/internal/telephony/uicc/UiccStateChangedLauncher;

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->loadCardStrings()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    const/4 p1, -0x2

    .line 394
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 396
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.telephony.euicc"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/io/File;

    const-string p2, "/efs/FactoryApp/eID"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 402
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 404
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 412
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catchall_0
    move-exception p0

    :goto_2
    move-object v6, p1

    goto/16 :goto_8

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p2, v6

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p2, v6

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p2, v6

    goto :goto_8

    :catch_3
    move-exception v2

    move-object p1, v6

    move-object p2, p1

    .line 408
    :goto_3
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during get eid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_3

    .line 411
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catch_4
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_4
    if-eqz p2, :cond_4

    .line 412
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 414
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    move-object v2, v6

    .line 417
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add eid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    goto :goto_c

    :goto_8
    if-eqz v6, :cond_5

    .line 411
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_9

    :catch_5
    move-exception p1

    goto :goto_a

    :cond_5
    :goto_9
    if-eqz p2, :cond_6

    .line 412
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_b

    .line 414
    :goto_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_6
    :goto_b
    throw p0

    .line 426
    :cond_7
    :goto_c
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccHqmController;->make(Landroid/content/Context;[Lcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/uicc/UiccHqmController;

    move-result-object p1

    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sUiccHqmController:Lcom/android/internal/telephony/uicc/UiccHqmController;

    .line 428
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccLog;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UiccLog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    .line 432
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_provisioned"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 434
    const-string v0, "ril.device_provisioned"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device_provisioned:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 437
    new-instance p1, Lcom/android/internal/telephony/SettingsObserver;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 438
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/16 v0, 0x67

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 442
    new-instance p1, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .line 444
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10701fd

    .line 445
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    .line 446
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->hasBuiltInEuicc()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    const/16 p1, 0xa

    .line 448
    invoke-static {p0, p1, v6}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 451
    new-instance p1, Lcom/android/internal/telephony/uicc/PinStorage;

    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/telephony/uicc/PinStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    .line 452
    sget-boolean p1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-nez p1, :cond_8

    .line 453
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "removable_esim"

    .line 454
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    :cond_8
    return-void
.end method

.method private blacklist addCardId(Ljava/lang/String;)V
    .locals 2

    .line 1475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1478
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 1479
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1481
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1482
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->saveCardStrings()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist addEnhancedLocalLog(Ljava/lang/String;)V
    .locals 1

    .line 2179
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sEnhancedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist addLocalLog(Ljava/lang/String;)V
    .locals 1

    .line 2169
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist broadcastSimApplicationStateChanged(II)V
    .locals 6

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    aget v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1153
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1154
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard;->isEmptyProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1155
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimApplicationState:[I

    aget v3, v2, p1

    if-eq p2, v3, :cond_5

    if-eqz v0, :cond_2

    if-eqz v1, :cond_5

    .line 1156
    :cond_2
    aput p2, v2, p1

    .line 1157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1159
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1160
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 1162
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 1165
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 1166
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result v3

    .line 1167
    const-string v4, "slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 1169
    const-string v4, "port"

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting intent ACTION_SIM_APPLICATION_STATE_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " port: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    .line 1176
    const-string v2, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sub: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1171
    const-string v2, "UiccController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_5
    return-void
.end method

.method private blacklist broadcastSimCardStateChanged(II)V
    .locals 6

    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimCardState:[I

    aget v1, v0, p1

    if-eq p2, v1, :cond_1

    .line 1109
    aput p2, v0, p1

    .line 1110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1112
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1113
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 1115
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 1118
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    .line 1119
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result v3

    .line 1120
    const-string v4, "slot"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1123
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortIndexFromPhoneId(I)I

    move-result v2

    .line 1124
    const-string v4, "port"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 1126
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting intent ACTION_SIM_CARD_STATE_CHANGED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->simStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for phone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " port: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sub: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1126
    const-string v2, "UiccController"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1135
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->updateSimState(II)V

    :cond_1
    return-void
.end method

.method private blacklist broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1079
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1080
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1081
    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1085
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1087
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v1

    .line 1088
    const-string v2, "isEuicc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1091
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    .line 1092
    invoke-static {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndMaybeSubIdExtra(Landroid/content/Intent;II)V

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiccController"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM_STATE_CHANGED["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->uiccLog(Ljava/lang/String;)V

    .line 1098
    invoke-static {}, Lcom/android/internal/telephony/IntentBroadcaster;->getInstance()Lcom/android/internal/telephony/IntentBroadcaster;

    move-result-object p2

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/internal/telephony/IntentBroadcaster;->broadcastStickyIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method

.method private blacklist broadcastSimStateEvents(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .locals 5

    .line 1221
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v2, v4

    move v3, v2

    goto :goto_0

    :pswitch_1
    const/16 v2, 0xa

    goto :goto_0

    :pswitch_2
    const/16 v3, 0x9

    goto :goto_0

    :pswitch_3
    const/16 v3, 0x8

    goto :goto_0

    .line 1234
    :pswitch_4
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/UiccController;->getSimStateFromLockedReason(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :pswitch_5
    move v3, v1

    move v2, v4

    .line 1259
    :goto_0
    :pswitch_6
    const-string p2, "LOCKED"

    if-ne v0, p2, :cond_0

    .line 1260
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->PHONE_ON_KEY:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 1262
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "broadcastSimStateEvents : phoneId-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is inactivated"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    .line 1267
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimCardStateChanged(II)V

    .line 1269
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimApplicationStateChanged(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist checkIsEuiccSupported(Lcom/android/internal/telephony/uicc/IccSlotStatus;)Z
    .locals 2

    .line 2347
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2349
    const-string p1, "checkIsEuiccSupported atr null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return v1

    .line 2352
    :cond_0
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2353
    const-string p1, "checkIsEuiccSupported eid null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return v1

    .line 2356
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result p0

    return p0
.end method

.method private static blacklist eventToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 994
    :pswitch_0
    const-string p0, "MULTI_SIM_CONFIG_CHANGED"

    return-object p0

    .line 993
    :pswitch_1
    const-string p0, "EID_READY"

    return-object p0

    .line 992
    :pswitch_2
    const-string p0, "SIM_REFRESH"

    return-object p0

    .line 991
    :pswitch_3
    const-string p0, "RADIO_UNAVAILABLE"

    return-object p0

    .line 990
    :pswitch_4
    const-string p0, "RADIO_AVAILABLE"

    return-object p0

    .line 989
    :pswitch_5
    const-string p0, "RADIO_ON"

    return-object p0

    .line 988
    :pswitch_6
    const-string p0, "GET_SLOT_STATUS_DONE"

    return-object p0

    .line 987
    :pswitch_7
    const-string p0, "GET_ICC_STATUS_DONE"

    return-object p0

    .line 986
    :pswitch_8
    const-string p0, "SLOT_STATUS_CHANGED"

    return-object p0

    .line 985
    :pswitch_9
    const-string p0, "ICC_STATUS_CHANGED"

    return-object p0

    .line 996
    :cond_0
    const-string p0, "EVENT_PROVISIONED_CHANGED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 1

    .line 963
    new-instance p0, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    if-eqz p1, :cond_1

    .line 971
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 972
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 973
    instance-of v0, p1, Landroid/os/AsyncResult;

    if-eqz v0, :cond_1

    .line 974
    check-cast p1, Landroid/os/AsyncResult;

    .line 975
    iget-object p1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 976
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static blacklist getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 1

    .line 1021
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "LOCKED"

    packed-switch p0, :pswitch_data_0

    .line 1038
    const-string p0, "UNKNOWN"

    return-object p0

    .line 1037
    :pswitch_0
    const-string p0, "LOADED"

    return-object p0

    .line 1036
    :pswitch_1
    const-string p0, "CARD_RESTRICTED"

    return-object p0

    .line 1035
    :pswitch_2
    const-string p0, "CARD_IO_ERROR"

    return-object p0

    :pswitch_3
    return-object v0

    .line 1027
    :pswitch_4
    const-string p0, "NOT_READY"

    return-object p0

    .line 1026
    :pswitch_5
    const-string p0, "READY"

    return-object p0

    :pswitch_6
    return-object v0

    .line 1022
    :pswitch_7
    const-string p0, "ABSENT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 2

    .line 484
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    return-object v0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getPrintableCardStrings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2328
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2329
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    .line 2328
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 2331
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static blacklist getSimStateFromLockedReason(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1197
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "PERM_DISABLED"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "PUK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "PIN"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v4, "NETWORK"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 1207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected SIM locked reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UiccController"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :pswitch_0
    const/4 p0, 0x7

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x675319f2 -> :sswitch_3
        0x13575 -> :sswitch_2
        0x136e6 -> :sswitch_1
        0xb5d3eeb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z
    .locals 3

    .line 1838
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 1839
    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist hasBuiltInEuicc()Z
    .locals 0

    .line 1995
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 2042
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2043
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2044
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2045
    const-string p0, "UiccController"

    const-string p1, "mvno icc id match found"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static blacklist imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 2059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2062
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2065
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_3

    const/16 v4, 0x58

    if-eq v3, v4, :cond_3

    .line 2066
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist isBuiltInEuiccSlot(I)Z
    .locals 4

    .line 1999
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2002
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mEuiccSlots:[I

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static blacklist isCdmaSupported(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isShuttingDown()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2032
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2033
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2034
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist isValidPhoneIndex(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 2024
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isValidSlotIndex(I)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 2028
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$updateSimState$2(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1319
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController;->broadcastSimStateEvents(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p2

    const/4 p3, 0x5

    if-ne p4, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x6

    if-ne p4, p3, :cond_1

    if-eqz p2, :cond_1

    .line 1329
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccProfile;->isEmptyProfile()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1330
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p2

    .line 1331
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->areUiccAppsEnabledOnCard(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1338
    const-string p1, "updateSimState: SIM_STATE_NOT_READY is not a final state."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    .line 1343
    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSimState: Cannot update carrier services. Invalid phone id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1352
    :cond_2
    const-string p2, "updateSimState: resolve carrier id and update carrier services."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1354
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/Phone;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    .line 1356
    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/uicc/UiccController;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSimState$3(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .locals 9

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimState: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1298
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateSimState: Invalid phone id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 1306
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->LOADED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p2, v0, :cond_1

    .line 1307
    const-string v0, "ril.carrier_changed.state"

    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v8

    .line 1312
    invoke-virtual {p2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v7

    .line 1313
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v7, v1, v2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSimState(IILjava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSimStateForInactivePort$1(ILjava/lang/String;)V
    .locals 2

    .line 1050
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1052
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1053
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 1056
    const-string p0, "ril.carrier_changed.state"

    .line 1057
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 1061
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    .line 1062
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1061
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->updateSimStateForInactivePort(ILjava/lang/String;)V

    return-void
.end method

.method private blacklist loadCardStrings()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1621
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 1622
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "card_strings"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1623
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1627
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private greylist-max-r log(Ljava/lang/String;)V
    .locals 0

    .line 2154
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logPhoneIdToSlotIdMapping()V
    .locals 3

    .line 1863
    const-string v0, "mPhoneIdToSlotId mapping:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1864
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist logWithEnhancedLocalLog(Ljava/lang/String;)V
    .locals 2

    .line 2174
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 2175
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sEnhancedLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logWithLocalLog(Ljava/lang/String;)V
    .locals 2

    .line 2158
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logeWithLocalLog(Ljava/lang/String;)V
    .locals 2

    .line 2163
    const-string p0, "UiccController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiccController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 2

    .line 326
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_0

    .line 330
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    .line 331
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 328
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "UiccController.make() should only be called once"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist onCheckTrayEvent()V
    .locals 6

    .line 2404
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2405
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2408
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapState:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget v5, v0, v4

    if-eq v5, v3, :cond_2

    :cond_1
    if-ne v2, v3, :cond_3

    aget v0, v0, v4

    if-ne v0, v4, :cond_3

    .line 2412
    :cond_2
    invoke-direct {p0, v4, v4}, Lcom/android/internal/telephony/uicc/UiccController;->sendIntentForTrayProtectionPopup(IZ)V

    .line 2413
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getCardSwapCount()I

    move-result p0

    if-ne p0, v4, :cond_3

    .line 2414
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setCardSwapCount(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 4

    .line 1954
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_0

    .line 1955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEidReady: exception: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1959
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1960
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onEidReady: invalid index: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1963
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget p1, p1, p2

    .line 1964
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    if-nez p2, :cond_2

    .line 1966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEidReady: UiccCard in slot "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1971
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v0

    .line 1972
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 1973
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, -0x3

    if-ne v1, v2, :cond_5

    .line 1975
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v1

    const-string v2, " mDefaultEuiccCardId="

    const-string v3, "onEidReady: eid="

    if-nez v1, :cond_4

    .line 1976
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1978
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1977
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1980
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    if-nez v1, :cond_5

    .line 1983
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1985
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from removable eUICC in slot="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1984
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1990
    :cond_5
    :goto_0
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->unregisterForEidReady(Landroid/os/Handler;)V

    return-void
.end method

.method private declared-synchronized blacklist onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 5

    monitor-enter p0

    .line 1363
    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1364
    const-string p1, "UiccController"

    const-string p2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    invoke-static {p1, p2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1369
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1370
    const-string p1, "UiccController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    monitor-exit p0

    return-void

    .line 1373
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1377
    const-string p1, "onGetIccCardStatusDone: shudown in progress ignore event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1378
    monitor-exit p0

    return-void

    .line 1381
    :cond_2
    :try_start_3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetIccCardStatusDone: phoneId-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IccCardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->log(ILcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 1389
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 1390
    sget-boolean v1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetIccCardStatusDone: phoneId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " physicalSlotIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    :cond_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 1392
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1394
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v0, v3, v4

    if-eqz v1, :cond_5

    .line 1396
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 1398
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v3, v3, v0

    if-nez v3, :cond_7

    if-eqz v1, :cond_6

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating mUiccSlots["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]; mUiccSlots.length = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1403
    :cond_6
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V

    .line 1406
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, p1, v4, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;II)V

    .line 1408
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_9

    .line 1410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccSlots["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has no card. Notifying IccChangedRegistrants"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1412
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_8

    .line 1413
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1416
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1417
    monitor-exit p0

    return-void

    .line 1420
    :cond_9
    :try_start_4
    iget-object v4, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget v4, v4, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v4

    if-nez v4, :cond_a

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUiccSlots["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] has no UiccPort with index["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]. Notifying IccChangedRegistrants"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1424
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1425
    monitor-exit p0

    return-void

    .line 1429
    :cond_a
    :try_start_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1431
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1433
    :cond_b
    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    iget p1, p1, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPortIndex:I

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_c

    .line 1437
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    :cond_c
    if-eqz v4, :cond_f

    .line 1442
    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    if-eq v4, v2, :cond_f

    if-nez p1, :cond_d

    .line 1444
    check-cast v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    const/16 p1, 0x9

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->registerForEidReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    :cond_d
    const/4 v1, -0x2

    if-eq v4, v1, :cond_e

    const/4 v1, -0x3

    if-ne v4, v1, :cond_f

    .line 1453
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardStatus eid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1455
    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slot="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mDefaultEuiccCardId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1454
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1462
    :cond_f
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notifying IccChangedRegistrants slot "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " IccChangedRegistrants"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1463
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_10

    .line 1464
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1467
    :cond_10
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v3, p2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1468
    monitor-exit p0

    return-void

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist onGetSlotStatusDone(Landroid/os/AsyncResult;)V
    .locals 14

    monitor-enter p0

    .line 1638
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    if-nez v0, :cond_1

    .line 1639
    sget-boolean p1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p1, :cond_0

    const-string p1, "onGetSlotStatusDone: ignoring since mIsSlotStatusSupported is false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    .line 1640
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1642
    :cond_1
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1644
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v2, :cond_2

    goto :goto_1

    .line 1651
    :cond_2
    const-string p1, "onGetSlotStatusDone: request not supported; marking mIsSlotStatusSupported to false"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 1653
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIsSlotStatusSupported:Z

    goto :goto_2

    .line 1648
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error getting slot status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logeWithLocalLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1655
    :goto_2
    monitor-exit p0

    return-void

    .line 1657
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1661
    const-string p1, "onGetSlotStatusDone: shudown in progress ignore event"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1662
    monitor-exit p0

    return-void

    .line 1665
    :cond_5
    :try_start_3
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->slotStatusChanged(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1668
    const-string p1, "onGetSlotStatusDone: No change in slot status"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1669
    monitor-exit p0

    return-void

    .line 1673
    :cond_6
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSlotStatusDone: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->log(Ljava/util/ArrayList;)V

    .line 1677
    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    .line 1682
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    .line 1684
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1685
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v2

    if-ge v2, v0, :cond_7

    .line 1686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of the physical slots reported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is greater than the expectation "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logeWithLocalLog(Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v0, v0

    :cond_7
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_3
    const/4 v6, 0x1

    if-ge v2, v0, :cond_12

    .line 1692
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 1693
    iget-object v8, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/UiccController;->hasActivePort([Lcom/android/internal/telephony/uicc/IccSimPortInfo;)Z

    move-result v8

    .line 1694
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    if-nez v9, :cond_9

    .line 1695
    sget-boolean v9, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz v9, :cond_8

    .line 1696
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Creating mUiccSlot["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]; mUiccSlots.length = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 1698
    :cond_8
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telephony/uicc/UiccController;->setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V

    goto :goto_4

    .line 1702
    :cond_9
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v9

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->checkIsEuiccSupported(Lcom/android/internal/telephony/uicc/IccSlotStatus;)Z

    move-result v10

    if-eq v9, v10, :cond_a

    .line 1703
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->dispose()V

    .line 1704
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v10, Lcom/android/internal/telephony/uicc/UiccSlot;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v8}, Lcom/android/internal/telephony/uicc/UiccSlot;-><init>(Landroid/content/Context;Z)V

    aput-object v10, v9, v2

    :cond_a
    :goto_4
    if-eqz v8, :cond_d

    move v9, v1

    .line 1709
    :goto_5
    iget-object v10, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v11, v10

    if-ge v9, v11, :cond_d

    .line 1710
    aget-object v10, v10, v9

    iget-boolean v11, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    if-eqz v11, :cond_c

    .line 1711
    iget v10, v10, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    .line 1713
    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1714
    const-string v11, "UiccController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping slot "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " portIndex "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " as phone "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is not available to communicate with this slot"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1718
    :cond_b
    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aput v2, v11, v10

    :goto_6
    add-int/lit8 v4, v4, 0x1

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1725
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v9, v10, v7, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->update([Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;I)V

    .line 1727
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v8, :cond_f

    .line 1731
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->isBuiltInEuiccSlot(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1732
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    :cond_e
    move v5, v6

    .line 1735
    :cond_f
    iget-object v7, v7, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 1736
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_7

    .line 1741
    :cond_10
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->addCardId(Ljava/lang/String;)V

    .line 1745
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v8

    if-nez v8, :cond_11

    if-nez v3, :cond_11

    .line 1747
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using eid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    invoke-static {v8, v7}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in slot="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to set mDefaultEuiccCardId="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    move v3, v6

    :cond_11
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 1755
    :cond_12
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    if-nez v2, :cond_14

    if-nez v3, :cond_14

    :goto_8
    if-ge v1, v0, :cond_14

    .line 1762
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1763
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    iget-object v2, v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->eid:Ljava/lang/String;

    .line 1764
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 1766
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1767
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Using eid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 1768
    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from removable eUICC in slot="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to set mDefaultEuiccCardId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1767
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    move v3, v6

    goto :goto_9

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1777
    :cond_14
    :goto_9
    iget-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    if-eqz p1, :cond_15

    if-nez v5, :cond_15

    if-nez v3, :cond_15

    .line 1778
    const-string p1, "onGetSlotStatusDone: mDefaultEuiccCardId=TEMPORARILY_UNSUPPORTED_CARD_ID"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    const/4 p1, -0x3

    .line 1781
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    .line 1815
    :cond_15
    sget-boolean p1, Lcom/android/internal/telephony/uicc/UiccController;->VDBG:Z

    if-eqz p1, :cond_16

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->logPhoneIdToSlotIdMapping()V

    .line 1818
    :cond_16
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length p1, p1

    if-eq v4, p1, :cond_17

    .line 1819
    const-string p1, "UiccController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of active ports "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not match the number of Phones"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_17
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 1825
    invoke-virtual {p1, v6}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 1827
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1829
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 1830
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 1829
    invoke-virtual {v1, v0, v2, v3, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1835
    monitor-exit p0

    return-void

    :goto_a
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .locals 4

    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v0, v0

    .line 941
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSimConfigChanged: prevActiveModemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newActiveModemCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    :goto_0
    if-ge v0, p1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 954
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 955
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 956
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 957
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v1, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist onSimCountMismatched(Landroid/os/AsyncResult;)V
    .locals 8

    .line 2186
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .line 2202
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040efb

    .line 2203
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x1040f0f

    .line 2204
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040efa

    .line 2205
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2207
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    const/4 v5, 0x0

    aget p1, p1, v5

    .line 2208
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSimCountMismatched: simCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const p1, 0x1040ef9

    .line 2210
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2213
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-direct {p1, v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2214
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2215
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2216
    invoke-virtual {p1, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2217
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 2218
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2220
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2222
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x10

    .line 2223
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 2224
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2225
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 2226
    const-string p1, "onSimCountMismatched: dialog.show()"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 4

    .line 1870
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_0

    .line 1871
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSimRefresh: Sim REFRESH with exception: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1875
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1876
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: invalid index : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1880
    :cond_1
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh: index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 1887
    const-string p0, "onSimRefresh: received without input"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1891
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1893
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: refresh on null card : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1897
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1899
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onSimRefresh: refresh on null port : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1904
    :cond_4
    iget v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    const/4 v3, 0x2

    if-eq v1, v2, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    goto :goto_1

    .line 1908
    :cond_5
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccPort;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 1917
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccPort;->resetAppWithAid(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    .line 1931
    iget p1, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-ne p1, v3, :cond_7

    .line 1934
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 1935
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 1936
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "UNKNOWN"

    invoke-virtual {p1, v0, v1}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 1941
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_8

    .line 1942
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    return-void

    .line 1945
    :cond_8
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    return-void

    .line 1921
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1923
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->setOnRefreshFcn(Z)V

    :cond_a
    :goto_1
    return-void
.end method

.method private blacklist onSimTraySwap(II)V
    .locals 8

    .line 2241
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v0

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimTraySwap() : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v1, :cond_1

    if-eq p1, v3, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    .line 2251
    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-eq v6, v4, :cond_5

    if-eqz v0, :cond_4

    .line 2253
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aput v1, v0, p2

    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapState:[I

    aput p1, v0, p2

    move v0, v5

    .line 2255
    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v0, v6, :cond_5

    .line 2256
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    aget v6, v6, v0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 2257
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimTraySwap(), not receive noti from slot "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    if-ne v6, v4, :cond_3

    move v1, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2264
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 2265
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v0, v6, v4}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p2

    if-le p2, v4, :cond_5

    .line 2267
    const-string p2, "onSimTraySwap(), change type because of the other tray"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    move v1, v5

    :cond_5
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_7

    if-ne p1, v2, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    .line 2276
    :cond_7
    :goto_3
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/uicc/UiccController;->sendIntentForTrayProtectionPopup(IZ)V

    return-void
.end method

.method private blacklist onSyncSimOnOff(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 5

    .line 2304
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, "UiccController"

    if-eqz v0, :cond_0

    .line 2305
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSyncSimOnOff: exception: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2308
    :cond_0
    const-string p1, "ro.build.version.oneui"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v2, 0xeac4

    if-lt p1, v2, :cond_1

    .line 2310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSyncSimOnOff: oneui version : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2313
    :cond_1
    const-string p1, "ro.product.first_api_level"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2315
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-nez v1, :cond_5

    const/16 v1, 0x1c

    if-ge p1, v1, :cond_2

    .line 2316
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->needSecSimOnOffEx()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2317
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "phone1_on"

    goto :goto_0

    :cond_3
    const-string p1, "phone2_on"

    .line 2318
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSyncSimOnOff check from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PhoneOn State: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2321
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p0, p0, p1

    if-nez v1, :cond_4

    move v0, v2

    :cond_4
    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->setSimOnOff(ILandroid/os/Message;)V

    :cond_5
    return-void
.end method

.method private blacklist saveCardStrings()V
    .locals 2

    .line 1631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 1632
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1633
    const-string v1, ","

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "card_strings"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1634
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private blacklist sendForceCpResetForRefresh()V
    .locals 7

    .line 914
    const-string v0, "sendForceCpResetForRefresh is fail. "

    const-string v1, "UiccController"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 915
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 916
    const-string v4, "RefreshInSUW"

    const/16 v5, 0x11

    .line 919
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x67

    .line 920
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    .line 921
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v6, 0x10

    .line 922
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 923
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 925
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    aget-object p0, p0, v5

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 931
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 927
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 930
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 931
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 930
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 931
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :goto_3
    throw p0
.end method

.method private blacklist sendIntentForTrayProtectionPopup(IZ)V
    .locals 4

    .line 2280
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isOneTray()Z

    move-result v0

    .line 2282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimTraySwap() : type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dismiss = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 2284
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2286
    const-string v2, "waterproof"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2290
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2291
    const-string p1, "dismiss"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2292
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.systemui.POPUP_UI_PERMISSION"

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2294
    iget p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-le p1, v3, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2295
    :goto_0
    iget p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge p1, p2, :cond_0

    .line 2296
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[I

    const/4 v0, -0x1

    aput v0, p2, p1

    .line 2297
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapState:[I

    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist updateCarrierServices(ILjava/lang/String;)V
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    .line 1283
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist convertToCardString(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_1

    .line 1493
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1497
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 1494
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToCardString: cardId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not valid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist convertToPublicCardId(Ljava/lang/String;)I
    .locals 4

    .line 1509
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 1514
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    return v2

    .line 1518
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 1519
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1521
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, v1, :cond_3

    return v2

    :cond_3
    return p0
.end method

.method public blacklist dispose()V
    .locals 4

    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2340
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2342
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 2361
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsCdmaSupported="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccController;->isCdmaSupported(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasBuiltInEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasBuiltInEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasActiveBuiltInEuicc="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mHasActiveBuiltInEuicc:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCardStrings="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->getPrintableCardStrings()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultEuiccCardId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneIdToSlotId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUseRemovableEsimAsDefault="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUiccSlots: size="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const/4 p2, 0x0

    .line 2371
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v2, v1

    if-ge p2, v2, :cond_1

    .line 2372
    aget-object v1, v1, p2

    const-string v2, "mUiccSlots["

    if-nez v1, :cond_0

    .line 2373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2375
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2377
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/uicc/UiccSlot;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2378
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2381
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2382
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2383
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2384
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2385
    const-string p2, "sLocalLog= "

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 2387
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/uicc/PinStorage;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2388
    sget-object p2, Lcom/android/internal/telephony/uicc/UiccController;->sLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    .line 2391
    const-string p2, "Enhanced Log:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    sget-object p2, Lcom/android/internal/telephony/uicc/UiccController;->sEnhancedLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2393
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist getAllUiccCardInfos()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1533
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1534
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v8, v3

    .line 1535
    :goto_0
    iget-object v4, v0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v5, v4

    if-ge v8, v5, :cond_8

    .line 1536
    aget-object v4, v4, v8

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1542
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1543
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    instance-of v6, v5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    .line 1546
    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v9

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    if-eqz v6, :cond_2

    .line 1552
    check-cast v5, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;->getEid()Ljava/lang/String;

    move-result-object v7

    .line 1553
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 1556
    :cond_2
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1558
    const-string v10, "92885ba7-98bb-490a-ba19-987b1c8b2055"

    .line 1559
    invoke-static {v10}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    const-string v11, "UiccController: Found UiccPort Null object."

    .line 1558
    invoke-static {v10, v11}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 1562
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    move-object v5, v7

    .line 1563
    :goto_2
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    .line 1567
    :cond_5
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v5

    if-nez v6, :cond_6

    .line 1569
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1570
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, -0x2

    .line 1574
    :goto_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v10

    .line 1576
    array-length v12, v10

    move v13, v3

    :goto_4
    if-ge v13, v12, :cond_7

    aget v14, v10, v13

    .line 1577
    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->getIccId(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1578
    new-instance v3, Landroid/telephony/UiccPortInfo;

    .line 1579
    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result v0

    move/from16 v16, v5

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/uicc/UiccSlot;->isPortActive(I)Z

    move-result v5

    invoke-direct {v3, v15, v14, v0, v5}, Landroid/telephony/UiccPortInfo;-><init>(Ljava/lang/String;IIZ)V

    .line 1578
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v16

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    move-object v0, v4

    move/from16 v16, v5

    .line 1581
    new-instance v4, Landroid/telephony/UiccCardInfo;

    .line 1583
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->isMultipleEnabledProfileSupported()Z

    move-result v10

    move v5, v6

    move/from16 v6, v16

    invoke-direct/range {v4 .. v11}, Landroid/telephony/UiccCardInfo;-><init>(ZILjava/lang/String;IZZLjava/util/List;)V

    .line 1584
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1586
    :cond_8
    monitor-exit v1

    return-object v2

    .line 1587
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getCardIdForDefaultEuicc()I
    .locals 6

    .line 1594
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1600
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-nez v0, :cond_3

    .line 1601
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "UiccController"

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    .line 1602
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1603
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->getEid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->convertToPublicCardId(Ljava/lang/String;)I

    move-result p0

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCardIdForDefaultEuicc: Removable eSIM is default, cardId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    :cond_2
    const-string v0, "getCardIdForDefaultEuicc: No removable eSIM slot is found"

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    :cond_3
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mDefaultEuiccCardId:I

    return p0
.end method

.method public greylist-max-r getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .line 714
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 719
    monitor-exit v0

    return-object p0

    .line 720
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-r getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .line 702
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 705
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 707
    monitor-exit v0

    return-object p0

    .line 708
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPhoneIdFromSlotPortIndex(II)I
    .locals 0

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 467
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPhoneIdFromPortIndex(I)I

    move-result p0

    return p0
.end method

.method public blacklist getPinStorage()Lcom/android/internal/telephony/uicc/PinStorage;
    .locals 0

    .line 1617
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPinStorage:Lcom/android/internal/telephony/uicc/PinStorage;

    return-object p0
.end method

.method public blacklist getSlotIdFromPhoneId(I)I
    .locals 0

    .line 476
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhoneIdToSlotId:[I

    aget p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public blacklist getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;
    .locals 1

    .line 2145
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2146
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2147
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getSupportedMepMode()Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2148
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->NONE:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    :goto_0
    monitor-exit v0

    return-object p0

    .line 2149
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .line 493
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 495
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public greylist-max-r getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 1

    .line 1005
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1006
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccPort;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1010
    monitor-exit v0

    return-object p0

    .line 1011
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccCardForPhone(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 550
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 557
    monitor-exit v0

    return-object p0

    .line 558
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccCardForSlot(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1

    .line 535
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 540
    monitor-exit v0

    return-object p0

    .line 541
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .locals 1

    .line 503
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 505
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;
    .locals 2

    .line 568
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 578
    monitor-exit v0

    return-object p0

    .line 579
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccPortForSlot(II)Lcom/android/internal/telephony/uicc/UiccPort;
    .locals 1

    .line 516
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 521
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 524
    monitor-exit v0

    return-object p0

    .line 525
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccProfileForPhone(I)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 3

    .line 588
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getUiccProfile()Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    .line 593
    :cond_1
    monitor-exit v0

    return-object v2

    .line 594
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccSlot(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 623
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 627
    monitor-exit v0

    return-object p0

    .line 628
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccSlotForCardId(Ljava/lang/String;)I
    .locals 5

    .line 675
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 677
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 678
    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 679
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 680
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 681
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 687
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 689
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->getPortList()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/IntStream;->of([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccSlot;)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    monitor-exit v0

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    .line 695
    monitor-exit v0

    return p0

    .line 696
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 2

    .line 657
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidPhoneIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result p1

    .line 660
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object p0, p0, p1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 664
    monitor-exit v0

    return-object p0

    .line 665
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getUiccSlots()[Lcom/android/internal/telephony/uicc/UiccSlot;
    .locals 1

    .line 602
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 604
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 762
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 764
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccController;->eventToString(I)Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    goto/16 :goto_1

    .line 772
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for phoneId "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->logWithLocalLog(Ljava/lang/String;)V

    .line 774
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 775
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_1

    .line 906
    const-string p0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 892
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "device_provisioned"

    invoke-static {p1, v1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 894
    const-string v1, "ril.device_provisioned"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v1, "UiccController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received EVENT_PROVISIONED_CHANGED device_provisioned:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 897
    const-string p1, "1"

    const-string v1, "ril.sent_refresh_not_ok"

    const-string v2, "0"

    .line 898
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 900
    const-string p1, "ril.sent_refresh_not_ok"

    const-string v1, ""

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->sendForceCpResetForRefresh()V

    goto/16 :goto_0

    .line 881
    :pswitch_1
    const-string p1, "Received EVENT_RIL_CONNECTED"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 882
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSyncSimOnOff(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 884
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sUiccHqmController:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-eqz p1, :cond_8

    .line 885
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendHqmRildReset(I)V

    goto/16 :goto_0

    .line 872
    :pswitch_2
    iget-object p1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v5

    .line 873
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSimHotswapSupported()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-ne p1, v4, :cond_8

    .line 875
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimTraySwap(II)V

    goto/16 :goto_0

    .line 869
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->onSimCountMismatched(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 862
    :pswitch_4
    const-string v1, "Received EVENT_MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 863
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->onMultiSimConfigChanged(I)V

    goto/16 :goto_0

    .line 858
    :pswitch_5
    const-string p1, "Received EVENT_EID_READY"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onEidReady(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 847
    :pswitch_6
    const-string p1, "Received EVENT_SIM_REFRESH"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 848
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    .line 851
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sUiccHqmController:Lcom/android/internal/telephony/uicc/UiccHqmController;

    if-eqz p1, :cond_8

    .line 852
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getSlotIdFromPhoneId(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/telephony/uicc/UiccHqmController;->sendHqmSimRefreshed(Landroid/os/AsyncResult;I)V

    goto/16 :goto_0

    .line 827
    :pswitch_7
    const-string p1, "EVENT_RADIO_UNAVAILABLE, dispose card"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->isShuttingDown()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 831
    sput-object p1, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    .line 832
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 834
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->onRadioStateUnavailable(I)V

    .line 837
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 838
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 841
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    invoke-direct {v3, p1, v1, p1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 843
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccController;->onCheckTrayEvent()V

    goto/16 :goto_0

    .line 792
    :pswitch_8
    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON, calling getIccCardStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    .line 798
    const-string p1, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON for phoneId 0, calling getSimSlotsStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 801
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/RadioConfig;->getSimSlotsStatus(Landroid/os/Message;)V

    .line 805
    :cond_5
    const-string p1, "default"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 806
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 810
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 816
    :pswitch_9
    const-string p1, "Received EVENT_GET_ICC_STATUS_DONE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_0

    .line 822
    :pswitch_a
    const-string p1, "Received EVENT_SLOT_STATUS_CHANGED or EVENT_GET_SLOT_STATUS_DONE"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 824
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->onGetSlotStatusDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 777
    :pswitch_b
    const-string p1, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .line 779
    const-string p1, "default"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getModemService()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 780
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSemCis:[Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_0

    .line 784
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {p0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 909
    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    .line 767
    :cond_9
    :goto_1
    const-string p0, "UiccController"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phoneId : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " received with event "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    monitor-exit v0

    return-void

    .line 909
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist isRemovableEsimDefaultEuicc()Z
    .locals 2

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUseRemovableEsimAsDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UiccController"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget-boolean p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    return p0
.end method

.method public blacklist mvnoMatches(IILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    .line 2084
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 2086
    const-string p0, "UiccController"

    const-string p2, "isMvnoMatched# IccRecords is null"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    if-nez p2, :cond_1

    .line 2090
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderNameWithBrandOverride()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2091
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 2095
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2096
    invoke-static {p3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 2100
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    .line 2101
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p0, :cond_4

    .line 2102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_4

    .line 2103
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 2107
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 2108
    invoke-static {p3, p0}, Lcom/android/internal/telephony/uicc/UiccController;->iccidMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    return p1
.end method

.method public greylist registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 728
    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 729
    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 731
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 732
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p3, :cond_1

    .line 734
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 736
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    aget-object p0, p0, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 738
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    new-instance p0, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 738
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(Z)V
    .locals 1

    .line 2122
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUseRemovableEsimAsDefault:Z

    .line 2123
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    .line 2124
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2125
    const-string v0, "removable_esim"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2126
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRemovableEsimAsDefaultEuicc isDefault: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccController"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setUiccSlot(ILcom/android/internal/telephony/uicc/UiccSlot;)V
    .locals 2

    .line 641
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 648
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccSlots:[Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p2, p0, p1

    .line 649
    monitor-exit v0

    return-void

    .line 643
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid slot index: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 649
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist slotStatusChanged(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;)Z"
        }
    .end annotation

    .line 1851
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v1, p0

    .line 1854
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1855
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->sLastSlotStatus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public blacklist switchSlots(Ljava/util/List;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchSlots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->logWithEnhancedLocalLog(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->uiccLog(Ljava/lang/String;)V

    .line 615
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mRadioConfig:Lcom/android/internal/telephony/RadioConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioConfig;->setSimSlotsMapping(Ljava/util/List;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist uiccLog(Ljava/lang/String;)V
    .locals 0

    .line 2422
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 1

    .line 755
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 756
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 757
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterForIccChanged(Landroid/os/Handler;I)V
    .locals 2

    .line 746
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-ltz p2, :cond_0

    .line 747
    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->PROJECT_SIM_NUM:I

    if-ge p2, v1, :cond_0

    .line 748
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrantsBySlot:[Lcom/android/internal/telephony/RegistrantList;

    aget-object p0, p0, p2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 750
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist updateSimState(ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .locals 1

    .line 1295
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist updateSimStateForInactivePort(ILjava/lang/String;)V
    .locals 1

    .line 1049
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/uicc/UiccController;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
