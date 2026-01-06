.class public Lcom/android/internal/telephony/SemGsmCdmaPhone;
.super Lcom/android/internal/telephony/GsmCdmaPhone;
.source "SemGsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemGsmCdmaPhone"

.field private static blacklist mGetCpDefaultNetModeState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mIsCarrierChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist m2GDefaultOff:Z

.field private blacklist mBigDataInfoController:Lcom/android/internal/telephony/SemBigDataInfoController;

.field private blacklist mCarrierGroup:Ljava/lang/String;

.field private final blacklist mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mCarrierId:I

.field private blacklist mCpaiController:Lcom/android/internal/telephony/SemCpaiController;

.field private blacklist mDefaultNetworkModeReason:Ljava/lang/String;

.field private blacklist mDeviceConfigFeature:I

.field private blacklist mDeviceConfigStatus:I

.field private blacklist mDrxController:Lcom/android/internal/telephony/DrxController;

.field private blacklist mFdnRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsPreference:Lcom/android/internal/telephony/ImsPreference;

.field private blacklist mIsValidCarrierConfigChanged:Z

.field private blacklist mIsVonrSupported:Z

.field private blacklist mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

.field private blacklist mLastCwMode:Z

.field private blacklist mLastCwType:I

.field private blacklist mMoDataFactor:I

.field private blacklist mNeedCrossCW:Z

.field private blacklist mPrevSubId:I

.field private blacklist mPrevVonrUserSetting:I

.field private blacklist mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

.field private blacklist mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

.field private blacklist mSemIccCardHelper:Lcom/android/internal/telephony/uicc/SemIccCardHelper;

.field private blacklist mSemSimErrorMonitor:Lcom/android/internal/telephony/SemSimErrorMonitor;

.field private blacklist mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

.field private blacklist mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

.field private blacklist mSubIdValidForNetworkModeUpdate:I

.field private blacklist mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

.field private blacklist mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

.field private blacklist mTtyBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCarrierGroup(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/SemGsmCdmaPhone;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorConfigurationTracker(Lcom/android/internal/telephony/SemGsmCdmaPhone;)Lcom/android/internal/telephony/VendorConfigurationTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierGroup(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierId(Lcom/android/internal/telephony/SemGsmCdmaPhone;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFdnRecords(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadSatellitePolicy(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loadSatellitePolicy()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/SemGsmCdmaPhone;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyCarrierChangedForModemConfig(Lcom/android/internal/telephony/SemGsmCdmaPhone;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->notifyCarrierChangedForModemConfig(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mset2GDefaultOff(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->set2GDefaultOff()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 226
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/SemGsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 234
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZIILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    const/4 p7, 0x0

    .line 146
    iput-boolean p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    const/4 p2, 0x1

    .line 147
    iput-boolean p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 148
    iput p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    const/4 p8, 0x0

    .line 151
    iput-object p8, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mFdnRecords:Ljava/util/List;

    .line 154
    iput p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    .line 155
    iput p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    .line 156
    iput p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevVonrUserSetting:I

    .line 173
    iput-boolean p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    const/16 p3, 0xff

    .line 176
    iput p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    const/4 p3, -0x1

    .line 182
    iput p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdValidForNetworkModeUpdate:I

    .line 183
    iput p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    .line 186
    iput p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierId:I

    .line 192
    const-string p3, ""

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    .line 193
    const-string p3, "DEFAULT"

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    .line 196
    new-instance p3, Lcom/android/internal/telephony/LocalLog;

    const/16 p4, 0x8

    invoke-direct {p3, p4}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 204
    iput-boolean p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    .line 208
    iput-boolean p7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsValidCarrierConfigChanged:Z

    .line 351
    new-instance p3, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone$1;-><init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 690
    new-instance p3, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone$2;-><init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTtyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    iget-object p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p4, 0x23f

    invoke-interface {p3, p0, p4, p8}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForAcbInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    new-instance p3, Lcom/android/internal/telephony/RtsStatus;

    iget-object p4, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p5}, Lcom/android/internal/telephony/RtsStatus;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

    .line 244
    new-instance p3, Lcom/android/internal/telephony/VendorConfigurationTracker;

    iget-object p4, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-direct {p3, p0, p4}, Lcom/android/internal/telephony/VendorConfigurationTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/SemCommandsInterface;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    .line 247
    new-instance p3, Lcom/android/internal/telephony/SemCallTrackerHelper;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemCallTrackerHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

    .line 250
    new-instance p3, Lcom/android/internal/telephony/TelephonyLogger;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/TelephonyLogger;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    .line 253
    new-instance p3, Lcom/android/internal/telephony/SemTelephonyHelper;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemTelephonyHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    .line 256
    new-instance p3, Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/uicc/SemIccCardHelper;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemIccCardHelper:Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    .line 259
    invoke-static {p0}, Lcom/android/internal/telephony/ImsPreference;->makeImsPreference(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ImsPreference;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 260
    iget-object p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p4, 0x243

    invoke-interface {p3, p0, p4, p8}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForImsPrefValue(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    new-instance p3, Lcom/android/internal/telephony/DrxController;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/DrxController;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDrxController:Lcom/android/internal/telephony/DrxController;

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestAllowed()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 271
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->makeSemTelephonyTester(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    .line 275
    :cond_0
    new-instance p3, Lcom/android/internal/telephony/SemSimErrorMonitor;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemSimErrorMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemSimErrorMonitor:Lcom/android/internal/telephony/SemSimErrorMonitor;

    .line 278
    new-instance p3, Lcom/android/internal/telephony/SemBigDataInfoController;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemBigDataInfoController;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mBigDataInfoController:Lcom/android/internal/telephony/SemBigDataInfoController;

    .line 281
    new-instance p3, Lcom/android/internal/telephony/SemCpaiController;

    invoke-direct {p3, p0}, Lcom/android/internal/telephony/SemCpaiController;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    iput-object p3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCpaiController:Lcom/android/internal/telephony/SemCpaiController;

    .line 283
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 285
    const-string p4, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    const-string p4, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget p4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p4, :cond_1

    .line 289
    const-string p4, "com.samsung.android.mobiledoctor.DIAGTOOLEX"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    :cond_1
    const-string p4, "com.samsung.intent.action.IMEI_STATE_CHANGED"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object p4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p5, 0x2

    invoke-virtual {p1, p4, p3, p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 296
    iget p3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-ne p3, p2, :cond_2

    .line 297
    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    const-string p2, "com.samsung.android.telecom.action.CURRENT_TTY_MODE_CHANGED_2"

    invoke-virtual {p3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string p2, "com.samsung.android.telecom.action.TTY_PREFERRED_MODE_CHANGED_2"

    invoke-virtual {p3, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTtyBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 p5, 0x0

    const/4 p6, 0x2

    const-string p4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_2
    const/16 p1, 0x240

    .line 305
    invoke-virtual {p0, p0, p1, p8}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 309
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x1e

    invoke-virtual {p1, p0, p3, p2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 312
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/16 p2, 0x248

    invoke-interface {p1, p0, p2, p8}, Lcom/android/internal/telephony/SemCommandsInterface;->setOnSimPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->initFdnList()V

    .line 318
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-nez p1, :cond_3

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 p2, 0x15

    .line 319
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 321
    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->forceNetworkMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "forceNetworkMode exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 328
    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    .line 329
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez p1, :cond_5

    move p1, p7

    .line 330
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 331
    sget-object p2, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object p2, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 336
    :cond_5
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    iget-object p2, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object p3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RilMonitor;->makeRilMonitor(ILcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/RilMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

    .line 339
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDisable2gDefaultInPreference()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    .line 342
    new-instance p1, Lcom/android/internal/telephony/data/CidManager;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/data/CidManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mCidManager:Lcom/android/internal/telephony/data/CidManager;

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loadSatellitePolicy()V

    return-void
.end method

.method private blacklist checkCpDefaultNetModeDone()V
    .locals 5

    .line 471
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move v3, v0

    .line 473
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 474
    sget-object v4, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 475
    const-string v0, "get cp default net mode not complieted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 480
    :cond_1
    const-string v2, "get cp default net mode done"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 481
    const-string v2, "DEFAULT"

    iput-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    .line 482
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    const-string v2, "CARRIER_GROUP_CHANGED_DONE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 483
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    if-ge v0, p0, :cond_2

    .line 484
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 487
    :cond_2
    invoke-static {v1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->preconfig_reset(Ljava/lang/Integer;)V

    return-void
.end method

.method private blacklist checkDeviceConfigForFeature(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 1541
    iput v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    .line 1542
    iput v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    .line 1544
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 1547
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1550
    iget v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    .line 1551
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1552
    iget v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist checkDeviceConfigListValue(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1559
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1560
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 1562
    :goto_0
    array-length v0, p2

    if-ge v4, v0, :cond_9

    .line 1563
    aget-object v0, p2, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v5, 0x0

    .line 1571
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    aget-object v0, p2, v4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1573
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1574
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1575
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_6

    .line 1578
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-eqz v8, :cond_1

    .line 1579
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v2, v3, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_2
    move v8, v3

    :goto_3
    if-ge v8, v6, :cond_5

    .line 1582
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-nez v8, :cond_2

    .line 1584
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1585
    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1586
    array-length v11, v9

    sub-int/2addr v11, v10

    aget-object v11, v9, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1587
    array-length v11, v9

    sub-int/2addr v11, v10

    aget-object v9, v9, v11

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_2
    if-ne v8, v10, :cond_4

    .line 1589
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1590
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1591
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 1593
    :cond_3
    const-string v9, ":Empty;"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1597
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1598
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    .line 1605
    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 1602
    :goto_6
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDeviceConfigListValue is fail. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_8
    if-eqz v5, :cond_8

    .line 1605
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1607
    :cond_8
    throw p0

    .line 1610
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist checkNotAllowedNetmode(I)Z
    .locals 5

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkNotAllowedNetmode netMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2190
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v0

    .line 2191
    const-string v1, "24002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    return v1

    .line 2195
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNotAllowedNetworkMode(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 2197
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 2198
    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->networkmodeToInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private blacklist checkResetDefaultNetworkMode()V
    .locals 5

    .line 440
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->preconfig_reset()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    sget-object v2, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIL Connected, preconfig_reset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCarrierChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 447
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 448
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 449
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mGetCpDefaultNetModeState:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 453
    const-string v0, "NWCode"

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    .line 454
    const-string v0, "NWCode changed, reset default network mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-le v0, v2, :cond_5

    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 456
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 458
    const-string v0, "other slot NWCode changed, skip this slot"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkCpDefaultNetModeDone()V

    return-void

    .line 462
    :cond_5
    const-string v0, "SKU changed, reset default network mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 463
    const-string v0, "SKU"

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    .line 465
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 466
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->putEnable2gNetworkTypeReasonInPreference(IJ)V

    :cond_6
    return-void
.end method

.method private static blacklist convertNetworkTypeReasonToDbName(I)Ljava/lang/String;
    .locals 2

    .line 2106
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/Phone;->convertAllowedNetworkTypeMapIndexToDbName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2108
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist forceNetworkMode()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1683
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1689
    iget v2, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    const-string v3, "att_2g_enabled"

    if-eqz v2, :cond_0

    .line 1690
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v4

    const-wide/32 v6, 0x8003

    or-long/2addr v4, v6

    .line 1692
    const-string v2, "att_2g_enabled_simdb"

    move-object v6, v2

    move-object v2, v3

    goto :goto_0

    .line 1694
    :cond_0
    iget v2, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v4, 0x15

    invoke-static {v2, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1695
    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v4

    const-wide/32 v6, 0x45384

    or-long/2addr v4, v6

    .line 1698
    const-string v2, "tmo_3g_4g_enabled"

    const-string v6, "tmo_3g_4g_enabled_simdb"

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    .line 1694
    const-string v2, ""

    move-object v6, v2

    .line 1701
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "ATT 2G"

    const-string v10, "allow_nettype_list"

    const/4 v11, 0x1

    if-nez v7, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1702
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v7, -0x1

    .line 1704
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference(I)J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v7, v12, v14

    if-eqz v7, :cond_3

    .line 1705
    sget-object v7, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceNetworkMode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget v7, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(IJ)V

    .line 1707
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v9

    goto :goto_1

    .line 1708
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TMO 3G/4G enabled ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v12, v4

    invoke-static {v12}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 1707
    invoke-virtual {v0, v10, v7}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1712
    :cond_3
    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1713
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1714
    iget-object v1, v0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    iget-object v6, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1716
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1717
    const-string v1, "There is no subinfos in sim db"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 1721
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 1722
    iget v7, v0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v12

    const/16 v13, 0x17

    invoke-static {v7, v13, v12}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(III)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1723
    iget-object v7, v0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1724
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v12

    iget-object v13, v0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 1723
    const-string v15, "allowed_network_types_for_reasons"

    invoke-virtual {v7, v12, v15, v13, v14}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1725
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1726
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    move v14, v8

    :goto_3
    if-ge v14, v13, :cond_8

    move/from16 v16, v8

    aget-object v8, v12, v14

    move/from16 v17, v11

    .line 1727
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v18, v1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "="

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1728
    array-length v11, v1

    move-object/from16 v19, v1

    const/4 v1, 0x2

    if-eq v11, v1, :cond_6

    .line 1729
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v9

    goto :goto_4

    .line 1730
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TMO 3G/4G enabled in SIMDB : Invalid ALLOWED_NETWORK_TYPES from DB. subid: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", value: "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1729
    invoke-virtual {v0, v10, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    .line 1733
    :cond_6
    aget-object v1, v19, v16

    const-string v8, "user"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1734
    aget-object v1, v19, v17

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    or-long/2addr v11, v4

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "user="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v19, v17

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "forceNetworkMode - subid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", oldNetworkTypes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v19, v17

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", newNetworkTypes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1738
    iget-object v7, v0, Lcom/android/internal/telephony/Phone;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v7, v6, v15, v1}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v16

    move/from16 v11, v17

    move-object/from16 v1, v18

    goto/16 :goto_3

    :cond_8
    move-object/from16 v18, v1

    move/from16 v16, v8

    move/from16 v17, v11

    :goto_6
    move/from16 v8, v16

    move/from16 v11, v17

    move-object/from16 v1, v18

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method private blacklist getCurNetworkCode(I)Ljava/lang/String;
    .locals 6

    .line 569
    const-string p0, "persist.ril.sales_network_code"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 572
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x9

    const/4 v5, 0x6

    if-ne v1, v2, :cond_0

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_1

    return-object v0

    .line 576
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 577
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x3

    .line 585
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 587
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method private blacklist getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1520
    const-string v1, ""

    const/4 v2, 0x0

    .line 1524
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1526
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1527
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1533
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    .line 1530
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDeviceConfigValue is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 1533
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1535
    :cond_3
    throw p0
.end method

.method private blacklist getImeiOem()V
    .locals 6

    .line 2285
    const-string v0, "getImeiOem is fail. "

    const-string v1, "getImeiOem"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2287
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->useGetImeiOem()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2289
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2290
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 2293
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xaa

    .line 2294
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 2295
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2297
    iget-object v3, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x24c

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2302
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 2303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 2299
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2302
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 2303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 2302
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 2303
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2307
    :goto_3
    throw v3
.end method

.method private blacklist getMatchedCode(I)Ljava/lang/String;
    .locals 1

    .line 561
    const-string p0, ""

    const-string v0, "ro.csc.sales_code"

    if-nez p1, :cond_0

    .line 562
    const-string p1, "mdc.matched_code"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 564
    :cond_0
    const-string p1, "mdc.matched_code2"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasOppoSlotMaxRat()Z
    .locals 7

    .line 1984
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v0

    .line 1985
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1987
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v1

    const-wide/32 v3, 0x80000

    and-long v5, v1, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    .line 1989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oppoSlot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] NetworkType: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isOppoCarrierChangedDone()Z
    .locals 6

    .line 537
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v0

    .line 538
    const-string v1, "ril.carrier_changed.state"

    const-string v2, "ABSENT"

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    iget-object v3, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccSlotForPhone(I)Lcom/android/internal/telephony/uicc/UiccSlot;

    move-result-object v3

    .line 543
    const-string v4, "phone1_on"

    const-string v5, "phone2_on"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    .line 544
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aget-object v0, v4, v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CARRIER_LOADED"

    .line 547
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CARRIER_CHANGED"

    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PERM_DISABLED"

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CARD_IO_ERROR"

    .line 550
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v3, :cond_0

    .line 551
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->isEuicc()Z

    move-result v0

    if-ne v0, v4, :cond_0

    const-string v0, "NOT_READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "UNKNOWN"

    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_3

    :cond_1
    const-string p0, "LOCKED"

    .line 553
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v4
.end method

.method private blacklist isVoNrEnabledInternal(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x6

    .line 2175
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2176
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 2182
    :cond_0
    new-array p2, v0, [B

    fill-array-data p2, :array_0

    .line 2183
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p2, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        -0x79t
        0x0t
        0x4t
    .end array-data
.end method

.method private blacklist loadSatellitePolicy()V
    .locals 6

    .line 2319
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2321
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2322
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "CarrierFeature_RIL_IgnoreSatelliteEntitlementPolicy"

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    .line 2324
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2326
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->updateSatelliteServicePolicy(IZ)V

    return-void

    .line 2328
    :cond_0
    const-string v0, "loadSatellitePolicy : SatelliteController is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 3

    .line 2277
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 3

    .line 2281
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist needsNotAllowedNetmodeSetting()Z
    .locals 8

    .line 2114
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    .line 2115
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkNotAllowedNetmode(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2116
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    int-to-long v2, v0

    .line 2119
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v4, 0xf

    invoke-static {v0, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 2120
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return v5

    .line 2125
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-eq v0, v5, :cond_1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-wide/32 v6, -0x80001

    and-long/2addr v2, v6

    .line 2128
    :cond_2
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return v5

    :cond_3
    return v1
.end method

.method private blacklist networkmodeToInt(Ljava/lang/String;)I
    .locals 4

    const/4 p0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string v3, "3G/2G"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    goto :goto_1

    :sswitch_1
    const-string v3, "3G"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_1

    :sswitch_2
    const-string v3, "2G"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    return p0

    :pswitch_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x655 -> :sswitch_2
        0x674 -> :sswitch_1
        0x2efabd0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist notifyCarrierChangedForModemConfig(Landroid/content/Intent;)V
    .locals 8

    .line 594
    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 600
    :cond_0
    const-string v0, "UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->sendCpFeature()V

    return-void

    .line 605
    :cond_1
    const-string v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isBootstrapActivated()Z

    move-result p1

    const-string v0, "ril.carrier_changed.state"

    if-eqz p1, :cond_2

    .line 607
    const-string p1, "notifyCarrierChangedForModemConfig bootstrap profile, set carrier_changed state to ABSENT"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 608
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object p1

    .line 608
    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v1, "CARRIER_LOADED"

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 614
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getCurNetworkCode(I)Ljava/lang/String;

    move-result-object p1

    .line 617
    const-string v1, "mdc.singlesku"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "notifyCarrierChangedForModemConfig curNetworkCode: "

    const-string v4, ""

    const-string v5, "CARRIER_CHANGED"

    if-eqz v1, :cond_4

    const-string v1, "mdc.unified"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 618
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v1

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curCarrierGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newCarrierGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 621
    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 622
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 623
    :cond_3
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1, v0, v5}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v2, "persist.ril.matched_code"

    invoke-static {v1, v2, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 628
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 629
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 632
    :cond_5
    iget v6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v6

    .line 634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curMatchedCode: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newMatchedCode: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 639
    :cond_6
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1, v0, v5}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_7
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {p1, v2, v6}, Lcom/android/internal/telephony/SemTelephonyHelper;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierChangedForModemConfig ril.carrier_changed.state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isOppoCarrierChangedDone()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 647
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 649
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_a

    aget-object v3, p1, v2

    .line 650
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6, v0, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    instance-of v6, v3, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    if-eqz v6, :cond_9

    .line 652
    check-cast v3, Lcom/android/internal/telephony/SemGsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkPotentialPreconfigChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_9
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 656
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCarrierChangedForModemConfig - getPhones is fail. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 658
    :cond_a
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_WATCH:Z

    if-eqz p1, :cond_b

    .line 659
    const-string p1, "do not sendModemPreConfig for watch model"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->sendCpFeature()V

    goto :goto_4

    .line 662
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->sendModemPreConfig()V

    goto :goto_4

    .line 665
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->sendCpFeature()V

    :cond_d
    :goto_4
    return-void
.end method

.method private blacklist putDeviceConfig5gEnable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1660
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "latest_5g_default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latest_5g_toggle"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1663
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist putDisable2gDefaultInPreference(Z)V
    .locals 3

    .line 1668
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1669
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable_2g_default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1671
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private blacklist removeOppoSlotMaxRat(JLandroid/os/Message;)V
    .locals 10

    .line 2072
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v0

    .line 2073
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2076
    invoke-virtual {v1}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v2

    .line 2077
    new-instance v4, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v5, p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;-><init>(Landroid/os/Message;IJ)V

    const/16 p1, 0x246

    .line 2078
    invoke-virtual {p0, p1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, -0x80001

    and-long v6, v2, p2

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 2081
    sget v4, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-static {v4}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v4

    int-to-long v6, v4

    and-long/2addr v6, p2

    .line 2083
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeOppoSlotMaxRat: try oppoSlot["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "] network mode without NR: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -> "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    invoke-static {v6, v7}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2083
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v1, v5, v6, v7, p1}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    .line 2089
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "removeOppoSlotMaxRat - No oppositePhone. slotId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendCpFeature()V
    .locals 6

    .line 514
    const-string v0, "MISC_SEND_CP_FEATURE is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 515
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 518
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x78

    .line 519
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 520
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x0

    .line 521
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 523
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 529
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 525
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 528
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 529
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 528
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 529
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 533
    :goto_3
    throw v3
.end method

.method private blacklist sendModemPreConfig()V
    .locals 6

    .line 491
    const-string v0, "PRECONFIG is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 492
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x6

    .line 495
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x11

    .line 496
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 497
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x0

    .line 498
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 500
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 506
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    .line 502
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 506
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 505
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 506
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 510
    :goto_3
    throw v3
.end method

.method private blacklist set2GDefaultOff()V
    .locals 5

    const/4 v0, 0x3

    .line 1615
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v1

    .line 1616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set2GDefaultOff - currentlyAllowedNetworkTypes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", m2GDefaultOff : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1617
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    if-nez v1, :cond_1

    .line 1618
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 1620
    const-string v3, "Set 2G enable default off for the first time init."

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1621
    iput-boolean v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    .line 1622
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->putDisable2gDefaultInPreference(Z)V

    const-wide/32 v3, -0x804c

    and-long/2addr v1, v3

    const/4 v3, 0x0

    .line 1624
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    :cond_1
    return-void
.end method

.method private blacklist setCsCrossCallWaiting()V
    .locals 3

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1807
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1809
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_1

    .line 1810
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1811
    const-string v0, "setCsCrossCallWaiting - Cross call waiting for CS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1812
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    const/16 v0, 0x241

    .line 1813
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setDeviceConfig(IILjava/lang/String;)V
    .locals 6

    .line 1749
    const-string v0, "setDeviceConfig close is fail. "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1750
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x11

    .line 1752
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xa4

    .line 1753
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1754
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v3, 0x2

    .line 1756
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    int-to-short p1, p1

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const/4 v4, 0x1

    .line 1757
    aget-byte v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x0

    .line 1758
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1760
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1761
    aget-byte p2, p1, v4

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1762
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1764
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 1765
    aget-byte p2, p1, v4

    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1766
    aget-byte p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1768
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1769
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1774
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1775
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1777
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1771
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setDeviceConfig is fail. "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1774
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1775
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1777
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :goto_1
    return-void

    .line 1774
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1775
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 1777
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1779
    :goto_3
    throw p1
.end method

.method private blacklist setNr5gEnable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x2

    .line 1634
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    .line 1635
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "latest_5g_default"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "latest_5g_toggle"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1639
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNr5gEnable - nr5gDefault: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , nr5GToggle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1641
    const-string v5, "false"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    const-wide/32 v2, -0x80001

    and-long/2addr v0, v2

    .line 1643
    invoke-virtual {p0, v7, v0, v1, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto :goto_0

    .line 1644
    :cond_0
    const-string v6, "true"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/32 v9, 0x80000

    if-eqz v8, :cond_1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    or-long/2addr v0, v9

    .line 1646
    invoke-virtual {p0, v7, v0, v1, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto :goto_0

    .line 1648
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    or-long/2addr v0, v9

    .line 1650
    invoke-virtual {p0, v7, v0, v1, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    .line 1655
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->putDeviceConfig5gEnable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateAcBarringFactor([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1210
    array-length v0, p1

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/4 v0, 0x6

    .line 1211
    aget v0, p1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    .line 1213
    aget p1, p1, v0

    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    .line 1214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAcBarringFactor - MoDataFactor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0xff

    .line 1216
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    .line 1217
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAcBarringFactor - MoData is not valid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist useGetImeiOem()Z
    .locals 1

    const/4 v0, 0x3

    .line 2311
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "ril.support.dynamic_imei"

    .line 2312
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public blacklist buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1783
    const-string p0, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "config"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "xpath"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 1784
    const-string v0, "tag_name"

    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1785
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public blacklist checkForDialNotAllowed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto/16 :goto_3

    .line 2236
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    move-result-object p1

    const-string v0, "Admin did not allow dialing this number"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    .line 2237
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getRestrictionPolicy(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;

    move-result-object p1

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper$PhoneRestrictionPolicyWrapper;->isOutgoingCallAllowedFromSimSlot(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2238
    :cond_1
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2240
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->getApplicationRestrictionsManager(Landroid/content/Context;)Lcom/android/internal/telephony/SemTelephonyKnoxHelper$ApplicationRestrictionsManagerWrapper;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemTelephonyKnoxHelper:Lcom/android/internal/telephony/SemTelephonyKnoxHelper;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 2241
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/SemTelephonyKnoxHelper;->isApplicationRestrictedForCall(I)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 2242
    :cond_3
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2246
    :cond_4
    :goto_1
    const-string p1, "ro.boot.carrierid"

    const-string v0, "UNKNOWN"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v0, "52001"

    const-string v1, "52003"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2247
    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 2248
    :cond_5
    const-string p1, "Non AIS carrier. Blocked MO Call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2249
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x5

    const-string v0, "REASON_CALL_NOT_ALLOWED_MO_CALL"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2253
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isBootstrapActivated()Z

    move-result p0

    if-nez p0, :cond_7

    :goto_3
    return-void

    .line 2254
    :cond_7
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/4 p1, 0x1

    const-string v0, "cannot dial voice call in current state"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public blacklist checkPotentialPreconfigChanged()V
    .locals 3

    .line 421
    const-string v0, "mdc.singlesku"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "Carrier Changed, "

    if-eqz v0, :cond_0

    const-string v0, "mdc.unified"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CarrierGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 425
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MatchedCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getMatchedCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 431
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v1, "USA"

    const-string v2, "CAN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsCarrierChanged:Ljava/util/List;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public blacklist checkVzwSimInserted()Z
    .locals 3

    .line 1909
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    .line 1910
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1912
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 1913
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1914
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 1915
    const-string v2, "311480"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "311270"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "310000"

    .line 1916
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "312770"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1918
    :cond_1
    const-string v2, "20404"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bae0000000000000"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist clearCdmaPrefVoicemailCount()V
    .locals 3

    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1968
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vm_count_key_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1970
    const-string p0, "vm_priority_key_cdma"

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1971
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public blacklist clearMwiNotificationAndVoicemailCount()V
    .locals 2

    .line 1977
    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clearMwiNotificationAndVoicemailCount"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->clearCdmaPrefVoicemailCount()V

    const/4 v0, 0x0

    .line 1979
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->setVoiceMessageCount(I)V

    return-void
.end method

.method protected blacklist dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 768
    iget v0, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 773
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isVendorTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneType()I

    move-result v1

    iget-object v2, p2, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->isBlockFallback(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    const-string p1, "CallRoute - CS fallback fail for TEST"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 781
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "CS fallback fail for TEST"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 784
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dialInternal(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/Connection;

    move-result-object p0

    return-object p0

    .line 774
    :cond_2
    const-string p1, "Block CSFB with ImsCall only case"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 775
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cs block cause ImsCall only"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 769
    :cond_3
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const/16 p1, 0x64

    const-string p2, "Couldn\'t start video call"

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1251
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/GsmCdmaPhone;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getRadioCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " supportImsCallOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " PREFERRED_NT_MODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/PhoneInternalInterface;->PREFERRED_NT_MODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " PREFERRED_NETWORK_MODE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsVonrSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1262
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1264
    const-string v1, " CarrierGroup Change Log:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1266
    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroupChangeLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 1268
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1269
    const-string v1, "++++++++++++++++++++++++++++++++"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    if-eqz v0, :cond_0

    .line 1274
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/ImsPreference;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1279
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1284
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1286
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1290
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1291
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110164

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/DropBoxManagerLoggerBackend;->getInstance(Landroid/content/Context;)Landroid/telephony/DropBoxManagerLoggerBackend;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-virtual {v0}, Landroid/telephony/DropBoxManagerLoggerBackend;->flushAsync()V

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    if-eqz v0, :cond_2

    .line 1305
    :try_start_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyLogger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1307
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1309
    :goto_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1310
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez p1, :cond_3

    .line 1315
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 1317
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-eqz p1, :cond_4

    .line 1318
    iget p3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->dump(ILjava/io/PrintWriter;)V

    .line 1319
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1320
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

    if-eqz p0, :cond_5

    .line 1324
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RilMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 1326
    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist fetchFdnList()V
    .locals 2

    .line 1946
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SemGsmCdmaPhone$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone$3;-><init>(Lcom/android/internal/telephony/SemGsmCdmaPhone;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1961
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 793
    :cond_0
    const-string p1, "getAvailableNetworks: not possible in CDMA"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x33

    .line 790
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 791
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;
    .locals 0

    .line 718
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

    return-object p0
.end method

.method public blacklist getDataServiceState()I
    .locals 1

    .line 1868
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1871
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result p0

    return p0
.end method

.method public blacklist getDisable2gDefaultInPreference()Z
    .locals 4

    const/4 v0, 0x0

    .line 1675
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable_2g_default"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public blacklist getDrxController()Lcom/android/internal/telephony/DrxController;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDrxController:Lcom/android/internal/telephony/DrxController;

    return-object p0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .locals 3

    .line 1430
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1431
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_1

    .line 1432
    instance-of v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1435
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1

    .line 1436
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1437
    const-string v0, "HPLMN is not available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1441
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_4

    .line 1442
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/SIMRecords;

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_5

    .line 1445
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getHomePlmns()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1
.end method

.method public blacklist getImsPreference()Lcom/android/internal/telephony/ImsPreference;
    .locals 0

    .line 736
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    return-object p0
.end method

.method public blacklist getImsUssdSession()Lcom/android/ims/ImsCall;
    .locals 0

    .line 1231
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getImsUssdSession()Lcom/android/ims/ImsCall;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getKorRtsState(Z)I
    .locals 11

    .line 1332
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_1

    .line 1339
    invoke-static {}, Lcom/android/internal/telephony/SemCallTrackerHelper;->useMdecEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1343
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v9, v2

    goto :goto_0

    :cond_2
    move v9, v1

    .line 1344
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isImsUseEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 1346
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isVoiceOverCellularImsEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v9, :cond_5

    if-eqz p1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v9, :cond_5

    .line 1348
    :cond_4
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1350
    :goto_1
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getSimOperatorNumericForPhone(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v3

    .line 1353
    iget-object v4, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    if-eqz v4, :cond_7

    .line 1354
    invoke-virtual {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    .line 1355
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    .line 1356
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    :cond_6
    move v10, v5

    move v5, v1

    move v1, v10

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    if-nez v1, :cond_8

    .line 1358
    iget v4, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->current_plmn()Ljava/util/List;

    move-result-object v6

    const-string v7, ""

    invoke-static {v4, v6, v7}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "oversea"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v7, v2

    goto :goto_3

    :cond_8
    move v7, v1

    .line 1362
    :goto_3
    const-string v1, "45006"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez p1, :cond_9

    if-nez v7, :cond_9

    :goto_4
    move v6, v2

    goto :goto_5

    .line 1364
    :cond_9
    const-string v1, "450"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v6, v0

    .line 1368
    :goto_5
    iget-object v4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mKorRtsStatus:Lcom/android/internal/telephony/RtsStatus;

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/RtsStatus;->getKoreaRtsState(ZZZZZ)I

    move-result p0

    return p0
.end method

.method public blacklist getLine1Number()Ljava/lang/String;
    .locals 6

    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 1374
    const-string v0, "mUiccController == null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1378
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v3, 0x1

    .line 1379
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1380
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1382
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 1383
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "USC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ACG"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    iget v5, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    .line 1384
    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SemTelephonyHelper;->isSupportCdma(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 1400
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1401
    iget-object v2, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1403
    const-string v0, "[CDMAPhone] return MDN number in Ruim for Global Mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1404
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v0, :cond_6

    .line 1407
    const-string v0, "return MSISDN number in Usim for Global Mode"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1408
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz p0, :cond_5

    .line 1409
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v1

    .line 1413
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1414
    const-string v0, "ril.simoperator"

    const-string v1, "ETC"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1415
    const-string v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1416
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1417
    instance-of v1, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_7

    .line 1418
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1420
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1425
    :cond_8
    invoke-super {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_1
    if-nez v2, :cond_a

    .line 1386
    const-string v0, "return MSISDN null with sim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1389
    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1391
    const-string v0, "return MSISDN null with msisdn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_b
    return-object v0
.end method

.method protected blacklist getRilMonitor()Lcom/android/internal/telephony/RilMonitor;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mRilMonitor:Lcom/android/internal/telephony/RilMonitor;

    return-object p0
.end method

.method public blacklist getSemIccCardHelper()Lcom/android/internal/telephony/uicc/SemIccCardHelper;
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemIccCardHelper:Lcom/android/internal/telephony/uicc/SemIccCardHelper;

    return-object p0
.end method

.method public blacklist getSubscriberIdForUiccAppType(I)Ljava/lang/String;
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccPort(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1453
    const-string p1, "uiccPort is Null. "

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1456
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccPort;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1458
    const-string p1, "UiccApp is Null. "

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-object v1

    .line 1462
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1463
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public blacklist getTelephonyHelper()Lcom/android/internal/telephony/SemTelephonyHelper;
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyHelper:Lcom/android/internal/telephony/SemTelephonyHelper;

    return-object p0
.end method

.method public blacklist getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyLogger:Lcom/android/internal/telephony/TelephonyLogger;

    return-object p0
.end method

.method protected blacklist getUiccCardApplicationBoth()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .line 1893
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1895
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    const-string v0, "Can\'t find 3GPP application. Trying APP_FAM_3GPP2"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0

    .line 1899
    :cond_0
    const-string v0, "Can\'t find 3GPP2 application. Trying APP_FAM_3GPP"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public blacklist getUrlFromDeviceConfig(Z)V
    .locals 7

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    .line 1469
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "//DSS/CRSRateMatching"

    aput-object v3, v1, v2

    const-string v2, "//VoNR/VoWiFiDisable5GSA"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1470
    const-string v2, "//NR"

    const-string v4, "//VoNR"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 1476
    const-string v4, "//EPSFB/VoWiFiDisable5GSA"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1477
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1478
    aput-object v4, v1, v3

    .line 1481
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkDeviceConfigForFeature(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1483
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkDeviceConfigListValue(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    const-string v2, "//NR/NR5GDefault"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1487
    const-string v4, "//NR/NR5GUserToggleDisplay"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getDeviceConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setNr5gEnable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vonr_call_enable"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez p1, :cond_1

    .line 1493
    iget p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevVonrUserSetting:I

    if-ne p1, v4, :cond_1

    goto/16 :goto_1

    .line 1497
    :cond_1
    iput v4, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevVonrUserSetting:I

    .line 1499
    const-string p1, "UserVoNRSetting:"

    if-nez v4, :cond_2

    .line 1500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0x00;"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_3

    .line 1502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0x01;"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1504
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "0x02;"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1507
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "tmo_device_config"

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1511
    iget p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    if-nez p1, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 1512
    :cond_5
    :goto_2
    sget-boolean p1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez p1, :cond_6

    .line 1513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUrlFromDeviceConfig: deviceConfigString : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1515
    :cond_6
    iget p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigFeature:I

    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDeviceConfigStatus:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setDeviceConfig(IILjava/lang/String;)V

    return-void
.end method

.method public blacklist getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mVendorConfigurationTracker:Lcom/android/internal/telephony/VendorConfigurationTracker;

    return-object p0
.end method

.method public blacklist getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    return-object p0
.end method

.method public blacklist givePrintableImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 2262
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 2263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2265
    :cond_0
    sget-object p1, Lcom/android/internal/telephony/SemGsmCdmaPhone;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImei()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 812
    const-string v0, "CS_DIAG_TEST close is fail. "

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string v4, "CAN"

    const-string v5, "USA"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v1, v6, :cond_1d

    const/4 v8, 0x7

    if-eq v1, v8, :cond_1a

    const/16 v8, 0x2b

    const/4 v9, 0x0

    if-eq v1, v8, :cond_16

    const/16 v8, 0x3e

    if-eq v1, v8, :cond_14

    const/16 v2, 0x43

    if-eq v1, v2, :cond_12

    const-string v8, ", reason: "

    const-string v10, "allow_nettype_list"

    packed-switch v1, :pswitch_data_0

    .line 1203
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 1191
    :pswitch_0
    const-string p1, "EVENT_OVERRIDE_CARRIER_CONFIG Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1192
    iget-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsValidCarrierConfigChanged:Z

    if-eqz p1, :cond_0

    .line 1193
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    if-eqz p1, :cond_1c

    .line 1195
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p1, p0}, Landroid/telephony/CarrierConfigManager;->overrideCarrierConfigFromCarrierFeature(I)Z

    return-void

    :cond_0
    const/16 p1, 0x24d

    const-wide/16 v0, 0x3e8

    .line 1198
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1150
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1151
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_1c

    .line 1153
    array-length v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x4

    const/16 v1, 0x13

    .line 1154
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/16 v1, 0x26

    const/16 v3, 0x28

    .line 1155
    invoke-static {p1, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1157
    new-instance v3, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1158
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1160
    new-instance v1, Landroid/hardware/radio/modem/ImeiInfo;

    invoke-direct {v1}, Landroid/hardware/radio/modem/ImeiInfo;-><init>()V

    .line 1161
    iput-object v3, v1, Landroid/hardware/radio/modem/ImeiInfo;->imei:Ljava/lang/String;

    .line 1162
    iput-object v0, v1, Landroid/hardware/radio/modem/ImeiInfo;->svn:Ljava/lang/String;

    .line 1163
    aget-byte p1, p1, v7

    iput p1, v1, Landroid/hardware/radio/modem/ImeiInfo;->type:I

    .line 1165
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 1166
    invoke-static {p0, v1, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1167
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1131
    :pswitch_2
    const-string v0, "EVENT_UPDATE_ALLOW_NETWORKTYPES_DONE Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1134
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_1c

    .line 1135
    iput v6, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdValidForNetworkModeUpdate:I

    return-void

    .line 1120
    :pswitch_3
    const-string v0, "EVENT_SET_VONR_ENABLED_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1121
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1122
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1123
    check-cast v0, Landroid/os/Message;

    .line 1124
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1125
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1127
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->querySupportVonr()V

    return-void

    .line 1101
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1102
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1103
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 1104
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 1105
    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    .line 1106
    :cond_2
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    check-cast v1, [B

    aget-byte v1, v1, v7

    if-ne v1, v6, :cond_3

    .line 1107
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1109
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    .line 1111
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_IS_VONR_ENABLED_DONE Received. mIsVonrSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1112
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p0, :cond_1c

    .line 1113
    check-cast p0, Landroid/os/Message;

    .line 1114
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1115
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 956
    :pswitch_5
    const-string p1, "EVENT_SIM_PB_READY Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->initFdnList()V

    return-void

    .line 1076
    :pswitch_6
    const-string p1, "EVENT_DIAGTOOLEX Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1078
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1079
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x12

    .line 1082
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x23

    .line 1083
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v2, 0x5

    .line 1084
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1085
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1087
    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v3, v9}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1093
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception p1

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    .line 1089
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CS_DIAG_TEST is fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1093
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception p1

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 1092
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1093
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1097
    :goto_3
    throw v2

    .line 1058
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1059
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_OPPOSLOT_MAXRAT_REMOVE_DONE Received. original request - Network mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    .line 1061
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 1062
    invoke-static {v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1064
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    .line 1065
    iget p1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    iget-wide v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    iget-object v0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    .line 1067
    :cond_5
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    if-eqz p0, :cond_1c

    .line 1068
    invoke-static {p0, v9, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1069
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 999
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1000
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SET_ALLOW_NETWORKTYPES_DONE - old network mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 1002
    invoke-static {v2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_6

    .line 1006
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v1, :cond_b

    .line 1007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received error! revert networkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1008
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    iget-wide v2, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    invoke-super {p0, v1, v2, v3, v9}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    goto/16 :goto_4

    .line 1011
    :cond_6
    iget v1, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v1

    .line 1014
    iget v3, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v3, :cond_7

    .line 1015
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update networkType in DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1016
    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(IJ)V

    .line 1020
    :cond_7
    iget-wide v3, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    cmp-long v3, v1, v3

    const-string v4, " -> "

    if-eqz v3, :cond_8

    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    .line 1022
    invoke-static {v5}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->convertNetworkTypeReasonToDbName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->networkTypes:J

    .line 1023
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1021
    invoke-virtual {p0, v10, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1028
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v5, 0xf

    invoke-static {v3, v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->reason:I

    if-nez v3, :cond_b

    const-wide/32 v5, 0x80000

    and-long/2addr v1, v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_b

    .line 1031
    iget v1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v1

    .line 1032
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1034
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1035
    const-string v3, "EXCEPTION CASE, opposite subid valid but has NR"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1037
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference()J

    move-result-wide v5

    const-wide/32 v7, -0x80001

    and-long/2addr v7, v5

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update networkType in oppoSlot["

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] DB : no sim but has NR networktype, update DB without NR, "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-static {v5, v6}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1039
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(IJ)V

    .line 1043
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oppositeNw Changed with NR, Set this slot DB without NR. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    invoke-static {v7, v8}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 1043
    invoke-virtual {v2, v10, p0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 1046
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SET_ALLOW_NETWORKTYPES_DONE - No oppositePhone. slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1051
    :cond_b
    :goto_4
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    if-eqz p0, :cond_1c

    .line 1052
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v9, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1053
    iget-object p0, v0, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;->response:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 962
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 964
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v1, ", carrier: "

    if-nez v0, :cond_c

    .line 965
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    aget p1, p1, v7

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CP default network type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-virtual {p0, v10, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_5

    .line 970
    :cond_c
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p1, v0, :cond_d

    .line 972
    const-string p1, "EVENT_GET_CP_DEFAULT_NETWORK - Radio not available or CP reset occurred, retry after Radio Available"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 975
    :cond_d
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x9

    .line 976
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 975
    invoke-static {p1, v0, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 979
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_QCOM:Z

    if-eqz v0, :cond_e

    .line 980
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object p1

    .line 981
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 980
    invoke-static {v7, p1, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->semGetTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 983
    :cond_e
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v0

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get CP default network type. Set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), reason: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mCarrierGroup:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-virtual {p0, v10, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    move p1, v0

    .line 990
    :goto_5
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mDefaultNetworkModeReason:Ljava/lang/String;

    .line 991
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->putUserNetworkTypeReasonInPreference(II)V

    .line 992
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 993
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkCpDefaultNetModeDone()V

    return-void

    .line 941
    :pswitch_a
    const-string v0, "EVENT_IMS_PREFERENCE_CHANGED Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 943
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_f

    .line 944
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    if-eqz v0, :cond_f

    .line 945
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsPreference;->setImsPreference(Landroid/os/AsyncResult;)V

    .line 947
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 948
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_1c

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p0

    if-eq p0, v3, :cond_1c

    .line 950
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCarrierDisplayName()V

    return-void

    .line 878
    :pswitch_b
    const-string v0, "EVENT_SET_CS_CALL_WAITING_DONE Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 879
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 880
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_11

    .line 882
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v1, "BRI"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 883
    const-string v0, "Set T/B_CALL_WAITING for TWM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 884
    iget-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    .line 888
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v0, :cond_11

    .line 891
    :try_start_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v0

    .line 892
    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    iget v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    invoke-interface {v0, v1, v2, v9}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallWaiting is failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 899
    :cond_11
    :goto_6
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    if-eqz p0, :cond_1c

    .line 901
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 902
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 872
    :pswitch_c
    const-string p1, "EVENT_SET_CS_CROSS_CALL_WAITING Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    iget p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    invoke-interface {p1, v0, p0, v9}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    .line 866
    :pswitch_d
    const-string p1, "Event EVENT_SERVICE_STATE_CHANGED Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 867
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setCsCrossCallWaiting()V

    return-void

    .line 853
    :pswitch_e
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 854
    const-string v0, "EVENT_ACB_INFO_CHANGED Received"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 856
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_1c

    .line 857
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_1c

    .line 858
    check-cast p1, [I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->updateAcBarringFactor([I)V

    return-void

    .line 1140
    :cond_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1141
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_13

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception received : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 1143
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getImeiOem()V

    return-void

    .line 1145
    :cond_13
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    return-void

    .line 839
    :cond_14
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 841
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    .line 842
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 843
    iput v2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdValidForNetworkModeUpdate:I

    .line 844
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    return-void

    .line 845
    :cond_15
    iget v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    if-eq v0, p1, :cond_1c

    .line 846
    iput v7, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdValidForNetworkModeUpdate:I

    .line 847
    iput p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mPrevSubId:I

    return-void

    .line 815
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsValidCarrierConfigChanged:Z

    .line 817
    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    .line 819
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSubIdValidForNetworkModeUpdate:I

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/android/internal/telephony/Phone;->mIsCarrierNrSupported:Z

    if-eq v0, p1, :cond_1c

    .line 823
    :cond_17
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 824
    const-string p1, "do not set network mode after carrierconfig changed in this model"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 827
    :cond_18
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 828
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->needsNotAllowedNetmodeSetting()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 829
    const-string p1, "Operator don\'t allow 3G only or 3G preferred network mode. So, device will set default network mode."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    :cond_19
    const/16 p1, 0x24b

    .line 833
    invoke-virtual {p0, p1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 834
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    return-void

    .line 1172
    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1173
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 1176
    aget-object v2, v1, v7

    if-eqz v2, :cond_1b

    .line 1178
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1b

    .line 1179
    aget-object v2, v1, v7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 1180
    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 1181
    new-instance v3, Ljava/lang/String;

    const-string v4, "EUC_KR"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    aput-object v3, v1, v6

    .line 1182
    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 1187
    :catch_5
    :cond_1b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    :cond_1c
    :goto_7
    return-void

    .line 907
    :cond_1d
    invoke-super {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->handleMessage(Landroid/os/Message;)V

    .line 908
    const-string p1, "EVENT_RADIO_AVAILABLE Received"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 911
    invoke-virtual {p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->needInitVendorConfiguration()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 912
    const-string v0, "FW_READY"

    invoke-virtual {p1, v0, v6}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setConfigData(Ljava/lang/String;Z)V

    .line 915
    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->querySupportVonr()V

    .line 917
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-eq p1, v3, :cond_20

    .line 918
    iget p1, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 919
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->checkResetDefaultNetworkMode()V

    .line 922
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SemPhoneInternal;->getUserNetworkTypeReasonInPreference(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_20

    .line 923
    const-string p1, "Get default network from CP since factory reset, NWCode or SKU changed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const/16 p1, 0x244

    .line 924
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypesBitmask(Landroid/os/Message;)V

    .line 931
    :cond_20
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "rild_reset"

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v6, :cond_21

    .line 932
    const-string p1, "Set rild_reset = 0"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 933
    iget-object p1, p0, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 935
    :cond_21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Set ril.rildreset_state = 0, prev_value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    const-string v1, "ril.rildreset_state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 936
    const-string p0, "0"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method public blacklist hasCall(Ljava/lang/String;)Z
    .locals 0

    .line 1853
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemCallTrackerHelper:Lcom/android/internal/telephony/SemCallTrackerHelper;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemCallTrackerHelper;->hasCall(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist hasImsCall()Z
    .locals 1

    .line 1861
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist initFdnList()V
    .locals 2

    .line 1928
    const-string v0, "initFdnList()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1929
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    if-nez v0, :cond_0

    const-string v0, "ril.initPB"

    goto :goto_0

    :cond_0
    const-string v0, "ril.initPB2"

    .line 1930
    :goto_0
    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1931
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_1

    .line 1932
    const-string v0, "sim contact is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1935
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v0, :cond_2

    .line 1937
    const-string v0, "AdnCache is not ready"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return-void

    .line 1940
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->fetchFdnList()V

    return-void
.end method

.method public blacklist invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method public blacklist invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist isAcBarred()Z
    .locals 2

    .line 1225
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mMoDataFactor:I

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBootstrapActivated()Z
    .locals 2

    .line 2218
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2219
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2221
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getProfileClass()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMmiDialString(Ljava/lang/String;)Z
    .locals 2

    .line 1877
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1878
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1879
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 1880
    :cond_1
    :goto_0
    const-string p1, "isMmiDialString - Mmi is null or unrecognized"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1

    .line 1884
    :cond_2
    const-string p1, "isMmiDialString - CDMA don\'t check mmi when MO call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist isVendorTestEnabled()Z
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mSemTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyTester;->isTestEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 1

    const/16 v0, 0x249

    .line 2171
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isVoNrEnabledInternal(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist isVonrSupported()Z
    .locals 2

    .line 2137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVonrSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2138
    iget-boolean p0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mIsVonrSupported:Z

    return p0
.end method

.method public blacklist notifyCpaiDataGathering(I[B)V
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCpaiDataGathering(Lcom/android/internal/telephony/Phone;I[B)V

    return-void
.end method

.method public blacklist notifyCpaiDevAppMessage(II[B)V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCpaiDevAppMessage(Lcom/android/internal/telephony/Phone;II[B)V

    return-void
.end method

.method public blacklist notifyCpaiFeatureInfo(I)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCpaiFeatureInfo(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist notifyCpaiModelUpdate(I)V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCpaiModelUpdate(Lcom/android/internal/telephony/Phone;I)V

    return-void
.end method

.method public blacklist prepareCsCrossCallWaiting(ZI)V
    .locals 1

    const/16 v0, 0x241

    .line 1791
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 1793
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mNeedCrossCW:Z

    .line 1794
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 1795
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    .line 1798
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->setCsCrossCallWaiting()V

    return-void
.end method

.method public blacklist queryImei()V
    .locals 2

    .line 2272
    const-string v0, "queryImei"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2273
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->getImei(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist querySupportVonr()V
    .locals 2

    const/16 v0, 0x249

    .line 2143
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->isVoNrEnabledInternal(Landroid/os/Message;Landroid/os/WorkSource;)V

    return-void
.end method

.method public blacklist setAllowedNetworkTypes(IJLandroid/os/Message;)V
    .locals 6

    .line 2000
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 2001
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2002
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAllowedNetworkTypes: Invalid allowed network type reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 2004
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2006
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2010
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v1

    const-string v3, ", isNetworkTypeLoaded: "

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2023
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    .line 2024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllowedNetworkTypes - currentlyAllowedNetworkTypes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 2026
    iput-boolean v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->m2GDefaultOff:Z

    .line 2027
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->putDisable2gDefaultInPreference(Z)V

    .line 2029
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/telephony/SemPhoneInternal;->putEnable2gNetworkTypeReasonInPreference(IJ)V

    :cond_3
    const-wide/32 v0, 0x80000

    and-long v4, p2, v0

    cmp-long v0, v4, v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    .line 2033
    invoke-direct {p0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->hasOppoSlotMaxRat()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v1, 0xf

    .line 2034
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2035
    iget v0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getOppositeSlotId(I)I

    move-result v0

    .line 2036
    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllowedNetworkTypes: oppositeSlotId["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is MaxRat, oppoSlotSubIdValid - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2040
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2039
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2043
    iget-boolean p1, v1, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    if-nez p1, :cond_4

    .line 2045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAllowedNetworkTypes: oppoSlot valid, but network type is not loaded. SubscriptionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, v1, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2045
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 2048
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2050
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 2055
    :cond_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->removeOppoSlotMaxRat(JLandroid/os/Message;)V

    return-void

    .line 2060
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowedNetworkTypes - No oppositePhone. slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    .line 2064
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone;->getAllowedNetworkTypes(I)J

    move-result-wide v0

    .line 2065
    new-instance v2, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;

    invoke-direct {v2, p4, p1, v0, v1}, Lcom/android/internal/telephony/SemGsmCdmaPhone$NetworkTypeChangeRequest;-><init>(Landroid/os/Message;IJ)V

    const/16 p4, 0x245

    .line 2066
    invoke-virtual {p0, p4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 2068
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setAllowedNetworkTypes(IJLandroid/os/Message;)V

    return-void

    .line 2011
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAllowedNetworkTypes: no sim or network type is not loaded. SubscriptionId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/internal/telephony/Phone;->mIsAllowedNetworkTypesLoadedFromDb:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->loge(Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 2014
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object p1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p4, v2, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2016
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    return-void
.end method

.method blacklist setCallWaitingExt(ZILandroid/os/Message;)Z
    .locals 3

    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1822
    const-string p2, "Set T/B_CALL_WAITING to DB"

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingSetting(Z)V

    const/4 p0, 0x0

    .line 1828
    invoke-static {p3, p0, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1829
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return v1

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone;->mImsPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 1835
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mImsPreference:Lcom/android/internal/telephony/ImsPreference;

    .line 1836
    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsPreference;->getCallWaitingPathPref()I

    move-result v0

    const/16 v2, 0x21

    if-ne v0, v2, :cond_2

    .line 1837
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwMode:Z

    .line 1839
    iput p2, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mLastCwType:I

    const/16 v0, 0x242

    .line 1840
    invoke-virtual {p0, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 1841
    iget-object p0, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x5

    const/16 v3, 0x24a

    .line 2152
    invoke-virtual {p0, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const/4 v3, 0x6

    .line 2153
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2154
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V

    return-void

    .line 2161
    :cond_0
    new-array p3, v2, [B

    aput-byte v1, p3, v0

    const/16 v3, -0x7a

    const/4 v4, 0x1

    aput-byte v3, p3, v4

    aput-byte v0, p3, v1

    const/4 v0, 0x3

    aput-byte v2, p3, v0

    const/4 v0, 0x4

    aput-byte p1, p3, v0

    .line 2162
    iget-object p0, p0, Lcom/android/internal/telephony/SemPhoneInternal;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p3, p2}, Lcom/android/internal/telephony/SemCommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method protected blacklist updateAllowedNetworkTypes(Landroid/os/Message;)V
    .locals 1

    .line 2096
    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_FACTORY_BIN:Z

    if-eqz v0, :cond_0

    .line 2097
    const-string p1, "Block updateAllowedNetworkTypes cause Factory mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemGsmCdmaPhone;->logd(Ljava/lang/String;)V

    return-void

    .line 2100
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Phone;->updateAllowedNetworkTypes(Landroid/os/Message;)V

    return-void
.end method

.method public varargs blacklist writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-nez v0, :cond_0

    .line 1242
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->getInstance()Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SemGsmCdmaPhone;->mTelephonyDbHelper:Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    if-eqz v0, :cond_1

    .line 1245
    iget p0, p0, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->writeData(ILjava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
