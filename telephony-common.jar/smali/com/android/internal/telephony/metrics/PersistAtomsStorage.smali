.class public Lcom/android/internal/telephony/metrics/PersistAtomsStorage;
.super Ljava/lang/Object;
.source "PersistAtomsStorage.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PersistAtomsStorage"

.field private static final blacklist sRandom:Ljava/security/SecureRandom;


# instance fields
.field protected blacklist mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mMaxNumCarrierIdMismatches:I

.field private final blacklist mMaxNumCarrierRoamingSatelliteSessionStats:I

.field private final blacklist mMaxNumCellularDataSwitches:I

.field private final blacklist mMaxNumCellularServiceStates:I

.field private final blacklist mMaxNumDataCallSessions:I

.field private final blacklist mMaxNumDataNetworkValidation:I

.field private final blacklist mMaxNumDedicatedBearerEventStats:I

.field private final blacklist mMaxNumDedicatedBearerListenerEventStats:I

.field private final blacklist mMaxNumGbaEventStats:I

.field private final blacklist mMaxNumImsRegistrationFeatureStats:I

.field private final blacklist mMaxNumImsRegistrationServiceDescStats:I

.field private final blacklist mMaxNumImsRegistrationStats:I

.field private final blacklist mMaxNumImsRegistrationTerminations:I

.field private final blacklist mMaxNumPresenceNotifyEventStats:I

.field private final blacklist mMaxNumRcsAcsProvisioningStats:I

.field private final blacklist mMaxNumRcsClientProvisioningStats:I

.field private final blacklist mMaxNumSatelliteStats:I

.field private final blacklist mMaxNumSipDelegateStats:I

.field private final blacklist mMaxNumSipMessageResponseStats:I

.field private final blacklist mMaxNumSipTransportFeatureTagStats:I

.field private final blacklist mMaxNumSipTransportSessionStats:I

.field private final blacklist mMaxNumSms:I

.field private final blacklist mMaxNumUceEventStats:I

.field private final blacklist mMaxNumVoiceCallSessions:I

.field private final blacklist mMaxOutgoingShortCodeSms:I

.field protected blacklist mSaveImmediately:Z

.field private blacklist mSaveRunnable:Ljava/lang/Runnable;

.field private final blacklist mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;


# direct methods
.method public static synthetic blacklist $r8$lambda$0q1c0VYlD9POfXQWoHm9dilJiyg(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1080
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2qnY12lnIoX3FfG4XXjeDpYlg-U([ILjava/lang/Integer;)I
    .locals 0

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$AV_lvdN4FsYJexsY8XiGl4qyntw(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1142
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Abri6yTaNmX7pL6GV-riIOvx7FY(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1101
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LlF6PwMVMVbP5z3hjc-Gx_MuLDs([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;II)I
    .locals 4

    .line 2633
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$Xd9TxjJmDaorXzGK3oYPLO457ec([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;II)I
    .locals 4

    .line 2625
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$YYULgCK7v1Ue8N6Zo2f8i9mlv3Y([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;II)I
    .locals 4

    .line 2617
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$_ME4zZZlAvNaU3eYCz_QMaWHul0(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1121
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_QJP0IsaxGzABYiOoFGvXoOzl_8([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;II)I
    .locals 4

    .line 2641
    aget-object v0, p0, p1

    iget-wide v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    aget-object p0, p0, p2

    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    return p1

    :cond_0
    return p2
.end method

.method public static synthetic blacklist $r8$lambda$jIVIyR5_QDCyu1vz6MGFBTezZuU([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)Z
    .locals 0

    .line 2649
    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msaveAtomsToFileNow(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 182
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierRoamingSatelliteSessionStats:I

    .line 201
    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$1;-><init>(Lcom/android/internal/telephony/metrics/PersistAtomsStorage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    .line 210
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.ram.low"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xf

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    .line 213
    sget-object p1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "Low RAM device"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/4 p1, 0x5

    .line 215
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v2, 0x8

    .line 216
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 217
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 218
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 219
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 220
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 221
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 222
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 223
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 224
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 225
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 226
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 227
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 228
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 229
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 230
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 231
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 232
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 233
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 234
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    .line 236
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 237
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x32

    .line 239
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    const/16 v2, 0x19

    .line 240
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    const/16 v3, 0x28

    .line 241
    iput v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 242
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 243
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 244
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 245
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 246
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 247
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 248
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 249
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 250
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 251
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 252
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 253
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 254
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 255
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 256
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 257
    iput v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 258
    iput p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 259
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 260
    iput v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    .line 261
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 262
    iput v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    .line 265
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 266
    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->fromProto([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 273
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "PersistAtomsThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandlerThread:Landroid/os/HandlerThread;

    .line 274
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    return-void
.end method

.method private static blacklist areSmsMergeable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 2592
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsHashCode(Ljava/lang/Object;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;
    .locals 5

    .line 2062
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2063
    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->mccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->gid1:Ljava/lang/String;

    .line 2064
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->spn:Ljava/lang/String;

    .line 2065
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->pnn:Ljava/lang/String;

    .line 2066
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .locals 5

    .line 2463
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2464
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .locals 5

    .line 2044
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2045
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratFrom:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->ratTo:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->simSlotIndex:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isMultiSim:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->carrierId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->isOpportunistic:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .locals 5

    .line 2015
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2016
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRat:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRat:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->voiceRoamingType:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->dataRoamingType:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEndc:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->simSlotIndex:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isMultiSim:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->carrierId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isEmergencyOnly:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isInternetPdnUp:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->foldState:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->overrideVoiceService:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isDataEnabled:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNtn:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isNbIotNtn:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->isOpportunistic:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .locals 5

    .line 2429
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2430
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkType:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->apnTypeBitmask:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->signalStrength:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->validationResult:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->handoverAttempted:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 5

    .line 2313
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2314
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .locals 5

    .line 2157
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2158
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->qci:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->bearerState:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->localConnectionInfoReceived:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->remoteConnectionInfoReceived:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->hasListeners:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .locals 5

    .line 2139
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2140
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->ratAtEnd:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->qci:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->dedicatedBearerEstablished:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .locals 5

    .line 2178
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2179
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registrationTech:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .locals 5

    .line 2262
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2263
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdName:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->serviceIdVersion:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->registrationTech:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .locals 5

    .line 2078
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2079
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->simSlotIndex:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->rat:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .locals 5

    .line 2094
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2095
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->carrierId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isMultiSim:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->ratAtEnd:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->isIwlanCrossSim:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->setupFailed:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->reasonCode:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraCode:I

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->extraMessage:Ljava/lang/String;

    .line 2102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .locals 5

    .line 2114
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2115
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .locals 5

    .line 2357
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2358
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->category:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->xmlVersion:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .locals 5

    .line 2297
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2298
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->reason:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->contentBodyReceived:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .locals 5

    .line 2209
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2210
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseCode:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->responseType:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->isSingleRegistrationEnabled:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .locals 5

    .line 2194
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2195
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->event:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .locals 5

    .line 2491
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2492
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .locals 5

    .line 2446
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2447
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 5

    .line 2475
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2476
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .locals 7

    .line 2372
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2373
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    if-ne v3, v4, :cond_0

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    iget-wide v5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    iget-wide v5, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 5

    .line 2407
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2408
    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .locals 5

    .line 2226
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2227
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageMethod:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageResponse:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->sipMessageDirection:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->messageError:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .locals 5

    .line 2330
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2331
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->featureTagName:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeregisteredReason:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->sipTransportDeniedReason:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .locals 5

    .line 2244
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2245
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionMethod:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipMessageDirection:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sipResponse:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .locals 5

    .line 2279
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2280
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->carrierId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->slotId:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->type:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    iget-boolean v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->successful:Z

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->commandCode:I

    if-ne v3, v4, :cond_0

    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->networkResponse:I

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I
    .locals 3

    const/4 v0, 0x0

    .line 2127
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2128
    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist findItemToEvict([Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .line 2613
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2615
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 2616
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda5;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)V

    .line 2617
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2618
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2621
    :cond_0
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v0, :cond_1

    .line 2623
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 2624
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda6;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V

    .line 2625
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2626
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2629
    :cond_1
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v0, :cond_2

    .line 2631
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 2632
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda7;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V

    .line 2633
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2634
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2637
    :cond_2
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v0, :cond_3

    .line 2639
    check-cast p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 2640
    array-length v0, p0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda8;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V

    .line 2641
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;

    move-result-object p0

    .line 2642
    invoke-virtual {p0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p0

    return p0

    .line 2645
    :cond_3
    instance-of v0, p0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v0, :cond_4

    .line 2647
    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 2648
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda9;-><init>([Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 2649
    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 2650
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 2651
    array-length v1, v0

    if-lez v1, :cond_4

    .line 2652
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 2658
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    return p0
.end method

.method private blacklist findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 4

    .line 2344
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2345
    iget v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getSmsCount(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 2586
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_0

    .line 2587
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    return p0

    :cond_0
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    return p0
.end method

.method private static blacklist getSmsHashCode(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    .line 2581
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_0

    .line 2582
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    return p0

    :cond_0
    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    return p0
.end method

.method private static blacklist insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;I)[TT;"
        }
    .end annotation

    .line 2507
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, p2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    .line 2509
    :goto_1
    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    if-ne v1, v3, :cond_2

    .line 2511
    aput-object p1, p2, v2

    return-object p2

    :cond_2
    if-eqz v4, :cond_5

    .line 2513
    instance-of v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 2516
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findItemToEvict([Ljava/lang/Object;)I

    move-result p0

    aput-object p1, p2, p0

    return-object p2

    .line 2514
    :cond_4
    :goto_2
    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mergeSmsOrEvictInFullStorage([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 2520
    :cond_5
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    .line 2521
    aget-object v1, p2, p0

    aput-object v1, p2, v0

    .line 2522
    aput-object p1, p2, p0

    return-object p2
.end method

.method private blacklist loadAtomsFromFile()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .locals 4

    .line 1746
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    .line 1748
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 1747
    invoke-static {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object v0

    .line 1751
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "Build changed"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1756
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1757
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 1758
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 1759
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1763
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 1764
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 1765
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    .line 1766
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 1770
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 1771
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 1775
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 1776
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1780
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 1781
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1785
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 1786
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1790
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 1791
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1795
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1796
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 1797
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 1798
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 1802
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 1803
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 1807
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 1808
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1812
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    .line 1813
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1817
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 1818
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1822
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    .line 1823
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 1827
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 1828
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 1832
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 1833
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 1837
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 1838
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 1842
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 1843
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1847
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 1848
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 1852
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 1853
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 1857
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 1858
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 1862
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1863
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1867
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    .line 1869
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    .line 1871
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    .line 1873
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    .line 1875
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    .line 1877
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    .line 1879
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    .line 1882
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataNetworkValidation:I

    .line 1883
    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    .line 1888
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    .line 1891
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    .line 1894
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    .line 1896
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    .line 1898
    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iget v3, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    .line 1903
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1904
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 1905
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1906
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 1907
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1908
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1909
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1910
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1911
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1912
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1913
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1914
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1915
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1916
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1917
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1918
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1919
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1920
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1921
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1922
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1923
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1924
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1925
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1926
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1927
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1928
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1929
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1930
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1931
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1932
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1933
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1934
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1935
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1936
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1937
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1938
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1939
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1940
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1941
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1942
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1943
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1944
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1945
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1946
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1947
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1948
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1949
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1950
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1951
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1952
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1953
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1954
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1955
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1956
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1957
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1958
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1959
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1960
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1961
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1962
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1963
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1964
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1965
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 1967
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 1969
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1970
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1971
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1972
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1973
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 1974
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeTimestamp(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1979
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot load/parse PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1977
    :catch_1
    sget-object v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "PersistAtoms file not found"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0
.end method

.method private blacklist makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .locals 3

    .line 2721
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    .line 2723
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    .line 2724
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    .line 2725
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 2726
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 2727
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 2728
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    const/4 p0, -0x1

    .line 2729
    iput p0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    .line 2730
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 2731
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 2732
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 2733
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 2734
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 2735
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    .line 2736
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 2737
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 2738
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 2739
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 2740
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 2741
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 2742
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 2743
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 2744
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 2745
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 2746
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 2747
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 2748
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 2749
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 2750
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 2751
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 2752
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 2753
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 2754
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 2755
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 2756
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 2757
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 2758
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 2759
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 2760
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 2761
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 2762
    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 2764
    sget-object p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v1, "created new PersistAtoms"

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static blacklist mergeSms(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 2597
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_0

    .line 2598
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2599
    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 2600
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    iget v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    int-to-long v4, v3

    mul-long/2addr v1, v4

    iget-wide v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    int-to-long v6, p1

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    add-int v4, v3, p1

    int-to-long v4, v4

    div-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    add-int/2addr v3, p1

    .line 2602
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    return-object p0

    .line 2603
    :cond_0
    instance-of v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v0, :cond_1

    .line 2604
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2605
    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 2606
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    :cond_1
    return-object p0
.end method

.method private static blacklist mergeSmsOrEvictInFullStorage([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)V"
        }
    .end annotation

    .line 2536
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v0, -0x1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 2542
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 2544
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->areSmsMergeable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2545
    aget-object v0, p0, v2

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mergeSms(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v2

    return-void

    .line 2550
    :cond_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getSmsCount(Ljava/lang/Object;)I

    move-result v3

    if-ge v3, v1, :cond_1

    move v0, v2

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2576
    :cond_2
    aput-object p1, p0, v0

    return-void
.end method

.method private blacklist normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .locals 4

    const/4 v0, 0x0

    .line 2686
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2687
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 2688
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 2689
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 2690
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 2691
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 2692
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 2693
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 2694
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 2695
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 2696
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 2697
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 2698
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 2699
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 2700
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 2701
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 2702
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 2703
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 2704
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 2705
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 2706
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 2707
    aget-object v1, p1, v0

    iget-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 2708
    invoke-direct {p0, v2, v3, p2, p3}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private blacklist normalizeDurationTo24H(JJ)J
    .locals 4

    const-wide/16 v0, 0x3e8

    cmp-long p0, p3, v0

    if-gez p0, :cond_0

    const-wide/16 p3, 0x1

    goto :goto_0

    .line 2715
    :cond_0
    div-long/2addr p3, v0

    .line 2716
    :goto_0
    div-long/2addr p1, v0

    const-wide/32 v2, 0x15180

    mul-long/2addr p1, v2

    div-long/2addr p1, p3

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2663
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->emptyIfNull([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Class<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .line 2668
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .line 2669
    array-length p1, p0

    if-le p1, p3, :cond_0

    .line 2670
    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private blacklist sanitizeTimestamp(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2677
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method private declared-synchronized blacklist saveAtomsToFile(I)V
    .locals 4

    monitor-enter p0

    .line 1991
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lez p1, :cond_0

    .line 1992
    iget-boolean v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveImmediately:Z

    if-nez v0, :cond_0

    .line 1993
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mSaveRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1994
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1998
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFileNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1999
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist saveAtomsToFileNow()V
    .locals 3

    monitor-enter p0

    .line 2003
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mContext:Landroid/content/Context;

    const-string v1, "persist_atoms.pb"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-static {v1}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->toByteArray(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2005
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_0

    .line 2003
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2006
    :goto_1
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->TAG:Ljava/lang/String;

    const-string v2, "cannot save PersistAtoms"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2008
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method private blacklist sortBaseOnArray([I[I)V
    .locals 4

    .line 1056
    array-length p0, p2

    array-length v0, p1

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 1057
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda3;-><init>([I)V

    .line 1058
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/RILUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 1059
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 1060
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    .line 1061
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 1062
    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 1063
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 1064
    aget v3, p0, v0

    aget v3, v1, v3

    aput v3, p1, v0

    .line 1065
    aget v3, p0, v0

    aget v3, v2, v3

    aput v3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist addCarrierIdMismatch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Z
    .locals 6

    monitor-enter p0

    .line 403
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    monitor-exit p0

    return v1

    .line 408
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v3, v2

    iget v4, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    sub-int/2addr v4, v5

    .line 409
    invoke-static {v2, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCarrierIdMismatches:I

    sub-int/2addr v1, v5

    aput-object p1, v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 417
    :cond_1
    const-class v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    .line 418
    invoke-static {v1, v2, p1, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    :goto_0
    const/16 p1, 0x7530

    .line 424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    monitor-exit p0

    return v5

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addCarrierRoamingSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)V
    .locals 3

    monitor-enter p0

    .line 901
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 903
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    .line 905
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    .line 907
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    .line 909
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    .line 910
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    .line 911
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    .line 914
    iget-boolean v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    .line 915
    iget-boolean v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    .line 916
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    .line 917
    iget-boolean p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    :goto_0
    const/16 p1, 0x7530

    .line 923
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addCarrierRoamingSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)V
    .locals 3

    monitor-enter p0

    .line 892
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/16 p1, 0x7530

    .line 895
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addCellularServiceStateAndCellularDataServiceSwitch(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)V
    .locals 5

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->totalTimeMillis:J

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->lastUsedMillis:J

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularServiceStates:I

    .line 347
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    :goto_0
    if-eqz p2, :cond_2

    .line 352
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 354
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    iget p2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->switchCount:I

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->lastUsedMillis:J

    .line 358
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iget v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumCellularDataSwitches:I

    .line 359
    invoke-static {v0, p2, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    :cond_2
    :goto_1
    const/16 p1, 0x7530

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addCompleteSipTransportSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)V
    .locals 3

    monitor-enter p0

    .line 588
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->sessionCount:I

    .line 591
    iget-boolean p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->isEndedGracefully:Z

    if-eqz p1, :cond_1

    .line 592
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->endedGracefullyCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportSessionStats:I

    .line 596
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    :cond_1
    :goto_0
    const/16 p1, 0x7530

    .line 599
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addDataCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)V
    .locals 6

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findIndex(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    aget-object v1, v1, v0

    .line 374
    iget-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    iget-wide v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 375
    iget-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    iget-wide v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 377
    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 379
    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    .line 377
    invoke-static {v2, v3}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v2

    const-wide/16 v3, 0xf

    .line 380
    invoke-interface {v2, v3, v4}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 381
    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    invoke-static {v2}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 383
    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 381
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->concat(Ljava/util/stream/IntStream;Ljava/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 384
    invoke-interface {v1, v3, v4}, Ljava/util/stream/IntStream;->limit(J)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    aput-object p1, v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    .line 389
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    :goto_0
    const/16 p1, 0x7530

    .line 392
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addDataNetworkValidation(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)V
    .locals 8

    monitor-enter p0

    .line 872
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    add-int v3, v1, v2

    .line 876
    iget-wide v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    int-to-long v6, v2

    mul-long/2addr v4, v6

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    int-to-long v1, v1

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    int-to-long v1, v3

    div-long/2addr v4, v1

    .line 880
    iput v3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->networkValidationCount:I

    .line 881
    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;->elapsedTimeInMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDataCallSessions:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    :goto_0
    const/16 p1, 0x7530

    .line 886
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addGbaEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)V
    .locals 3

    monitor-enter p0

    .line 673
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumGbaEventStats:I

    .line 678
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    :goto_0
    const/16 p1, 0x7530

    .line 680
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)V
    .locals 3

    monitor-enter p0

    .line 618
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerEventStats:I

    .line 623
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    :goto_0
    const/16 p1, 0x7530

    .line 626
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsDedicatedBearerListenerEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)V
    .locals 3

    monitor-enter p0

    .line 605
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->eventCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumDedicatedBearerListenerEventStats:I

    .line 610
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    :goto_0
    const/16 p1, 0x7530

    .line 613
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)V
    .locals 5

    monitor-enter p0

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->registeredMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationFeatureStats:I

    .line 519
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    :goto_0
    const/16 p1, 0x7530

    .line 522
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationServiceDescStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)V
    .locals 5

    monitor-enter p0

    .line 632
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationServiceDescStats:I

    .line 637
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    :goto_0
    const/16 p1, 0x7530

    .line 640
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)V
    .locals 5

    monitor-enter p0

    .line 430
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredMillis:J

    .line 433
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceCapableMillis:J

    .line 434
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->voiceAvailableMillis:J

    .line 435
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsCapableMillis:J

    .line 436
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->smsAvailableMillis:J

    .line 437
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoCapableMillis:J

    .line 438
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->videoAvailableMillis:J

    .line 439
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utCapableMillis:J

    .line 440
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->utAvailableMillis:J

    .line 441
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeringMillis:J

    .line 442
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->unregisteredMillis:J

    .line 443
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->registeredTimes:I

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->lastUsedMillis:J

    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationStats:I

    .line 448
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    :goto_0
    const/16 p1, 0x7530

    .line 451
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addImsRegistrationTermination(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)V
    .locals 3

    monitor-enter p0

    .line 456
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;)Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->count:I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->lastUsedMillis:J

    .line 462
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumImsRegistrationTerminations:I

    .line 463
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    :goto_0
    const/16 p1, 0x7530

    .line 468
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addIncomingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)V
    .locals 3

    monitor-enter p0

    .line 302
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 p1, 0x7530

    .line 304
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V
    .locals 4

    monitor-enter p0

    .line 496
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 500
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    .line 501
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 502
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    .line 503
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    .line 504
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iget-object v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/4 v3, 0x1

    .line 505
    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    :goto_0
    const/16 p1, 0x7530

    .line 508
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addOutgoingShortCodeSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)V
    .locals 3

    monitor-enter p0

    .line 720
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 722
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;->shortCodeSmsCount:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxOutgoingShortCodeSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    :goto_0
    const/16 p1, 0x7530

    .line 727
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addOutgoingSms(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)V
    .locals 8

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SmsStats;->getSmsHashCode(Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;)I

    move-result v0

    iput v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 321
    iget-wide v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    iget-wide v6, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget v3, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    iget v4, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-lt v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 322
    iput v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSms:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 p1, 0x7530

    .line 327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addPresenceNotifyEvent(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)V
    .locals 3

    monitor-enter p0

    .line 657
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->rcsCapsCount:I

    .line 660
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->mmtelCapsCount:I

    .line 661
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->noCapsCount:I

    .line 662
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumPresenceNotifyEventStats:I

    .line 665
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    :goto_0
    const/16 p1, 0x7530

    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addRcsAcsProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)V
    .locals 5

    monitor-enter p0

    .line 540
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 542
    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 543
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 546
    :cond_0
    iput v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->count:I

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsAcsProvisioningStats:I

    .line 548
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    :goto_0
    const/16 p1, 0x7530

    .line 551
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addRcsClientProvisioningStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)V
    .locals 3

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumRcsClientProvisioningStats:I

    .line 532
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    :goto_0
    const/16 p1, 0x7530

    .line 535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteAccessControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)V
    .locals 3

    monitor-enter p0

    .line 952
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 953
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/16 p1, 0x7530

    .line 955
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteConfigUpdaterStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)V
    .locals 3

    monitor-enter p0

    .line 940
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    :goto_0
    const/16 p1, 0x7530

    .line 947
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)V
    .locals 3

    monitor-enter p0

    .line 733
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    .line 737
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    .line 739
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    .line 741
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    .line 743
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    .line 745
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    .line 747
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    .line 749
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    .line 751
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    .line 753
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    .line 755
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    .line 757
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    .line 759
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    .line 761
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    .line 763
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    .line 765
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    .line 767
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    .line 769
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 771
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    .line 773
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    .line 775
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    .line 777
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    .line 779
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    .line 781
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    .line 783
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    .line 785
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    .line 786
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    .line 788
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    .line 790
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    .line 792
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    .line 794
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    .line 795
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    .line 797
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    .line 800
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    .line 801
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    .line 803
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    .line 805
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    .line 807
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    .line 809
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    .line 811
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    .line 813
    iget v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierRoamingSatelliteConfigVersion:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierRoamingSatelliteConfigVersion:I

    .line 815
    iget p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->maxAllowedDataMode:I

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->maxAllowedDataMode:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    :goto_0
    const/16 p1, 0x7530

    .line 820
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteEntitlementStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)V
    .locals 3

    monitor-enter p0

    .line 928
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 930
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    :goto_0
    const/16 p1, 0x7530

    .line 935
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteIncomingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)V
    .locals 3

    monitor-enter p0

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 838
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/16 p1, 0x7530

    .line 839
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteOutgoingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)V
    .locals 3

    monitor-enter p0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 845
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/16 p1, 0x7530

    .line 846
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteProvisionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)V
    .locals 3

    monitor-enter p0

    .line 851
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 852
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/16 p1, 0x7530

    .line 853
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)V
    .locals 3

    monitor-enter p0

    .line 825
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 830
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    :goto_0
    const/16 p1, 0x7530

    .line 832
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSatelliteSosMessageRecommenderStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)V
    .locals 3

    monitor-enter p0

    .line 859
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSatelliteStats:I

    .line 864
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    :goto_0
    const/16 p1, 0x7530

    .line 867
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSipDelegateStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;)V
    .locals 3

    monitor-enter p0

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipDelegateStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p1, 0x7530

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSipMessageResponse(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)V
    .locals 3

    monitor-enter p0

    .line 576
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 578
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipMessageResponseStats:I

    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    :goto_0
    const/16 p1, 0x7530

    .line 583
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addSipTransportFeatureTagStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)V
    .locals 5

    monitor-enter p0

    .line 563
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    iget-wide v3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumSipTransportFeatureTagStats:I

    .line 568
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    :goto_0
    const/16 p1, 0x7530

    .line 571
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addUceEventStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)V
    .locals 3

    monitor-enter p0

    .line 645
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->find(Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 647
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->count:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumUceEventStats:I

    .line 650
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    :goto_0
    const/16 p1, 0x7530

    .line 652
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addUnmeteredNetworks(IIJ)V
    .locals 3

    monitor-enter p0

    .line 690
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object v0

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    .line 694
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    .line 695
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    .line 696
    iput-wide p3, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 697
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iget-object p3, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const/4 p4, 0x1

    .line 698
    invoke-static {p2, p3, v0, p4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 702
    :cond_0
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eq p1, p2, :cond_1

    .line 703
    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    const-wide/16 p1, 0x0

    .line 704
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 706
    :cond_1
    iget-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    or-long v1, p1, p3

    cmp-long v1, v1, p1

    if-eqz v1, :cond_2

    or-long/2addr p1, p3

    .line 707
    iput-wide p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    :goto_0
    const/16 p1, 0x7530

    .line 714
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 716
    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallRatUsage(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V
    .locals 1

    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->mergeWith(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 296
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->toProto()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p1, 0x7530

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist addVoiceCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .locals 3

    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mMaxNumVoiceCallSessions:I

    .line 283
    invoke-static {v1, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->insertAtRandomPlace([Ljava/lang/Object;Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 p1, 0x7530

    .line 284
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist clearAtoms()V
    .locals 1

    monitor-enter p0

    .line 1739
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->makeNewPersistAtoms()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    .line 1740
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist flushAtoms()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1734
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1735
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getAutoDataSwitchToggleCount()I
    .locals 3

    monitor-enter p0

    .line 1170
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 1172
    iput v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    const/16 v0, 0x1f4

    .line 1173
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1175
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getCarrierRoamingSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;
    .locals 5

    monitor-enter p0

    .line 1660
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStatsPullTimestampMillis:J

    .line 1663
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    const/4 v0, 0x0

    .line 1665
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteControllerStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    .line 1667
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->resetCarrierRoamingSatelliteControllerStats()V

    const/16 p1, 0x1f4

    .line 1668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1671
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getCarrierRoamingSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 5

    monitor-enter p0

    .line 1641
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1643
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSessionPullTimestampMillis:J

    .line 1644
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/4 v0, 0x0

    .line 1645
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierRoamingSatelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    const/16 p1, 0x1f4

    .line 1646
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1647
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1649
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getCellularDataServiceSwitches(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;
    .locals 5

    monitor-enter p0

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 1099
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 1100
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda4;-><init>()V

    .line 1101
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1102
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    const/16 p2, 0x1f4

    .line 1103
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1106
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getCellularServiceStates(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;
    .locals 5

    monitor-enter p0

    .line 1076
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 1079
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 1080
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1081
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    const/16 p2, 0x1f4

    .line 1082
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1085
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getDataCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 5

    monitor-enter p0

    .line 1033
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 1034
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 1035
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/4 v0, 0x0

    .line 1036
    new-array v1, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    iput-object v1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    const/16 p1, 0x1f4

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 1038
    array-length p1, p2

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 1040
    iget-object v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    iget-object v1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sortBaseOnArray([I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1043
    :cond_0
    monitor-exit p0

    return-object p2

    .line 1045
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getDataNetworkValidation(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;
    .locals 5

    monitor-enter p0

    .line 1622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    .line 1623
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    sub-long v3, v0, v3

    cmp-long p1, v3, p1

    if-lez p1, :cond_0

    .line 1624
    iput-wide v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidationPullTimestampMillis:J

    .line 1625
    iget-object p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const/4 p2, 0x0

    .line 1626
    new-array p2, p2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    iput-object p2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataNetworkValidation:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataNetworkValidation;

    const/16 p2, 0x1f4

    .line 1627
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1628
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1630
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getGbaEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 5

    monitor-enter p0

    .line 1452
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 1454
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/4 v0, 0x0

    .line 1455
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    const/16 p1, 0x1f4

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1459
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;
    .locals 5

    monitor-enter p0

    .line 1368
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 1371
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/4 v0, 0x0

    .line 1373
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    const/16 p1, 0x1f4

    .line 1374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1375
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1377
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsDedicatedBearerListenerEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;
    .locals 5

    monitor-enter p0

    .line 1348
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 1351
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/4 v0, 0x0

    .line 1353
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    const/16 p1, 0x1f4

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1357
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;
    .locals 5

    monitor-enter p0

    .line 1186
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1188
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 1189
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/4 v0, 0x0

    .line 1191
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    const/16 p1, 0x1f4

    .line 1192
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1195
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationServiceDescStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;
    .locals 7

    monitor-enter p0

    .line 1389
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    .line 1391
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 1392
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 1395
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1398
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->publishedMillis:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1403
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    const/16 p2, 0x1f4

    .line 1404
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-object p1

    .line 1407
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;
    .locals 5

    monitor-enter p0

    .line 1117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    .line 1120
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 1121
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1122
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    iput-object v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    const/16 p2, 0x1f4

    .line 1123
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V

    .line 1124
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeData([Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1126
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getImsRegistrationTerminations(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;
    .locals 5

    monitor-enter p0

    .line 1137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 1140
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 1141
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage$$ExternalSyntheticLambda2;-><init>()V

    .line 1142
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1143
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    const/16 p2, 0x1f4

    .line 1144
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1147
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getIncomingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 5

    monitor-enter p0

    .line 999
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 1001
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/4 v0, 0x0

    .line 1002
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    const/16 p1, 0x1f4

    .line 1003
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1006
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getNetworkRequestsV2(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;
    .locals 5

    monitor-enter p0

    .line 1157
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1158
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    .line 1159
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/4 v0, 0x0

    .line 1160
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    const/16 p1, 0x1f4

    .line 1161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1164
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getOutgoingShortCodeSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;
    .locals 5

    monitor-enter p0

    .line 1493
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1495
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSmsPullTimestampMillis:J

    .line 1496
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const/4 v0, 0x0

    .line 1497
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingShortCodeSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingShortCodeSms;

    const/16 p1, 0x1f4

    .line 1498
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1501
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getOutgoingSms(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 5

    monitor-enter p0

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 1018
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/4 v0, 0x0

    .line 1019
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    const/16 p1, 0x1f4

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1023
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getPresenceNotifyEvent(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;
    .locals 5

    monitor-enter p0

    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1436
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 1437
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/4 v0, 0x0

    .line 1438
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    const/16 p1, 0x1f4

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1440
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1442
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getRcsAcsProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;
    .locals 7

    monitor-enter p0

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    .line 1228
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 1229
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 1231
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1234
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->stateTimerMillis:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    const/16 p2, 0x1f4

    .line 1240
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    monitor-exit p0

    return-object p1

    .line 1243
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getRcsClientProvisioningStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;
    .locals 5

    monitor-enter p0

    .line 1206
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1208
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 1209
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/4 v0, 0x0

    .line 1210
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    const/16 p1, 0x1f4

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1214
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteAccessControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 5

    monitor-enter p0

    .line 1720
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1722
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessControllerPullTimestampMillis:J

    .line 1723
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/4 v0, 0x0

    .line 1724
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteAccessController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    const/16 p1, 0x1f4

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1728
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteConfigUpdaterStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;
    .locals 5

    monitor-enter p0

    .line 1701
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdaterPullTimestampMillis:J

    .line 1704
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const/4 v0, 0x0

    .line 1705
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteConfigUpdater:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    const/16 p1, 0x1f4

    .line 1706
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1709
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteControllerStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;
    .locals 5

    monitor-enter p0

    .line 1511
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1513
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteControllerPullTimestampMillis:J

    .line 1514
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const/4 v0, 0x0

    .line 1515
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteController:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    const/16 p1, 0x1f4

    .line 1516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1519
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteEntitlementStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 5

    monitor-enter p0

    .line 1682
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlementPullTimestampMillis:J

    .line 1685
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const/4 v0, 0x0

    .line 1686
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteEntitlement:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    const/16 p1, 0x1f4

    .line 1687
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1688
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1690
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteIncomingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 5

    monitor-enter p0

    .line 1548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagramPullTimestampMillis:J

    .line 1551
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/4 v0, 0x0

    .line 1552
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteIncomingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    const/16 p1, 0x1f4

    .line 1553
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1556
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteOutgoingDatagramStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 5

    monitor-enter p0

    .line 1567
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1569
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagramPullTimestampMillis:J

    .line 1570
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/4 v0, 0x0

    .line 1571
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteOutgoingDatagram:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    const/16 p1, 0x1f4

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1573
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1575
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteProvisionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;
    .locals 5

    monitor-enter p0

    .line 1585
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvisionPullTimestampMillis:J

    .line 1588
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/4 v0, 0x0

    .line 1589
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteProvision:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    const/16 p1, 0x1f4

    .line 1590
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1593
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteSessionStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;
    .locals 5

    monitor-enter p0

    .line 1529
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1531
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSessionPullTimestampMillis:J

    .line 1532
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const/4 v0, 0x0

    .line 1533
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    const/16 p1, 0x1f4

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1537
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSatelliteSosMessageRecommenderStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 5

    monitor-enter p0

    .line 1604
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1606
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommenderPullTimestampMillis:J

    .line 1607
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const/4 v0, 0x0

    .line 1608
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->satelliteSosMessageRecommender:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    const/16 p1, 0x1f4

    .line 1609
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1612
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSipDelegateStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;
    .locals 7

    monitor-enter p0

    .line 1253
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 1256
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 1258
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1261
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->uptimeMillis:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1266
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    const/16 p2, 0x1f4

    .line 1267
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    monitor-exit p0

    return-object p1

    .line 1270
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSipMessageResponse(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;
    .locals 5

    monitor-enter p0

    .line 1309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1311
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 1312
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/4 v0, 0x0

    .line 1314
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    const/16 p1, 0x1f4

    .line 1315
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1316
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1318
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportFeatureTagStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;
    .locals 7

    monitor-enter p0

    .line 1282
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_2

    .line 1284
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 1285
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 1287
    array-length p2, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    aget-object v4, p1, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 1290
    iget-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    invoke-direct {p0, v5, v6, v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->normalizeDurationTo24H(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->associatedMillis:J

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1295
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    new-array v0, v2, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    const/16 p2, 0x1f4

    .line 1296
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    monitor-exit p0

    return-object p1

    .line 1299
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getSipTransportSession(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;
    .locals 5

    monitor-enter p0

    .line 1328
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 1331
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/4 v0, 0x0

    .line 1333
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    const/16 p1, 0x1f4

    .line 1334
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1337
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getUceEventStats(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;
    .locals 5

    monitor-enter p0

    .line 1417
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 1419
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/4 v0, 0x0

    .line 1420
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    const/16 p1, 0x1f4

    .line 1421
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1424
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getUnmeteredNetworks(II)J
    .locals 4

    monitor-enter p0

    .line 1469
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->findUnmeteredNetworks(I)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 1471
    monitor-exit p0

    return-wide v0

    .line 1475
    :cond_0
    :try_start_1
    iget v2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eq v2, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    .line 1476
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iget-object v3, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1478
    invoke-static {v2, v3, p1}, Lcom/android/internal/util/ArrayUtils;->removeElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const-class v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    .line 1477
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->sanitizeAtoms([Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    iput-object p1, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->unmeteredNetworks:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    const/16 p1, 0x1f4

    .line 1483
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1484
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallRatUsages(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;
    .locals 5

    monitor-enter p0

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 983
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p1, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    .line 984
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mVoiceCallRatTracker:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p2}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    .line 985
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    iput-object v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/16 p2, 0x1f4

    .line 986
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 989
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist getVoiceCallSessions(J)[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 5

    monitor-enter p0

    .line 964
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-wide v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    sub-long/2addr v0, v3

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 965
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->getWallTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 966
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget-object p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/4 v0, 0x0

    .line 967
    new-array v0, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iput-object v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/16 p1, 0x1f4

    .line 968
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 971
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected blacklist getWallTimeMillis()J
    .locals 2

    .line 2771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist recordToggledAutoDataSwitch()V
    .locals 2

    monitor-enter p0

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->autoDataSwitchToggleCount:I

    const/16 v0, 0x7530

    .line 491
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist setCarrierIdTableVersion(I)Z
    .locals 2

    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->mAtoms:Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    if-ge v1, p1, :cond_0

    .line 478
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    const/16 p1, 0x7530

    .line 479
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->saveAtomsToFile(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 482
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
