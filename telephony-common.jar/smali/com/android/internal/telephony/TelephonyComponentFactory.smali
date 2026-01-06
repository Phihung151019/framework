.class public Lcom/android/internal/telephony/TelephonyComponentFactory;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TelephonyComponentFactory"

.field private static blacklist sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;


# instance fields
.field private blacklist mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

.field private final blacklist mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/android/internal/telephony/TelephonyFacade;

    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyFacade;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    .line 235
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyComponentFactory;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyComponentFactory;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    .line 243
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object v0
.end method


# virtual methods
.method public blacklist getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 0

    .line 503
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object p0

    return-object p0
.end method

.method public blacklist initMultiSimSettingController(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/MultiSimSettingController;
    .locals 0

    .line 539
    invoke-static {p1, p2}, Lcom/android/internal/telephony/MultiSimSettingController;->init(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/MultiSimSettingController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$misComponentInjected(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$fgetmInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object p0

    return-object p0

    .line 284
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object p0
.end method

.method public blacklist injectTheComponentFactory(Landroid/content/res/XmlResourceParser;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    if-eqz v0, :cond_0

    .line 260
    sget-object p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    const-string p1, "Already injected."

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 265
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    .line 266
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mparseXml(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 267
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mmakeInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    .line 268
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$mgetValidatedPaths(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 269
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total components injected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mInjectedComponents:Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->-$$Nest$fgetmComponentNames(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public blacklist makeAccessNetworksManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .locals 1

    .line 484
    new-instance p0, Lcom/android/internal/telephony/data/AccessNetworksManager;

    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeAccessNetworksManager(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/AccessNetworksManager;
    .locals 0

    .line 497
    new-instance p0, Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/AccessNetworksManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeAppSmsManager(Landroid/content/Context;)Lcom/android/internal/telephony/AppSmsManager;
    .locals 0

    .line 464
    new-instance p0, Lcom/android/internal/telephony/AppSmsManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppSmsManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public blacklist makeCarrierActionAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierActionAgent;
    .locals 0

    .line 349
    new-instance p0, Lcom/android/internal/telephony/CarrierActionAgent;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeCarrierResolver(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/CarrierResolver;
    .locals 0

    .line 361
    new-instance p0, Lcom/android/internal/telephony/CarrierResolver;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CarrierResolver;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeCarrierSignalAgent(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CarrierSignalAgent;
    .locals 0

    .line 345
    new-instance p0, Lcom/android/internal/telephony/CarrierSignalAgent;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierSignalAgent;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeCellularNetworkSecuritySafetySource(Landroid/content/Context;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;
    .locals 0

    .line 612
    invoke-static {p1}, Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeDataNetworkController(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/DataNetworkController;
    .locals 0

    .line 567
    new-instance p0, Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataNetworkController;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeDataProfileManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)Lcom/android/internal/telephony/data/DataProfileManager;
    .locals 0

    .line 587
    new-instance p0, Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataProfileManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-object p0
.end method

.method public blacklist makeDataSettingsManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)Lcom/android/internal/telephony/data/DataSettingsManager;
    .locals 0

    .line 605
    new-instance p0, Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    return-object p0
.end method

.method public blacklist makeDeviceStateMonitor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/DeviceStateMonitor;
    .locals 0

    .line 472
    new-instance p0, Lcom/android/internal/telephony/DeviceStateMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DeviceStateMonitor;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeDisplayInfoController(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/DisplayInfoController;
    .locals 0

    .line 528
    new-instance p0, Lcom/android/internal/telephony/DisplayInfoController;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DisplayInfoController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeEmergencyNumberTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 0

    .line 327
    new-instance p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeEriManager(Lcom/android/internal/telephony/Phone;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 0

    .line 386
    new-instance p0, Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;I)V

    return-object p0
.end method

.method public blacklist makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 0

    .line 294
    new-instance p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 0

    .line 365
    new-instance p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 0

    .line 373
    new-instance p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeIdentifierDisclosureNotifier(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;
    .locals 0

    .line 618
    invoke-static {p1}, Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;->getInstance(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/CellularIdentifierDisclosureNotifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1

    .line 449
    new-instance p0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method

.method public blacklist makeImsNrSaModeHandler(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;
    .locals 1

    .line 457
    new-instance p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/os/Looper;)V

    return-object p0
.end method

.method public blacklist makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .line 432
    new-instance v0, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlagsImpl;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .line 444
    new-instance p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/SemTelephonyComponentFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 0

    .line 421
    new-instance p0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object p0
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 17

    .line 411
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)V

    return-object v0
.end method

.method public blacklist makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 0

    .line 400
    new-instance p0, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-direct/range {p0 .. p13}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    return-object p0
.end method

.method public blacklist makeLinkBandwidthEstimator(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;)Lcom/android/internal/telephony/data/LinkBandwidthEstimator;
    .locals 1

    .line 553
    new-instance v0, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory;->mTelephonyFacade:Lcom/android/internal/telephony/TelephonyFacade;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/internal/telephony/data/LinkBandwidthEstimator;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/telephony/TelephonyFacade;)V

    return-object v0
.end method

.method public blacklist makeLocaleTracker(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/LocaleTracker;
    .locals 0

    .line 508
    new-instance p0, Lcom/android/internal/telephony/LocaleTracker;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/LocaleTracker;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeNitzStateMachine(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/NitzStateMachine;
    .locals 0

    .line 337
    invoke-static {p1}, Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;->createInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeNullCipherNotifier(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/NullCipherNotifier;
    .locals 0

    .line 624
    invoke-static {p1}, Lcom/android/internal/telephony/security/NullCipherNotifier;->getInstance(Lcom/android/internal/telephony/security/CellularNetworkSecuritySafetySource;)Lcom/android/internal/telephony/security/NullCipherNotifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makePhone(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 515
    new-instance p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/GsmCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;IILcom/android/internal/telephony/TelephonyComponentFactory;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makePhoneSwitcher(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/PhoneSwitcher;
    .locals 0

    .line 521
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/data/PhoneSwitcher;->make(ILandroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object p0

    return-object p0
.end method

.method public blacklist makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 0

    .line 315
    new-instance p0, Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeSignalStrengthController(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/SignalStrengthController;
    .locals 0

    .line 546
    new-instance p0, Lcom/android/internal/telephony/SignalStrengthController;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SignalStrengthController;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeSimActivationTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SimActivationTracker;
    .locals 0

    .line 341
    new-instance p0, Lcom/android/internal/telephony/SimActivationTracker;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimActivationTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    return-object p0
.end method

.method public blacklist makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 0

    .line 306
    new-instance p0, Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeSmsUsageMonitor(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 0

    .line 310
    new-instance p0, Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeUiccProfile(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 0

    .line 382
    new-instance p0, Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-object p0
.end method

.method public blacklist makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 0

    .line 390
    new-instance p0, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    return-object p0
.end method
